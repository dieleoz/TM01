# Script simple para corregir encoding UTF-8 en archivos HTML
$ErrorActionPreference = 'Continue'

$files = @(
    "docs/presupuesto.html",
    "docs/WBS_Menu_Principal.html",
    "docs/wbs.html",
    "docs/layout.html",
    "docs/reporte_gerencial.html",
    "docs/cronograma.html"
)

$enc = [System.Text.Encoding]::UTF8

foreach ($f in $files) {
    if (-not (Test-Path $f)) { continue }
    Write-Host "Corrigiendo: $f" -ForegroundColor Cyan
    $bytes = [System.IO.File]::ReadAllBytes($f)
    $content = $enc.GetString($bytes)
    
    # Reemplazos directos usando caracteres Unicode
    $content = $content -replace 'CÃ¡lculos', 'Cálculos'
    $content = $content -replace 'ExportaciÃ³n', 'Exportación'
    $content = $content -replace 'exportaciÃ³n', 'exportación'
    $content = $content -replace 'MenÃº', 'Menú'
    $content = $content -replace 'capÃ­tulos', 'capítulos'
    $content = $content -replace 'CapÃ­tulos', 'Capítulos'
    $content = $content -replace 'automÃ¡ticos', 'automáticos'
    $content = $content -replace 'AutomÃ¡ticos', 'Automáticos'
    $content = $content -replace 'anÃ¡lisis', 'análisis'
    $content = $content -replace 'AnÃ¡lisis', 'Análisis'
    $content = $content -replace 'CÃ³digo', 'Código'
    $content = $content -replace 'cÃ³digo', 'código'
    $content = $content -replace 'descripciÃ³n', 'descripción'
    $content = $content -replace 'DescripciÃ³n', 'Descripción'
    $content = $content -replace 'DecisiÃ³n', 'Decisión'
    $content = $content -replace 'TÃ©cnica', 'Técnica'
    $content = $content -replace 'TÃ©cnicos', 'Técnicos'
    $content = $content -replace 'GestiÃ³n', 'Gestión'
    $content = $content -replace 'SincronizaciÃ³n', 'Sincronización'
    $content = $content -replace 'JustificaciÃ³n', 'Justificación'
    $content = $content -replace 'EstratÃ©gicas', 'Estratégicas'
    $content = $content -replace 'Ã­tem', 'ítem'
    $content = $content -replace 'Ãtems', 'Ítems'
    $content = $content -replace 'SecciÃ³n', 'Sección'
    $content = $content -replace 'TrabajÃ³n', 'Trabajón'
    $content = $content -replace 'IntervenciÃ³n', 'Intervención'
    $content = $content -replace 'â†\x27', '←'
    
    # Emojis (usar códigos Unicode)
    $content = $content -replace [char]0xD83D + [char]0xDCB0, '💰'
    $content = $content -replace [char]0xD83D + [char]0xDD0D, '🔍'
    $content = $content -replace [char]0xD83D + [char]0xDDD1 + [char]0xFE0F, '🗑️'
    $content = $content -replace [char]0xD83D + [char]0xDCCA, '📊'
    $content = $content -replace [char]0xD83D + [char]0xDCCB, '📋'
    $content = $content -replace [char]0xD83E + [char]0xDD7E, '🧾'
    
    # Escribir con BOM UTF-8
    $utf8BOM = New-Object System.Text.UTF8Encoding $true
    [System.IO.File]::WriteAllText((Resolve-Path $f), $content, $utf8BOM)
    Write-Host "  OK" -ForegroundColor Green
}

Write-Host "`nCompletado" -ForegroundColor Green
