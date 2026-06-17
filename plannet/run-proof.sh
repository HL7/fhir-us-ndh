#!/usr/bin/env bash
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

POWERSHELL=""
if command -v pwsh >/dev/null 2>&1; then
	POWERSHELL="pwsh"
elif command -v powershell >/dev/null 2>&1; then
	POWERSHELL="powershell"
fi

if [[ -z "$POWERSHELL" ]]; then
	echo "Error: PowerShell is required to run run-proof.ps1 (install pwsh)." >&2
	echo "Tip: On Linux, install PowerShell 7 and ensure 'pwsh' is on PATH." >&2
	exit 127
fi

exec "$POWERSHELL" -NoProfile -File "./run-proof.ps1" "$@"
