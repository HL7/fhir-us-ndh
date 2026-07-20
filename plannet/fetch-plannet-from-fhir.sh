#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

if [[ $# -lt 1 ]]; then
  echo "Usage: ./fetch-plannet-from-fhir.sh <FHIR_BASE_URL> [OUTPUT_DIR]" >&2
  exit 2
fi

if ! command -v python3 >/dev/null 2>&1; then
  echo "Error: python3 is required." >&2
  exit 127
fi

exec python3 "./fetch-plannet-from-fhir.py" "$@"
