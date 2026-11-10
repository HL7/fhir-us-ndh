#!/usr/bin/env python3
"""Fetch Plan-Net resources from one FHIR server, following every search page.

Usage:
  python3 fetch-plannet-from-fhir.py <FHIR_BASE_URL> [OUTPUT_DIR] [--limit N]
"""

from __future__ import annotations

import argparse
import json
import os
import sys
import time
import urllib.error
import urllib.parse
import urllib.request
from pathlib import Path
from datetime import datetime, timezone
from email.utils import parsedate_to_datetime
from typing import Dict, Iterator, List, Optional, Tuple

from provenance import write_download_provenance


RESOURCE_TYPES = [
    "Endpoint",
    "HealthcareService",
    "InsurancePlan",
    "Location",
    "Organization",
    "OrganizationAffiliation",
    "Practitioner",
    "PractitionerRole",
]

DEFAULT_LIMIT = 0


def build_headers() -> Dict[str, str]:
    headers = {
        "Accept": "application/fhir+json, application/json",
        "User-Agent": "ndh-plannet-fetch/1.0",
    }

    bearer = os.getenv("FHIR_BEARER_TOKEN", "").strip()
    if bearer:
        headers["Authorization"] = f"Bearer {bearer}"

    return headers


def http_get_json(url: str, headers: Dict[str, str]) -> Dict:
    req = urllib.request.Request(url, headers=headers, method="GET")
    for attempt in range(6):
        try:
            with urllib.request.urlopen(req, timeout=120) as resp:
                body = resp.read().decode("utf-8")
            return json.loads(body)
        except urllib.error.HTTPError as exc:
            if exc.code not in (429, 502, 503, 504) or attempt == 5:
                raise
            retry_after = exc.headers.get("Retry-After")
            delay = 5 * (2 ** attempt)
            if retry_after:
                try:
                    delay = max(1, int(retry_after))
                except ValueError:
                    try:
                        delay = max(1, int((parsedate_to_datetime(retry_after) - datetime.now(timezone.utc)).total_seconds()))
                    except (ValueError, TypeError, OverflowError):
                        print(f"Invalid Retry-After header {retry_after!r}; using {delay}s backoff", file=sys.stderr)
            print(f"HTTP {exc.code}; retry {attempt + 1}/5 in {delay}s: {url}", file=sys.stderr, flush=True)
            exc.close()
            time.sleep(delay)
    raise RuntimeError("HTTP retry loop ended without a response")


def next_link_url(bundle: Dict) -> Optional[str]:
    for link in bundle.get("link", []):
        if link.get("relation") == "next" and link.get("url"):
            return str(link["url"])
    return None


def iter_resources(base_url: str, resource_type: str, limit: int, headers: Dict[str, str]) -> Iterator[Dict]:
    page_size = min(limit, 2000) if limit else 2000
    start_url = f"{base_url.rstrip('/')}/{resource_type}?_count={page_size}"
    current_url = start_url
    seen_urls = set()
    seen_ids = set()
    count = 0

    while current_url and (not limit or count < limit):
        if current_url in seen_urls:
            raise ValueError(f"Repeated pagination URL for {resource_type}: {current_url}")
        seen_urls.add(current_url)

        bundle = http_get_json(current_url, headers)
        if bundle.get("resourceType") != "Bundle":
            raise ValueError(f"Expected a search Bundle for {resource_type}, got {bundle.get('resourceType')}")

        for entry in bundle.get("entry", []):
            resource = entry.get("resource")
            if not isinstance(resource, dict):
                continue
            if resource.get("resourceType") != resource_type:
                continue
            rid = resource.get("id")
            if not isinstance(rid, str) or not rid or any(ch not in "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-." for ch in rid):
                raise ValueError(f"Missing or invalid FHIR id in {resource_type} search result")
            if rid in seen_ids:
                continue
            seen_ids.add(rid)
            yield resource
            count += 1
            if limit and count >= limit:
                break

        if limit and count >= limit:
            break

        nxt = next_link_url(bundle)
        if not nxt:
            break
        current_url = urllib.parse.urljoin(current_url, nxt)


