#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
test_root="$(mktemp -d)"
trap 'rm -rf "$test_root"' EXIT
EXAMPLES_ROOT="$test_root/examples"
declare -a SOURCES=()
mkdir -p "$EXAMPLES_ROOT/Endpoint" "$EXAMPLES_ROOT/from-server-a/Endpoint" \
    "$EXAMPLES_ROOT/nested/from-server-b/Endpoint" "$EXAMPLES_ROOT/source/unzipped"
for path in Endpoint/same.json from-server-a/Endpoint/same.json nested/from-server-b/Endpoint/same.json \
    from-server-a/summary.json source/unzipped/Endpoint-archive.json Endpoint/README.md; do
    printf '{}\n' > "$EXAMPLES_ROOT/$path"
done

for function_name in proof_source_files count_proof_source_files proof_output_subdirectory source_matches_map_profile append_summary_row; do
    eval "$(sed -n "/^$function_name() {/,/^}/p" "$SCRIPT_DIR/run-proof.sh")"
done
[[ "$(count_proof_source_files Endpoint)" == 3 ]]
SOURCES=(from-server-a)
[[ "$(count_proof_source_files Endpoint)" == 1 ]]
SOURCES=()
mapfile -d '' -t files < <(proof_source_files Endpoint)
outputs=()
for file in "${files[@]}"; do
    input_path="${file#"$EXAMPLES_ROOT/"}"
    outputs+=("$(proof_output_subdirectory "$input_path" Endpoint)/$(basename "$file")")
done
[[ "$(printf '%s\n' "${outputs[@]}" | sort -u | wc -l | tr -d '[:space:]')" == 3 ]]
[[ "$(proof_output_subdirectory Endpoint/same.json Endpoint)" == Endpoint ]]
[[ "$(proof_output_subdirectory nested/from-server-b/Endpoint/same.json Endpoint)" == nested/from-server-b/Endpoint ]]
[[ "$(proof_output_subdirectory from-server-a/Organization/network.json Network)" == from-server-a/Network ]]
echo "PASS: all datasets discovered; metadata/archive excluded; collision-free outputs"

PYTHON_CMD=(python)
PLANNET_ORGANIZATION_PROFILE="http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-Organization"
PLANNET_NETWORK_PROFILE="http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-Network"
for profile in "$PLANNET_NETWORK_PROFILE" "$PLANNET_NETWORK_PROFILE|1.2.0"; do
    printf '{"resourceType":"Organization","meta":{"profile":["%s"]}}\n' "$profile" > "$test_root/network.json"
    source_matches_map_profile "$test_root/network.json" Network
    if source_matches_map_profile "$test_root/network.json" Organization; then
        echo "Network incorrectly routed to Organization" >&2
        exit 1
    fi
done
echo "PASS: versioned Network profiles route exclusively to Network"

REPORTS_ROOT="$test_root/reports"
mkdir -p "$REPORTS_ROOT"
summary_csv="$REPORTS_ROOT/summary.csv"
summary_rows_file="$test_root/rows"
declare -A source_reports=()
printf 'map,input,transform,validation,warnings,transformed_file,validation_log,warning_log\n' > "$summary_csv"
printf '{"name":"from-server-a","url":"https://example.org/fhir","complete":true}\n' > "$EXAMPLES_ROOT/from-server-a/source.json"
printf '{"complete":true}\n' > "$EXAMPLES_ROOT/from-server-a/download-summary.json"
printf '{"resourceType":"Provenance","id":"download"}\n' > "$EXAMPLES_ROOT/from-server-a/download-provenance.json"
append_summary_row Endpoint Endpoint/same.json pass pass 0 out-a log-a warnings-a
append_summary_row Endpoint from-server-a/Endpoint/same.json pass pass 0 out-b log-b warnings-b
append_summary_row Endpoint from-server-a/Endpoint/same.json pass fail 0 out-b log-b warnings-b
"${PYTHON_CMD[@]}" - "$REPORTS_ROOT" <<'PY'
import csv
import json
import sys
from pathlib import Path

root = Path(sys.argv[1])
for source, expected in (("_root", 1), ("from-server-a", 2)):
    with (root / source / "summary.csv").open(newline="", encoding="utf-8") as handle:
        rows = list(csv.DictReader(handle))
    assert len(rows) == expected, (source, rows)
    if source != "_root":
        assert all(row["input"].startswith(source + "/") for row in rows)
assert json.loads((root / "from-server-a" / "source.json").read_text())["url"] == "https://example.org/fhir"
assert json.loads((root / "from-server-a" / "download-summary.json").read_text())["complete"]
assert json.loads((root / "from-server-a" / "download-provenance.json").read_text())["resourceType"] == "Provenance"
PY
echo "PASS: independent source reports contain only their inputs and retain source provenance"
