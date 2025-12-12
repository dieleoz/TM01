# ================================================================
#  FUNCION: servir()
#  Sirve documentos ejecutivos a Word/HTML con Layout Inyectado
# ================================================================
#
# USO:
#   .\scripts\servir.ps1                     # Sirve solo sistemas actualizados
#   .\scripts\servir.ps1 -Todo               # Sirve todos los documentos
#   .\scripts\servir.ps1 -Sistema 02         # Sirve solo SISTEMA_02
#
# VERSIÓN: 2.0 - Con inyección automática de Layout
#

param(
    [switch]$Todo = $false,
    [string]$Sistema = ""
)

Write-Host ""
Write-Host "================================================================" -ForegroundColor Green
Write-Host "  SERVIR v2.0 - Documentos + Layout Integrado" -ForegroundColor Green
Write-Host "================================================================" -ForegroundColor Green
Write-Host ""

$raiz = Get-Location
$carpetaEjecutivos = "X_ENTREGABLES_CONSOLIDADOS\7_SISTEMAS_EJECUTIVOS"
$carpetaWord = "X_ENTREGABLES_CONSOLIDADOS\8_DOCUMENTOS_SERVIDOS\WORD"
$carpetaHTML = "X_ENTREGABLES_CONSOLIDADOS\8_DOCUMENTOS_SERVIDOS\HTML"
$layoutMaestro = "VIII. Documentos Maestros y Metodologia\LAYOUT_MAESTRO_EQUIPOS_v1.0.md"

# Crear carpetas si no existen
if (-not (Test-Path $carpetaWord)) { New-Item -Path $carpetaWord -ItemType Directory -Force | Out-Null }
if (-not (Test-Path $carpetaHTML)) { New-Item -Path $carpetaHTML -ItemType Directory -Force | Out-Null }

# ================================================================
# FUNCIÓN: Parsear Tabla Markdown del Layout
# ================================================================

function Parse-MarkdownTable {
    param([string]$LayoutPath)
    
    Write-Host "  Cargando layout maestro..." -ForegroundColor Cyan
    
    if (-not (Test-Path $LayoutPath)) {
        Write-Host "  ADVERTENCIA: Layout maestro no encontrado en $LayoutPath" -ForegroundColor Yellow
        return @()
    }
    
    $contenido = Get-Content $LayoutPath -Raw -Encoding UTF8
    
    # Buscar la tabla maestra (empieza después de "## 📍 TABLA MAESTRA - EQUIPOS POR PK")
    $patron = '(?s)## 📍 TABLA MAESTRA - EQUIPOS POR PK.*?\n\n(\|.+?\|.+?\n\|[-:]+.*?\n)((?:\|.+?\n)+)'
    
    if ($contenido -match $patron) {
        $header = $matches[1]
        $rows = $matches[2]
        
        # Parsear el header para obtener nombres de columnas
        $columnNames = ($header -split '\n')[0] -replace '^\||\|$', '' -split '\|' | ForEach-Object { $_.Trim() }
        
        # Parsear cada fila
        $objetos = @()
        $rowLines = $rows -split '\n' | Where-Object { $_ -match '^\|' -and $_ -notmatch '^[\|\s\-:]+$' }
        
        foreach ($rowLine in $rowLines) {
            if (-not $rowLine) { continue }
            
            $values = $rowLine -replace '^\||\|$', '' -split '\|' | ForEach-Object { $_.Trim() }
            
            if ($values.Count -eq $columnNames.Count) {
                $obj = New-Object PSObject
                for ($i = 0; $i -lt $columnNames.Count; $i++) {
                    $obj | Add-Member -MemberType NoteProperty -Name $columnNames[$i] -Value $values[$i]
                }
                $objetos += $obj
            }
        }
        
        Write-Host "  Layout cargado: $($objetos.Count) equipos" -ForegroundColor Green
        return $objetos
    }
    else {
        Write-Host "  ADVERTENCIA: No se pudo parsear la tabla del layout" -ForegroundColor Yellow
        return @()
    }
}

# ================================================================
# FUNCIÓN: Filtrar Layout según Criterios
# ================================================================

