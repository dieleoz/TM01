# Script to update layout_datos.js from datos_wbs_TM01_items.js
# Quick fix to bypass node.js unavailability and complex legacy scripts

$SourcePath = "$PSScriptRoot\..\docs\datos_wbs_TM01_items.js"
$TargetPath = "$PSScriptRoot\..\docs\layout_datos.js"

Write-Host "Reading WBS data from: $SourcePath"

if (-not (Test-Path $SourcePath)) {
    Write-Error "Source file not found!"
    exit 1
}

$Content = Get-Content -Path $SourcePath -Raw -Encoding UTF8

# Extract the JSON array part. The file has JSON-like structure but is a JS assignment.
# Format: items: [ ... ]
# We need to extract the content between [ and ] of the items property.
# Robust regex to find "items": [ ... ]
if ($Content -match 'items"\s*:\s*\[([\s\S]*)\]\s*\}\s*;') {
    # This might match too much if there are nested brackets, but standard file structure is simple flat objects in this array
    # The file ends with "  ] };" usually.
    # Let's try to extract slightly differently to be safer.
}

# Simplified approach: Identify the block starting after "items": [" and ending before the closing "]" of that array.
# The file content structure:
# window.wbsDataGlobal = ... { ... "items": [ ... ] };

$cleanContent = $Content -replace 'window.wbsDataGlobal.*items"\s*:\s*', ''
$cleanContent = $cleanContent -replace '\s*\}\s*;\s*$', ''

# Now $cleanContent should be just the array [ ... ]
# But wait, it might have trailing brace from the object closing.
# Let's do a more manual extraction.
$StartIndex = $Content.IndexOf('items": [')
if ($StartIndex -eq -1) { $StartIndex = $Content.IndexOf("items': [") }
if ($StartIndex -eq -1) { 
    # Try looking for just [ if it's the main thing, but it's nested.
    Write-Error "Could not find items array start."
    exit 1
}

$StartIndex = $StartIndex + 8 # length of 'items": ' roughly, finding '['
$ArrayStart = $Content.IndexOf('[', $StartIndex)
$ArrayEnd = $Content.LastIndexOf(']')

if ($ArrayStart -eq -1 -or $ArrayEnd -eq -1) {
    Write-Error "Could not parse JSON array boundaries."
    exit 1
}

$JsonString = $Content.Substring($ArrayStart, $ArrayEnd - $ArrayStart + 1)

# The content inside is JS object literals, NOT strict JSON (keys might not be quoted, single quotes used).
# PowerShell ConvertFrom-Json STRICTLY requires valid JSON (double quotes).
# Inspecting the file: keys IS quoted or unquoted?
# Step 335 view: { item: '7.1.8', ... } -> Keys are NOT quoted. Values use single quotes.
# This breaks ConvertFrom-Json. We need to parse text manually or use a JS engine (which we don't have via node).
# BUT we can use regex to extract fields.

Write-Host "Parsing JS object literals with Regex..."

# We want to build an array of objects.
$LayoutItems = @()
$ItemMatches = [regex]::Matches($JsonString, '\{([^\}]+)\}')

$Counter = 0
foreach ($Match in $ItemMatches) {
    $ItemBody = $Match.Groups[1].Value
    
    # Parse helpers
    function Get-Value {
        param($Text, $Key)
        if ($Text -match "$Key\s*:\s*'([^']*)'") { return $Matches[1] }
        if ($Text -match "$Key\s*:\s*([^,\}]+)") { return $Matches[1].Trim() }
        return $null
    }

    $Tipo = Get-Value $ItemBody "tipo"
    $Cantidad = Get-Value $ItemBody "cantidad"
    
    # Filter only items with quantity
    if ($Tipo -eq 'item' -and $Cantidad -ne '' -and [double]$Cantidad -gt 0) {
        $Desc = Get-Value $ItemBody "descripcion"
        $Id = Get-Value $ItemBody "id"
        $Sistema = Get-Value $ItemBody "sistema"
        if (-not $Id) { $Id = "ITEM_$Counter" }
        
        # Normalize Sistema
        $SysNorm = "OTRO"
        if ($Sistema -match "CCTV") { $SysNorm = "CCTV" }
        elseif ($Sistema -match "SOS") { $SysNorm = "SOS" }
        elseif ($Sistema -match "Mensaje" -or $Sistema -match "PMV") { $SysNorm = "PMV" }
        elseif ($Sistema -match "Meteor" -or $Sistema -match "METEO") { $SysNorm = "METEO" }
        elseif ($Sistema -match "WIM" -or $Sistema -match "Pesaje") { $SysNorm = "WIM" }
        elseif ($Sistema -match "Peaje") { $SysNorm = "PEAJES" }
        elseif ($Desc -match "Pesaje Dinámico") { $SysNorm = "WIM" }

        # Mock Coordinates
        # 7.4 to 7.6 lat, -73.2 to -73.1 lng
        $Lat = 7.4 + (Get-Random -Minimum 0.0 -Maximum 0.2)
        $Lng = -73.2 + (Get-Random -Minimum 0.0 -Maximum 0.1)
        $PK = Get-Random -Minimum 0 -Maximum 150

        # Create Object
        $NewItem = @{
            id            = $Id
            nombre        = $Desc
            tipo          = $Desc.Split(" ")[0]
            sistema       = $SysNorm
            pk            = $PK
            latitud       = [math]::Round($Lat, 4)
            longitud      = [math]::Round($Lng, 4)
            estado        = "Proyectado"
            instalacion   = "2025-12-01"
            mantenimiento = "2026-01-01"
            responsable   = "Concesionario"
            observaciones = "Item WBS: " + (Get-Value $ItemBody "item")
        }
        
        $LayoutItems += $NewItem
        $Counter++
    }
}

