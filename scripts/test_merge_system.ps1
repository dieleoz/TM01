#requires -Version 5.1
# test_merge_system.ps1 - Tests end-to-end del sistema de merge bidireccional
# Valida MergeEngine, DataMapper y flujo completo de sincronización

param(
    [switch]$Verbose,
    [switch]$DryRun
)

$ErrorActionPreference = 'Stop'

$modulesPath = Join-Path -Path $PSScriptRoot -ChildPath 'modules'
Import-Module (Join-Path $modulesPath 'Logger.psm1') -Force
Import-Module (Join-Path $modulesPath 'MergeEngine.psm1') -Force
Import-Module (Join-Path $modulesPath 'DataMapper.psm1') -Force
Import-Module (Join-Path $modulesPath 'Snapshotter.psm1') -Force

Initialize-Logger -LogPrefix 'test_merge'

function Write-TestResult {
    param([string]$TestName, [bool]$Passed, [string]$Details = '')
    $color = if ($Passed) { 'Green' } else { 'Red' }
    $symbol = if ($Passed) { '✅' } else { '❌' }
    Write-Host "$symbol $TestName" -ForegroundColor $color
    if ($Details -and $Verbose) { Write-Host "   $Details" -ForegroundColor Gray }
    Write-LogEntry -Level $(if ($Passed) { 'INFO' } else { 'ERROR' }) -Message "Test: $TestName" -Context @{ Passed = $Passed; Details = $Details }
    return $Passed
}

Write-Host "`n🧪 TESTS DEL SISTEMA DE MERGE BIDIRECCIONAL" -ForegroundColor Cyan
Write-Host ('=' * 80) -ForegroundColor Gray

$testsPassed = 0
$testsTotal = 0

# Test 1: MergeEngine - Compare-ObjectDiff
$testsTotal++
Write-Host "`n[1/7] Test: Compare-ObjectDiff" -ForegroundColor Yellow
$base = @{ cantidad = 10; vu = 100; descripcion = 'Original' }
$modified = @{ cantidad = 15; vu = 100; descripcion = 'Original'; nuevo = 'Campo nuevo' }
try {
    $diff = Compare-ObjectDiff -Base $base -Modified $modified
    $ok = ($diff.Modified.Count -eq 1 -and $diff.Modified.ContainsKey('cantidad')) -and
          ($diff.Added.Count -eq 1 -and $diff.Added.ContainsKey('nuevo'))
    if ($ok) { $testsPassed++ }
    Write-TestResult -TestName "Compare-ObjectDiff" -Passed $ok -Details "Modified: $($diff.Modified.Count), Added: $($diff.Added.Count)"
} catch {
    Write-TestResult -TestName "Compare-ObjectDiff" -Passed $false -Details $_.Exception.Message
}

# Test 2: MergeEngine - Resolve-Conflict (contractual)
$testsTotal++
Write-Host "`n[2/7] Test: Resolve-Conflict (contractual)" -ForegroundColor Yellow
try {
    $res = Resolve-Conflict -Field 'cantidad' -BaseValue 10 -SourceValue 15 -CurrentValue 12
    $ok = ($res.Value -eq 15 -and $res.Reason -like '*Contractual*')
    if ($ok) { $testsPassed++ }
    Write-TestResult -TestName "Resolve-Conflict (contractual)" -Passed $ok -Details "Value: $($res.Value), Reason: $($res.Reason)"
} catch {
    Write-TestResult -TestName "Resolve-Conflict (contractual)" -Passed $false -Details $_.Exception.Message
}

# Test 3: MergeEngine - Resolve-Conflict (UI)
$testsTotal++
Write-Host "`n[3/7] Test: Resolve-Conflict (UI)" -ForegroundColor Yellow
try {
    $res = Resolve-Conflict -Field 'descripcion' -BaseValue 'Base' -SourceValue 'Source' -CurrentValue 'Manual'
    $ok = ($res.Value -eq 'Manual' -and $res.Reason -like '*UI*')
    if ($ok) { $testsPassed++ }
    Write-TestResult -TestName "Resolve-Conflict (UI)" -Passed $ok -Details "Value: $($res.Value), Reason: $($res.Reason)"
} catch {
    Write-TestResult -TestName "Resolve-Conflict (UI)" -Passed $false -Details $_.Exception.Message
}

