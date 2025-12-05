# Script para extraer componentes detallados de documentos T05
# Lee los documentos de ingeniería de detalle y extrae componentes específicos

Write-Host "=== EXTRACCION COMPONENTES DETALLADOS T05 ===" -ForegroundColor Green

# Función para extraer componentes de un documento T05
function Extract-T05Components {
    param(
        [string]$FilePath,
        [string]$Sistema
    )
    
    if (!(Test-Path $FilePath)) {
        Write-Host "❌ Archivo no encontrado: $FilePath" -ForegroundColor Red
        return @()
    }
    
    Write-Host "📖 Leyendo: $FilePath" -ForegroundColor Yellow
    
    $content = Get-Content $FilePath -Raw -Encoding UTF8
    
    # Buscar tabla de componentes (patrón: | Componente | Cantidad | Costo Unit. | Total |)
    $pattern = '\|\s*([^|]+)\s*\|\s*(\d+)\s*\|\s*\$?([0-9,]+)\s*\|\s*\$?([0-9,]+)\s*\|'
    $matches = [regex]::Matches($content, $pattern)
    
    $components = @()
    
    foreach ($match in $matches) {
        $componente = $match.Groups[1].Value.Trim()
        $cantidad = $match.Groups[2].Value.Trim()
        $costoUnit = $match.Groups[3].Value.Trim()
        $total = $match.Groups[4].Value.Trim()
        
        # Filtrar solo componentes específicos (no subtotales ni totales)
        if ($componente -notmatch "SUBTOTAL|TOTAL|CAPEX|OPEX" -and $componente.Length -gt 5) {
            $components += @{
                Sistema = $Sistema
                Componente = $componente
                Cantidad = $cantidad
                CostoUnit = $costoUnit
                Total = $total
            }
        }
    }
    
    Write-Host "✅ Extraídos $($components.Count) componentes para $Sistema" -ForegroundColor Green
    return $components
}

# Lista de documentos T05 a procesar
$t05Documents = @(
    @{ File = "V. Ingenieria de Detalle/04_T05_Ingenieria_Detalle_Postes_SOS_v1.0.md"; Sistema = "SOS" },
    @{ File = "V. Ingenieria de Detalle/07_T05_Ingenieria_Detalle_RADAR_ETD_v1.0.md"; Sistema = "ETD/RADAR" },
    @{ File = "V. Ingenieria de Detalle/05_T05_Ingenieria_Detalle_CCTV_v1.0.md"; Sistema = "CCTV" },
    @{ File = "V. Ingenieria de Detalle/06_T05_Ingenieria_Detalle_PMV_v1.0.md"; Sistema = "PMV" },
    @{ File = "V. Ingenieria de Detalle/10_T05_Ingenieria_Detalle_WIM_v1.0.md"; Sistema = "WIM" },
    @{ File = "V. Ingenieria de Detalle/01_T05_Ingenieria_Detalle_Fibra_Optica_v1.0.md"; Sistema = "TELECOM" }
)

$allComponents = @()

# Extraer componentes de cada documento
foreach ($doc in $t05Documents) {
    $components = Extract-T05Components -FilePath $doc.File -Sistema $doc.Sistema
    $allComponents += $components
}

# Mostrar resumen
Write-Host "`n=== RESUMEN EXTRACCION ===" -ForegroundColor Cyan
Write-Host "Total componentes extraídos: $($allComponents.Count)" -ForegroundColor White

foreach ($sistema in ($allComponents | Group-Object Sistema)) {
    Write-Host "$($sistema.Name): $($sistema.Count) componentes" -ForegroundColor Yellow
}

# Generar archivo JSON con componentes extraídos
$jsonOutput = $allComponents | ConvertTo-Json -Depth 3
$outputFile = "componentes_detallados_t05.json"
Set-Content -Path $outputFile -Value $jsonOutput -Encoding UTF8

Write-Host "`n📁 Componentes guardados en: $outputFile" -ForegroundColor Green
Write-Host "=== EXTRACCION COMPLETADA ===" -ForegroundColor Green
