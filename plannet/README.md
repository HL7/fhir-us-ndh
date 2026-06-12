# Plan-Net to NDH proof harness

This folder contains a repeatable transform/validate workflow to show:

1. A Plan-Net input example can be transformed by the NDH StructureMap.
2. The transformed output validates against the corresponding NDH conformance profile.

## What this runs

For each input example in `examples/<MapName>/*.json`, the harness:

1. Runs transform with the matching map canonical URL.
2. Writes transformed output to `output/transformed/<MapName>/`.
3. Validates transformed output against the target NDH profile.
4. Writes logs to `output/validation/<MapName>/`.
5. Produces `reports/summary.csv`.

During translation, the harness also performs a map-coverage check and emits warnings when populated source content appears to have no matching map rule. This includes:

- populated top-level source fields not referenced by `src.<field>` in the StructureMap
- extension URLs found in source data that do not appear in map `where (url = '...')` rules

Warnings are written to `output/validation/<MapName>/<Example>.warnings.log.txt` and counted in the summary CSV.

If no mapped JSON examples are found in the `examples/<MapName>/` folders, `run-proof.ps1` automatically downloads fresh examples from the Plan-Net IG publication and sorts them before running transforms.

## Prerequisites

- Java on PATH.
- Access to package dependencies used by validation:
  - `hl7.fhir.us.ndh#current`
  - `hl7.fhir.us.davinci-pdex-plan-net#1.2.0`

Validator jar behavior:

- If `validator_cli.jar` is already present in the `plannet` folder, it is used.
- If it is missing and no `-ValidatorJar` path is provided, `run-proof.ps1` auto-downloads it.
- You can still override with `-ValidatorJar <path>` or `VALIDATOR_JAR`.

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

Optional timeout tuning:

```powershell
./plannet/run-proof.ps1 -TransformTimeoutSeconds 1200 -ValidationTimeoutSeconds 1200
```

Run only specific map(s):

```powershell
./plannet/run-proof.ps1 -MapNames Endpoint
```

Terminology server mode:

- Default is `-TerminologyServer https://tx.fhir.org`.
- To use a live terminology server, pass for example:

```powershell
./plannet/run-proof.ps1 -TerminologyServer https://tx.fhir.org
```

During execution, the script now prints per-file progress such as `[3/49] Transforming ...` and `[3/49] Validating ...`.

## Download Plan-Net examples

Use the publication zip from Da Vinci Plan-Net:

- `https://hl7.org/fhir/us/davinci-pdex-plan-net/examples.json.zip`

Download and sort examples into harness folders:

```powershell
./plannet/download-examples.ps1
```

Linux/macOS equivalent:

```bash
./plannet/download-examples.sh
```

Then run proof:

```powershell
./plannet/run-proof.ps1 -ValidatorJar C:\tools\validator_cli.jar
```

## Pull examples from a live FHIR endpoint

Fetch up to the first 100 instances of each Plan-Net resource type via FHIR search from a server endpoint:

- https://api-ahp-prd.safhir.io/v1/api/provider-directory/
- https://data.healthspring.healthlx.com:8003/

Resource types fetched:

- `Endpoint`
- `HealthcareService`
- `InsurancePlan`
- `Location`
- `Network`
- `Organization`
- `OrganizationAffiliation`
- `Practitioner`
- `PractitionerRole`

PowerShell:

```powershell
./plannet/fetch-plannet-from-fhir.ps1 https://data.healthspring.healthlx.com:8003/
```

Linux/macOS:

```bash
./plannet/fetch-plannet-from-fhir.sh https://data.healthspring.healthlx.com:8003/
```

Optional output folder:

```bash
./plannet/fetch-plannet-from-fhir.sh https://data.healthspring.healthlx.com:8003/ ./plannet/examples/from-server
```

Authentication:

- Set `FHIR_BEARER_TOKEN` to pass `Authorization: Bearer <token>`.
- If unset, requests are sent without auth headers.

Output:

- Resources are written under `examples/from-server/<ResourceType>/` by default.
- A run summary is written to `examples/from-server/summary.json`.

## Report interpretation

`reports/summary.csv` columns:

- `map`: map family used.
- `input`: source file name.
- `transform`: `pass` or `fail` (or skipped reason).
- `validation`: `pass`, `fail`, or `skipped`.
- `warnings`: count of potential data-loss/unmapped warnings found during translation.
- `transformed_file`: generated transformed instance path.
- `validation_log`: validation log path.
- `warning_log`: warning details log path.

A successful proof run for an example means both:

- `transform=pass`
- `validation=pass`

## Notes

- Input folder conventions are documented in `examples/README.md`.
- The harness currently validates transformed outputs against NDH target profiles only.
- If validator CLI flags change in your local version, adjust command args in `run-proof.ps1`.
- Downloaded examples, transformed output, and generated reports are ignored via `.gitignore` and are not intended for repository commits.
- Linux/macOS shell scripts require common CLI tools: `curl` (or `wget`), `unzip` (or `bsdtar`), and `python3`.
