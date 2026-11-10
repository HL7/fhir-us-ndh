#!/usr/bin/env python3
"""Generate independent Plan-Net example datasets with recorded source provenance."""

from __future__ import annotations

import argparse
import hashlib
import json
import shutil
import subprocess
import sys
import tempfile
import urllib.request
import zipfile
from datetime import datetime, timezone
from pathlib import Path

from provenance import write_download_provenance


IG_URL = "https://hl7.org/fhir/us/davinci-pdex-plan-net/examples.json.zip"
SOURCES = {
    "plannet-ig": IG_URL,
    "safhir": "https://api-ahp-prd.safhir.io/v1/api/provider-directory/",
    "healthspring": "https://data.healthspring.healthlx.com:8003/",
}
RESOURCE_TYPES = (
    "Endpoint", "HealthcareService", "InsurancePlan", "Location",
    "Organization", "OrganizationAffiliation", "Practitioner", "PractitionerRole",
)


def download_ig(url: str, destination: Path) -> None:
    started_at = datetime.now(timezone.utc).isoformat()
    archive_path = destination / "examples.json.zip"
    with urllib.request.urlopen(url, timeout=120) as response, archive_path.open("wb") as target:
        shutil.copyfileobj(response, target)
    counts = dict.fromkeys(RESOURCE_TYPES, 0)
    targets = []
    with zipfile.ZipFile(archive_path) as archive:
        for member in archive.infolist():
            if member.is_dir() or not member.filename.endswith(".json"):
                continue
            content = archive.read(member)
            resource = json.loads(content)
            resource_type = resource.get("resourceType") if isinstance(resource, dict) else None
            if resource_type not in RESOURCE_TYPES:
                continue
            if not isinstance(resource.get("id"), str) or not resource["id"]:
                raise ValueError(f"Missing resource id in archive example: {member.filename}")
            target = destination / resource_type / Path(member.filename).name
            target.parent.mkdir(exist_ok=True)
            if target.exists():
                raise ValueError(f"Duplicate archive example filename: {member.filename}")
            target.write_bytes(content)
            counts[resource_type] += 1
            targets.append(f"{resource_type}/{resource['id']}")
    if not sum(counts.values()):
        raise ValueError("The IG archive contains no supported example resources")
    for resource_type in RESOURCE_TYPES:
        (destination / resource_type).mkdir(exist_ok=True)
    metadata = {
        "name": destination.name,
        "kind": "ig",
        "url": url,
        "started_at": started_at,
        "finished_at": datetime.now(timezone.utc).isoformat(),
        "archive_sha256": hashlib.sha256(archive_path.read_bytes()).hexdigest(),
        "complete": True,
        "resources": [
            {"resourceType": resource_type, "count": count, "status": "ok"}
            for resource_type, count in counts.items()
        ],
    }
    write_download_provenance(destination, metadata, targets, Path(__file__).name)


def publish_source(staged: Path, destination: Path, backup: Path) -> None:
    if destination.exists():
        destination.rename(backup)
    try:
        staged.rename(destination)
    except OSError:
        if backup.exists():
            backup.rename(destination)
        raise
    if backup.exists():
        shutil.rmtree(backup)


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--sources", nargs="+", choices=list(SOURCES), default=list(SOURCES))
    parser.add_argument("--zip-url", default=IG_URL)
    parser.add_argument("--limit", type=int, default=0, help="FHIR resources per type; 0 means all pages (default).")
    parser.add_argument("--output-dir", type=Path, default=Path(__file__).resolve().parent / "examples")
    args = parser.parse_args(argv)
    if args.limit < 0:
        parser.error("--limit cannot be negative")
    script_root = Path(__file__).resolve().parent
    examples_root = args.output_dir.resolve()
    examples_root.mkdir(parents=True, exist_ok=True)
    temp_root = examples_root.parent / "temp"
    temp_root.mkdir(exist_ok=True)
    failed = []
    for name in dict.fromkeys(args.sources):
        url = args.zip_url if name == "plannet-ig" else SOURCES[name]
        print(f"Downloading source {name}: {url}", flush=True)
        try:
            with tempfile.TemporaryDirectory(prefix=f"download-{name}-", dir=temp_root) as temporary:
                staging_root = Path(temporary)
                staged = staging_root / name
                staged.mkdir()
                if name == "plannet-ig":
                    download_ig(url, staged)
                else:
                    log_path = temp_root / f"download-{name}.log.txt"
                    with log_path.open("w", encoding="utf-8") as log:
                        result = subprocess.run(
                            [sys.executable, "-u", str(script_root / "fetch-plannet-from-fhir.py"),
                             url, str(staged), "--limit", str(args.limit)],
                            stdout=log, stderr=subprocess.STDOUT, check=False,
                        )
                    if result.returncode:
                        raise RuntimeError(f"FHIR download failed; see {log_path}")
                publish_source(staged, examples_root / name, staging_root / "previous")
                print(f"Published {examples_root / name}", flush=True)
        except (OSError, ValueError, RuntimeError, zipfile.BadZipFile) as exc:
            failed.append(name)
            print(f"FAILED {name}: {exc}. Existing dataset was not replaced.", file=sys.stderr, flush=True)
    if failed:
        print(f"Sources not refreshed: {', '.join(failed)}", file=sys.stderr)
        return 1
    print("All requested example sources generated.", flush=True)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
