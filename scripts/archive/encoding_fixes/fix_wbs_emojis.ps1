# Script para corregir emojis y caracteres mal codificados en docs/wbs.html
$file = "docs/wbs.html"
if (-not (Test-Path $file)) {
    Write-Host "Archivo no encontrado: $file" -ForegroundColor Red
    exit 1
}

Write-Host "Corrigiendo emojis y caracteres en $file..." -ForegroundColor Cyan

# Leer con UTF-8 sin BOM
$utf8NoBom = New-Object System.Text.UTF8Encoding $false
$content = [System.IO.File]::ReadAllText((Resolve-Path $file), $utf8NoBom)

# Reemplazos de emojis y caracteres mal codificados
$content = $content -replace 'ðŸ"‹ DT','📋 DT'
$content = $content -replace 'ðŸ''ï¸ Ver','ℹ️ Ver'
$content = $content -replace 'ðŸ''ï¸ Detalles','ℹ️ Detalles'
$content = $content -replace 'CÃ³digo WBS','Código WBS'
$content = $content -replace 'DescripciÃ³n','Descripción'
$content = $content -replace 'Criterio TÃ©cnico','Criterio Técnico'
$content = $content -replace 'âŒ Error','❌ Error'
$content = $content -replace 'âŒ No','❌ No'
$content = $content -replace 'âœ…','✅'
$content = $content -replace 'estÃ©','esté'
$content = $content -replace 'mÃ¡s','más'
$content = $content -replace 'estÃ¡n','están'

# Escribir con UTF-8 sin BOM
[System.IO.File]::WriteAllText((Resolve-Path $file), $content, $utf8NoBom)

Write-Host "✅ Emojis y caracteres corregidos en $file" -ForegroundColor Green

