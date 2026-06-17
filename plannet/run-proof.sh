#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
MAPS_ROOT="$REPO_ROOT/input/maps"
EXAMPLES_ROOT="$SCRIPT_DIR/examples"
OUTPUT_ROOT="$SCRIPT_DIR/output"
REPORTS_ROOT="$SCRIPT_DIR/reports"
TRANSFORMS_ROOT="$OUTPUT_ROOT/transformed"
VALIDATION_ROOT="$OUTPUT_ROOT/validation"
DEFAULT_VALIDATOR_JAR="$SCRIPT_DIR/validator_cli.jar"
VALIDATOR_DOWNLOAD_URL="https://github.com/hapifhir/org.hl7.fhir.core/releases/latest/download/validator_cli.jar"

VALIDATOR_JAR="${VALIDATOR_JAR:-}"
NDH_PACKAGE="hl7.fhir.us.ndh#dev"
FHIR_VERSION="4.0.1"
TERMINOLOGY_SERVER="https://tx.fhir.org"
TRANSFORM_TIMEOUT_SECONDS=900
VALIDATION_TIMEOUT_SECONDS=900

declare -a MAP_NAMES=()
declare -a AVAILABLE_MAP_NAMES=(
	Endpoint
	HealthcareService
	InsurancePlan
	Location
	Network
	Organization
	OrganizationAffiliation
	Practitioner
	PractitionerRole
)
IGNORED_TOP_LEVEL_FIELDS=(resourceType id text)

usage() {
	cat <<'EOF'
Usage: ./run-proof.sh [options]

Options:
  -ValidatorJar <path>
  -ValidatorDownloadUrl <url>
  -NdhPackage <package>
  -FhirVersion <version>
  -TerminologyServer <url>
  -MapNames <name> [<name> ...]
  -TransformTimeoutSeconds <seconds>
  -ValidationTimeoutSeconds <seconds>
EOF
}

map_example_dir() {
	case "$1" in
		Endpoint) echo "Endpoint" ;;
		HealthcareService) echo "HealthcareService" ;;
		InsurancePlan) echo "InsurancePlan" ;;
		Location) echo "Location" ;;
		Network) echo "Organization" ;;
		Organization) echo "Organization" ;;
		OrganizationAffiliation) echo "OrganizationAffiliation" ;;
		Practitioner) echo "Practitioner" ;;
		PractitionerRole) echo "PractitionerRole" ;;
		*) return 1 ;;
	esac
}

map_file_name() {
	case "$1" in
		Endpoint) echo "PlanNetToNdhEndpointSM.fml" ;;
		HealthcareService) echo "PlanNetToNdhHealthcareServiceSM.fml" ;;
		InsurancePlan) echo "PlanNetToNdhInsurancePlanSM.fml" ;;
		Location) echo "PlanNetToNdhLocationSM.fml" ;;
		Network) echo "PlanNetToNdhNetworkSM.fml" ;;
		Organization) echo "PlanNetToNdhOrganizationSM.fml" ;;
		OrganizationAffiliation) echo "PlanNetToNdhOrganizationAffiliationSM.fml" ;;
		Practitioner) echo "PlanNetToNdhPractitionerSM.fml" ;;
		PractitionerRole) echo "PlanNetToNdhPractitionerRoleSM.fml" ;;
		*) return 1 ;;
	esac
}

map_target_profile() {
	case "$1" in
		Endpoint) echo "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Endpoint" ;;
		HealthcareService) echo "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-HealthcareService" ;;
		InsurancePlan) echo "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-InsurancePlan" ;;
		Location) echo "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Location" ;;
		Network) echo "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Network" ;;
		Organization) echo "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Organization" ;;
		OrganizationAffiliation) echo "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-OrganizationAffiliation" ;;
		Practitioner) echo "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Practitioner" ;;
		PractitionerRole) echo "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-PractitionerRole" ;;
		*) return 1 ;;
	esac
}

map_canonical() {
	printf 'http://hl7.org/fhir/us/ndh/StructureMap/%s\n' "$1"
}

