#requires -Version 5.1
# Script para sincronizar valores CAPEX desde documentos T01 MVP v1.1 a tm01_master_data.js

param(
    [switch]$DryRun
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

Write-Host "🔄 Sincronizando valores CAPEX desde T01 MVP v1.1..." -ForegroundColor Cyan

# Mapeo de documentos T01 a sistemas
$t01Files = @{
    'SOS' = 'III. Ingenieria Conceptual/24B_T01_Ficha_Sistema_Postes_SOS_MVP_v1.0.md'
    'CCTV' = 'III. Ingenieria Conceptual/24C_T01_Ficha_Sistema_CCTV_MVP_v1.0.md'
    'PMV' = 'III. Ingenieria Conceptual/24D_T01_Ficha_Sistema_PMV_MVP_v1.0.md'
    'ETD/RADAR' = 'III. Ingenieria Conceptual/24E_T01_Ficha_Sistema_ETD_RADAR_MVP_v1.0.md'
    'WIM' = 'III. Ingenieria Conceptual/24F_T01_Ficha_Sistema_WIM_MVP_v1.0.md'
    'METEO' = 'III. Ingenieria Conceptual/24G_T01_Ficha_Sistema_Estaciones_Meteorologicas_MVP_v1.0.md'
    'TELECOM' = 'III. Ingenieria Conceptual/27H_T01_Ficha_Sistema_Telecomunicaciones_MVP_v1.0.md'
}

function Extract-CAPEXFromT01 {
    param([string]$FilePath)
    
    if (-not (Test-Path $FilePath)) {
        Write-Warning "Archivo no encontrado: $FilePath"
        return $null
    }
    
    $content = Get-Content $FilePath -Raw -Encoding UTF8
    
    # Patrón 1: | **TOTAL CAPEX** | ... | ... | **$X,XXX,XXX** |
    if ($content -match '\|\s*\*\*TOTAL CAPEX\*\*\s*\|[^\|]*\|[^\|]*\|\s*\*\*\$?([\d,]+)\*\*') {
        $capexStr = $matches[1] -replace ',', ''
        return [int]$capexStr
    }
    
    # Patrón 2: | **TOTAL CAPEX** | **$X,XXX,XXX** | (formato Telecom)
    if ($content -match '\|\s*\*\*TOTAL CAPEX\*\*\s*\|\s*\*\*\$?([\d,]+)\*\*\s*\|') {
        $capexStr = $matches[1] -replace ',', ''
        return [int]$capexStr
    }
    
    # Patrón 3: **CAPEX Total:** $X,XXX,XXX USD
    if ($content -match '\*\*CAPEX Total:\*\*\s*\$?([\d,]+)\s*USD') {
        $capexStr = $matches[1] -replace ',', ''
        return [int]$capexStr
    }
    
    # Patrón 4: | **TOTAL CAPEX** | | | **$X,XXX,XXX - $Y,YYY,YYY** | (rango)
    if ($content -match '\|\s*\*\*TOTAL CAPEX\*\*\s*\|[^\|]*\|[^\|]*\|\s*\*\*\$?([\d,]+)\s*-\s*\$?([\d,]+)\*\*') {
        # Usar el valor promedio del rango
        $min = [int]($matches[1] -replace ',', '')
        $max = [int]($matches[2] -replace ',', '')
        return [int](($min + $max) / 2)
    }
    
    Write-Warning "No se pudo extraer CAPEX de: $FilePath"
    return $null
}

# Extraer valores CAPEX de cada T01
$capexValues = @{}
foreach ($sistema in $t01Files.Keys) {
    $file = $t01Files[$sistema]
    Write-Host "  📄 Leyendo $sistema desde $file..." -ForegroundColor Gray
    $capex = Extract-CAPEXFromT01 -FilePath $file
    if ($capex) {
        $capexValues[$sistema] = $capex
        Write-Host "    ✅ $sistema : `$$($capex.ToString('N0')) USD" -ForegroundColor Green
    } else {
        Write-Host "    ⚠️  $sistema : No se pudo extraer CAPEX" -ForegroundColor Yellow
    }
}

# Mostrar resumen
Write-Host "`n📊 Valores CAPEX extraídos:" -ForegroundColor Cyan
$totalCapex = 0
foreach ($sistema in $capexValues.Keys | Sort-Object) {
    $capex = $capexValues[$sistema]
    $totalCapex += $capex
    Write-Host "  $sistema : `$$($capex.ToString('N0')) USD" -ForegroundColor White
}
Write-Host "  ─────────────────────────────" -ForegroundColor Gray
Write-Host "  TOTAL: `$$($totalCapex.ToString('N0')) USD" -ForegroundColor Cyan

if ($DryRun) {
    Write-Host "`n🔍 Modo DryRun - No se aplicarán cambios" -ForegroundColor Yellow
    exit 0
}

# Actualizar tm01_master_data.js
$masterFile = "docs/data/tm01_master_data.js"
if (-not (Test-Path $masterFile)) {
    Write-Error "Archivo master no encontrado: $masterFile"
    exit 1
}

Write-Host "`n📝 Actualizando $masterFile..." -ForegroundColor Cyan

# Crear backup
$backupFile = "$masterFile.backup_$(Get-Date -Format 'yyyyMMdd_HHmmss')"
Copy-Item $masterFile $backupFile -Force
Write-Host "  💾 Backup creado: $backupFile" -ForegroundColor Gray

# Leer contenido actual
$content = Get-Content $masterFile -Raw -Encoding UTF8

# Agregar comentario con valores CAPEX consolidados al inicio del archivo
$timestamp = Get-Date -Format 'yyyy-MM-dd HH:mm:ss'
$capexComment = @"
// ═══════════════════════════════════════════════════════════════════════════
// VALORES CAPEX CONSOLIDADOS - Sincronizado desde T01 MVP v1.1
// Última actualización: $timestamp
// ═══════════════════════════════════════════════════════════════════════════
// CAPEX por Sistema (USD):
"@

foreach ($sistema in $capexValues.Keys | Sort-Object) {
    $capex = $capexValues[$sistema]
    $capexComment += "`n//   $sistema : `$$($capex.ToString('N0'))"
}

$capexComment += "`n//   TOTAL: `$$($totalCapex.ToString('N0'))"
$capexComment += "`n// ═══════════════════════════════════════════════════════════════════════════`n`n"

# Remover comentario anterior si existe
$content = $content -replace '// ═+[\s\S]*?// ═+\n\n', ''

# Agregar nuevo comentario al inicio (después de la primera línea de comentario)
$lines = $content -split "`n"
$newContent = $lines[0] + "`n" + $lines[1] + "`n`n" + $capexComment + ($lines[2..($lines.Length-1)] -join "`n")

# Guardar archivo actualizado
Set-Content $masterFile -Value $newContent -Encoding UTF8 -NoNewline

Write-Host "  ✅ Archivo actualizado exitosamente" -ForegroundColor Green
Write-Host "`n✨ Sincronización completada" -ForegroundColor Green
Write-Host "  📊 Total CAPEX: `$$($totalCapex.ToString('N0')) USD" -ForegroundColor Cyan
Write-Host "  📄 Archivo: $masterFile" -ForegroundColor Gray
Write-Host "  💾 Backup: $backupFile" -ForegroundColor Gray

Write-Host "`n⚠️  NOTA: Los valores CAPEX están en los comentarios del archivo." -ForegroundColor Yellow
Write-Host "   Para reflejar cambios en el WBS, se requiere actualizar los items individuales." -ForegroundColor Yellow
Write-Host "   Ejecutar: .\scripts\rebuild_wbs_from_T01.ps1" -ForegroundColor Cyan
