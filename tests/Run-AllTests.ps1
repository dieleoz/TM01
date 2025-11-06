<#
.SYNOPSIS
    Ejecuta todos los tests del proyecto TM01
    
.DESCRIPTION
    Ejecuta tests unitarios e integración usando Pester
    Genera reporte de cobertura de código y resultados XML
    
.EXAMPLE
    .\tests\Run-AllTests.ps1
#>

$ErrorActionPreference = 'Stop'

Write-Host "`n🧪 Ejecutando Tests TM01 Troncal Magdalena" -ForegroundColor Cyan
Write-Host ("=" * 60) -ForegroundColor Gray

# Verificar e instalar Pester si es necesario
$pesterModule = Get-Module -ListAvailable -Name Pester | Sort-Object Version -Descending | Select-Object -First 1

if (-not $pesterModule) {
    Write-Host "⚠️  Pester no está instalado" -ForegroundColor Yellow
    Write-Host "Instalando Pester..." -ForegroundColor Cyan
    try {
        Install-Module -Name Pester -Scope CurrentUser -Force -SkipPublisherCheck -ErrorAction Stop
        $pesterModule = Get-Module -ListAvailable -Name Pester | Sort-Object Version -Descending | Select-Object -First 1
        Write-Host "✅ Pester instalado exitosamente (v$($pesterModule.Version))" -ForegroundColor Green
    } catch {
        Write-Error "No se pudo instalar Pester: $_"
        exit 1
    }
} else {
    Write-Host "✅ Pester encontrado (v$($pesterModule.Version))" -ForegroundColor Green
}

# Importar Pester (usar versión disponible)
try {
    Import-Module Pester -Force -ErrorAction Stop
    Write-Host "✅ Pester importado correctamente" -ForegroundColor Green
} catch {
    Write-Error "No se pudo importar Pester: $_"
    Write-Host "Intentando reinstalar..." -ForegroundColor Yellow
    Install-Module -Name Pester -Scope CurrentUser -Force -SkipPublisherCheck
    Import-Module Pester -Force
}

# Detectar versión de Pester y configurar según versión
$pesterVersion = (Get-Module Pester).Version
Write-Host "Usando Pester v$($pesterVersion)" -ForegroundColor Gray

