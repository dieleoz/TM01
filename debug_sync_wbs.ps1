# Script de depuración para sync_wbs_tm01.ps1
$SourcePath = "Sistema_Validacion_Web/data/tm01_master_data.js"
$TargetPath = "Sistema_Validacion_Web/datos_wbs_TM01_items.js"

Write-Host "=== DEPURACIÓN SYNC WBS TM01 ===" -ForegroundColor Green

# Verificar archivo fuente
if (!(Test-Path $SourcePath)) {
    Write-Host "❌ Archivo fuente no encontrado: $SourcePath" -ForegroundColor Red
    exit 1
}
Write-Host "✅ Archivo fuente encontrado: $SourcePath" -ForegroundColor Green

# Extraer datos WBS
Write-Host "`nExtrayendo datos WBS..." -ForegroundColor Yellow
$SourceContent = Get-Content -Path $SourcePath -Raw -Encoding UTF8
$WBSMatch = [regex]::Match($SourceContent, 'this\.data\.wbs\s*=\s*\[(.*?)\];', [System.Text.RegularExpressions.RegexOptions]::Singleline)

if (!$WBSMatch.Success) {
    Write-Host "❌ No se encontró el array de datos WBS" -ForegroundColor Red
    exit 1
}

$WBSData = $WBSMatch.Groups[1].Value
Write-Host "✅ Datos WBS extraídos. Tamaño: $($WBSData.Length) caracteres" -ForegroundColor Green

# Validar estructura
Write-Host "`nValidando estructura..." -ForegroundColor Yellow
$ItemCount = ($WBSData -split '{').Count - 1
Write-Host "Elementos WBS encontrados: $ItemCount" -ForegroundColor Cyan

if ($ItemCount -eq 0) {
    Write-Host "❌ No se encontraron elementos WBS" -ForegroundColor Red
    exit 1
}

# Crear contenido del archivo
Write-Host "`nGenerando contenido del archivo..." -ForegroundColor Yellow
$FileContent = @'
// DATOS WBS TM01 - GENERADOS AUTOMÁTICAMENTE
// Archivo: {0}
// Generado: {1}
// Script: sync_wbs_tm01.ps1 v1.0

// Datos WBS extraídos desde tm01_master_data.js
const datosWBS = [
{2}
];

// Función para obtener todos los items WBS
function obtenerItemsWBS() {{
    return datosWBS;
}}

// Función para obtener items por sistema
function obtenerItemsPorSistema(sistema) {{
    return datosWBS.filter(item => item.sistema === sistema);
}}

// Función para obtener items por nivel
function obtenerItemsPorNivel(nivel) {{
    return datosWBS.filter(item => item.nivel === nivel);
}}

// Función para obtener items con cantidad
function obtenerItemsConCantidad() {{
    return datosWBS.filter(item => item.cantidad && item.cantidad !== "");
}}

// Función para obtener totales por sistema
function obtenerTotalesPorSistema() {{
    const sistemas = {{}};
    
    datosWBS.forEach(item => {{
        if (item.sistema && item.total) {{
            if (!sistemas[item.sistema]) {{
                sistemas[item.sistema] = {{
                    sistema: item.sistema,
                    totalUSD: 0,
                    totalCOP: 0,
                    items: 0
                }};
            }}
            
            sistemas[item.sistema].totalUSD += parseFloat(item.total) || 0;
            sistemas[item.sistema].totalCOP += parseFloat(item.totalCOP) || 0;
            sistemas[item.sistema].items++;
        }}
    }});
    
    return Object.values(sistemas);
}}

// Exportar funciones para uso en otros archivos
if (typeof module !== 'undefined' && module.exports) {{
    module.exports = {{
        datosWBS,
        obtenerItemsWBS,
        obtenerItemsPorSistema,
        obtenerItemsPorNivel,
        obtenerItemsConCantidad,
        obtenerTotalesPorSistema
    }};
}}
'@ -f $TargetPath, (Get-Date -Format "yyyy-MM-dd HH:mm:ss"), $WBSData

Write-Host "✅ Contenido generado. Tamaño: $($FileContent.Length) caracteres" -ForegroundColor Green

# Escribir archivo
Write-Host "`nEscribiendo archivo..." -ForegroundColor Yellow
try {
    Set-Content -Path $TargetPath -Value $FileContent -Encoding UTF8
    Write-Host "✅ Archivo escrito exitosamente: $TargetPath" -ForegroundColor Green
    
    # Verificar archivo
    if (Test-Path $TargetPath) {
        $FileSize = (Get-Item $TargetPath).Length
        Write-Host "✅ Archivo verificado. Tamaño: $FileSize bytes" -ForegroundColor Green
        
        # Buscar item 10.2.3
        $FileContent = Get-Content -Path $TargetPath -Raw -Encoding UTF8
        if ($FileContent -match "10\.2\.3.*375") {
            Write-Host "✅ Item 10.2.3 con valor 375 encontrado" -ForegroundColor Green
        } else {
            Write-Host "❌ Item 10.2.3 con valor 375 NO encontrado" -ForegroundColor Red
        }
    } else {
        Write-Host "❌ Archivo no se creó correctamente" -ForegroundColor Red
    }
    
} catch {
    Write-Host "❌ Error al escribir archivo: $($_.Exception.Message)" -ForegroundColor Red
}

Write-Host "`n=== DEPURACIÓN COMPLETADA ===" -ForegroundColor Green
