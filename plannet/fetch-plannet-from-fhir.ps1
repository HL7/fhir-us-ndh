param(
    [Parameter(Mandatory = $true, Position = 0)]
    [string]$FhirBaseUrl,
    [Parameter(Position = 1)]
    [string]$OutputDir
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$scriptRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$pythonScript = Join-Path $scriptRoot "fetch-plannet-from-fhir.py"

function Test-PythonCandidate {
    param(
        [Parameter(Mandatory = $true)]
        [string]$Command,
        [string[]]$ProbeArgs = @("--version")
    )

    if (-not (Get-Command $Command -ErrorAction SilentlyContinue)) {
        return $false
    }

    try {
        $output = (& $Command @ProbeArgs 2>&1 | Out-String)
        if ($LASTEXITCODE -eq 0) {
            return $true
        }

        # Common Windows Store shim text.
        if ($output -match "Python was not found") {
            return $false
        }
    }
    catch {
        return $false
    }

    return $false
}

$pythonCmd = $null
$pythonPrefixArgs = @()

# Prefer the Python launcher on Windows if present.
if (Test-PythonCandidate -Command "py" -ProbeArgs @("-3", "--version")) {
    $pythonCmd = "py"
    $pythonPrefixArgs = @("-3")
}
elseif (Test-PythonCandidate -Command "python3") {
    $pythonCmd = "python3"
}
elseif (Test-PythonCandidate -Command "python") {
    $pythonCmd = "python"
}
else {
    throw "Python runtime not found. Install Python 3 (or the py launcher), then rerun."
}

$argsList = @($pythonScript, $FhirBaseUrl)
if (-not [string]::IsNullOrWhiteSpace($OutputDir)) {
    $argsList += $OutputDir
}

& $pythonCmd @pythonPrefixArgs @argsList

exit $LASTEXITCODE
