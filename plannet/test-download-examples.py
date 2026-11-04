"""Offline regression tests for generated sources, provenance and complete pagination."""

import importlib.util
import io
import json
import sys
import tempfile
import threading
import unittest
import urllib.error
import urllib.parse
import zipfile
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path
from unittest.mock import patch


sys.dont_write_bytecode = True
ROOT = Path(__file__).resolve().parent


def load_script(name):
    spec = importlib.util.spec_from_file_location(name, ROOT / f"{name}.py")
    if spec is None or spec.loader is None:
        raise RuntimeError(f"Unable to load {name}")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


downloads = load_script("download-examples")
fetch = load_script("fetch-plannet-from-fhir")
provenance = load_script("provenance")


class FixtureHandler(BaseHTTPRequestHandler):
    def log_message(self, *args):
        pass

    def do_GET(self):
        parsed = urllib.parse.urlsplit(self.path)
        if parsed.path == "/examples.zip":
            buffer = io.BytesIO()
            with zipfile.ZipFile(buffer, "w") as archive:
                archive.writestr("nested/Endpoint-example.json", json.dumps({
                    "resourceType": "Endpoint", "id": "same",
                }))
                archive.writestr("StructureDefinition-ignored.json", '{"resourceType":"StructureDefinition"}')
            content = buffer.getvalue()
        else:
            parts = parsed.path.strip("/").split("/")
            resource_type = parts[-1]
            if parts[0] == "failed" and resource_type == "Practitioner":
                self.send_error(403)
                return
            page = urllib.parse.parse_qs(parsed.query).get("page", ["1"])[0]
            resource = {"resourceType": resource_type, "id": "same" if page == "1" else "second"}
            bundle = {"resourceType": "Bundle", "entry": [{"resource": resource}]}
            if page == "1":
                bundle["link"] = [{"relation": "next", "url": f"{parsed.path}?page=2"}]
            content = json.dumps(bundle).encode()
        self.send_response(200)
        self.send_header("Content-Length", str(len(content)))
        self.end_headers()
        self.wfile.write(content)


class DownloadTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.server = ThreadingHTTPServer(("127.0.0.1", 0), FixtureHandler)
        cls.thread = threading.Thread(target=cls.server.serve_forever, daemon=True)
        cls.thread.start()
        cls.url = f"http://127.0.0.1:{cls.server.server_port}"

    @classmethod
    def tearDownClass(cls):
        cls.server.shutdown()
        cls.server.server_close()
        cls.thread.join()

    def test_all_sources_have_independent_outputs_and_provenance(self):
        with tempfile.TemporaryDirectory() as temporary, patch.dict(downloads.SOURCES, {
            "safhir": self.url + "/a", "healthspring": self.url + "/b",
        }):
            root = Path(temporary) / "examples"
            args = ["--output-dir", str(root), "--zip-url", self.url + "/examples.zip"]
            self.assertEqual(downloads.main(args), 0)
            for name in downloads.SOURCES:
                source = root / name
                provenance = json.loads((source / "source.json").read_text())
                metadata = json.loads((source / "download-summary.json").read_text())
                self.assertEqual(provenance["resourceType"], "Provenance")
                self.assertEqual(provenance["recorded"], metadata["finished_at"])
                self.assertEqual(provenance["occurredPeriod"], {
                    "start": metadata["started_at"], "end": metadata["finished_at"],
                })
                self.assertEqual(provenance["entity"], [
                    {"role": "source", "what": {"reference": metadata["url"]}},
                ])
                self.assertEqual(provenance["agent"][0]["who"]["type"], "Device")
                expected_targets = sorted(
                    f"{resource['resourceType']}/{resource['id']}"
                    for folder in downloads.RESOURCE_TYPES
                    for path in (source / folder).glob("*.json")
                    for resource in [json.loads(path.read_text())]
                )
                self.assertEqual(sorted(row["reference"] for row in provenance["target"]), expected_targets)
                self.assertNotIn("complete", provenance)
                self.assertEqual(metadata["name"], name)
                self.assertTrue(metadata["complete"])
                self.assertTrue(metadata["url"].startswith(self.url))
                self.assertTrue((source / "Endpoint" / (
                    "Endpoint-example.json" if name == "plannet-ig" else "same.json"
                )).exists())
                if name != "plannet-ig":
                    self.assertIsNone(metadata["limit_per_type"])
                    self.assertTrue((source / "Endpoint" / "second.json").exists())
                    self.assertEqual(len(metadata["resources"]), 8)
                    self.assertTrue(all(row["count"] == 2 for row in metadata["resources"]))
            self.assertFalse((root / "Endpoint").exists())
            self.assertEqual(sorted(path.name for path in root.iterdir()), sorted(downloads.SOURCES))
            stale = root / "safhir" / "Endpoint" / "stale.json"
            stale.write_text("{}")
            self.assertEqual(downloads.main(args + ["--sources", "safhir"]), 0)
            self.assertFalse(stale.exists())
            self.assertTrue((root / "healthspring" / "Endpoint" / "second.json").exists())

    def test_failed_refresh_does_not_replace_existing_source(self):
        with tempfile.TemporaryDirectory() as temporary, patch.dict(downloads.SOURCES, {
            "safhir": self.url + "/failed",
        }):
            root = Path(temporary) / "examples"
            old = root / "safhir" / "Endpoint" / "old.json"
            old.parent.mkdir(parents=True)
            old.write_text('{"resourceType":"Endpoint","id":"old"}')
            before = old.read_bytes()
            self.assertEqual(downloads.main(["--output-dir", str(root), "--sources", "safhir"]), 1)
            self.assertEqual(old.read_bytes(), before)
            self.assertFalse((root / "safhir" / "source.json").exists())

    def test_empty_download_has_summary_but_no_invalid_or_stale_provenance(self):
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            (root / "source.json").write_text("{}")
            with patch("sys.stderr", new_callable=io.StringIO) as stderr:
                provenance.write_download_provenance(root, {"complete": False}, [], "test")
            self.assertIn("no Provenance targets", stderr.getvalue())
            self.assertFalse((root / "source.json").exists())
            self.assertFalse(json.loads((root / "download-summary.json").read_text())["complete"])

    def test_limit_is_explicit_and_unlimited_is_default(self):
        resources = fetch.fetch_first_n(self.url + "/a", "Endpoint", 0, {})
        self.assertEqual([resource["id"] for resource in resources], ["same", "second"])
        self.assertEqual(len(fetch.fetch_first_n(self.url + "/a", "Endpoint", 1, {})), 1)
        self.assertEqual(fetch.DEFAULT_LIMIT, 0)

    def test_unlimited_fetch_exceeds_old_2000_resource_ceiling(self):
        first_page = {
            "resourceType": "Bundle",
            "entry": [{"resource": {"resourceType": "Endpoint", "id": f"resource-{index}"}} for index in range(2000)],
            "link": [{"relation": "next", "url": self.url + "/Endpoint?page=2"}],
        }
        second_page = {
            "resourceType": "Bundle",
            "entry": [
                {"resource": {"resourceType": "Endpoint", "id": "resource-1999"}},
                {"resource": {"resourceType": "Endpoint", "id": "resource-2000"}},
            ],
        }
        with patch.object(fetch, "http_get_json", side_effect=[first_page, second_page]):
            resources = fetch.fetch_first_n(self.url, "Endpoint", 0, {})
        self.assertEqual(len(resources), 2001)
        self.assertEqual(resources[-1]["id"], "resource-2000")

    def test_invalid_response_and_pagination_loop_fail_explicitly(self):
        with patch.object(fetch, "http_get_json", return_value={"resourceType": "OperationOutcome"}):
            with self.assertRaisesRegex(ValueError, "Expected a search Bundle"):
                fetch.fetch_first_n(self.url, "Endpoint", 0, {})

        bundle = {"resourceType": "Bundle", "link": [{
            "relation": "next", "url": self.url + "/Endpoint?_count=2000",
        }]}
        with patch.object(fetch, "http_get_json", return_value=bundle):
            with self.assertRaisesRegex(ValueError, "Repeated pagination"):
                fetch.fetch_first_n(self.url, "Endpoint", 0, {})
        with patch.object(fetch, "http_get_json", return_value={
            "resourceType": "Bundle", "entry": [{"resource": {"resourceType": "Endpoint", "id": "../escape"}}],
        }):
            with self.assertRaisesRegex(ValueError, "invalid FHIR id"):
                fetch.fetch_first_n(self.url, "Endpoint", 0, {})

    def test_rate_limit_retry_honors_retry_after(self):
        error = urllib.error.HTTPError(self.url, 429, "rate limited", {"Retry-After": "7"}, None)
        response = unittest.mock.MagicMock()
        response.__enter__.return_value.read.return_value = b'{"resourceType":"Bundle"}'
        with patch.object(fetch.urllib.request, "urlopen", side_effect=[error, response]) as request, \
                patch.object(fetch.time, "sleep") as sleep:
            self.assertEqual(fetch.http_get_json(self.url, {})["resourceType"], "Bundle")
            self.assertEqual(request.call_count, 2)
            sleep.assert_called_once_with(7)
        with patch.object(fetch.urllib.request, "urlopen", side_effect=error) as request, \
                patch.object(fetch.time, "sleep"):
            with self.assertRaises(urllib.error.HTTPError):
                fetch.http_get_json(self.url, {})
            self.assertEqual(request.call_count, 6)


if __name__ == "__main__":
    unittest.main()
