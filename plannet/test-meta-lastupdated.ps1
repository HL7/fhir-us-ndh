param(
    [string]$ValidatorJar = (Join-Path $PSScriptRoot "validator_cli.jar"),
    [string]$NdhPackage = "hl7.fhir.us.ndh#dev"
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$temporaryRoot = Join-Path ([IO.Path]::GetTempPath()) ("ndh-timestamp-tests-" + [guid]::NewGuid())
$null = New-Item -ItemType Directory -Path $temporaryRoot
$sourcePath = Join-Path $temporaryRoot "source.json"
$targetPath = Join-Path $temporaryRoot "target.json"
$logPath = Join-Path $temporaryRoot "transform.log"
$profile = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Practitioner"
$existingTimestamp = "2020-07-07T13:26:22.0314215+00:00"

try {
    foreach ($case in @("existing-timestamp", "missing-timestamp", "missing-meta")) {
        $source = [ordered]@{ resourceType = "Practitioner"; active = $true }
        if ($case -ne "missing-meta") {
            $source.meta = [ordered]@{
                profile = @("http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-Practitioner")
            }
            if ($case -eq "existing-timestamp") { $source.meta.lastUpdated = $existingTimestamp }
        }
        $source | ConvertTo-Json -Depth 10 | Set-Content -LiteralPath $sourcePath -Encoding UTF8
        if (Test-Path -LiteralPath $targetPath) { Remove-Item -LiteralPath $targetPath -Force }
        $started = [DateTimeOffset]::UtcNow
        & java -jar $ValidatorJar transform PlanNetToNdhPractitionerSM $sourcePath -ig $NdhPackage -version 4.0.1 -tx https://tx.fhir.org -output $targetPath *> $logPath
        $exitCode = $LASTEXITCODE
        $finished = [DateTimeOffset]::UtcNow
        $log = Get-Content -LiteralPath $logPath -Raw
        if ($exitCode -ne 0 -or $log -match '(?im)Failure:|Exception' -or -not (Test-Path -LiteralPath $targetPath)) {
            throw "Transform failed for ${case}: $log"
        }
        $target = Get-Content -LiteralPath $targetPath -Raw | ConvertFrom-Json
        if ($null -eq $target.PSObject.Properties['meta'] -or $null -eq $target.meta.PSObject.Properties['lastUpdated']) {
            throw "${case}: no target meta.lastUpdated."
        }
        if ($case -eq "existing-timestamp") {
            if ([DateTimeOffset]::Parse($target.meta.lastUpdated) -ne [DateTimeOffset]::Parse($existingTimestamp)) {
                throw "Existing timestamp was overwritten."
            }
        }
        else {
            $actual = [DateTimeOffset]::Parse($target.meta.lastUpdated)
            if ($actual -lt $started.AddSeconds(-1) -or $actual -gt $finished.AddSeconds(1)) {
                throw "${case}: timestamp is outside the transformation interval: $actual."
            }
        }
        if ($target.meta.profile -notcontains $profile) { throw "${case}: target NDH profile is missing." }
        Write-Host "PASS: $case"
    }
}
finally {
    foreach ($path in @($sourcePath, $targetPath, $logPath)) {
        if (Test-Path -LiteralPath $path) { Remove-Item -LiteralPath $path -Force }
    }
    Remove-Item -LiteralPath $temporaryRoot
}