function Filter-Layout {
    param(
        [array]$LayoutData,
        [string]$FilterString
    )
    
    if ($FilterString -eq "ALL") {
        Write-Host "  Filtro: Todos los equipos" -ForegroundColor Cyan
        return $LayoutData
    }
    
    # Parsear filtro tipo "Tipo_Equipo=CONTROL,SEÑALIZACION"
    if ($FilterString -match '^(\w+)=(.+)$') {
        $campo = $matches[1]
        $valores = $matches[2] -split ',' | ForEach-Object { $_.Trim() }
        
        Write-Host "  Filtro: $campo en [$($valores -join ', ')]" -ForegroundColor Cyan
        
        $filtrados = $LayoutData | Where-Object {
            $valorCampo = $_.$campo
            $valores -contains $valorCampo
        }
        
        Write-Host "  Equipos filtrados: $($filtrados.Count)" -ForegroundColor Green
        return $filtrados
    }
    else {
        Write-Host "  ADVERTENCIA: Formato de filtro no reconocido: $FilterString" -ForegroundColor Yellow
        return @()
    }
}

# ================================================================
# FUNCIÓN: Convertir Objetos a Tabla Markdown
# ================================================================

function ConvertTo-MarkdownTable {
    param([array]$Data)
    
    if ($Data.Count -eq 0) {
        return "> **Nota:** No se encontraron equipos que coincidan con los criterios de filtro.`n"
    }
    
    # Obtener nombres de columnas del primer objeto
    $propiedades = $Data[0].PSObject.Properties.Name
    
    # Crear header
    $header = "| " + ($propiedades -join " | ") + " |"
    $separator = "|" + (($propiedades | ForEach-Object { ":---" }) -join "|") + "|"
    
    # Crear filas
    $filas = foreach ($item in $Data) {
        $valores = foreach ($prop in $propiedades) {
            $item.$prop
        }
        "| " + ($valores -join " | ") + " |"
    }
    
    # Combinar todo
    $tabla = @"

$header
$separator
$($filas -join "`n")

> **Total de equipos listados:** $($Data.Count)
> **Última actualización:** $(Get-Date -Format 'dd/MM/yyyy HH:mm')

"@
    
    return $tabla
}

# ================================================================
# FUNCIÓN: Procesar Marcadores INJECT_LAYOUT
# ================================================================

function Process-LayoutInjection {
    param(
        [string]$ContenidoMd,
        [array]$LayoutData
    )
    
    $patron = '<!-- INJECT_LAYOUT:\s*(.+?)\s*-->'
    $matches = [regex]::Matches($ContenidoMd, $patron)
    
    if ($matches.Count -eq 0) {
        return $ContenidoMd
    }
    
    Write-Host "  Procesando $($matches.Count) marcador(es) de layout..." -ForegroundColor Cyan
    
    $resultado = $ContenidoMd
    
    foreach ($match in $matches) {
        $marcadorCompleto = $match.Value
        $filtro = $match.Groups[1].Value
        
        Write-Host "  Inyectando layout: $filtro" -ForegroundColor Cyan
        
        # Filtrar datos
        $datosFiltrados = Filter-Layout -LayoutData $LayoutData -FilterString $filtro
        
        # Convertir a tabla Markdown
        $tablaMarkdown = ConvertTo-MarkdownTable -Data $datosFiltrados
        
        # Reemplazar marcador con tabla
        $resultado = $resultado -replace [regex]::Escape($marcadorCompleto), $tablaMarkdown
    }
    
    Write-Host "  Layout inyectado exitosamente" -ForegroundColor Green
    return $resultado
}

# ================================================================
# IDENTIFICAR QUE SERVIR
# ================================================================

$ejecutivos = @()

if ($Sistema -ne "") {
    Write-Host "Modo: SERVIR SOLO SISTEMA_$Sistema" -ForegroundColor Yellow
    $ejecutivos = Get-ChildItem -Path $carpetaEjecutivos -Filter "SISTEMA_$Sistema`_*.md" -ErrorAction SilentlyContinue
} elseif ($Todo) {
    Write-Host "Modo: SERVIR TODO" -ForegroundColor Yellow
    $ejecutivos = Get-ChildItem -Path $carpetaEjecutivos -Filter "*.md"
} else {
    Write-Host "Modo: SERVIR SOLO ACTUALIZADOS (ultimos 7 dias)" -ForegroundColor Yellow
    $fechaLimite = (Get-Date).AddDays(-7)
    $ejecutivos = Get-ChildItem -Path $carpetaEjecutivos -Filter "*.md" | Where-Object {
        $_.LastWriteTime -gt $fechaLimite
    }
}