if ($pesterVersion.Major -ge 5) {
    # Pester 5.x - Nueva sintaxis
    Write-Host "`nConfigurando Pester 5.x..." -ForegroundColor Cyan
    try {
        $config = New-PesterConfiguration
        $config.Run.Path = Join-Path $PSScriptRoot "."
        $config.Output.Verbosity = 'Detailed'
        $config.CodeCoverage.Enabled = $true
        $config.CodeCoverage.Path = Join-Path $PSScriptRoot "..\scripts\modules\*.psm1"
        $config.CodeCoverage.OutputPath = Join-Path $PSScriptRoot "coverage.xml"
        $config.TestResult.Enabled = $true
        $config.TestResult.OutputPath = Join-Path $PSScriptRoot "TestResults.xml"
        $config.TestResult.OutputFormat = 'NUnitXml'
        
        Write-Host "`nEjecutando tests..." -ForegroundColor Cyan
        $result = Invoke-Pester -Configuration $config
    } catch {
        Write-Error "Error configurando Pester 5.x: $_"
        exit 1
    }
} elseif ($pesterVersion.Major -eq 4) {
    # Pester 4.x - Sintaxis intermedia
    Write-Host "`nConfigurando Pester 4.x..." -ForegroundColor Cyan
    $result = Invoke-Pester -Path (Join-Path $PSScriptRoot ".") `
                            -OutputFile (Join-Path $PSScriptRoot "TestResults.xml") `
                            -OutputFormat NUnitXml `
                            -CodeCoverage (Join-Path $PSScriptRoot "..\scripts\modules\*.psm1") `
                            -Verbose `
                            -PassThru
} else {
    # Pester 3.x - Sintaxis antigua
    Write-Host "`nConfigurando Pester 3.x..." -ForegroundColor Cyan
    Write-Host "⚠️  Pester 3.x detectado - algunas características avanzadas pueden no estar disponibles" -ForegroundColor Yellow
    $result = Invoke-Pester -Path (Join-Path $PSScriptRoot ".") `
                            -OutputFile (Join-Path $PSScriptRoot "TestResults.xml") `
                            -OutputFormat NUnitXml `
                            -CodeCoverage (Join-Path $PSScriptRoot "..\scripts\modules\*.psm1") `
                            -PassThru `
                            -Quiet
}

# Resumen
Write-Host ""
Write-Host ("=" * 60) -ForegroundColor Gray
Write-Host "RESUMEN DE TESTS" -ForegroundColor Cyan
Write-Host ("=" * 60) -ForegroundColor Gray

# Compatibilidad con diferentes versiones de Pester
$totalCount = if ($result.TotalCount) { $result.TotalCount } elseif ($result.Tests) { $result.Tests.Count } else { 0 }
$passedCount = if ($result.PassedCount) { $result.PassedCount } elseif ($result.Passed) { $result.Passed.Count } else { 0 }
$failedCount = if ($result.FailedCount) { $result.FailedCount } elseif ($result.Failed) { $result.Failed.Count } else { 0 }
$skippedCount = if ($result.SkippedCount) { $result.SkippedCount } elseif ($result.Skipped) { $result.Skipped.Count } else { 0 }
$notRunCount = if ($result.NotRunCount) { $result.NotRunCount } else { 0 }

Write-Host ("Total: {0}" -f $totalCount) -ForegroundColor White
Write-Host ("Passed: {0}" -f $passedCount) -ForegroundColor Green
$failedColor = if ($failedCount -gt 0) { "Red" } else { "Green" }
Write-Host ("Failed: {0}" -f $failedCount) -ForegroundColor $failedColor
Write-Host ("Skipped: {0}" -f $skippedCount) -ForegroundColor Yellow
Write-Host ("NotRun: {0}" -f $notRunCount) -ForegroundColor Gray

# Cobertura de código (solo disponible en Pester 4.x+)
if ($result.CodeCoverage -and $result.CodeCoverage.NumberOfCommandsAnalyzed -gt 0) {
    $commandsCovered = if ($result.CodeCoverage.NumberOfCommandsExecuted) { $result.CodeCoverage.NumberOfCommandsExecuted } else { 0 }
    $commandsAnalyzed = $result.CodeCoverage.NumberOfCommandsAnalyzed
    $coverage = if ($commandsAnalyzed -gt 0) { [math]::Round(($commandsCovered / $commandsAnalyzed) * 100, 2) } else { 0 }
    $color = if ($coverage -ge 80) { "Green" } elseif ($coverage -ge 50) { "Yellow" } else { "Red" }
    $coverageMsg = ('Code Coverage: {0}% ({1}/{2} comandos)' -f $coverage, $commandsCovered, $commandsAnalyzed)
    Write-Host $coverageMsg -ForegroundColor $color
} elseif ($null -ne $result.CodeCoverage) {
    Write-Host "Code Coverage: No disponible en Pester 3.x" -ForegroundColor Yellow
} else {
    Write-Host "Code Coverage: No disponible" -ForegroundColor Gray
}

Write-Host ""
Write-Host "Archivos generados:" -ForegroundColor Cyan
$testResultsPath = Join-Path $PSScriptRoot "TestResults.xml"
Write-Host ("  - TestResults.xml: {0}" -f $testResultsPath) -ForegroundColor Gray
if ($result.CodeCoverage -and $result.CodeCoverage.NumberOfCommandsAnalyzed -gt 0) {
    $coveragePath = Join-Path $PSScriptRoot "coverage.xml"
    Write-Host ("  - coverage.xml: {0}" -f $coveragePath) -ForegroundColor Gray
}

# Exit code basado en resultados
$actualFailedCount = if ($result.FailedCount) { $result.FailedCount } elseif ($result.Failed) { $result.Failed.Count } else { $failedCount }

if ($actualFailedCount -gt 0) {
    Write-Host ""
    Write-Host "ALGUNOS TESTS FALLARON" -ForegroundColor Red
    Write-Host ("Revisar detalles en: {0}" -f $testResultsPath) -ForegroundColor Yellow
    exit 1
} else {
    Write-Host ""
    Write-Host "TODOS LOS TESTS PASARON" -ForegroundColor Green
    exit 0
}

