# Script para corregir encoding en docs/wbs.html
$file = "docs/wbs.html"
if (-not (Test-Path $file)) {
    Write-Host "Archivo no encontrado: $file" -ForegroundColor Red
    exit 1
}

Write-Host "Corrigiendo encoding en $file..." -ForegroundColor Cyan

# Leer con UTF-8 sin BOM
$utf8NoBom = New-Object System.Text.UTF8Encoding $false
$content = [System.IO.File]::ReadAllText((Resolve-Path $file), $utf8NoBom)

# Reemplazos de mojibake común
$content = $content -replace 'ValidaciÃ³n','Validación'
$content = $content -replace 'CapÃ­tulos','Capítulos'
$content = $content -replace 'SubcapÃ­tulos','Subcapítulos'
$content = $content -replace 'descripciÃ³n','descripción'
$content = $content -replace 'estÃ¡n','están'
$content = $content -replace 'estÃ©','esté'
$content = $content -replace 'DiseÃ±o','Diseño'
$content = $content -replace 'tÃ©cnicos','técnicos'

# Escribir con UTF-8 sin BOM
[System.IO.File]::WriteAllText((Resolve-Path $file), $content, $utf8NoBom)

Write-Host "✅ Encoding corregido en $file" -ForegroundColor Green

