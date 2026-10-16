#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
URL="https://github.com/hapifhir/org.hl7.fhir.core/releases/latest/download/validator_cli.jar"
DESTINATION="$SCRIPT_DIR/validator_cli.jar"
TEMPORARY_PATH="$(mktemp "$SCRIPT_DIR/validator_cli.XXXXXXXX.tmp")"
trap 'rm -f -- "$TEMPORARY_PATH"' EXIT

echo "Downloading the latest FHIR validator..."
if command -v curl >/dev/null 2>&1; then
  curl -fL "$URL" -o "$TEMPORARY_PATH"
elif command -v wget >/dev/null 2>&1; then
  wget -O "$TEMPORARY_PATH" "$URL"
else
  echo "Error: curl or wget is required to download the validator." >&2
  exit 127
fi

if [[ ! -s "$TEMPORARY_PATH" ]]; then
  echo "Error: the downloaded validator is empty." >&2
  exit 1
fi

mv -f -- "$TEMPORARY_PATH" "$DESTINATION"
echo "Validator saved to $DESTINATION"
