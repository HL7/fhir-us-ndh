# Plan-Net to NDH proof harness

This folder contains a repeatable transform/validate workflow to show:

1. A Plan-Net input example can be transformed by the NDH StructureMap.
2. The transformed output validates against the corresponding NDH conformance profile.

## What this runs

For each JSON input in `examples/<Source>/<ResourceType>/`, the harness:

1. Runs transform with the matching map canonical URL.
2. Writes transformed output to `output/transformed/<Source>/<MapName>/`.
3. Validates transformed output against the target NDH profile.
4. Writes logs to `output/validation/<Source>/<MapName>/`.
5. Updates `reports/<Source>/summary.csv` and the combined `reports/summary.csv`
   after every completed or skipped input.

Each source is independent: resources are never merged or deduplicated across
sites, even when IDs or filenames are identical. Each downloaded source's `source.json`
is a FHIR R4 `Provenance` resource identifying the downloaded resources, source
URL, download period, recorded time, and downloader agent.
Operational details (source name, resource counts, completion status, download
limit, and the IG archive SHA-256) are kept separately in `download-summary.json`.
Copies of both files accompany that source's proof report. The report's
`input` column includes the source/resource-type path. Network results use their
own `Network` output folder.

For `recoded-plannet`, `source.json` is a FHIR R4 collection `Bundle` containing
one `Provenance` per source-file-to-target-resource derivation. Each Provenance
has exactly one target and one original example file as its derivation entity,
along with the original download Provenance and ConceptMaps as source entities.
`download-provenance.json`
preserves the separate original download event and is also copied to the report.
The derivation's `recorded` time is when its record was written, not an inferred
conversion time. Operational summaries are not FHIR resources. An empty download
has no Provenance resource because FHIR requires at least one target.

Discovery also supports nested source folders and legacy root-level resource
folders, but the downloader generates only the named source layout below.
Legacy root inputs report under `reports/_root/`; their origin is not inferred.

Only JSON files directly inside the eight supported resource-type folders are
inputs. Download summaries, source manifests, and archive contents outside
resource-type folders are not proof inputs.
Organization resources are considered for both Organization and Network maps;
profile/type routing selects one and records the other as skipped. Versioned
profile canonicals are supported.

The summary is reset when a run starts, then saved incrementally so progress is
available during long runs. A partial summary is not evidence of full coverage;
wait for the final `Plan-Net proof run complete` message. Each resource starts
separate transform and validation JVMs, so large server datasets can take days.
The proof validates transformed resources against NDH, not source resources
against Plan-Net.

During translation, the harness also performs a map-coverage check and emits warnings when populated source content appears to have no matching map rule. This includes:

- populated top-level source fields not referenced by `src.<field>` in the StructureMap
- extension URLs found in source data that do not appear in map `where (url = '...')` rules

Warnings are written to `output/validation/<Source>/<MapName>/<Example>.warnings.log.txt` and counted in the summary CSV.

When NDH has no equivalent extension, the maps preserve the original Plan-Net
extension rather than dropping it. After a successful transform, both runners
check extensions copied unchanged by the map against the output, including
nested data and repeated occurrences. Output property order does not matter.
The check permits relocation of an extension within the resource, as some maps
copy nested source extensions to the target resource's extension list.
Missing or altered copies set `transform=fail-extension-preservation` and are
reported in the warning log and summary CSV. Extensions translated to NDH URLs
continue to use the existing mapping and profile-validation checks.

If no mapped JSON examples are found in any dataset, the runners automatically download fresh examples from the Plan-Net IG publication and sort them before running transforms.

Note: Plan-Net Network is a profile of `Organization` (not a standalone resource type). For the `Network` map, inputs are read from each dataset's `Organization/` folder.

## Prerequisites

- Java on PATH.
- Access to package dependencies used by validation:
  - `hl7.fhir.us.ndh#current`
  - `hl7.fhir.us.davinci-pdex-plan-net#1.2.0`

Validator jar behavior:

- If `validator_cli.jar` is already present in the `plannet` folder, it is used.
- If it is missing and no `-ValidatorJar` path is provided, `run-proof.ps1` auto-downloads it.
- You can still override with `-ValidatorJar <path>` or `VALIDATOR_JAR`.

### Download or update the validator

These scripts download `validator_cli.jar` from the latest GitHub release of
`hapifhir/org.hl7.fhir.core` into this folder, replacing an existing copy only
after a successful, non-empty download. They work from any current directory.
The downloaded jar is ignored by Git.

