param(
    [string]$ZipUrl = "https://hl7.org/fhir/us/davinci-pdex-plan-net/examples.json.zip",
    [ValidateSet("plannet-ig", "safhir", "healthspring")]
    [string[]]$Sources = @("plannet-ig", "safhir", "healthspring"),
    [ValidateRange(0, [int]::MaxValue)]
    [int]$Limit = 0
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"
$pythonArgs = @()
if (Get-Command py -ErrorAction SilentlyContinue) {
    $python = "py"
    $pythonArgs = @("-3")
}
elseif (Get-Command python3 -ErrorAction SilentlyContinue) {
    $python = "python3"
}
elseif (Get-Command python -ErrorAction SilentlyContinue) {
    $python = "python"
}
else {
    throw "Python 3 is required to download examples."
}

$pythonArgs += @("-u", (Join-Path $PSScriptRoot "download-examples.py"), "--zip-url", $ZipUrl, "--limit", "$Limit", "--sources")
$pythonArgs += $Sources
& $python @pythonArgs
if ($LASTEXITCODE -ne 0) { throw "Example download failed (exit $LASTEXITCODE). See the source-specific download logs in plannet\temp." }