count_json_files() {
	local dir="$1"
	if [[ -d "$dir" ]]; then
		find "$dir" -maxdepth 1 -type f -name '*.json' | wc -l | tr -d '[:space:]'
	else
		echo 0
	fi
}

ensure_command() {
	if ! command -v "$1" >/dev/null 2>&1; then
		echo "Error: $1 is required." >&2
		exit 127
	fi
}

compute_relative_path() {
	python3 - "$SCRIPT_DIR" "$1" <<'PY'
import os
import sys

script_dir = os.path.abspath(sys.argv[1])
path = os.path.abspath(sys.argv[2])
print(os.path.relpath(path, script_dir).replace(os.sep, '/'))
PY
}

invoke_validator_command() {
	local log_path="$1"
	local timeout_seconds="$2"
	local label="$3"
	shift 3
	python3 - "$timeout_seconds" "$log_path" "$label" "$@" <<'PY'
import subprocess
import sys

timeout_seconds = int(sys.argv[1])
log_path = sys.argv[2]
label = sys.argv[3]
arguments = sys.argv[4:]

process = subprocess.Popen(["java", *arguments], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
try:
	stdout, stderr = process.communicate(timeout=timeout_seconds)
	timed_out = False
except subprocess.TimeoutExpired:
	process.kill()
	stdout, stderr = process.communicate()
	timed_out = True

if timed_out:
	with open(log_path, "w", encoding="utf-8") as handle:
		handle.write(f"Timed out after {timeout_seconds} seconds: {label}\n")
		if stdout:
			handle.write(stdout)
		if stderr:
			handle.write(stderr)
	sys.exit(124)

exit_code = process.returncode if process.returncode is not None else -1
with open(log_path, "w", encoding="utf-8") as handle:
	handle.write(f"exit_code={exit_code}\n")
	if stdout:
		handle.write(stdout)
	if stderr:
		handle.write(stderr)

sys.exit(exit_code)
PY
}

get_translation_coverage_warnings() {
	local source_path="$1"
	local map_path="$2"
	python3 - "$source_path" "$map_path" "${IGNORED_TOP_LEVEL_FIELDS[@]}" <<'PY'
import json
import re
import sys
from pathlib import Path

source_path = Path(sys.argv[1])
map_path = Path(sys.argv[2])
ignored_fields = set(sys.argv[3:])

try:
	map_text = map_path.read_text(encoding="utf-8")
except Exception as exc:
	print(f"Unable to read map file for coverage checks: {exc}")
	sys.exit(0)

source_fields = set(re.findall(r'\bsrc\.([A-Za-z][A-Za-z0-9_]*)\b', map_text))
mapped_extension_urls = set(re.findall(r"where\s*\(\s*url\s*=\s*'([^']+)'\s*\)", map_text))
dropped_extension_urls = set(re.findall(r"src\.extension(?:\s+as\s+[A-Za-z][A-Za-z0-9_]*)?\s+where\s*\(\s*url\s*=\s*'([^']+)'\s*\)\s*\"drop[^"]*\"\s*;", map_text))

warnings = []

def meaningful(value):
	if value is None:
		return False
	if isinstance(value, str):
		return value.strip() != ""
	if isinstance(value, dict):
		return any(meaningful(item) for item in value.values())
	if isinstance(value, list):
		return any(meaningful(item) for item in value)
	return True

def walk(node, path):
	if isinstance(node, dict):
		extensions = node.get("extension")
		if isinstance(extensions, list):
			for item in extensions:
				if not isinstance(item, dict):
					continue
				url_value = item.get("url")
				if isinstance(url_value, str) and url_value.strip():
					if url_value in dropped_extension_urls:
						continue
					if url_value not in mapped_extension_urls:
						warnings.append(f"Unmapped extension URL at {path}.extension: {url_value}")
				walk(item, f"{path}.extension")

		for key, value in node.items():
			if key == "extension":
				continue
			walk(value, f"{path}.{key}")
	elif isinstance(node, list):
		for item in node:
			walk(item, path)

try:
	raw = source_path.read_text(encoding="utf-8")
	resource = json.loads(raw)
except Exception as exc:
	warnings.append(f"Unable to parse source JSON for coverage checks: {exc}")
	for warning in warnings:
		print(warning)
	sys.exit(0)

for key, value in resource.items():
	if key in ignored_fields:
		continue
	if meaningful(value) and key not in source_fields:
		warnings.append(f"No map rule detected for populated top-level field: {key}")

walk(resource, "$")

for warning in warnings:
	print(warning)
PY
}