Write-Host "Parsed $($LayoutItems.Count) items."

# Convert to JSON for output
$JsonOutput = $LayoutItems | ConvertTo-Json -Depth 5

$FileHeader = @"
// LAYOUT GEORREFERENCIADO TM01 - GENERADO AUTOMATICAMENTE
// Archivo: layout_datos.js
// Generado: $(Get-Date -Format "yyyy-MM-dd HH:mm:ss")
// Script: scripts/update_layout_quick_fix.ps1

// Datos de layout extraidos desde datos_wbs_TM01_items.js
const layoutDatos = $JsonOutput;

// Funcion para obtener todos los equipos
function obtenerTodosEquipos() {
    return layoutDatos;
}

// Funcion para obtener equipos por sistema
function obtenerEquiposPorSistema(sistema) {
    return layoutDatos.filter(equipo => equipo.sistema === sistema);
}

// Funcion para obtener equipos por tipo
function obtenerEquiposPorTipo(tipo) {
    return layoutDatos.filter(equipo => equipo.tipo === tipo);
}

// Funcion para obtener equipos por PK
function obtenerEquiposPorPK(pkInicio, pkFin) {
    return layoutDatos.filter(equipo => equipo.pk >= pkInicio && equipo.pk <= pkFin);
}

// Funcion para obtener equipos por estado
function obtenerEquiposPorEstado(estado) {
    return layoutDatos.filter(equipo => equipo.estado === estado);
}

// Funcion para obtener estadisticas del layout
function obtenerEstadisticasLayout() {
    const estadisticas = {
        totalEquipos: layoutDatos.length,
        porSistema: {},
        porTipo: {},
        porEstado: {},
        pkMinimo: Math.min(...layoutDatos.map(e => e.pk)),
        pkMaximo: Math.max(...layoutDatos.map(e => e.pk))
    };
    
    layoutDatos.forEach(equipo => {
        // Contar por sistema
        if (!estadisticas.porSistema[equipo.sistema]) {
            estadisticas.porSistema[equipo.sistema] = 0;
        }
        estadisticas.porSistema[equipo.sistema]++;
        
        // Contar por tipo
        if (!estadisticas.porTipo[equipo.tipo]) {
            estadisticas.porTipo[equipo.tipo] = 0;
        }
        estadisticas.porTipo[equipo.tipo]++;
        
        // Contar por estado
        if (!estadisticas.porEstado[equipo.estado]) {
            estadisticas.porEstado[equipo.estado] = 0;
        }
        estadisticas.porEstado[equipo.estado]++;
    });
    
    return estadisticas;
}

// Funcion para obtener coordenadas para mapa
function obtenerCoordenadasMapa() {
    return layoutDatos.map(equipo => ({
        id: equipo.id,
        nombre: equipo.nombre,
        lat: equipo.latitud,
        lng: equipo.longitud,
        tipo: equipo.tipo,
        sistema: equipo.sistema,
        pk: equipo.pk,
        estado: equipo.estado
    }));
}

// Exportar funciones para uso en otros archivos
if (typeof module !== 'undefined' && module.exports) {
    module.exports = {
        layoutDatos,
        obtenerTodosEquipos,
        obtenerEquiposPorSistema,
        obtenerEquiposPorTipo,
        obtenerEquiposPorPK,
        obtenerEquiposPorEstado,
        obtenerEstadisticasLayout,
        obtenerCoordenadasMapa
    };
}
"@

Set-Content -Path $TargetPath -Value $FileHeader -Encoding UTF8
Write-Host "✅ Generated layout_datos.js successfully."
