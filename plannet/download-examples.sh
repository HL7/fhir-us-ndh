#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PYTHON_CMD=()
if command -v py >/dev/null 2>&1 && py -3 --version >/dev/null 2>&1; then
    PYTHON_CMD=(py -3)
else
    for candidate in python3 python; do
        if command -v "$candidate" >/dev/null 2>&1 &&
            "$candidate" -c 'import sys; sys.exit(sys.version_info.major != 3)' >/dev/null 2>&1; then
            PYTHON_CMD=("$candidate")
            break
        fi
    done
fi
if ((${#PYTHON_CMD[@]} == 0)); then
    echo "Error: Python 3 is required (py -3, python3, or python)." >&2
    exit 127
fi

if [[ $# -gt 0 && "$1" != --* ]]; then
    zip_url="$1"
    shift
    set -- --zip-url "$zip_url" "$@"
fi

exec "${PYTHON_CMD[@]}" "$SCRIPT_DIR/download-examples.py" "$@"
