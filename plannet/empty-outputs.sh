#!/usr/bin/env sh
if [ -z "${BASH_VERSION:-}" ]; then
  if command -v bash >/dev/null 2>&1; then
    exec bash "$0" "$@"
  fi
  echo "Error: bash is required to run empty-outputs.sh." >&2
  exit 127
fi

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

WHAT_IF=false
if [[ "${1:-}" == "--what-if" ]]; then
  WHAT_IF=true
fi

TARGETS=(
  "$SCRIPT_DIR/output/transformed"
  "$SCRIPT_DIR/output/validation"
  "$SCRIPT_DIR/reports"
)

for target in "${TARGETS[@]}"; do
  [[ -d "$target" ]] || continue

  while IFS= read -r -d '' file_path; do
    if [[ "$WHAT_IF" == true ]]; then
      echo "Would remove: $file_path"
    else
      rm -f "$file_path"
      echo "Removed: $file_path"
    fi
  done < <(find "$target" -type f ! -name '.gitkeep' -print0)
done

if [[ "$WHAT_IF" == true ]]; then
  echo "Dry run complete. No files were removed."
else
  echo "Output cleanup complete."
fi
