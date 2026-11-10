Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$url = "https://github.com/hapifhir/org.hl7.fhir.core/releases/latest/download/validator_cli.jar"
$destination = Join-Path $PSScriptRoot "validator_cli.jar"
$temporaryPath = Join-Path $PSScriptRoot ("validator_cli.{0}.tmp" -f [guid]::NewGuid())

try {
    Write-Host "Downloading the latest FHIR validator..."
    Invoke-WebRequest -Uri $url -OutFile $temporaryPath -UseBasicParsing
    if ((Get-Item -LiteralPath $temporaryPath).Length -eq 0) {
        throw "The downloaded validator is empty."
    }
    Move-Item -LiteralPath $temporaryPath -Destination $destination -Force
    Write-Host "Validator saved to $destination"
}
finally {
    if (Test-Path -LiteralPath $temporaryPath) {
        Remove-Item -LiteralPath $temporaryPath -Force
    }
}