while (($#)); do
	case "$1" in
		-ValidatorJar)
			VALIDATOR_JAR="${2:-}"
			shift 2
			;;
		-ValidatorDownloadUrl)
			VALIDATOR_DOWNLOAD_URL="${2:-}"
			shift 2
			;;
		-NdhPackage)
			NDH_PACKAGE="${2:-}"
			shift 2
			;;
		-FhirVersion)
			FHIR_VERSION="${2:-}"
			shift 2
			;;
		-TerminologyServer)
			TERMINOLOGY_SERVER="${2:-}"
			shift 2
			;;
		-MapNames)
			shift
			while (($#)) && [[ "${1:0:1}" != "-" ]]; do
				MAP_NAMES+=("$1")
				shift
			done
			;;
		-TransformTimeoutSeconds)
			TRANSFORM_TIMEOUT_SECONDS="${2:-}"
			shift 2
			;;
		-ValidationTimeoutSeconds)
			VALIDATION_TIMEOUT_SECONDS="${2:-}"
			shift 2
			;;
		-h|--help)
			usage
			exit 0
			;;
		*)
			echo "Unknown argument: $1" >&2
			usage >&2
			exit 2
			;;
	esac
done

ensure_command python3
ensure_command java

cd "$SCRIPT_DIR"

if [[ -z "$VALIDATOR_JAR" ]]; then
	VALIDATOR_JAR="$DEFAULT_VALIDATOR_JAR"
fi