Write-Host "Documentos a servir: $($ejecutivos.Count)" -ForegroundColor Green
Write-Host ""

# ================================================================
# CARGAR LAYOUT MAESTRO UNA VEZ
# ================================================================

Write-Host "Cargando Layout Maestro..." -ForegroundColor Cyan
$layoutData = Parse-MarkdownTable -LayoutPath $layoutMaestro
Write-Host ""

# ================================================================
# SERVIR CADA DOCUMENTO
# ================================================================

$wordGen = 0
$htmlGen = 0
$layoutInjected = 0

foreach ($ej in $ejecutivos) {
    $nombre = $ej.BaseName
    Write-Host "Sirviendo: $nombre" -ForegroundColor Cyan
    
    # Leer contenido
    $contenidoOriginal = Get-Content $ej.FullName -Raw -Encoding UTF8
    
    # Procesar marcadores de layout
    $contenidoConLayout = $contenidoOriginal
    if ($layoutData.Count -gt 0) {
        $contenidoConLayout = Process-LayoutInjection -ContenidoMd $contenidoOriginal -LayoutData $layoutData
        
        if ($contenidoConLayout -ne $contenidoOriginal) {
            $layoutInjected++
        }
    }
    
    # Crear archivo temporal con layout inyectado
    $tempPath = Join-Path $env:TEMP "$nombre.temp.md"
    $contenidoConLayout | Out-File $tempPath -Encoding UTF8 -Force
    
    $wordPath = Join-Path $carpetaWord "$nombre.docx"
    $htmlPath = Join-Path $carpetaHTML "$nombre.html"
    
    # Generar Word
    pandoc $tempPath -o $wordPath --toc --toc-depth=3 2>&1 | Out-Null
    if (Test-Path $wordPath) {
        $tamWord = [math]::Round((Get-Item $wordPath).Length / 1KB, 1)
        Write-Host "  Word: $tamWord KB" -ForegroundColor Green
        $wordGen++
    }
    
    # Generar HTML
    pandoc $tempPath -o $htmlPath --standalone --toc --toc-depth=3 2>&1 | Out-Null
    if (Test-Path $htmlPath) {
        $tamHTML = [math]::Round((Get-Item $htmlPath).Length / 1KB, 1)
        Write-Host "  HTML: $tamHTML KB" -ForegroundColor Green
        $htmlGen++
    }
    
    # Limpiar archivo temporal
    if (Test-Path $tempPath) {
        Remove-Item $tempPath -Force
    }
    
    Write-Host ""
}

# ================================================================
# RESUMEN
# ================================================================

Write-Host "================================================================" -ForegroundColor Green
Write-Host "  PLATOS SERVIDOS CON LAYOUT" -ForegroundColor Green
Write-Host "================================================================" -ForegroundColor Green
Write-Host ""
Write-Host "Documentos servidos:" -ForegroundColor Cyan
Write-Host "  Word: $wordGen platos" -ForegroundColor White
Write-Host "  HTML: $htmlGen platos" -ForegroundColor White
Write-Host "  Total: $($wordGen + $htmlGen) archivos" -ForegroundColor Yellow
Write-Host ""
Write-Host "Layout integrado:" -ForegroundColor Cyan
Write-Host "  Documentos con layout: $layoutInjected" -ForegroundColor White
Write-Host "  Equipos en layout maestro: $($layoutData.Count)" -ForegroundColor White
Write-Host ""
Write-Host "UBICACION:" -ForegroundColor Cyan
Write-Host "  Word: $carpetaWord" -ForegroundColor White
Write-Host "  HTML: $carpetaHTML" -ForegroundColor White
Write-Host ""
Write-Host "ABRIR MENU:" -ForegroundColor Magenta
Write-Host "  file:///$($(Join-Path $raiz 'X_ENTREGABLES_CONSOLIDADOS\8_DOCUMENTOS_SERVIDOS\HTML\INDICE_Documentos_Servidos.html') -replace '\\','/')" -ForegroundColor Yellow
Write-Host ""
Write-Host "PLATOS SERVIDOS Y LISTOS PARA CLIENTE!" -ForegroundColor Green
Write-Host ""
