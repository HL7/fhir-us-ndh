param(
    [string]$ZipUrl = "https://hl7.org/fhir/us/davinci-pdex-plan-net/examples.json.zip"
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$scriptRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$examplesRoot = Join-Path $scriptRoot "examples"
$sourceRoot = Join-Path $examplesRoot "source"
$zipPath = Join-Path $sourceRoot "examples.json.zip"
$extractDir = Join-Path $sourceRoot "unzipped"

$resourceFolders = @(
    "Endpoint",
    "HealthcareService",
    "InsurancePlan",
    "Location",
    "Network",
    "Organization",
    "OrganizationAffiliation",
    "Practitioner",
    "PractitionerRole"
)

$null = New-Item -ItemType Directory -Force -Path $sourceRoot

Write-Host "Downloading Plan-Net examples archive..."
Invoke-WebRequest -Uri $ZipUrl -OutFile $zipPath

if (Test-Path -Path $extractDir) {
    Remove-Item -Path $extractDir -Recurse -Force
}

Write-Host "Extracting archive..."
Expand-Archive -Path $zipPath -DestinationPath $extractDir -Force

$counts = @{}
foreach ($folder in $resourceFolders) {
    $dest = Join-Path $examplesRoot $folder
    $null = New-Item -ItemType Directory -Force -Path $dest
    $counts[$folder] = 0
}

Get-ChildItem -Path $extractDir -Filter *.json -File | ForEach-Object {
    try {
        $obj = Get-Content -Raw -Path $_.FullName | ConvertFrom-Json -ErrorAction Stop
        $resourceType = [string]$obj.resourceType

        if ($resourceFolders -contains $resourceType) {
            $destDir = Join-Path $examplesRoot $resourceType
            Copy-Item -Path $_.FullName -Destination (Join-Path $destDir $_.Name) -Force
            $counts[$resourceType]++
        }
    }
    catch {
        # Ignore files that are not valid JSON resources.
    }
}

Write-Host "Done. Copied examples by resource type:"
$counts.GetEnumerator() | Sort-Object Name | ForEach-Object {
    Write-Host ("  {0}: {1}" -f $_.Name, $_.Value)
}

Write-Host "Archive: $zipPath"
Write-Host "Extracted: $extractDir"