def fetch_first_n(base_url: str, resource_type: str, limit: int, headers: Dict[str, str]) -> List[Dict]:
    return list(iter_resources(base_url, resource_type, limit, headers))


def write_resources(output_root: Path, resource_type: str, resources: List[Dict]) -> None:
    out_dir = output_root / resource_type
    out_dir.mkdir(parents=True, exist_ok=True)

    for idx, resource in enumerate(resources, start=1):
        rid = str(resource.get("id") or f"{resource_type.lower()}-{idx}")
        safe_id = "".join(ch if ch.isalnum() or ch in "-_." else "_" for ch in rid)
        out_path = out_dir / f"{safe_id}.json"
        with out_path.open("w", encoding="utf-8") as f:
            json.dump(resource, f, indent=2)
            f.write("\n")


def main(argv: List[str]) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("base_url")
    parser.add_argument("output_dir", nargs="?")
    parser.add_argument("--limit", type=int, default=DEFAULT_LIMIT, help="Resources per type; 0 means all (default).")
    args = parser.parse_args(argv[1:])
    if args.limit < 0:
        parser.error("--limit cannot be negative")
    base_url = args.base_url.rstrip("/")
    script_dir = Path(__file__).resolve().parent
    site_name = urllib.parse.urlsplit(base_url).hostname
    if not site_name:
        parser.error("base_url must include a hostname")
    default_output = script_dir / "examples" / site_name
    output_root = Path(args.output_dir).resolve() if args.output_dir else default_output
    output_root.mkdir(parents=True, exist_ok=True)

    headers = build_headers()
    summary: List[Tuple[str, int, str]] = []
    targets: List[str] = []
    started_at = datetime.now(timezone.utc).isoformat()

    print(f"FHIR endpoint: {base_url}")
    print(f"Output folder: {output_root}")

    for resource_type in RESOURCE_TYPES:
        count = 0
        try:
            print(f"Fetching {resource_type} ...", flush=True)
            for resource in iter_resources(base_url, resource_type, args.limit, headers):
                write_resources(output_root, resource_type, [resource])
                targets.append(f"{resource_type}/{resource['id']}")
                count += 1
                if count % 2000 == 0:
                    print(f"  Saved {count} resource(s) so far", flush=True)
            (output_root / resource_type).mkdir(parents=True, exist_ok=True)
            summary.append((resource_type, count, "ok"))
            print(f"  Saved {count} resource(s)", flush=True)
        except urllib.error.HTTPError as exc:
            summary.append((resource_type, count, f"http {exc.code}"))
            print(f"  Failed: HTTP {exc.code}", file=sys.stderr)
        except urllib.error.URLError as exc:
            summary.append((resource_type, count, "network error"))
            print(f"  Failed: network error ({exc})", file=sys.stderr)
        except json.JSONDecodeError:
            summary.append((resource_type, count, "invalid json"))
            print("  Failed: invalid JSON response", file=sys.stderr)
        except (ValueError, OSError) as exc:
            summary.append((resource_type, count, "error"))
            print(f"  Failed: {exc}", file=sys.stderr)
        if summary[-1][2] != "ok":
            remaining_types = RESOURCE_TYPES[len(summary):]
            summary.extend((remaining, 0, "not attempted after source failure") for remaining in remaining_types)
            break

    summary_path = output_root / "summary.json"
    with summary_path.open("w", encoding="utf-8") as f:
        json.dump(
            [
                {"resourceType": rtype, "count": count, "status": status}
                for rtype, count, status in summary
            ],
            f,
            indent=2,
        )
        f.write("\n")

    print("Done. Summary:")
    for rtype, count, status in summary:
        print(f"  {rtype}: {count} ({status})")
    print(f"Summary file: {summary_path}")

    complete = all(status == "ok" for _, _, status in summary)
    write_download_provenance(
        output_root, {
            "name": output_root.name,
            "kind": "fhir",
            "url": base_url,
            "started_at": started_at,
            "finished_at": datetime.now(timezone.utc).isoformat(),
            "limit_per_type": args.limit or None,
            "complete": complete,
            "resources": [
                {"resourceType": rtype, "count": count, "status": status}
                for rtype, count, status in summary
            ],
        }, targets, Path(__file__).name,
    )
    return 0 if complete else 1


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