if [[ "$VALIDATOR_JAR" != /* ]]; then
	if [[ -f "$SCRIPT_DIR/$VALIDATOR_JAR" ]]; then
		VALIDATOR_JAR="$SCRIPT_DIR/$VALIDATOR_JAR"
	fi
fi

if [[ ! -f "$VALIDATOR_JAR" ]]; then
	if [[ "$VALIDATOR_JAR" == "$DEFAULT_VALIDATOR_JAR" ]]; then
		echo "Validator jar not found in plannet folder. Downloading from: $VALIDATOR_DOWNLOAD_URL"
		if command -v curl >/dev/null 2>&1; then
			curl -fL "$VALIDATOR_DOWNLOAD_URL" -o "$DEFAULT_VALIDATOR_JAR"
		elif command -v wget >/dev/null 2>&1; then
			wget -O "$DEFAULT_VALIDATOR_JAR" "$VALIDATOR_DOWNLOAD_URL"
		else
			echo "Error: curl or wget is required to download validator_cli.jar." >&2
			exit 127
		fi
		if [[ ! -f "$DEFAULT_VALIDATOR_JAR" ]]; then
			echo "Failed to download validator jar to '$DEFAULT_VALIDATOR_JAR'." >&2
			exit 1
		fi
		VALIDATOR_JAR="$DEFAULT_VALIDATOR_JAR"
	else
		echo "Validator jar not found at '$VALIDATOR_JAR'." >&2
		exit 1
	fi
fi

if ((${#MAP_NAMES[@]} > 0)); then
	declare -A selected_map_names=()
	for map_name in "${MAP_NAMES[@]}"; do
		if [[ -n "${map_name// }" ]]; then
			selected_map_names["$map_name"]=1
		fi
	done

	declare -a unknown_map_names=()
	for map_name in "${!selected_map_names[@]}"; do
		local_known=false
		for available_map_name in "${AVAILABLE_MAP_NAMES[@]}"; do
			if [[ "$map_name" == "$available_map_name" ]]; then
				local_known=true
				break
			fi
		done
		if [[ "$local_known" == false ]]; then
			unknown_map_names+=("$map_name")
		fi
	done

	if ((${#unknown_map_names[@]} > 0)); then
		echo "Unknown map name(s): ${unknown_map_names[*]}. Available map names: ${AVAILABLE_MAP_NAMES[*]}." >&2
		exit 1
	fi

	declare -a SELECTED_MAPS=()
	for available_map_name in "${AVAILABLE_MAP_NAMES[@]}"; do
		if [[ -n "${selected_map_names[$available_map_name]:-}" ]]; then
			SELECTED_MAPS+=("$available_map_name")
		fi
	done
	echo "Running selected map(s): ${SELECTED_MAPS[*]}"
else
	declare -a SELECTED_MAPS=("${AVAILABLE_MAP_NAMES[@]}")
fi

declare -A MAP_FILE_BY_NAME=()
declare -A MAP_ID_BY_NAME=()
declare -A MAP_TARGET_PROFILE_BY_NAME=()
declare -A MAP_CANONICAL_BY_NAME=()
declare -A MAP_EXAMPLE_DIR_BY_NAME=()

for map_name in "${SELECTED_MAPS[@]}"; do
	map_file_name_value="$(map_file_name "$map_name")"
	map_example_dir_value="$(map_example_dir "$map_name")"
	map_target_profile_value="$(map_target_profile "$map_name")"
	map_path="$MAPS_ROOT/$map_file_name_value"
	if [[ ! -f "$map_path" ]]; then
		echo "Map file not found for $map_name: '$map_path'." >&2
		exit 1
	fi
	MAP_FILE_BY_NAME["$map_name"]="$map_file_name_value"
	MAP_ID_BY_NAME["$map_name"]="${map_file_name_value%.fml}"
	MAP_TARGET_PROFILE_BY_NAME["$map_name"]="$map_target_profile_value"
	MAP_CANONICAL_BY_NAME["$map_name"]="$(map_canonical "${map_file_name_value%.fml}")"
	MAP_EXAMPLE_DIR_BY_NAME["$map_name"]="$map_example_dir_value"
done

validator_jar_arg="$(compute_relative_path "$VALIDATOR_JAR")"

download_examples_script="$SCRIPT_DIR/download-examples.sh"
example_count=0
for map_name in "${SELECTED_MAPS[@]}"; do
	source_dir="$EXAMPLES_ROOT/${MAP_EXAMPLE_DIR_BY_NAME[$map_name]}"
	example_count=$((example_count + $(count_json_files "$source_dir")))
done

if [[ "$example_count" -eq 0 ]]; then
	if [[ ! -f "$download_examples_script" ]]; then
		echo "No mapped examples found and downloader script is missing at '$download_examples_script'." >&2
		exit 1
	fi

	echo "No mapped Plan-Net examples found. Downloading fresh examples from the Plan-Net IG publication."
	"$download_examples_script"

	example_count=0
	for map_name in "${SELECTED_MAPS[@]}"; do
		source_dir="$EXAMPLES_ROOT/${MAP_EXAMPLE_DIR_BY_NAME[$map_name]}"
		example_count=$((example_count + $(count_json_files "$source_dir")))
	done

	if [[ "$example_count" -eq 0 ]]; then
		echo "Download completed but no mapped Plan-Net examples were found in examples folders." >&2
		exit 1
	fi
fi

mkdir -p "$TRANSFORMS_ROOT" "$VALIDATION_ROOT" "$REPORTS_ROOT"

total_inputs=0
for map_name in "${SELECTED_MAPS[@]}"; do
	source_dir="$EXAMPLES_ROOT/${MAP_EXAMPLE_DIR_BY_NAME[$map_name]}"
	total_inputs=$((total_inputs + $(count_json_files "$source_dir")))
done

summary_rows_file="$(mktemp)"
trap 'rm -f "$summary_rows_file"' EXIT

processed_inputs=0

append_summary_row() {
	printf '%s\x1f%s\x1f%s\x1f%s\x1f%s\x1f%s\x1f%s\x1f%s\n' "$1" "$2" "$3" "$4" "$5" "$6" "$7" "$8" >> "$summary_rows_file"
}

for map_name in "${SELECTED_MAPS[@]}"; do
	source_dir="$EXAMPLES_ROOT/${MAP_EXAMPLE_DIR_BY_NAME[$map_name]}"
	map_file_path="$MAPS_ROOT/${MAP_FILE_BY_NAME[$map_name]}"

	if [[ ! -d "$source_dir" ]]; then
		append_summary_row "$map_name" "(none)" "skipped-no-input-folder" "skipped" "0" "" "" ""
		continue
	fi

	mapfile -d '' -t source_files < <(find "$source_dir" -maxdepth 1 -type f -name '*.json' -print0)
	if ((${#source_files[@]} == 0)); then
		append_summary_row "$map_name" "(none)" "skipped-no-input-files" "skipped" "0" "" "" ""
		continue
	fi

	map_transform_dir="$TRANSFORMS_ROOT/${MAP_EXAMPLE_DIR_BY_NAME[$map_name]}"
	map_validation_dir="$VALIDATION_ROOT/${MAP_EXAMPLE_DIR_BY_NAME[$map_name]}"
	mkdir -p "$map_transform_dir" "$map_validation_dir"

	for source_file in "${source_files[@]}"; do
		processed_inputs=$((processed_inputs + 1))
		base_name="$(basename "$source_file" .json)"
		transformed_file="$map_transform_dir/$base_name.json"
		transformed_file_arg="$(compute_relative_path "$transformed_file")"
		source_file_arg="$(compute_relative_path "$source_file")"
		transform_log="$map_validation_dir/$base_name.transform.log.txt"
		transform_args_log="$map_validation_dir/$base_name.transform.args.txt"
		validation_log="$map_validation_dir/$base_name.validation.log.txt"
		warning_log="$map_validation_dir/$base_name.warnings.log.txt"

		coverage_warnings=()
		while IFS= read -r warning; do
			coverage_warnings+=("$warning")
		done < <(get_translation_coverage_warnings "$source_file" "$map_file_path")

		if ((${#coverage_warnings[@]} > 0)); then
			{
				echo "Potential data-loss/unmapped warnings for $base_name.json:"
				for warning in "${coverage_warnings[@]}"; do
					echo " - $warning"
				done
			} > "$warning_log"
			echo "[$processed_inputs/$total_inputs] $map_name/$base_name.json: ${#coverage_warnings[@]} coverage warning(s). See $warning_log" >&2
		else
			echo "No potential data-loss/unmapped warnings detected." > "$warning_log"
		fi

		echo "[$processed_inputs/$total_inputs] Transforming $map_name/$base_name.json"

		transform_args=(
			-jar "$validator_jar_arg"
			transform
			"${MAP_ID_BY_NAME[$map_name]}"
			-ig "$NDH_PACKAGE"
			"$source_file_arg"
			-version "$FHIR_VERSION"
			-tx "$TERMINOLOGY_SERVER"
			-output "$transformed_file_arg"
		)

		{
			echo "timestamp=$(date -u +%Y-%m-%dT%H:%M:%SZ)"
			echo "script=$0"
			echo "map_name=$map_name"
			echo "map_id=${MAP_ID_BY_NAME[$map_name]}"
			echo "map_canonical=${MAP_CANONICAL_BY_NAME[$map_name]}"
			echo "transform_args=java ${transform_args[*]}"
		} > "$transform_args_log"

		transform_status="fail"
		validation_status="skipped"
		if invoke_validator_command "$transform_log" "$TRANSFORM_TIMEOUT_SECONDS" "transform $map_name/$base_name.json" "${transform_args[@]}"; then
			transform_status="pass"
		else
			transform_exit_code=$?
			if [[ $transform_exit_code -eq 124 ]]; then
				transform_status="fail-timeout"
			elif [[ -f "$transform_log" ]] && grep -q "Unable to find StructureDefinition for source type ('null')" "$transform_log"; then
				transform_status="fail-null-source-type"
				echo "[$processed_inputs/$total_inputs] $map_name/$base_name.json: validator failed with source type null. If maps were edited locally, rebuild/publish ndh#dev or run transform against the updated local map artifact." >&2
			fi
		fi

		if [[ "$transform_status" == "pass" && -f "$transformed_file" ]]; then
			echo "[$processed_inputs/$total_inputs] Validating $map_name/$base_name.json"
			validate_args=(
				-jar "$validator_jar_arg"
				"$transformed_file_arg"
				-version "$FHIR_VERSION"
				-tx "$TERMINOLOGY_SERVER"
				-profile "${MAP_TARGET_PROFILE_BY_NAME[$map_name]}"
				-ig "$NDH_PACKAGE"
			)

			if invoke_validator_command "$validation_log" "$VALIDATION_TIMEOUT_SECONDS" "validate $map_name/$base_name.json" "${validate_args[@]}"; then
				validation_status="pass"
			else
				validation_exit_code=$?
				if [[ $validation_exit_code -eq 124 ]]; then
					validation_status="fail-timeout"
				else
					validation_status="fail"
				fi
			fi
		fi

		if [[ "$transform_status" != "pass" && -f "$transformed_file" ]]; then
			rm -f "$transformed_file"
			echo "[$processed_inputs/$total_inputs] $map_name/$base_name.json: removed stale transformed output from a previous run: $transformed_file" >&2
		fi

		if [[ -f "$transformed_file" ]]; then
			transformed_file_for_summary="$transformed_file"
		else
			transformed_file_for_summary=""
		fi

		append_summary_row \
			"$map_name" \
			"$(basename "$source_file")" \
			"$transform_status" \
			"$validation_status" \
			"${#coverage_warnings[@]}" \
			"$transformed_file_for_summary" \
			"$validation_log" \
			"$warning_log"
	done
done

summary_csv="$REPORTS_ROOT/summary.csv"
python3 - "$summary_rows_file" "$summary_csv" <<'PY'
import csv
import sys

rows_path = sys.argv[1]
csv_path = sys.argv[2]

headers = [
	"map",
	"input",
	"transform",
	"validation",
	"warnings",
	"transformed_file",
	"validation_log",
	"warning_log",
]

rows = []
with open(rows_path, encoding="utf-8") as handle:
	for line in handle:
		line = line.rstrip("\n")
		if not line:
			continue
		rows.append(line.split("\x1f"))

with open(csv_path, "w", encoding="utf-8", newline="") as handle:
	writer = csv.writer(handle)
	writer.writerow(headers)
	writer.writerows(rows)
PY

total=$(wc -l < "$summary_rows_file" | tr -d '[:space:]')
pass_both=$(python3 - "$summary_rows_file" <<'PY'
import sys

count = 0
with open(sys.argv[1], encoding="utf-8") as handle:
	for line in handle:
		parts = line.rstrip("\n").split("\x1f")
		if len(parts) >= 4 and parts[2] == "pass" and parts[3] == "pass":
			count += 1
print(count)
PY
)
fail_any=$(python3 - "$summary_rows_file" <<'PY'
import sys

count = 0
with open(sys.argv[1], encoding="utf-8") as handle:
	for line in handle:
		parts = line.rstrip("\n").split("\x1f")
		if len(parts) >= 4 and (parts[2] == "fail" or parts[3] == "fail"):
			count += 1
print(count)
PY
)
total_warnings=$(python3 - "$summary_rows_file" <<'PY'
import sys

total = 0
with open(sys.argv[1], encoding="utf-8") as handle:
	for line in handle:
		parts = line.rstrip("\n").split("\x1f")
		if len(parts) >= 5:
			try:
				total += int(parts[4])
			except ValueError:
				pass
print(total)
PY
)

echo "Plan-Net proof run complete."
echo "Summary: total=$total, pass_both=$pass_both, fail_any=$fail_any, warnings=$total_warnings"
echo "CSV report: $summary_csv"