Windows cmd:

```bat
plannet\download-validator.bat
```

Windows PowerShell:

```powershell
.\plannet\download-validator.ps1
```

Linux/macOS (requires `curl` or `wget`):

```bash
bash ./plannet/download-validator.sh
```

These scripts always fetch the latest release, even when a local jar exists.
Download failures return a nonzero exit code and preserve the existing jar.

### Example input setup

Example input behavior:

- If mapped example folders already contain JSON inputs, those local files are used.
- If mapped folders are empty, examples are downloaded fresh from the Plan-Net IG zip.

Set one of these before running:

- Environment variable `VALIDATOR_JAR`.
- Script argument `-ValidatorJar <path-to-validator_cli.jar>`.

## Run

Windows cmd:

```bat
plannet\run-proof.bat
```

Endpoint-only (faster iteration while debugging one map):

```bat
plannet\run-proof-endpoint.bat
```

Linux/macOS shell:

```bash
./plannet/run-proof.sh
```

Endpoint-only:

```bash
./plannet/run-proof-endpoint.sh
```

Windows PowerShell:

```powershell
./plannet/run-proof.ps1
```

To test the locally built NDH package rather than a cached or published package:

```powershell
.\plannet\run-proof.ps1 -NdhPackage ..\output\package.tgz
```

Relative package paths resolve from `plannet/`, where both runners execute.
Rebuild the IG first if its maps or profiles have changed since `output/package.tgz`
was generated.

Optional timeout tuning:

```powershell
./plannet/run-proof.ps1 -TransformTimeoutSeconds 1200 -ValidationTimeoutSeconds 1200
```

Run only specific map(s):

```powershell
./plannet/run-proof.ps1 -MapNames Endpoint
```

Run one source independently (omit `-Sources` to test every available source):

```powershell
.\plannet\run-proof.ps1 -Sources plannet-ig -NdhPackage ..\output\package.tgz
```

```bash
./plannet/run-proof.sh -Sources plannet-ig -NdhPackage ../output/package.tgz
```

Only the selected sources' individual reports are refreshed; other sources'
reports remain intact. The combined report describes only the current run.

Terminology server mode:

- Default is `-TerminologyServer https://tx.fhir.org`.
- To use a live terminology server, pass for example:

```powershell
./plannet/run-proof.ps1 -TerminologyServer https://tx.fhir.org
```

During execution, the script now prints per-file progress such as `[3/49] Transforming ...` and `[3/49] Validating ...`.

## Generate all example sources

The entire `examples/` folder is generated data, not a place for hand-maintained
test fixtures. From a checkout without that folder, one command downloads all
three configured sources and creates their folders and provenance manifests:

```powershell
./plannet/download-examples.ps1
```

Linux/macOS equivalent:

```bash
./plannet/download-examples.sh
```

Then run proof:

```powershell
./plannet/run-proof.ps1 -NdhPackage ..\output\package.tgz
```

Generated layout:

```text
examples/
  plannet-ig/
    source.json
    examples.json.zip
    Endpoint/*.json
    Organization/*.json
    ...
  safhir/
    source.json
    summary.json
    Endpoint/*.json
    ...
  healthspring/
    source.json
    summary.json
    Endpoint/*.json
    ...
```

| Source folder | Download URL |
|---|---|
| `plannet-ig` | https://hl7.org/fhir/us/davinci-pdex-plan-net/examples.json.zip |
| `safhir` | https://api-ahp-prd.safhir.io/v1/api/provider-directory/ |
| `healthspring` | https://data.healthspring.healthlx.com:8003/ |

The Python implementation is shared by the PowerShell and shell download
entrypoints. Source names and URLs are defined in `download-examples.py`.
Only the eight supported resource types are selected from the IG archive;
IG definitions are not test cases.

Server downloads request pages of up to 2,000 resources and follow every
`Bundle.link[next]` by default, with no total-resource cap. Duplicate IDs within
one resource type are saved once; repeated page URLs, invalid responses and
partial HTTP/network failures fail the download rather than reporting success.
Repeated IDs across different sources remain independent test cases.
HTTP 429 and temporary gateway/service errors receive up to five retries,
honoring `Retry-After` or using exponential backoff. An exhausted or permanent
failure stops that source and marks the remaining types as not attempted.

Each source is staged outside `examples/` and replaces only its own previous
dataset after every resource type succeeds. This removes stale resources on a
successful refresh and preserves the previous dataset if a download fails.
The command returns nonzero if any requested source fails; check
`temp/download-<Source>.log.txt` for FHIR download details. Do not start proofs
until the requested downloads finish. Existing unrecognized/legacy folders are
not deleted automatically; remove or relocate them explicitly before testing
to avoid including their resources again.

