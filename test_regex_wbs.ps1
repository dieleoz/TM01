# Script de prueba para verificar extracción WBS
$SourcePath = "Sistema_Validacion_Web/data/tm01_master_data.js"
$SourceContent = Get-Content -Path $SourcePath -Raw -Encoding UTF8

Write-Host "Contenido del archivo (primeros 200 caracteres):"
Write-Host $SourceContent.Substring(0, 200)

Write-Host "`nBuscando patrón 'this.data.wbs = ['..."
$WBSMatch = [regex]::Match($SourceContent, 'this\.data\.wbs\s*=\s*\[(.*?)\];', [System.Text.RegularExpressions.RegexOptions]::Singleline)

if ($WBSMatch.Success) {
    Write-Host "✅ Patrón encontrado!"
    Write-Host "Grupo 1 (contenido del array): $($WBSMatch.Groups[1].Value.Substring(0, 100))..."
} else {
    Write-Host "❌ Patrón NO encontrado"
    
    # Probar con un patrón más simple
    Write-Host "`nProbando con patrón más simple..."
    $SimpleMatch = [regex]::Match($SourceContent, 'this\.data\.wbs\s*=\s*\[', [System.Text.RegularExpressions.RegexOptions]::Singleline)
    if ($SimpleMatch.Success) {
        Write-Host "✅ Patrón simple encontrado en posición: $($SimpleMatch.Index)"
    } else {
        Write-Host "❌ Patrón simple tampoco encontrado"
    }
}
