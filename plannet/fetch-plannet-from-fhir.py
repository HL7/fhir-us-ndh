#!/usr/bin/env python3
"""Fetch up to the first 100 instances per Plan-Net resource type from a FHIR server.

Usage:
  python3 fetch-plannet-from-fhir.py <FHIR_BASE_URL> [OUTPUT_DIR]

The script uses FHIR search with _count=100 and follows Bundle.next links until
100 resources are collected (or no more results).
"""

from __future__ import annotations

import json
import os
import sys
import urllib.error
import urllib.parse
import urllib.request
from pathlib import Path
from typing import Dict, List, Optional, Tuple


RESOURCE_TYPES = [
    "Endpoint",
    "HealthcareService",
    "InsurancePlan",
    "Location",
    "Network",
    "Organization",
    "OrganizationAffiliation",
    "Practitioner",
    "PractitionerRole",
]

DEFAULT_LIMIT = 100


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
    with urllib.request.urlopen(req, timeout=120) as resp:
        body = resp.read().decode("utf-8")
    return json.loads(body)


def next_link_url(bundle: Dict) -> Optional[str]:
    for link in bundle.get("link", []):
        if link.get("relation") == "next" and link.get("url"):
            return str(link["url"])
    return None


def fetch_first_n(base_url: str, resource_type: str, limit: int, headers: Dict[str, str]) -> List[Dict]:
    start_url = f"{base_url.rstrip('/')}/{resource_type}?_count={limit}"
    current_url = start_url
    seen_urls = set()
    results: List[Dict] = []

    while current_url and len(results) < limit:
        if current_url in seen_urls:
            break
        seen_urls.add(current_url)

        bundle = http_get_json(current_url, headers)
        if bundle.get("resourceType") != "Bundle":
            # Some servers can return an OperationOutcome directly.
            break

        for entry in bundle.get("entry", []):
            resource = entry.get("resource")
            if not isinstance(resource, dict):
                continue
            if resource.get("resourceType") != resource_type:
                continue
            results.append(resource)
            if len(results) >= limit:
                break

        if len(results) >= limit:
            break

        nxt = next_link_url(bundle)
        if not nxt:
            break
        current_url = urllib.parse.urljoin(current_url, nxt)

    return results


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
    if len(argv) < 2:
        print("Usage: fetch-plannet-from-fhir.py <FHIR_BASE_URL> [OUTPUT_DIR]", file=sys.stderr)
        return 2

    base_url = argv[1].rstrip("/")
    script_dir = Path(__file__).resolve().parent
    default_output = script_dir / "examples" / "from-server"
    output_root = Path(argv[2]).resolve() if len(argv) > 2 else default_output
    output_root.mkdir(parents=True, exist_ok=True)

    headers = build_headers()
    summary: List[Tuple[str, int, str]] = []

    print(f"FHIR endpoint: {base_url}")
    print(f"Output folder: {output_root}")

    for resource_type in RESOURCE_TYPES:
        try:
            print(f"Fetching {resource_type} ...")
            resources = fetch_first_n(base_url, resource_type, DEFAULT_LIMIT, headers)
            write_resources(output_root, resource_type, resources)
            summary.append((resource_type, len(resources), "ok"))
            print(f"  Saved {len(resources)} resource(s)")
        except urllib.error.HTTPError as exc:
            summary.append((resource_type, 0, f"http {exc.code}"))
            print(f"  Failed: HTTP {exc.code}", file=sys.stderr)
        except urllib.error.URLError as exc:
            summary.append((resource_type, 0, "network error"))
            print(f"  Failed: network error ({exc})", file=sys.stderr)
        except json.JSONDecodeError:
            summary.append((resource_type, 0, "invalid json"))
            print("  Failed: invalid JSON response", file=sys.stderr)
        except Exception as exc:  # pragma: no cover - defensive fallback
            summary.append((resource_type, 0, "error"))
            print(f"  Failed: {exc}", file=sys.stderr)

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

    # Return non-zero only if every type failed.
    all_failed = all(status != "ok" for _, _, status in summary)
    return 1 if all_failed else 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
