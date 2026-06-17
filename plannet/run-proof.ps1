param(
    [string]$ValidatorJar = $env:VALIDATOR_JAR,
    [string]$ValidatorDownloadUrl = "https://github.com/hapifhir/org.hl7.fhir.core/releases/latest/download/validator_cli.jar",
    [string]$NdhPackage = "hl7.fhir.us.ndh#dev",
    [string]$FhirVersion = "4.0.1",
    [string]$TerminologyServer = "https://tx.fhir.org",
    [string[]]$MapNames = @(),
    [int]$TransformTimeoutSeconds = 900,
    [int]$ValidationTimeoutSeconds = 900
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"
$planNetOrganizationProfile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-Organization"
$planNetNetworkProfile = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-Network"

function Invoke-ValidatorCommand {
    param(
        [string[]]$Arguments,
        [string]$LogPath,
        [int]$TimeoutSeconds,
        [string]$Label
    )

    $stdoutPath = [System.IO.Path]::GetTempFileName()
    $stderrPath = [System.IO.Path]::GetTempFileName()

    try {
        $process = Start-Process -FilePath "java" -ArgumentList $Arguments -NoNewWindow -PassThru -RedirectStandardOutput $stdoutPath -RedirectStandardError $stderrPath
        $completed = $process.WaitForExit($TimeoutSeconds * 1000)

        if (-not $completed) {
            try {
                $process.Kill()
            }
            catch {
            }

            "Timed out after $TimeoutSeconds seconds: $Label" | Out-File -FilePath $LogPath -Encoding utf8
            if (Test-Path -Path $stdoutPath) {
                Get-Content -Path $stdoutPath | Out-File -FilePath $LogPath -Append -Encoding utf8
            }
            if (Test-Path -Path $stderrPath) {
                Get-Content -Path $stderrPath | Out-File -FilePath $LogPath -Append -Encoding utf8
            }

            return [PSCustomObject]@{
                ExitCode = 124
                TimedOut = $true
            }
        }

        $allOutput = New-Object System.Collections.Generic.List[string]
        if (Test-Path -Path $stdoutPath) {
            foreach ($line in (Get-Content -Path $stdoutPath)) {
                $allOutput.Add($line)
            }
        }
        if (Test-Path -Path $stderrPath) {
            foreach ($line in (Get-Content -Path $stderrPath)) {
                $allOutput.Add($line)
            }
        }

        $exitCode = -1
        $rawExitCode = $process.ExitCode
        if ($null -ne $rawExitCode -and [int]::TryParse([string]$rawExitCode, [ref]$exitCode)) {
            # Parsed successfully.
        }

        @("exit_code=$exitCode") + $allOutput | Out-File -FilePath $LogPath -Encoding utf8

        return [PSCustomObject]@{
            ExitCode = $exitCode
            TimedOut = $false
        }
    }
    finally {
        Remove-Item -Path $stdoutPath -ErrorAction SilentlyContinue
        Remove-Item -Path $stderrPath -ErrorAction SilentlyContinue
    }
}

function Test-MeaningfulValue {
    param(
        [AllowNull()]$Value
    )

    if ($null -eq $Value) {
        return $false
    }

    if ($Value -is [string]) {
        return -not [string]::IsNullOrWhiteSpace($Value)
    }

    if ($Value -is [System.Collections.IEnumerable] -and -not ($Value -is [string])) {
        foreach ($item in $Value) {
            if (Test-MeaningfulValue -Value $item) {
                return $true
            }
        }

        return $false
    }

    if ($Value -is [pscustomobject]) {
        foreach ($property in $Value.PSObject.Properties) {
            if (Test-MeaningfulValue -Value $property.Value) {
                return $true
            }
        }

        return $false
    }

    return $true
}

function Get-MapSourceTopLevelFields {
    param(
        [string]$MapText
    )

    $set = New-Object 'System.Collections.Generic.HashSet[string]' ([System.StringComparer]::OrdinalIgnoreCase)
    $matches = [regex]::Matches($MapText, '\bsrc\.([A-Za-z][A-Za-z0-9_]*)\b')
    foreach ($match in $matches) {
        $fieldName = $match.Groups[1].Value
        if (-not [string]::IsNullOrWhiteSpace($fieldName)) {
            $null = $set.Add($fieldName)
        }
    }

    return ,$set
}

function Get-MapSourceExtensionUrls {
    param(
        [string]$MapText
    )

    $set = New-Object 'System.Collections.Generic.HashSet[string]' ([System.StringComparer]::OrdinalIgnoreCase)
    $matches = [regex]::Matches($MapText, "where\s*\(\s*url\s*=\s*'([^']+)'\s*\)")
    foreach ($match in $matches) {
        $url = $match.Groups[1].Value
        if (-not [string]::IsNullOrWhiteSpace($url)) {
            $null = $set.Add($url)
        }
    }

    return ,$set
}

function Get-MapDroppedExtensionUrls {
    param(
        [string]$MapText
    )

    $set = New-Object 'System.Collections.Generic.HashSet[string]' ([System.StringComparer]::OrdinalIgnoreCase)
    $matches = [regex]::Matches($MapText, 'src\.extension(?:\s+as\s+[A-Za-z][A-Za-z0-9_]*)?\s+where\s*\(\s*url\s*=\s*''([^'']+)''\s*\)\s*"drop[^"]*"\s*;')
    foreach ($match in $matches) {
        $url = $match.Groups[1].Value
        if (-not [string]::IsNullOrWhiteSpace($url)) {
            $null = $set.Add($url)
        }
    }

    return ,$set
}

function Find-UnmappedExtensionUrls {
    param(
        [AllowNull()]$Node,
        [string]$Path,
        [System.Collections.Generic.HashSet[string]]$MappedExtensionUrls,
        [System.Collections.Generic.HashSet[string]]$DroppedExtensionUrls,
        [System.Collections.Generic.List[string]]$Warnings
    )

    if ($null -eq $Node) {
        return
    }

    if ($null -eq $MappedExtensionUrls) {
        $MappedExtensionUrls = New-Object 'System.Collections.Generic.HashSet[string]' ([System.StringComparer]::OrdinalIgnoreCase)
    }

    if ($null -eq $DroppedExtensionUrls) {
        $DroppedExtensionUrls = New-Object 'System.Collections.Generic.HashSet[string]' ([System.StringComparer]::OrdinalIgnoreCase)
    }

    if ($Node -is [pscustomobject]) {
        $extensionProperty = $Node.PSObject.Properties['extension']
        if ($null -ne $extensionProperty -and $extensionProperty.Value -is [System.Collections.IEnumerable] -and -not ($extensionProperty.Value -is [string])) {
            foreach ($extensionItem in $extensionProperty.Value) {
                if ($null -eq $extensionItem) {
                    continue
                }

                $urlProperty = $extensionItem.PSObject.Properties['url']
                if ($null -ne $urlProperty) {
                    $urlValue = [string]$urlProperty.Value
                    if (-not [string]::IsNullOrWhiteSpace($urlValue) -and $DroppedExtensionUrls.Contains($urlValue)) {
                        # Explicitly dropped in StructureMap; do not warn on this extension or its nested children.
                        continue
                    }

                    if (-not [string]::IsNullOrWhiteSpace($urlValue) -and -not $MappedExtensionUrls.Contains($urlValue)) {
                        $Warnings.Add("Unmapped extension URL at ${Path}.extension: $urlValue")
                    }
                }

                Find-UnmappedExtensionUrls -Node $extensionItem -Path ("${Path}.extension") -MappedExtensionUrls $MappedExtensionUrls -DroppedExtensionUrls $DroppedExtensionUrls -Warnings $Warnings
            }
        }

        foreach ($property in $Node.PSObject.Properties) {
            if ($property.Name -eq 'extension') {
                continue
            }

            Find-UnmappedExtensionUrls -Node $property.Value -Path ("${Path}.$($property.Name)") -MappedExtensionUrls $MappedExtensionUrls -DroppedExtensionUrls $DroppedExtensionUrls -Warnings $Warnings
        }

        return
    }

    if ($Node -is [System.Collections.IEnumerable] -and -not ($Node -is [string])) {
        foreach ($item in $Node) {
            Find-UnmappedExtensionUrls -Node $item -Path $Path -MappedExtensionUrls $MappedExtensionUrls -DroppedExtensionUrls $DroppedExtensionUrls -Warnings $Warnings
        }
    }
}

function Get-TranslationCoverageWarnings {
    param(
        [string]$SourcePath,
        [System.Collections.Generic.HashSet[string]]$MappedSourceFields,
        [System.Collections.Generic.HashSet[string]]$MappedExtensionUrls,
        [System.Collections.Generic.HashSet[string]]$DroppedExtensionUrls,
        [string[]]$IgnoredTopLevelFields
    )

    $warnings = New-Object System.Collections.Generic.List[string]

    try {
        $raw = Get-Content -Path $SourcePath -Raw
        try {
            $resource = $raw | ConvertFrom-Json -Depth 100
        }
        catch [System.Management.Automation.ParameterBindingException] {
            $resource = $raw | ConvertFrom-Json
        }
    }
    catch {
        $warnings.Add("Unable to parse source JSON for coverage checks: $($_.Exception.Message)")
        return $warnings
    }

    foreach ($property in $resource.PSObject.Properties) {
        if ($IgnoredTopLevelFields -contains $property.Name) {
            continue
        }

        if (-not (Test-MeaningfulValue -Value $property.Value)) {
            continue
        }

        if (-not $MappedSourceFields.Contains($property.Name)) {
            $warnings.Add("No map rule detected for populated top-level field: $($property.Name)")
        }
    }

    Find-UnmappedExtensionUrls -Node $resource -Path '$' -MappedExtensionUrls $MappedExtensionUrls -DroppedExtensionUrls $DroppedExtensionUrls -Warnings $warnings

    return $warnings
}

function Test-SourceMatchesMapProfile {
    param(
        [Parameter(Mandatory = $true)]
        [string]$SourcePath,
        [Parameter(Mandatory = $true)]
        [string]$MapName,
        [Parameter(Mandatory = $true)]
        [string]$OrganizationProfileCanonical,
        [Parameter(Mandatory = $true)]
        [string]$NetworkProfileCanonical
    )

    if ($MapName -ne "Organization" -and $MapName -ne "Network") {
        return [PSCustomObject]@{
            ShouldProcess = $true
            Reason = "not-organization-map"
        }
    }

    try {
        $raw = Get-Content -Path $SourcePath -Raw
        try {
            $resource = $raw | ConvertFrom-Json -Depth 100
        }
        catch [System.Management.Automation.ParameterBindingException] {
            $resource = $raw | ConvertFrom-Json
        }
    }
    catch {
        return [PSCustomObject]@{
            ShouldProcess = $true
            Reason = "unreadable-source"
        }
    }

    $profiles = @()
    if ($null -ne $resource -and $null -ne $resource.PSObject.Properties['meta']) {
        $meta = $resource.meta
        if ($null -ne $meta -and $null -ne $meta.PSObject.Properties['profile']) {
            $rawProfiles = $meta.profile
            if ($rawProfiles -is [string]) {
                $profiles = @($rawProfiles)
            }
            elseif ($rawProfiles -is [System.Collections.IEnumerable] -and -not ($rawProfiles -is [string])) {
                $profiles = @($rawProfiles | ForEach-Object { [string]$_ })
            }
        }
    }

    $profileSet = New-Object 'System.Collections.Generic.HashSet[string]' ([System.StringComparer]::OrdinalIgnoreCase)
    foreach ($profile in $profiles) {
        if (-not [string]::IsNullOrWhiteSpace($profile)) {
            $null = $profileSet.Add($profile)
        }
    }

    $hasOrg = $profileSet.Contains($OrganizationProfileCanonical)
    $hasNetwork = $profileSet.Contains($NetworkProfileCanonical)
    $hasNetworkType = $false

    if ($null -ne $resource -and $null -ne $resource.PSObject.Properties['type'] -and $resource.type -is [System.Collections.IEnumerable] -and -not ($resource.type -is [string])) {
        foreach ($typeEntry in $resource.type) {
            if ($null -eq $typeEntry -or $null -eq $typeEntry.PSObject.Properties['coding']) {
                continue
            }

            $codings = $typeEntry.coding
            if ($codings -is [System.Collections.IEnumerable] -and -not ($codings -is [string])) {
                foreach ($coding in $codings) {
                    if ($null -eq $coding) {
                        continue
                    }

                    $codingSystem = $null
                    $codingCode = $null
                    if ($null -ne $coding.PSObject.Properties['system']) {
                        $codingSystem = [string]$coding.system
                    }
                    if ($null -ne $coding.PSObject.Properties['code']) {
                        $codingCode = [string]$coding.code
                    }

                    if ($codingSystem -eq "http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/OrgTypeCS" -and $codingCode -eq "ntwk") {
                        $hasNetworkType = $true
                        break
                    }
                }
            }

            if ($hasNetworkType) {
                break
            }
        }
    }

    $networkIndicated = $hasNetwork -or $hasNetworkType

    if ($MapName -eq "Network") {
        if ($networkIndicated) {
            if ($hasNetworkType) {
                return [PSCustomObject]@{ ShouldProcess = $true; Reason = "network-type-ntwk" }
            }

            return [PSCustomObject]@{ ShouldProcess = $true; Reason = "network-profile" }
        }

        return [PSCustomObject]@{ ShouldProcess = $false; Reason = "not-network-profile" }
    }

    if ($networkIndicated) {
        return [PSCustomObject]@{ ShouldProcess = $false; Reason = "network-profile-routed-to-network-map" }
    }

    if ($hasOrg) {
        return [PSCustomObject]@{ ShouldProcess = $true; Reason = "organization-profile" }
    }

    return [PSCustomObject]@{ ShouldProcess = $true; Reason = "no-explicit-org-network-profile" }
}

$scriptRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = Split-Path -Parent $scriptRoot
$mapsRoot = Join-Path $repoRoot "input/maps"
$derivedIgRoot = Join-Path $repoRoot "output"
$examplesRoot = Join-Path $scriptRoot "examples"
$outputRoot = Join-Path $scriptRoot "output"
$reportsRoot = Join-Path $scriptRoot "reports"
$transformsRoot = Join-Path $outputRoot "transformed"
$validationRoot = Join-Path $outputRoot "validation"

Set-Location -Path $scriptRoot

function Get-RelativePathFromScriptRoot {
    param(
        [Parameter(Mandatory = $true)]
        [string]$Path
    )

    try {
        if (Test-Path -LiteralPath $Path) {
            $relative = Resolve-Path -LiteralPath $Path -Relative
        }
        else {
            $parent = Split-Path -Parent $Path
            $leaf = Split-Path -Leaf $Path
            if ([string]::IsNullOrWhiteSpace($parent)) {
                $relative = $leaf
            }
            else {
                $relativeParent = Resolve-Path -LiteralPath $parent -Relative
                if ($relativeParent -eq ".") {
                    $relative = $leaf
                }
                else {
                    $relative = Join-Path $relativeParent $leaf
                }
            }
        }

        if ($relative.StartsWith('.\\') -or $relative.StartsWith('./')) {
            $relative = $relative.Substring(2)
        }

        return ($relative -replace '\\', '/')
    }
    catch {
        return ($Path -replace '\\', '/')
    }
}

$defaultValidatorJar = Join-Path $scriptRoot "validator_cli.jar"

if ([string]::IsNullOrWhiteSpace($ValidatorJar)) {
    $ValidatorJar = $defaultValidatorJar
}

if (-not [System.IO.Path]::IsPathRooted($ValidatorJar)) {
    $candidate = Join-Path $scriptRoot $ValidatorJar
    if (Test-Path -Path $candidate -PathType Leaf) {
        $ValidatorJar = $candidate
    }
}

if (-not (Test-Path -Path $ValidatorJar -PathType Leaf)) {
    if ($ValidatorJar -eq $defaultValidatorJar) {
        Write-Host "Validator jar not found in plannet folder. Downloading from: $ValidatorDownloadUrl"
        Invoke-WebRequest -Uri $ValidatorDownloadUrl -OutFile $defaultValidatorJar
        if (-not (Test-Path -Path $defaultValidatorJar -PathType Leaf)) {
            throw "Failed to download validator jar to '$defaultValidatorJar'."
        }
        $ValidatorJar = $defaultValidatorJar
    }
    else {
        throw "Validator jar not found at '$ValidatorJar'."
    }
}

$maps = @(
    @{ Name = "Endpoint"; ExampleDir = "Endpoint"; MapFile = "PlanNetToNdhEndpointSM.fml"; MapCanonical = "http://hl7.org/fhir/us/ndh/StructureMap/PlanNetToNdhEndpointSM"; TargetProfile = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Endpoint" },
    @{ Name = "HealthcareService"; ExampleDir = "HealthcareService"; MapFile = "PlanNetToNdhHealthcareServiceSM.fml"; MapCanonical = "http://hl7.org/fhir/us/ndh/StructureMap/PlanNetToNdhHealthcareServiceSM"; TargetProfile = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-HealthcareService" },
    @{ Name = "InsurancePlan"; ExampleDir = "InsurancePlan"; MapFile = "PlanNetToNdhInsurancePlanSM.fml"; MapCanonical = "http://hl7.org/fhir/us/ndh/StructureMap/PlanNetToNdhInsurancePlanSM"; TargetProfile = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-InsurancePlan" },
    @{ Name = "Location"; ExampleDir = "Location"; MapFile = "PlanNetToNdhLocationSM.fml"; MapCanonical = "http://hl7.org/fhir/us/ndh/StructureMap/PlanNetToNdhLocationSM"; TargetProfile = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Location" },
    @{ Name = "Network"; ExampleDir = "Organization"; MapFile = "PlanNetToNdhNetworkSM.fml"; MapCanonical = "http://hl7.org/fhir/us/ndh/StructureMap/PlanNetToNdhNetworkSM"; TargetProfile = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Network" },
    @{ Name = "Organization"; ExampleDir = "Organization"; MapFile = "PlanNetToNdhOrganizationSM.fml"; MapCanonical = "http://hl7.org/fhir/us/ndh/StructureMap/PlanNetToNdhOrganizationSM"; TargetProfile = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Organization" },
    @{ Name = "OrganizationAffiliation"; ExampleDir = "OrganizationAffiliation"; MapFile = "PlanNetToNdhOrganizationAffiliationSM.fml"; MapCanonical = "http://hl7.org/fhir/us/ndh/StructureMap/PlanNetToNdhOrganizationAffiliationSM"; TargetProfile = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-OrganizationAffiliation" },
    @{ Name = "Practitioner"; ExampleDir = "Practitioner"; MapFile = "PlanNetToNdhPractitionerSM.fml"; MapCanonical = "http://hl7.org/fhir/us/ndh/StructureMap/PlanNetToNdhPractitionerSM"; TargetProfile = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Practitioner" },
    @{ Name = "PractitionerRole"; ExampleDir = "PractitionerRole"; MapFile = "PlanNetToNdhPractitionerRoleSM.fml"; MapCanonical = "http://hl7.org/fhir/us/ndh/StructureMap/PlanNetToNdhPractitionerRoleSM"; TargetProfile = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-PractitionerRole" }
)

if ($MapNames.Count -gt 0) {
    $selectedSet = New-Object 'System.Collections.Generic.HashSet[string]' ([System.StringComparer]::OrdinalIgnoreCase)
    foreach ($mapName in $MapNames) {
        if (-not [string]::IsNullOrWhiteSpace($mapName)) {
            $null = $selectedSet.Add($mapName.Trim())
        }
    }

    $availableNames = @($maps | ForEach-Object { $_.Name })
    $unknownNames = @($selectedSet | Where-Object { $availableNames -notcontains $_ })
    if ($unknownNames.Count -gt 0) {
        throw "Unknown map name(s): $($unknownNames -join ', '). Available map names: $($availableNames -join ', ')."
    }

    $maps = @($maps | Where-Object { $selectedSet.Contains($_.Name) })
    Write-Host "Running selected map(s): $($maps.Name -join ', ')"
}

foreach ($map in $maps) {
    $mapPath = Join-Path $mapsRoot $map.MapFile
    if (-not (Test-Path -Path $mapPath -PathType Leaf)) {
        throw "Map file not found for $($map.Name): '$mapPath'."
    }
    $map.MapPath = $mapPath
    $map.MapId = [System.IO.Path]::GetFileNameWithoutExtension($map.MapFile)

    $mapText = Get-Content -Path $mapPath -Raw
    $map.SourceTopLevelFields = Get-MapSourceTopLevelFields -MapText $mapText
    $map.SourceExtensionUrls = Get-MapSourceExtensionUrls -MapText $mapText
    $map.DroppedExtensionUrls = Get-MapDroppedExtensionUrls -MapText $mapText
}

$validatorJarArg = Get-RelativePathFromScriptRoot -Path $ValidatorJar

$ignoredTopLevelFields = @("resourceType", "id", "text")

$downloadExamplesScript = Join-Path $scriptRoot "download-examples.ps1"
$exampleCount = 0

foreach ($map in $maps) {
    $sourceDir = Join-Path $examplesRoot $map.ExampleDir
    if (Test-Path -Path $sourceDir -PathType Container) {
        $exampleCount += @(Get-ChildItem -Path $sourceDir -Filter *.json -File).Count
    }
}

if ($exampleCount -eq 0) {
    if (-not (Test-Path -Path $downloadExamplesScript -PathType Leaf)) {
        throw "No mapped examples found and downloader script is missing at '$downloadExamplesScript'."
    }

    Write-Host "No mapped Plan-Net examples found. Downloading fresh examples from the Plan-Net IG publication."
    & $downloadExamplesScript

    $exampleCount = 0
    foreach ($map in $maps) {
        $sourceDir = Join-Path $examplesRoot $map.ExampleDir
        if (Test-Path -Path $sourceDir -PathType Container) {
            $exampleCount += @(Get-ChildItem -Path $sourceDir -Filter *.json -File).Count
        }
    }

    if ($exampleCount -eq 0) {
        throw "Download completed but no mapped Plan-Net examples were found in examples folders."
    }
}

$null = New-Item -ItemType Directory -Force -Path $transformsRoot
$null = New-Item -ItemType Directory -Force -Path $validationRoot
$null = New-Item -ItemType Directory -Force -Path $reportsRoot

$totalInputs = 0
foreach ($map in $maps) {
    $countDir = Join-Path $examplesRoot $map.ExampleDir
    if (Test-Path -Path $countDir -PathType Container) {
        $totalInputs += @(Get-ChildItem -Path $countDir -Filter *.json -File).Count
    }
}

$summaryRows = New-Object System.Collections.Generic.List[object]
$processedInputs = 0

foreach ($map in $maps) {
    $sourceDir = Join-Path $examplesRoot $map.ExampleDir

    if (-not (Test-Path -Path $sourceDir -PathType Container)) {
        $summaryRows.Add([PSCustomObject]@{
            map = $map.Name
            'input' = "(none)"
            transform = "skipped-no-input-folder"
            validation = "skipped"
            warnings = 0
            transformed_file = ""
            validation_log = ""
            warning_log = ""
        })
        continue
    }

    $sourceFiles = @(Get-ChildItem -Path $sourceDir -Filter *.json -File)
    if ($sourceFiles.Count -eq 0) {
        $summaryRows.Add([PSCustomObject]@{
            map = $map.Name
            'input' = "(none)"
            transform = "skipped-no-input-files"
            validation = "skipped"
            warnings = 0
            transformed_file = ""
            validation_log = ""
            warning_log = ""
        })
        continue
    }

    $mapTransformDir = Join-Path $transformsRoot $map.ExampleDir
    $mapValidationDir = Join-Path $validationRoot $map.ExampleDir
    $null = New-Item -ItemType Directory -Force -Path $mapTransformDir
    $null = New-Item -ItemType Directory -Force -Path $mapValidationDir

    foreach ($sourceFile in $sourceFiles) {
        $processedInputs++
        $baseName = [System.IO.Path]::GetFileNameWithoutExtension($sourceFile.Name)
        $transformedFile = Join-Path $mapTransformDir ($baseName + ".json")
        $transformedFileArg = Get-RelativePathFromScriptRoot -Path $transformedFile
        $sourceFileArg = Get-RelativePathFromScriptRoot -Path $sourceFile.FullName
        $transformLog = Join-Path $mapValidationDir ($baseName + ".transform.log.txt")
        $transformArgsLog = Join-Path $mapValidationDir ($baseName + ".transform.args.txt")
        $validationLog = Join-Path $mapValidationDir ($baseName + ".validation.log.txt")
        $warningLog = Join-Path $mapValidationDir ($baseName + ".warnings.log.txt")

        $routingDecision = Test-SourceMatchesMapProfile -SourcePath $sourceFile.FullName -MapName $map.Name -OrganizationProfileCanonical $planNetOrganizationProfile -NetworkProfileCanonical $planNetNetworkProfile
        if (-not $routingDecision.ShouldProcess) {
            Write-Host "[$processedInputs/$totalInputs] Skipping $($map.Name)/$($sourceFile.Name) due to profile routing: $($routingDecision.Reason)"
            $summaryRows.Add([PSCustomObject]@{
                map = $map.Name
                'input' = $sourceFile.Name
                transform = "skipped-profile-routing"
                validation = "skipped"
                warnings = 0
                transformed_file = ""
                validation_log = ""
                warning_log = ""
            })
            continue
        }

        $null = New-Item -ItemType Directory -Force -Path $mapTransformDir
        $null = New-Item -ItemType Directory -Force -Path $mapValidationDir

        $transformStatus = "fail"
        $validationStatus = "skipped"
        $coverageWarnings = @(Get-TranslationCoverageWarnings -SourcePath $sourceFile.FullName -MappedSourceFields $map.SourceTopLevelFields -MappedExtensionUrls $map.SourceExtensionUrls -DroppedExtensionUrls $map.DroppedExtensionUrls -IgnoredTopLevelFields $ignoredTopLevelFields)

        if ($coverageWarnings.Count -gt 0) {
            $warningLines = New-Object System.Collections.Generic.List[string]
            $warningLines.Add("Potential data-loss/unmapped warnings for $($sourceFile.Name):")
            foreach ($warning in $coverageWarnings) {
                $warningLines.Add(" - $warning")
            }
            $warningLines | Out-File -FilePath $warningLog -Encoding utf8

            Write-Warning ("[$processedInputs/$totalInputs] $($map.Name)/$($sourceFile.Name): {0} coverage warning(s). See {1}" -f $coverageWarnings.Count, $warningLog)
        }
        else {
            "No potential data-loss/unmapped warnings detected." | Out-File -FilePath $warningLog -Encoding utf8
        }

        try {
            Write-Host "[$processedInputs/$totalInputs] Transforming $($map.Name)/$($sourceFile.Name)"

            $transformArgs = @(
                "-jar", $validatorJarArg,
                "transform",
                "-version", $FhirVersion,
                "-tx", $TerminologyServer,
                "-output", $transformedFileArg,
                "-ig", $NdhPackage
            )

            $transformArgs += @(
                $map.MapId,
                $sourceFileArg
            )

            $transformArgsText = "java " + ($transformArgs -join " ")
            @(
                "timestamp=$([DateTimeOffset]::Now.ToString('o'))",
                "script=$($MyInvocation.MyCommand.Path)",
                "map_name=$($map.Name)",
                "map_id=$($map.MapId)",
                "map_canonical=$($map.MapCanonical)",
                "transform_args=$transformArgsText"
            ) | Out-File -FilePath $transformArgsLog -Encoding utf8

            $transformResult = Invoke-ValidatorCommand -Arguments $transformArgs -LogPath $transformLog -TimeoutSeconds $TransformTimeoutSeconds -Label ("transform {0}/{1}" -f $map.Name, $sourceFile.Name)
            $transformExitCode = $transformResult.ExitCode
            $nullSourceTypeFailure = $false
            if (Test-Path -Path $transformLog -PathType Leaf) {
                $nullSourceTypeFailure = Select-String -Path $transformLog -Pattern "Unable to find StructureDefinition for source type \('null'\)" -Quiet
            }

            if ($transformExitCode -eq 0 -and (Test-Path -Path $transformedFile -PathType Leaf)) {
                $transformStatus = "pass"
            }
            elseif ($transformResult.TimedOut) {
                $transformStatus = "fail-timeout"
            }
            elseif ($nullSourceTypeFailure) {
                $transformStatus = "fail-null-source-type"
                Write-Warning ("[$processedInputs/$totalInputs] {0}/{1}: validator failed with source type null. If maps were edited locally, rebuild/publish ndh#dev or run transform against the updated local map artifact." -f $map.Name, $sourceFile.Name)
            }

            if ($transformStatus -eq "pass") {
                Write-Host "[$processedInputs/$totalInputs] Validating $($map.Name)/$($sourceFile.Name)"

                $validateArgs = @(
                    "-jar", $validatorJarArg,
                    $transformedFileArg,
                    "-version", $FhirVersion,
                    "-tx", $TerminologyServer,
                    "-profile", $map.TargetProfile,
                    "-ig", $NdhPackage
                )

                $validationResult = Invoke-ValidatorCommand -Arguments $validateArgs -LogPath $validationLog -TimeoutSeconds $ValidationTimeoutSeconds -Label ("validate {0}/{1}" -f $map.Name, $sourceFile.Name)
                $validationExitCode = $validationResult.ExitCode

                if ($validationExitCode -eq 0) {
                    $validationStatus = "pass"
                }
                elseif ($validationResult.TimedOut) {
                    $validationStatus = "fail-timeout"
                }
                else {
                    $validationStatus = "fail"
                }
            }

            if ($transformStatus -ne "pass" -and (Test-Path -Path $transformedFile -PathType Leaf)) {
                Remove-Item -Path $transformedFile -Force -ErrorAction SilentlyContinue
                Write-Warning ("[$processedInputs/$totalInputs] {0}/{1}: removed stale transformed output from a previous run: {2}" -f $map.Name, $sourceFile.Name, $transformedFile)
            }
        }
        catch {
            $transformStatus = "fail"
            $validationStatus = "skipped"
            $null = New-Item -ItemType Directory -Force -Path (Split-Path -Parent $transformLog)
            $_ | Out-File -FilePath $transformLog -Append
        }

        $transformedFileForSummary = ""
        if (Test-Path -Path $transformedFile -PathType Leaf) {
            $transformedFileForSummary = $transformedFile
        }

        $summaryRows.Add([PSCustomObject]@{
            map = $map.Name
            'input' = $sourceFile.Name
            transform = $transformStatus
            validation = $validationStatus
            warnings = $coverageWarnings.Count
            transformed_file = $transformedFileForSummary
            validation_log = $validationLog
            warning_log = $warningLog
        })
    }
}

$summaryCsv = Join-Path $reportsRoot "summary.csv"
$summaryRows | Export-Csv -Path $summaryCsv -NoTypeInformation

$total = $summaryRows.Count
$passBoth = @($summaryRows | Where-Object { $_.transform -eq "pass" -and $_.validation -eq "pass" }).Count
$failAny = @($summaryRows | Where-Object { $_.transform -eq "fail" -or $_.validation -eq "fail" }).Count
$totalWarnings = ($summaryRows | Measure-Object -Property warnings -Sum).Sum
if ($null -eq $totalWarnings) {
    $totalWarnings = 0
}

Write-Host "Plan-Net proof run complete."
Write-Host "Summary: total=$total, pass_both=$passBoth, fail_any=$failAny, warnings=$totalWarnings"
Write-Host "CSV report: $summaryCsv"
