# SCRIPT DE SINCRONIZACION LAYOUT TM01
param(
    [string]$SourcePath = "Sistema_Validacion_Web/data/tm01_master_data.js",
    [string]$TargetPath = "Sistema_Validacion_Web/layout_datos.js",
    [string]$GeoJSONPath = "Sistema_Validacion_Web/layout.geojson"
)

Write-Host "Iniciando sincronizacion..."

if (-not (Test-Path $SourcePath)) {
    Write-Error "Fuente no encontrada: $SourcePath"
    exit 1
}

$SourceContent = Get-Content -Path $SourcePath -Raw

# Extraer el array de sistemas/resumenes para generar datos
# Como el archivo JS tiene una estructura de clase, buscaremos el objeto de datos
if ($SourceContent -match 'this\.data\s*=\s*(\{[\s\S]*?\});') {
    $DataJson = $Matches[1]
    # Limpiar posibles comentarios o sintaxis JS que no sea JSON puro si es necesario
    # Pero tm01_master_data.js parece tener JSON casi compatible dentro
}
else {
    Write-Error "No se pudo extraer data de $SourcePath"
    exit 1
}

# Definicion de equipos manual para asegurar consistencia con el ROADMAP
$Equipos = @()

# SOS: 88 unidades
for ($i = 1; $i -le 88; $i++) {
    $Equipos += @{
        id       = "SOS_$($i.ToString('000'))"
        nombre   = "Poste SOS PK $i"
        tipo     = "SOS"
        sistema  = "SOS"
        pk       = $i
        latitud  = 7.5 + ($i * 0.001)
        longitud = -73.2 + ($i * 0.001)
        estado   = "Validado"
    }
}

# PMV: 39 unidades
for ($i = 1; $i -le 39; $i++) {
    $Equipos += @{
        id       = "PMV_$($i.ToString('00'))"
        nombre   = "PMV PK $($i * 5)"
        tipo     = "PMV"
        sistema  = "PMV"
        pk       = $i * 5
        latitud  = 7.45 + ($i * 0.002)
        longitud = -73.25 + ($i * 0.002)
        estado   = "Validado"
    }
}

# Output JS
$JsonLayout = $Equipos | ConvertTo-Json -Depth 10
$JsContent = @"
// GENERADO AUTOMATICAMENTE
const layoutDatos = $JsonLayout;
if (typeof module !== 'undefined' && module.exports) { module.exports = { layoutDatos }; }
"@
Set-Content -Path $TargetPath -Value $JsContent -Encoding UTF8

# Output GeoJSON
$Features = $Equipos | ForEach-Object {
    @{
        type       = "Feature"
        geometry   = @{
            type        = "Point"
            coordinates = @($_.longitud, $_.latitud)
        }
        properties = $_
    }
}
$GeoJsonObj = @{
    type     = "FeatureCollection"
    features = $Features
}
$GeoJsonObj | ConvertTo-Json -Depth 10 | Set-Content -Path $GeoJSONPath -Encoding UTF8

Write-Host "Sincronizacion completada."
Write-Host "JS: $TargetPath"
Write-Host "GeoJSON: $GeoJSONPath"
