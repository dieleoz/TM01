<#
.SYNOPSIS
    Genera validaciones_content.js desde documentos DICTAMEN_JURIDICO_*.md

.DESCRIPTION
    Lee todos los archivos DICTAMEN_JURIDICO_[SISTEMA]_v1.0.md en 
    VII. Documentos Transversales/ y extrae secciones por rol para
    generar el archivo validaciones_content.js

.EXAMPLE
    .\scripts\generar_validaciones_content.ps1
#>

param(
    [string]$InputPath = "VII. Documentos Transversales",
    [string]$OutputFile = "docs\data\validaciones_content.js"
)

Write-Host "🔄 Generando validaciones_content.js desde dictámenes..." -ForegroundColor Cyan

# Función para extraer sección entre marcadores
function Get-SeccionPorMarcador {
    param(
        [string]$Contenido,
        [string]$Marcador
    )
    
    # Buscar la sección que empieza con <!-- SECCIÓN: marcador -->
    $patron = "(?s)<!-- SECCIÓN: $Marcador -->(.+?)(?=<!-- SECCIÓN:|---\s*\*\*Documento preparado|$)"
    if ($Contenido -match $patron) {
        $seccion = $matches[1].Trim()
        # Escapar comillas simples y saltos de línea para JavaScript
        $seccion = $seccion -replace "'", "\'" -replace "`r`n", "\n" -replace "`n", "\\n"
        return $seccion
    }
    return ""
}

# Leer todos los dictámenes
$dictamenes = Get-ChildItem -Path $InputPath -Filter "DICTAMEN_JURIDICO_*.md" -ErrorAction SilentlyContinue

if ($dictamenes.Count -eq 0) {
    Write-Host "⚠️  No se encontraron dictámenes en $InputPath" -ForegroundColor Yellow
    exit 1
}

Write-Host "📄 Encontrados $($dictamenes.Count) dictámenes" -ForegroundColor Green

$validaciones = @{}

foreach ($dictamen in $dictamenes) {
    # Extraer nombre del sistema del nombre del archivo
    # DICTAMEN_JURIDICO_CCTV_v1.0.md → CCTV
    $sistema = $dictamen.BaseName -replace 'DICTAMEN_JURIDICO_', '' -replace '_v\d+\.\d+', ''
    
    Write-Host "  📋 Procesando $sistema..." -ForegroundColor Gray
    
    $contenido = Get-Content $dictamen.FullName -Raw -Encoding UTF8
    
    # Extraer secciones
    $validaciones[$sistema] = @{
        full        = Get-SeccionPorMarcador $contenido "full"
        contractual = Get-SeccionPorMarcador $contenido "contractual"
        technical   = Get-SeccionPorMarcador $contenido "technical"
        financial   = Get-SeccionPorMarcador $contenido "financial"
        risks       = Get-SeccionPorMarcador $contenido "risks"
    }
}

# Generar archivo JavaScript
$jsContent = @"
// AUTO-GENERADO por scripts/generar_validaciones_content.ps1
// NO EDITAR MANUALMENTE - Regenerar con el script
// Fecha de generación: $(Get-Date -Format "yyyy-MM-dd HH:mm:ss")

const validacionesData = {
"@

foreach ($sistema in $validaciones.Keys | Sort-Object) {
    $jsContent += "`n  '$sistema': {"
    $jsContent += "`n    full: '$($validaciones[$sistema].full)',"
    $jsContent += "`n    contractual: '$($validaciones[$sistema].contractual)',"
    $jsContent += "`n    technical: '$($validaciones[$sistema].technical)',"
    $jsContent += "`n    financial: '$($validaciones[$sistema].financial)',"
    $jsContent += "`n    risks: '$($validaciones[$sistema].risks)'"
    $jsContent += "`n  },"
}

$jsContent += @"

};

// Exportar para uso en módulos
if (typeof module !== 'undefined' && module.exports) {
  module.exports = validacionesData;
}

// Exponer al objeto window para uso en navegador
if (typeof window !== 'undefined') {
  window.validacionesData = validacionesData;
}
"@

# Crear directorio si no existe
$outputDir = Split-Path $OutputFile -Parent
if (-not (Test-Path $outputDir)) {
    New-Item -ItemType Directory -Path $outputDir -Force | Out-Null
}

# Escribir archivo
Set-Content -Path $OutputFile -Value $jsContent -Encoding UTF8

Write-Host "✅ Generado $OutputFile con $($validaciones.Count) sistemas" -ForegroundColor Green
Write-Host "📊 Tamaño del archivo: $((Get-Item $OutputFile).Length / 1KB) KB" -ForegroundColor Cyan
