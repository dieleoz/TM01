# Script para corregir campos vuCOP faltantes en tm01_master_data.js
# Archivo: fix_vucop_fields.ps1

$filePath = "Sistema_Validacion_Web/data/tm01_master_data.js"
$content = Get-Content $filePath -Raw

# Patrón para encontrar líneas que tienen vu: pero no vuCOP:
# vu: "número", total: "número", totalCOP: "número"
$pattern = 'vu: "([^"]+)", total: "([^"]+)", totalCOP: "([^"]+)"'

# Reemplazar con vuCOP calculado (vu * 4400)
$content = $content -replace $pattern, {
    param($match)
    $vu = [decimal]$match.Groups[1].Value.Replace(',', '')
    $total = $match.Groups[2].Value
    $totalCOP = $match.Groups[3].Value
    $vuCOP = ($vu * 4400).ToString("N0").Replace(',', '')
    
    "vu: `"$($match.Groups[1].Value)`", vuCOP: `"$vuCOP`", total: `"$total`", totalCOP: `"$totalCOP`""
}

# Guardar archivo corregido
Set-Content $filePath $content -Encoding UTF8

Write-Host "Campos vuCOP corregidos en $filePath" -ForegroundColor Green
Write-Host "Archivo actualizado con conversion USD a COP (tasa: 4,400)" -ForegroundColor Cyan