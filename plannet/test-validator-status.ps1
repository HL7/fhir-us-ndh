Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$tokens = $null
$parseErrors = $null
$runner = [System.Management.Automation.Language.Parser]::ParseFile(
    (Join-Path $PSScriptRoot "run-proof.ps1"), [ref]$tokens, [ref]$parseErrors
)
if ($parseErrors.Count -gt 0) { throw ($parseErrors -join [Environment]::NewLine) }
foreach ($function in $runner.FindAll({
    param($node)
    $node -is [System.Management.Automation.Language.FunctionDefinitionAst]
}, $false)) {
    . ([scriptblock]::Create($function.Extent.Text))
}

$success = "Success: 0 errors, 1 warnings, 1 notes"
$failure = "*FAILURE*: 1 errors, 2 warnings, 1 notes"
$cases = @(
    @{ Name = "normal success"; Code = 0; Timeout = $false; Text = $success; Expected = "pass" },
    @{ Name = "unavailable exit code with success"; Code = -1; Timeout = $false; Text = $success; Expected = "pass" },
    @{ Name = "null exit code with success"; Code = $null; Timeout = $false; Text = $success; Expected = "pass" },
    @{ Name = "real validation error"; Code = -1; Timeout = $false; Text = $failure; Expected = "fail" },
    @{ Name = "failure overrides zero exit"; Code = 0; Timeout = $false; Text = $failure; Expected = "fail" },
    @{ Name = "timeout overrides success"; Code = 0; Timeout = $true; Text = $success; Expected = "fail-timeout" },
    @{ Name = "nonzero exit overrides success"; Code = 1; Timeout = $false; Text = $success; Expected = "fail" },
    @{ Name = "ambiguous output"; Code = -1; Timeout = $false; Text = "Loading complete"; Expected = "fail" },
    @{ Name = "transform success is not validation success"; Code = -1; Timeout = $false; Text = "...success"; Expected = "fail" },
    @{ Name = "empty output"; Code = -1; Timeout = $false; Text = ""; Expected = "fail" },
    @{ Name = "exception after success"; Code = -1; Timeout = $false; Text = "$success`njava.lang.RuntimeException: failure"; Expected = "fail" }
)
foreach ($case in $cases) {
    $actual = Get-ValidationStatus -ExitCode $case.Code -TimedOut $case.Timeout -LogText $case.Text
    if ($actual -ne $case.Expected) { throw "$($case.Name): expected $($case.Expected), got $actual." }
    Write-Host "PASS: $($case.Name)"
}

# Exercise the Windows PowerShell process-handle behavior without Java or network access.
$testRoot = Join-Path ([IO.Path]::GetTempPath()) ("ndh-process-tests-" + [guid]::NewGuid())
$null = New-Item -ItemType Directory -Path $testRoot
$logPath = Join-Path $testRoot "process.log"
try {
    function Start-Process {
        param($FilePath, $ArgumentList, [switch]$NoNewWindow, [switch]$PassThru, $RedirectStandardOutput, $RedirectStandardError)
        Microsoft.PowerShell.Management\Start-Process -FilePath "$env:SystemRoot\System32\cmd.exe" -ArgumentList $ArgumentList -NoNewWindow -PassThru -RedirectStandardOutput $RedirectStandardOutput -RedirectStandardError $RedirectStandardError
    }
    foreach ($code in @(0, 7)) {
        $result = Invoke-ValidatorCommand -Arguments @("/c", "exit $code") -LogPath $logPath -TimeoutSeconds 10 -Label "process test"
        if ($result.ExitCode -ne $code -or $result.TimedOut) { throw "Process exit code $code was not captured: $($result.ExitCode)." }
        Write-Host "PASS: actual process exit code $code"
    }
}
finally {
    if (Test-Path -LiteralPath $logPath) { Remove-Item -LiteralPath $logPath -Force }
    Remove-Item -LiteralPath $testRoot
}