# Test 4: MergeEngine - Merge-ThreeWay simple
$testsTotal++
Write-Host "`n[4/7] Test: Merge-ThreeWay (simple)" -ForegroundColor Yellow
$base = @{ cantidad = 10 }
$source = @{ cantidad = 15 }
$current = @{ cantidad = 12 }
try {
    $result = Merge-ThreeWay -Base $base -Source $source -Current $current
    $ok = ($result.Merged.cantidad -eq 15 -and $result.Stats.FieldsModified -gt 0)
    if ($ok) { $testsPassed++ }
    Write-TestResult -TestName "Merge-ThreeWay (simple)" -Passed $ok -Details "Merged cantidad: $($result.Merged.cantidad), Conflicts: $($result.Conflicts.Count)"
} catch {
    Write-TestResult -TestName "Merge-ThreeWay (simple)" -Passed $false -Details $_.Exception.Message
}

# Test 5: DataMapper - Get-MasterDataContent
$testsTotal++
Write-Host "`n[5/7] Test: Get-MasterDataContent" -ForegroundColor Yellow
$masterFile = "Sistema_Validacion_Web/data/tm01_master_data.js"
if (Test-Path -LiteralPath $masterFile) {
    try {
        $data = Get-MasterDataContent -FilePath $masterFile
        $ok = ($null -ne $data)
        if ($ok) { $testsPassed++ }
        Write-TestResult -TestName "Get-MasterDataContent" -Passed $ok -Details "Data type: $($data.GetType().Name)"
    } catch {
        Write-TestResult -TestName "Get-MasterDataContent" -Passed $false -Details $_.Exception.Message
    }
} else {
    Write-TestResult -TestName "Get-MasterDataContent" -Passed $false -Details "Master file no encontrado: $masterFile"
}

# Test 6: DataMapper - Invoke-BidirectionalSync (DryRun)
$testsTotal++
Write-Host "`n[6/7] Test: Invoke-BidirectionalSync (DryRun)" -ForegroundColor Yellow
try {
    $result = Invoke-BidirectionalSync -DryRun
    $ok = ($null -ne $result)
    if ($ok) { $testsPassed++ }
    Write-TestResult -TestName "Invoke-BidirectionalSync (DryRun)" -Passed $ok -Details "Stats: $($result.Stats | ConvertTo-Json -Compress)"
} catch {
    Write-TestResult -TestName "Invoke-BidirectionalSync (DryRun)" -Passed $false -Details $_.Exception.Message
}

# Test 7: Snapshotter - Integración con merge
$testsTotal++
Write-Host "`n[7/7] Test: Snapshotter integración" -ForegroundColor Yellow
$masterFile = "Sistema_Validacion_Web/data/tm01_master_data.js"
if (Test-Path -LiteralPath $masterFile) {
    try {
        $snap = New-DataSnapshot -SourceFile $masterFile -Description "Test merge $(Get-Date -Format 'yyyy-MM-dd HH:mm')"
        $ok = ($null -ne $snap -and (Test-Path -LiteralPath $masterFile))
        if ($ok) { $testsPassed++ }
        Write-TestResult -TestName "Snapshotter integración" -Passed $ok -Details "Snapshot: $snap"
    } catch {
        Write-TestResult -TestName "Snapshotter integración" -Passed $false -Details $_.Exception.Message
    }
} else {
    Write-TestResult -TestName "Snapshotter integración" -Passed $false -Details "Master file no encontrado"
}

# Resumen
Write-Host "`n📊 RESUMEN DE TESTS" -ForegroundColor Cyan
Write-Host ('=' * 80) -ForegroundColor Gray
Write-Host "Tests pasados: $testsPassed / $testsTotal" -ForegroundColor $(if ($testsPassed -eq $testsTotal) { 'Green' } else { 'Yellow' })
$percentage = [math]::Round(($testsPassed / $testsTotal) * 100, 1)
Write-Host "Porcentaje: $percentage%" -ForegroundColor $(if ($percentage -eq 100) { 'Green' } else { 'Yellow' })

if ($testsPassed -eq $testsTotal) {
    Write-Host "`n✅ TODOS LOS TESTS PASARON" -ForegroundColor Green
    exit 0
} else {
    Write-Host "`n⚠️  ALGUNOS TESTS FALLARON" -ForegroundColor Yellow
    exit 1
}
