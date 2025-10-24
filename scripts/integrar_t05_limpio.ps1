# Script limpio para extraer componentes T05 e integrar en WBS
# Archivo: scripts/integrar_t05_limpio.ps1
# Sin caracteres especiales

Write-Host "=== INTEGRACION COMPONENTES T05 ===" -ForegroundColor Green

# Funcion para extraer componentes de un documento T05
function Extract-T05Components {
    param([string]$FilePath, [string]$Sistema)
    
    if (!(Test-Path $FilePath)) {
        Write-Host "Archivo no encontrado: $FilePath" -ForegroundColor Red
        return @()
    }
    
    Write-Host "Procesando: $Sistema" -ForegroundColor Yellow
    
    $content = Get-Content $FilePath -Raw -Encoding UTF8
    $components = @()
    
    # Buscar tabla de componentes
    $pattern = '\|\s*([^|]+?)\s*\|\s*(\d+)\s*\|\s*\$?([0-9,]+)\s*\|\s*\$?([0-9,]+)\s*\|'
    $matches = [regex]::Matches($content, $pattern)
    
    foreach ($match in $matches) {
        $componente = $match.Groups[1].Value.Trim()
        $cantidad = $match.Groups[2].Value.Trim()
        $costoUnit = $match.Groups[3].Value.Trim()
        $total = $match.Groups[4].Value.Trim()
        
        # Filtrar componentes validos
        if ($componente -notmatch "SUBTOTAL|TOTAL|CAPEX|OPEX|% del Total" -and 
            $componente.Length -gt 5 -and 
            $componente -notmatch "^\d+\.\s*") {
            
            $components += @{
                Sistema = $Sistema
                Componente = $componente
                Cantidad = $cantidad
                CostoUnit = $costoUnit
                Total = $total
            }
        }
    }
    
    Write-Host "$($components.Count) componentes extraidos para $Sistema" -ForegroundColor Green
    return $components
}

# Lista de documentos T05
$t05Docs = @(
    @{ File = "V. Ingenieria de Detalle/04_T05_Ingenieria_Detalle_Postes_SOS_v1.0.md"; Sistema = "SOS" },
    @{ File = "V. Ingenieria de Detalle/07_T05_Ingenieria_Detalle_RADAR_ETD_v1.0.md"; Sistema = "ETD/RADAR" },
    @{ File = "V. Ingenieria de Detalle/05_T05_Ingenieria_Detalle_CCTV_v1.0.md"; Sistema = "CCTV" },
    @{ File = "V. Ingenieria de Detalle/06_T05_Ingenieria_Detalle_PMV_v1.0.md"; Sistema = "PMV" },
    @{ File = "V. Ingenieria de Detalle/10_T05_Ingenieria_Detalle_WIM_v1.0.md"; Sistema = "WIM" }
)

$allComponents = @()

# Extraer componentes de cada documento
foreach ($doc in $t05Docs) {
    $components = Extract-T05Components -FilePath $doc.File -Sistema $doc.Sistema
    $allComponents += $components
}

Write-Host "Total componentes extraidos: $($allComponents.Count)" -ForegroundColor Cyan

# Leer datos WBS basicos
$wbsContent = Get-Content "Sistema_Validacion_Web/data/tm01_master_data.js" -Raw -Encoding UTF8
$wbsMatch = [regex]::Match($wbsContent, 'this\.data\.wbs\s*=\s*\[(.*?)\];', [System.Text.RegularExpressions.RegexOptions]::Singleline)

if ($wbsMatch.Success) {
    $wbsData = $wbsMatch.Groups[1].Value
    
    # Convertir componentes a JSON
    $jsonComponents = $allComponents | ConvertTo-Json -Depth 3
    
    # Crear archivo WBS mejorado
    $wbsFileContent = @"
// Datos WBS TM01 Troncal Magdalena - CON COMPONENTES T05 DETALLADOS
// Generado para Sistema de Validacion ITS
// Fecha: $(Get-Date -Format "yyyy-MM-dd HH:mm:ss")
// Script: integrar_t05_limpio.ps1
// Componentes T05 extraidos: $($allComponents.Count)

window.wbsDataGlobal = window.datos_wbs = {
    "fecha_actualizacion": "$(Get-Date -Format "yyyy-MM-dd")",
    "total_capitulos": 10,
    "version": "2.1",
    "componentes_t05": $jsonComponents,
    "items": [
$wbsData
    ]
};

// Funcion para obtener componentes T05 por sistema
function obtenerComponentesT05(sistema) {
    return window.datos_wbs.componentes_t05.filter(comp => comp.Sistema === sistema);
}

// Funcion para obtener todos los items WBS
function obtenerItemsWBS() {
    return window.datos_wbs.items;
}

// Funcion para obtener items por sistema
function obtenerItemsPorSistema(sistema) {
    return window.datos_wbs.items.filter(item => item.sistema === sistema);
}

// Funcion para obtener totales por sistema con componentes T05
function obtenerTotalesPorSistemaConT05() {
    const sistemas = {};
    
    // Procesar items WBS basicos
    window.datos_wbs.items.forEach(item => {
        if (item.sistema && item.total) {
            if (!sistemas[item.sistema]) {
                sistemas[item.sistema] = {
                    sistema: item.sistema,
                    totalUSD: 0,
                    totalCOP: 0,
                    items: 0,
                    componentes: []
                };
            }
            
            sistemas[item.sistema].totalUSD += parseFloat(item.total) || 0;
            sistemas[item.sistema].totalCOP += parseFloat(item.totalCOP) || 0;
            sistemas[item.sistema].items++;
        }
    });
    
    // Agregar componentes T05
    window.datos_wbs.componentes_t05.forEach(comp => {
        if (sistemas[comp.Sistema]) {
            sistemas[comp.Sistema].componentes.push(comp);
        }
    });
    
    return Object.values(sistemas);
}
"@

    # Escribir archivo
    Set-Content -Path "Sistema_Validacion_Web/datos_wbs_TM01_items.js" -Value $wbsFileContent -Encoding UTF8
    
    Write-Host "Archivo WBS regenerado con componentes T05" -ForegroundColor Green
    Write-Host "Ubicacion: Sistema_Validacion_Web/datos_wbs_TM01_items.js" -ForegroundColor Cyan
    
} else {
    Write-Host "Error: No se pudieron extraer los datos WBS basicos" -ForegroundColor Red
}

Write-Host "PROCESO COMPLETADO" -ForegroundColor Green
