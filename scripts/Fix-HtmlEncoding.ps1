<#
.SYNOPSIS
    Script oficial para corregir encoding UTF-8 en archivos HTML del proyecto.
    
.DESCRIPTION
    Consolida la funcionalidad de 35+ scripts antiguos en uno solo.
    Corrige caracteres españoles (á,é,í,ó,ú,ñ) y emojis en archivos HTML.
    
.PARAMETER Path
    Ruta del directorio a procesar (default: Sistema_Validacion_Web/)
    
.PARAMETER Recursive
    Procesar subdirectorios recursivamente
    
.PARAMETER DryRun
    Mostrar cambios sin aplicarlos
    
.EXAMPLE
    .\scripts\Fix-HtmlEncoding.ps1
    
.EXAMPLE
    .\scripts\Fix-HtmlEncoding.ps1 -Path "docs/" -DryRun
    
.NOTES
    Script oficial consolidado - Reemplaza a 35+ scripts antiguos
    Scripts antiguos archivados en: scripts/archive/encoding_fixes/
#>

[CmdletBinding()]
param(
    [string]$Path = "Sistema_Validacion_Web/",
    [switch]$Recursive,
    [switch]$DryRun
)

$ErrorActionPreference = 'Stop'

Write-Host "`n🔧 Fix HTML Encoding - Script Oficial" -ForegroundColor Cyan
Write-Host "Consolidado desde 35+ scripts antiguos (archivados en scripts/archive/encoding_fixes/)" -ForegroundColor Gray
Write-Host "Procesando: $Path" -ForegroundColor White

# Verificar script Python oficial
$pythonScript = Join-Path $PSScriptRoot "fix_all_html_encoding_final.py"

if (-not (Test-Path $pythonScript)) {
    Write-Error "Script Python oficial no encontrado: $pythonScript`nLos scripts han sido consolidados. Ver scripts/archive/encoding_fixes/ para scripts antiguos."
    exit 1
}

# Verificar Python disponible
try {
    $pythonVersion = python --version 2>&1
    Write-Host "Python detectado: $pythonVersion" -ForegroundColor Gray
} catch {
    Write-Error "Python no está disponible. Instale Python 3.x para usar este script."
    exit 1
}

# Preparar argumentos
$args = @($pythonScript)
if ($Path) { 
    $args += $Path 
} else {
    $args += "Sistema_Validacion_Web/"
}

if ($Recursive) { 
    $args += "--recursive" 
}

if ($DryRun) { 
    $args += "--dry-run"
    Write-Host "`n⚠️  MODO DRY-RUN: No se aplicarán cambios" -ForegroundColor Yellow
}

# Ejecutar script Python
Write-Host "`nEjecutando corrección de encoding..." -ForegroundColor Cyan
try {
    python @args
    if ($LASTEXITCODE -ne 0) {
        Write-Error "Script Python falló con código: $LASTEXITCODE"
        exit $LASTEXITCODE
    }
} catch {
    Write-Error "Error ejecutando script Python: $_"
    exit 1
}

Write-Host "`n✅ Proceso completado" -ForegroundColor Green
Write-Host "📝 Scripts obsoletos archivados en: scripts/archive/encoding_fixes/" -ForegroundColor Yellow
Write-Host "`nPara usar este script en el futuro:" -ForegroundColor Cyan
Write-Host "  .\scripts\Fix-HtmlEncoding.ps1" -ForegroundColor White

