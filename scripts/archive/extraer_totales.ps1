# Script simple para extraer totales por sistema
$content = Get-Content 'Sistema_Validacion_Web/data/tm01_master_data.js' -Raw

# Buscar todos los totalCOP
$pattern = 'totalCOP:\s*"([^"]+)"'
$matches = [regex]::Matches($content, $pattern)

$totales = @{}
foreach ($match in $matches) {
    $totalCOP = $match.Groups[1].Value
    $costo = [double]($totalCOP -replace ',', '')
    
    # Buscar el sistema correspondiente
    $contextStart = [Math]::Max(0, $match.Index - 500)
    $contextEnd = [Math]::Min($content.Length, $match.Index + 100)
    $context = $content.Substring($contextStart, $contextEnd - $contextStart)
    
    if ($context -match 'sistema:\s*"([^"]+)"') {
        $sistema = $matches[0].Groups[1].Value
        if (-not $totales.ContainsKey($sistema)) {
            $totales[$sistema] = 0
        }
        $totales[$sistema] += $costo
    }
}

Write-Host "=== COSTOS ACTUALES POR SISTEMA ===" -ForegroundColor Green
$totalActual = 0
foreach ($sistema in $totales.Keys | Sort-Object) {
    $costo = $totales[$sistema]
    $totalActual += $costo
    Write-Host "$sistema : $($costo.ToString('N0')) COP" -ForegroundColor White
}
Write-Host "TOTAL ACTUAL: $($totalActual.ToString('N0')) COP" -ForegroundColor Yellow
