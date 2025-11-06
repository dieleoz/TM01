# Script para corregir encoding UTF-8 en archivos HTML
# Fecha: 31 Octubre 2025

$ErrorActionPreference = 'Stop'

Write-Host "`nCorrigiendo encoding UTF-8 en archivos HTML..." -ForegroundColor Cyan

$htmlFiles = @(
    "docs/presupuesto.html",
    "docs/WBS_Menu_Principal.html",
    "docs/wbs.html",
    "docs/layout.html",
    "docs/reporte_gerencial.html",
    "docs/cronograma.html",
    "docs/analisis_riesgos.html",
    "docs/edt_detalle.html",
    "docs/estado_sync.html",
    "docs/layout_georeferenciado.html"
)

# Mapeo de caracteres mal codificados a correctos
$fixes = @{
    # Caracteres españoles
    'CÃ¡lculos' = 'Cálculos'
    'exportaciÃ³n' = 'exportación'
    'ExportaciÃ³n' = 'Exportación'
    'MenÃº' = 'Menú'
    'MenÃº' = 'menú'
    'capÃ­tulos' = 'capítulos'
    'CapÃ­tulos' = 'Capítulos'
    'automÃ¡ticos' = 'automáticos'
    'AutomÃ¡ticos' = 'Automáticos'
    'anÃ¡lisis' = 'análisis'
    'AnÃ¡lisis' = 'Análisis'
    'CÃ³digo' = 'Código'
    'cÃ³digo' = 'código'
    'descripciÃ³n' = 'descripción'
    'DescripciÃ³n' = 'Descripción'
    'DecisiÃ³n' = 'Decisión'
    'TÃ©cnica' = 'Técnica'
    'tÃ©cnico' = 'técnico'
    'TÃ©cnicos' = 'Técnicos'
    'GestiÃ³n' = 'Gestión'
    'gestiÃ³n' = 'gestión'
    'SincronizaciÃ³n' = 'Sincronización'
    'sincronizaciÃ³n' = 'sincronización'
    'JustificaciÃ³n' = 'Justificación'
    'EstratÃ©gicas' = 'Estratégicas'
    'Ã­tem' = 'ítem'
    'Ãtems' = 'Ítems'
    'SecciÃ³n' = 'Sección'
    'TrabajÃ³n' = 'Trabajón'
    'IntervenciÃ³n' = 'Intervención'
    'â†' = '←'
    'â†' = '←'
    
    # Emojis mal codificados (reemplazar por códigos HTML entities o Unicode correctos)
    'ðŸ'\''°' = '💰'
    'ðŸ"' = '🔍'
    'ðŸ"„' = '🗑️'
    'ðŸ"Š' = '📊'
    'ðŸ"„' = '📋'
    'ðŸ§¾' = '🧾'
    'ðŸ"‹' = '📝'
    'ðŸ"Š' = '📈'
    'ðŸ"„' = '📥'
    'ðŸ"§' = '⚙️'
    'ðŸ—ºï¸' = '🗺️'
    'ðŸŒ' = '🗺️'
    'ðŸ–¨ï¸' = '🖨️'
    'ðŸ"' = '📋'
    'ðŸ"' = '📈'
    'ðŸŽ¯' = '✅'
    'ðŸ—''ï¸' = '📍'
    'ðŸ"§' = '🔧'
    'ðŸ""' = '📉'
    'ðŸ"' = '📊'
    'ðŸ—'ï¸' = '🔄'
    'ðŸŽ›ï¸' = '🔍'
    'ðŸŒ³' = '🌃'
    'ðŸ"' = '📝'
    'ðŸ"' = '📊'
    'ðŸ§­' = '🧮'
    'ðŸ""' = '📌'
    'ðŸ"—'ï¸' = '🕐'
    'ðŸ"' = '⚠️'
    'ðŸŸ¡' = '🟢'
    'ðŸŸ¢' = '🟡'
    'ðŸŸ' = '🔴'
    'ðŸ§¾' = '🧾'
    'ðŸ"' = '📋'
    'ðŸ"' = '📈'
    'ðŸ"' = '📊'
    'ðŸ"¤' = '💾'
    'ðŸ"' = '📄'
    'ðŸ"—'ï¸' = '🕐'
    'ðŸ"' = '📋'
    'ðŸ"—'ï¸' = '🔄'
    'ðŸ"' = '📊'
    'ðŸ"' = '📈'
    'ðŸ"' = '📝'
    'ðŸ"' = '📄'
    'ðŸ"' = '📊'
    'ðŸ"' = '📈'
    'ðŸ"' = '📋'
    'ðŸ"' = '📝'
    'ðŸ"' = '📊'
    'ðŸ"' = '📈'
    'ðŸ"' = '📋'
    'ðŸ"' = '📝'
    'ðŸ"' = '📊'
    'ðŸ"' = '📈'
    'ðŸ"' = '📋'
    'ðŸ"' = '📝'
}

$totalFixed = 0
$filesFixed = 0

foreach ($file in $htmlFiles) {
    if (-not (Test-Path -LiteralPath $file)) {
        Write-Host "  [SKIP] $file (no encontrado)" -ForegroundColor Gray
        continue
    }
    
    Write-Host "  [PROC] $file..." -ForegroundColor Yellow
    $content = Get-Content -LiteralPath $file -Raw -Encoding UTF8
    $original = $content
    $count = 0
    
    foreach ($bad in $fixes.Keys) {
        $good = $fixes[$bad]
        if ($content -match [regex]::Escape($bad)) {
            $content = $content -replace [regex]::Escape($bad), $good
            $count++
        }
    }
    
    if ($content -ne $original) {
        Set-Content -LiteralPath $file -Value $content -Encoding UTF8 -NoNewline
        Write-Host "    [OK] $count reemplazos" -ForegroundColor Green
        $filesFixed++
        $totalFixed += $count
    } else {
        Write-Host "    [OK] Sin cambios" -ForegroundColor Gray
    }
}

Write-Host "`n✅ Corrección completada:" -ForegroundColor Green
Write-Host "   Archivos corregidos: $filesFixed" -ForegroundColor White
Write-Host "   Total reemplazos: $totalFixed" -ForegroundColor White
