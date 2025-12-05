# Script simple para generar archivo WBS
$SourcePath = "Sistema_Validacion_Web/data/tm01_master_data.js"
$TargetPath = "Sistema_Validacion_Web/datos_wbs_TM01_items.js"

Write-Host "Generando archivo WBS..." -ForegroundColor Green

# Leer archivo fuente
$SourceContent = Get-Content -Path $SourcePath -Raw -Encoding UTF8

# Extraer datos WBS
$WBSMatch = [regex]::Match($SourceContent, 'this\.data\.wbs\s*=\s*\[(.*?)\];', [System.Text.RegularExpressions.RegexOptions]::Singleline)

if ($WBSMatch.Success) {
    $WBSData = $WBSMatch.Groups[1].Value
    Write-Host "Datos WBS extraídos: $($WBSData.Length) caracteres" -ForegroundColor Green
    
    # Crear contenido
    $FileContent = "// DATOS WBS TM01 - GENERADOS AUTOMÁTICAMENTE`n"
    $FileContent += "// Generado: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')`n`n"
    $FileContent += "const datosWBS = [`n"
    $FileContent += $WBSData
    $FileContent += "`n];`n`n"
    $FileContent += "function obtenerItemsWBS() { return datosWBS; }`n"
    
    # Escribir archivo
    Set-Content -Path $TargetPath -Value $FileContent -Encoding UTF8
    Write-Host "Archivo generado: $TargetPath" -ForegroundColor Green
    
    # Verificar
    if (Test-Path $TargetPath) {
        $Size = (Get-Item $TargetPath).Length
        Write-Host "Tamaño del archivo: $Size bytes" -ForegroundColor Cyan
        
        # Buscar item 10.2.3
        $Content = Get-Content -Path $TargetPath -Raw -Encoding UTF8
        if ($Content -match "10\.2\.3.*375") {
            Write-Host "✅ Item 10.2.3 con valor 375 encontrado" -ForegroundColor Green
        } else {
            Write-Host "❌ Item 10.2.3 con valor 375 NO encontrado" -ForegroundColor Red
        }
    }
} else {
    Write-Host "❌ No se encontraron datos WBS" -ForegroundColor Red
}
