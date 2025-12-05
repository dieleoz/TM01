# Script de prueba para verificar generación de archivo WBS
$SourcePath = "Sistema_Validacion_Web/data/tm01_master_data.js"
$TargetPath = "test_wbs_output.js"

# Extraer datos WBS
$SourceContent = Get-Content -Path $SourcePath -Raw -Encoding UTF8
$WBSMatch = [regex]::Match($SourceContent, 'this\.data\.wbs\s*=\s*\[(.*?)\];', [System.Text.RegularExpressions.RegexOptions]::Singleline)

if ($WBSMatch.Success) {
    $WBSData = $WBSMatch.Groups[1].Value
    Write-Host "✅ Datos WBS extraídos. Tamaño: $($WBSData.Length) caracteres"
    
    # Crear contenido del archivo
    $FileContent = @"
// DATOS WBS TM01 - GENERADOS AUTOMÁTICAMENTE
// Archivo: $TargetPath
// Generado: $(Get-Date -Format "yyyy-MM-dd HH:mm:ss")
// Script: test_wbs_generation.ps1

// Datos WBS extraídos desde tm01_master_data.js
const datosWBS = [
$WBSData
];

// Función para obtener todos los items WBS
function obtenerItemsWBS() {
    return datosWBS;
}
"@
    
    # Escribir archivo
    Set-Content -Path $TargetPath -Value $FileContent -Encoding UTF8
    Write-Host "✅ Archivo generado: $TargetPath"
    
    # Verificar contenido
    $GeneratedContent = Get-Content -Path $TargetPath -Raw -Encoding UTF8
    Write-Host "`nContenido generado (primeros 500 caracteres):"
    Write-Host $GeneratedContent.Substring(0, 500)
    
    # Buscar el item 10.2.3
    if ($GeneratedContent -match "10\.2\.3.*375") {
        Write-Host "`n✅ Item 10.2.3 con valor 375 encontrado en archivo generado"
    } else {
        Write-Host "`n❌ Item 10.2.3 con valor 375 NO encontrado en archivo generado"
    }
    
} else {
    Write-Host "❌ No se pudieron extraer los datos WBS"
}
