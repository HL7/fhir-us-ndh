Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$tokens = $null
$parseErrors = $null
$runner = [System.Management.Automation.Language.Parser]::ParseFile(
    (Join-Path $PSScriptRoot "run-proof.ps1"), [ref]$tokens, [ref]$parseErrors
)
if ($parseErrors.Count -gt 0) { throw ($parseErrors -join [Environment]::NewLine) }
$functions = $runner.FindAll({
    param($node)
    $node -is [System.Management.Automation.Language.FunctionDefinitionAst]
}, $false)
foreach ($function in $functions) {
    . ([scriptblock]::Create($function.Extent.Text))
}

$mapText = @"
src.extension as original where (url = 'http://example.org/preserved') -> tgt.extension = original;
src.extension as translated where (url = 'http://example.org/translated') -> tgt.extension as translatedTarget then {
  translated.url as originalUrl -> translatedTarget.url = 'http://example.org/ndh';
};
"@
$preserved = Get-MapPreservedExtensionUrls -MapText $mapText
if ($preserved.Count -ne 1 -or -not $preserved.Contains('http://example.org/preserved')) {
    throw "Direct-copy detection must distinguish preserved and translated extensions."
}
$nestedMap = "telecom.extension as original where (url = 'http://example.org/preserved') -> tgt.extension = original `"copyExtension`";"
if (-not (Get-MapPreservedExtensionUrls -MapText $nestedMap).Contains('http://example.org/preserved')) {
    throw "Named nested copy rules must be detected."
}

$temporaryRoot = Join-Path ([IO.Path]::GetTempPath()) ("ndh-extension-tests-" + [guid]::NewGuid())
$null = New-Item -ItemType Directory -Path $temporaryRoot
$sourcePath = Join-Path $temporaryRoot "source.json"
$targetPath = Join-Path $temporaryRoot "target.json"
$original = '{"url":"http://example.org/preserved","extension":[{"url":"child","valueString":"Keep Me"}]}'
try {
    $cases = @(
        @{ Name = "unchanged"; Source = "{`"extension`":[$original]}"; Target = "{`"extension`":[$original]}"; Expected = 0 },
        @{ Name = "reordered properties"; Source = "{`"extension`":[$original]}"; Target = '{"extension":[{"extension":[{"valueString":"Keep Me","url":"child"}],"url":"http://example.org/preserved"}]}'; Expected = 0 },
        @{ Name = "relocated nested copy"; Source = "{`"telecom`":[{`"extension`":[$original]}]}"; Target = "{`"extension`":[$original]}"; Expected = 0 },
        @{ Name = "missing"; Source = "{`"extension`":[$original]}"; Target = '{}'; Expected = 1 },
        @{ Name = "changed nested value"; Source = "{`"extension`":[$original]}"; Target = ("{`"extension`":[$original]}" -creplace 'Keep Me', 'keep me'); Expected = 1 },
        @{ Name = "lost repeated occurrence"; Source = "{`"extension`":[$original,$original]}"; Target = "{`"extension`":[$original]}"; Expected = 1 },
        @{ Name = "all repeated occurrences"; Source = "{`"extension`":[$original,$original]}"; Target = "{`"extension`":[$original,$original]}"; Expected = 0 },
        @{ Name = "translated extension"; Source = '{"extension":[{"url":"http://example.org/translated","valueBoolean":true}]}'; Target = '{"extension":[{"url":"http://example.org/ndh","valueBoolean":true}]}'; Expected = 0 }
    )
    foreach ($case in $cases) {
        [IO.File]::WriteAllText($sourcePath, $case.Source)
        [IO.File]::WriteAllText($targetPath, $case.Target)
        $warnings = @(Get-ExtensionPreservationWarnings -SourcePath $sourcePath -TargetPath $targetPath -PreservedExtensionUrls $preserved)
        if ($warnings.Count -ne $case.Expected) { throw "$($case.Name): expected $($case.Expected) warnings, got $($warnings.Count)." }
        Write-Host "PASS: $($case.Name)"
    }
    [IO.File]::WriteAllText($sourcePath, "{`"extension`":[$original]}")
    $coverage = @(Get-TranslationCoverageWarnings -SourcePath $sourcePath -MappedSourceFields (Get-MapSourceTopLevelFields $mapText) -MappedExtensionUrls (Get-MapSourceExtensionUrls $mapText) -PreservedExtensionUrls $preserved -IgnoredTopLevelFields @())
    if ($coverage.Count -ne 0) { throw "Preserved nested children should not produce unmapped warnings." }
    $droppedMap = "src.extension as original where (url = 'http://example.org/preserved') `"dropOriginal`";"
    if ((Get-MapPreservedExtensionUrls $droppedMap).Count -ne 0) { throw "A drop rule must not count as preservation." }
    $coverage = @(Get-TranslationCoverageWarnings -SourcePath $sourcePath -MappedSourceFields (Get-MapSourceTopLevelFields $droppedMap) -MappedExtensionUrls (Get-MapSourceExtensionUrls $droppedMap) -PreservedExtensionUrls (Get-MapPreservedExtensionUrls $droppedMap) -IgnoredTopLevelFields @())
    if ($coverage.Count -ne 1) { throw "Legacy drop rules must not suppress warnings for nested extension data." }
    Write-Host "PASS: nested coverage and legacy drop-rule detection"
    [IO.File]::WriteAllText($targetPath, '{invalid')
    $parseFailed = $false
    try {
        Get-ExtensionPreservationWarnings -SourcePath $sourcePath -TargetPath $targetPath -PreservedExtensionUrls $preserved
    }
    catch [System.ArgumentException] {
        $parseFailed = $true
    }
    if (-not $parseFailed) { throw "Invalid transformed JSON must not pass preservation checks." }
    Write-Host "PASS: invalid transformed JSON is reported"
}
finally {
    foreach ($path in @($sourcePath, $targetPath)) {
        if (Test-Path -LiteralPath $path) { Remove-Item -LiteralPath $path -Force }
    }
    Remove-Item -LiteralPath $temporaryRoot
}