To refresh selected sources, or explicitly request a smaller test sample:

```powershell
.\plannet\download-examples.ps1 -Sources plannet-ig,safhir
.\plannet\download-examples.ps1 -Sources healthspring -Limit 2000
```

```bash
./plannet/download-examples.sh --sources plannet-ig safhir
./plannet/download-examples.sh --sources healthspring --limit 2000
```

`-Limit 0` / `--limit 0` is the default and means all pages. Any nonzero limit
is recorded in `download-summary.json`, so a sample is distinguishable from a complete
server traversal.

## Pull examples from another FHIR endpoint

The lower-level fetch command is also available for custom sites.

Resource types fetched:

- `Endpoint`
- `HealthcareService`
- `InsurancePlan`
- `Location`
- `Organization`
- `OrganizationAffiliation`
- `Practitioner`
- `PractitionerRole`

`Network` is intentionally not fetched as a separate resource type because Network instances are `Organization` resources constrained by the Plan-Net Network profile.

PowerShell:

```powershell
./plannet/fetch-plannet-from-fhir.ps1 https://example.org/fhir .\plannet\examples\custom-site
```

Linux/macOS:

```bash
./plannet/fetch-plannet-from-fhir.sh https://example.org/fhir /absolute/path/to/plannet/examples/custom-site
```

Without an output argument the endpoint hostname is used as the source folder.
Use distinct output folders when endpoints share a hostname. Prefer the main
downloader for configured sources because it stages and safely replaces whole
datasets; the lower-level fetch command writes directly to its output folder.

Authentication:

- Set `FHIR_BEARER_TOKEN` to pass `Authorization: Bearer <token>`.
- If unset, requests are sent without auth headers.

Output:

- Resources are written under `examples/<Hostname>/<ResourceType>/` by default.
- `source.json` is FHIR R4 Provenance for the download; `download-summary.json`
  records the endpoint URL, timestamps, limit, counts and completion.
- `summary.json` records the resource-type download results.

## Report interpretation

All maps retain an existing source `meta.lastUpdated`. When it is missing (or
`meta` is absent), they use the current date/time at transformation and still
set the NDH target profile. This fallback is a transformation timestamp, not
an assertion of when the source was last modified.

Each source has its own `reports/<Source>/summary.csv` and provenance manifest.
The root `reports/summary.csv` is a convenience aggregation, not a merged dataset.
Both report forms have these columns:

- `map`: map family used.
- `input`: source-qualified path, for example `safhir/Organization/123.json`.
- `transform`: `pass`, `fail`, a specific failure such as `fail-extension-preservation`, or a skipped reason.
- `validation`: `pass`, `fail`, or `skipped`.
- `warnings`: count of potential data-loss/unmapped warnings found during translation.
- `transformed_file`: generated transformed instance path.
- `validation_log`: validation log path.
- `warning_log`: warning details log path.

A successful proof run for an example means both:

- `transform=pass`
- `validation=pass`

Warnings and informational messages alone do not fail validation. The PowerShell
runner retains the process handle to reliably capture the validator's exit code.
If that code is unavailable, it accepts only an explicit `Success: 0 errors, ...`
validation summary and emits a diagnostic warning. Explicit validation failures,
exceptions, timeouts, and known nonzero exit codes still fail.

Run the focused extension-preservation regression tests without Java or network access:

```powershell
.\plannet\test-extension-preservation.ps1
.\plannet\test-validator-status.ps1
.\plannet\test-source-discovery.ps1
```

The shell discovery/routing regression test is `bash ./plannet/test-source-discovery.sh`.

Test download generation and pagination offline with a local HTTP fixture:

```powershell
py -3 .\plannet\test-download-examples.py
```

Test the mapping timestamp behavior against the built `hl7.fhir.us.ndh#dev`
package (requires Java and the validator jar):

```powershell
.\plannet\test-meta-lastupdated.ps1
```

## Notes

- The generated `examples/` folder can be recreated using `download-examples`; its layout is documented above.
- The harness currently validates transformed outputs against NDH target profiles only.
- If validator CLI flags change in your local version, adjust command args in `run-proof.ps1`.
- Downloaded examples, transformed output, and generated reports are ignored via `.gitignore` and are not intended for repository commits.
- Example generation requires Python 3; shell entrypoints require Bash.
