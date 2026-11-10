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

$testRoot = Join-Path ([IO.Path]::GetTempPath()) ("ndh-discovery-tests-" + [guid]::NewGuid())
$null = New-Item -ItemType Directory -Path $testRoot
try {
    $paths = @(
        "Endpoint\same.json",
        "from-server-a\Endpoint\same.json",
        "nested\from-server-b\Endpoint\same.json",
        "Organization\network.json",
        "from-server-a\summary.json",
        "source\unzipped\Endpoint-archive.json",
        "Endpoint\README.md"
    )
    foreach ($path in $paths) {
        $fullPath = Join-Path $testRoot $path
        $null = New-Item -ItemType Directory -Force -Path (Split-Path -Parent $fullPath)
        '{}' | Set-Content -LiteralPath $fullPath
    }
    $files = @(Get-ProofSourceFiles -ExamplesRoot $testRoot -ResourceType "Endpoint")
    if ($files.Count -ne 3) { throw "Expected all three Endpoint datasets, got $($files.Count)." }
    if (@(Get-ProofSourceFiles -ExamplesRoot $testRoot -ResourceType "Endpoint" -Sources "from-server-a").Count -ne 1) {
        throw "Selecting one source must exclude all other sites."
    }
    $outputPaths = @(
        foreach ($file in $files) {
            $inputPath = Get-ProofInputPath -ExamplesRoot $testRoot -SourceFile $file
            Join-Path (Get-ProofOutputSubdirectory -InputPath $inputPath -MapName "Endpoint") $file.Name
        }
    )
    if (@($outputPaths | Select-Object -Unique).Count -ne 3) { throw "Dataset output paths collide." }
    if ($outputPaths -notcontains "Endpoint\same.json" -or
        $outputPaths -notcontains "from-server-a\Endpoint\same.json" -or
        $outputPaths -notcontains "nested\from-server-b\Endpoint\same.json") {
        throw "Dataset paths were not preserved: $outputPaths"
    }
    if (@(Get-ProofSourceFiles -ExamplesRoot (Join-Path $testRoot "missing") -ResourceType "Endpoint").Count -ne 0) {
        throw "Missing roots must produce no inputs."
    }
    Write-Host "PASS: all datasets discovered; archive, metadata and non-JSON files excluded; no output collisions"

    $orgProfile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-Organization"
    $networkProfile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-Network"
    $networkFile = Join-Path $testRoot "Organization\network.json"
    foreach ($profile in @($networkProfile, "$networkProfile|1.2.0")) {
        @{resourceType = "Organization"; meta = @{profile = @($profile)}} |
            ConvertTo-Json -Depth 10 | Set-Content -LiteralPath $networkFile
        foreach ($map in @("Network", "Organization")) {
            $decision = Test-SourceMatchesMapProfile -SourcePath $networkFile -MapName $map -OrganizationProfileCanonical $orgProfile -NetworkProfileCanonical $networkProfile
            if ($decision.ShouldProcess -ne ($map -eq "Network")) { throw "Incorrect routing for $profile to $map." }
        }
    }
    if ((Get-ProofOutputSubdirectory -InputPath "from-server-a\Organization\network.json" -MapName "Network") -ne "from-server-a\Network") {
        throw "Network outputs must be distinct from Organization outputs."
    }
    Write-Host "PASS: versioned Network profiles route exclusively to Network outputs"

    $summaryRows = New-Object System.Collections.Generic.List[object]
    $summaryCsv = Join-Path $testRoot "summary.csv"
    $sourceReports = @{}
    $reportsRoot = Join-Path $testRoot "reports"
    $examplesRoot = $testRoot
    foreach ($inputPath in @("Endpoint\same.json", "from-server-a\Endpoint\same.json")) {
        Add-ProofSummaryRow -Row ([pscustomobject]@{map = "Endpoint"; input = $inputPath; transform = "pass"})
        if (@(Import-Csv -LiteralPath $summaryCsv).Count -ne $summaryRows.Count) {
            throw "Summary was not checkpointed after each result."
        }
    }
    Write-Host "PASS: incremental report preserves dataset-qualified inputs"

    $fixtureRunnerRoot = Join-Path $testRoot "harness\plannet"
    $fixtureExamplesRoot = Join-Path $fixtureRunnerRoot "examples"
    $fixtureMapsRoot = Join-Path $testRoot "harness\input\maps"
    $null = New-Item -ItemType Directory -Force -Path $fixtureExamplesRoot, $fixtureMapsRoot
    Copy-Item -LiteralPath (Join-Path $PSScriptRoot "run-proof.ps1") -Destination $fixtureRunnerRoot
    foreach ($directory in @("Endpoint", "Organization", "from-server-a", "nested", "source")) {
        Copy-Item -LiteralPath (Join-Path $testRoot $directory) -Destination $fixtureExamplesRoot -Recurse
    }
    $fixtureManifest = Join-Path $fixtureExamplesRoot "from-server-a\source.json"
    '{"name":"from-server-a","url":"https://example.org/fhir","complete":true}' |
        Set-Content -LiteralPath $fixtureManifest
    '{"complete":true}' | Set-Content -LiteralPath (Join-Path $fixtureExamplesRoot "from-server-a\download-summary.json")
    '{"resourceType":"Provenance","id":"download"}' |
        Set-Content -LiteralPath (Join-Path $fixtureExamplesRoot "from-server-a\download-provenance.json")
    foreach ($map in @("Endpoint", "Organization", "Network")) {
        Copy-Item -LiteralPath (Join-Path (Split-Path -Parent $PSScriptRoot) "input\maps\PlanNetToNdh${map}SM.fml") -Destination $fixtureMapsRoot
    }
    $fixtureJar = Join-Path $fixtureRunnerRoot "validator_cli.jar"
    '' | Set-Content -LiteralPath $fixtureJar

    # Mock Java only; exercise the runner's discovery, routing, output paths and CSV writes.
    function Start-Process {
        param($FilePath, $ArgumentList, [switch]$NoNewWindow, [switch]$PassThru, $RedirectStandardOutput, $RedirectStandardError)
        if ($ArgumentList -contains "transform") {
            $outputIndex = [Array]::IndexOf($ArgumentList, "-output") + 1
            Copy-Item -LiteralPath $ArgumentList[-1] -Destination $ArgumentList[$outputIndex]
            '...success' | Set-Content -LiteralPath $RedirectStandardOutput
        }
        else {
            'Success: 0 errors, 0 warnings, 0 notes' | Set-Content -LiteralPath $RedirectStandardOutput
        }
        '' | Set-Content -LiteralPath $RedirectStandardError
        $process = [pscustomobject]@{ Handle = 1; ExitCode = 0 }
        $process | Add-Member -MemberType ScriptMethod -Name WaitForExit -Value {
            if ($args.Count -gt 0) { return $true }
        }
        return $process
    }
    Push-Location
    try {
        & (Join-Path $fixtureRunnerRoot "run-proof.ps1") -MapNames Endpoint, Organization, Network
    }
    finally {
        Pop-Location
        Remove-Item Function:\Start-Process
    }
    $results = @(Import-Csv -LiteralPath (Join-Path $fixtureRunnerRoot "reports\summary.csv"))
    if ($results.Count -ne 5) { throw "Expected five map/input pairs, got $($results.Count)." }
    $passed = @($results | Where-Object { $_.transform -eq "pass" -and $_.validation -eq "pass" })
    if ($passed.Count -ne 4 -or @($results | Where-Object transform -eq "skipped-profile-routing").Count -ne 1) {
        throw "Expected four executed inputs and one routing skip."
    }
    if (@($passed.transformed_file | Select-Object -Unique).Count -ne 4 -or
        @($passed.validation_log | Select-Object -Unique).Count -ne 4) {
        throw "Full-run outputs or validation logs collide."
    }
    foreach ($row in $passed) {
        if (-not (Test-Path -LiteralPath $row.transformed_file) -or
            -not (Test-Path -LiteralPath $row.validation_log)) {
            throw "Full-run output or validation log is missing for $($row.input)."
        }
    }
    foreach ($case in @(
        @{ Source = "_root"; Count = 3 },
        @{ Source = "from-server-a"; Count = 1 },
        @{ Source = "nested\from-server-b"; Count = 1 }
    )) {
        $sourceCsv = Join-Path $fixtureRunnerRoot ("reports\" + $case.Source + "\summary.csv")
        if (@(Import-Csv -LiteralPath $sourceCsv).Count -ne $case.Count) {
            throw "Incorrect independent source report for $($case.Source)."
        }
        foreach ($manifestName in @("source.json", "download-summary.json", "download-provenance.json")) {
            $reportManifest = Join-Path $fixtureRunnerRoot "reports\from-server-a\$manifestName"
            $originalManifest = Join-Path $fixtureExamplesRoot "from-server-a\$manifestName"
            if ((Get-FileHash -LiteralPath $reportManifest).Hash -ne (Get-FileHash -LiteralPath $originalManifest).Hash) {
                throw "$manifestName was not preserved with its independent report."
            }
        }
    }
    Write-Host "PASS: full runner executes every dataset with independent outputs, logs and CSV rows (mock Java)"
}
finally {
    Remove-Item -LiteralPath $testRoot -Recurse -Force
}
