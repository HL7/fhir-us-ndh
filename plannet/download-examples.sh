#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
EXAMPLES_ROOT="$SCRIPT_DIR/examples"
SOURCE_ROOT="$EXAMPLES_ROOT/source"
ZIP_URL="${1:-https://hl7.org/fhir/us/davinci-pdex-plan-net/examples.json.zip}"
ZIP_PATH="$SOURCE_ROOT/examples.json.zip"
EXTRACT_DIR="$SOURCE_ROOT/unzipped"

RESOURCE_FOLDERS=(
  Endpoint
  HealthcareService
  InsurancePlan
  Location
  Organization
  OrganizationAffiliation
  Practitioner
  PractitionerRole
)

mkdir -p "$SOURCE_ROOT"

echo "Downloading Plan-Net examples archive..."
if command -v curl >/dev/null 2>&1; then
  curl -fL "$ZIP_URL" -o "$ZIP_PATH"
elif command -v wget >/dev/null 2>&1; then
  wget -O "$ZIP_PATH" "$ZIP_URL"
else
  echo "Error: curl or wget is required to download examples." >&2
  exit 127
fi

rm -rf "$EXTRACT_DIR"
mkdir -p "$EXTRACT_DIR"

echo "Extracting archive..."
if command -v unzip >/dev/null 2>&1; then
  unzip -q -o "$ZIP_PATH" -d "$EXTRACT_DIR"
elif command -v bsdtar >/dev/null 2>&1; then
  bsdtar -xf "$ZIP_PATH" -C "$EXTRACT_DIR"
else
  echo "Error: unzip or bsdtar is required to extract examples." >&2
  exit 127
fi

for folder in "${RESOURCE_FOLDERS[@]}"; do
  mkdir -p "$EXAMPLES_ROOT/$folder"
done

echo "Sorting examples by resource type..."
if command -v python3 >/dev/null 2>&1; then
  python3 - "$EXTRACT_DIR" "$EXAMPLES_ROOT" <<'PY'
import json
import shutil
import sys
from pathlib import Path

extract_dir = Path(sys.argv[1])
examples_root = Path(sys.argv[2])

resource_folders = {
    "Endpoint",
    "HealthcareService",
    "InsurancePlan",
    "Location",
    "Organization",
    "OrganizationAffiliation",
    "Practitioner",
    "PractitionerRole",
}

counts = {k: 0 for k in sorted(resource_folders)}

for src in extract_dir.rglob("*.json"):
    try:
        obj = json.loads(src.read_text(encoding="utf-8"))
    except Exception:
        continue

    resource_type = obj.get("resourceType")
    if resource_type in resource_folders:
        dest = examples_root / resource_type / src.name
        shutil.copy2(src, dest)
        counts[resource_type] += 1

print("Done. Copied examples by resource type:")
for key in sorted(counts):
    print(f"  {key}: {counts[key]}")
PY
else
  echo "Error: python3 is required to classify downloaded JSON examples by resourceType." >&2
  exit 127
fi

echo "Archive: $ZIP_PATH"
echo "Extracted: $EXTRACT_DIR"