param(
    [switch]$WhatIf
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$scriptRoot = Split-Path -Parent $MyInvocation.MyCommand.Path

# Generated output roots for the proof harness.
$targets = @(
    (Join-Path $scriptRoot "output/transformed"),
    (Join-Path $scriptRoot "output/validation"),
    (Join-Path $scriptRoot "reports")
)

foreach ($target in $targets) {
    if (-not (Test-Path -Path $target -PathType Container)) {
        continue
    }

    Get-ChildItem -Path $target -Recurse -File | Where-Object {
        $_.Name -ne ".gitkeep"
    } | ForEach-Object {
        if ($WhatIf) {
            Write-Host "Would remove: $($_.FullName)"
        }
        else {
            Remove-Item -Path $_.FullName -Force -ErrorAction Stop
            Write-Host "Removed: $($_.FullName)"
        }
    }
}

if ($WhatIf) {
    Write-Host "Dry run complete. No files were removed."
}
else {
    Write-Host "Output cleanup complete."
}
