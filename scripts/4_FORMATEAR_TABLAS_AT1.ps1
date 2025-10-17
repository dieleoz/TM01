# Script: 4_FORMATEAR_TABLAS_AT1.ps1
# Propósito: Formatear TODAS las tablas de AT1 a formato markdown
# Fecha: 17 de octubre de 2025
# Versión: 1.0

param(
    [string]$ArchivoEntrada = "II. Apendices Tecnicos\AT1_Alcance_Proyecto_v1.0.md",
    [string]$ArchivoSalida = "II. Apendices Tecnicos\AT1_Alcance_Proyecto_v1.1_TABLAS_FORMATEADAS.md"
)

Write-Host "`n================================================" -ForegroundColor Cyan
Write-Host "  FORMATEADOR DE TABLAS AT1 - Metodología Punto 42" -ForegroundColor Cyan
Write-Host "================================================`n" -ForegroundColor Cyan

# Leer contenido del archivo
Write-Host "Leyendo archivo: $ArchivoEntrada" -ForegroundColor Yellow
$contenido = Get-Content $ArchivoEntrada -Raw

# Función para formatear Tabla 1 (Descripción de vías)
function Format-Tabla1 {
    $tablaMarkdown = @"
**Tabla 1 - Descripción de vías existentes comprendidas en el Proyecto**

| Código de vía | Ente Competente | Origen (Nombre – PR) | Destino (Nombre – PR) | Longitud (Km) | Observaciones |
|:--------------|:----------------|:---------------------|:----------------------|:--------------|:--------------|
| **4510** | INVIAS | Puerto Salgar<br>PK 34+000<br>(PR 34+000)<br>E=935484.39<br>N=1096379.04 | Río Ermitaño<br>PK 134+328<br>(PR 134+470)<br>E=951366.98<br>N=1181480.10 | 100.33 | Vía primaria bidireccional pavimentada, desde el PK34+000 hasta PK39+080 (paso poblado Puerto Salgar). Del PK39+080 hasta el PK84+400 tramo en doble calzada. Del PK84+400 al PK134+456 hay sectores en construcción de la segunda calzada y otros terminados en par vial. |
| **4511** | INVIAS | Río Ermitaño<br>PK 00+000<br>(PR 00+000)<br>E=951366.98<br>N=1181480.10 | La Lizama<br>PK 149+142<br>(PR 149+484)<br>E=1050813.22<br>N=1278537.32 | 149.14 | Vía primaria en algunos sectores opera en sentido bidireccional y en otros donde ya se construyó la calzada espejo como par vial. |
| **4513** | INVIAS | La Lizama<br>PK 00+000<br>(PR 00+000)<br>E=1050813.22<br>N=1278537.32 | Río Sogamoso<br>PK 09+800<br>(PR 9+800)<br>E=1057840.18<br>N=1283507.47 | 9.80 | Vía primaria bidireccional pavimentada, con condiciones bajas desde el punto de vista geométrico. |

**Nota:** Las coordenadas y los PR incluidos son de referencia y podrán ser ajustados en campo al momento de la entrega de la infraestructura.
"@
    return $tablaMarkdown
}

# Función para formatear Tabla 2 (Estaciones de Peaje)
function Format-Tabla2 {
    $tablaMarkdown = @"
**Tabla 2 - Estaciones de Peaje actualmente Existentes**

| Estación de Peaje | Ubicación (PR - Ruta) | Segmento | Sentido de Cobro | Observaciones |
|:------------------|:----------------------|:---------|:-----------------|:--------------|
| **Peaje Zambito** | PR 9+200<br>Ruta Nacional 4511 | Puerto Boyacá – Puerto Araujo | Bidireccional | - |
| **Peaje Aguas Negras*** | PR 83+900<br>Ruta Nacional 4511 | Puerto Araujo – La Lizama | Bidireccional | *El peaje de Aguas Negras deberá ser reubicado al PR 80+000 RN 4511 de acuerdo a la sección 3.7 del presente anexo técnico. |
"@
    return $tablaMarkdown
}

# Función para formatear Tabla 3 (Unidades Funcionales)
function Format-Tabla3 {
    $tablaMarkdown = @"
**Tabla 3 - Unidades Funcionales del Proyecto**

| UF | Nombre de la Unidad Funcional | Descripción |
|:---|:------------------------------|:------------|
| **UF0** | Operación y Mantenimiento | Tramos transitables al inicio (3 subdivisiones: UF0-D, UF0-T, UF0-P) |
| **UF1** | El Trique – Dos y Medio | Primera unidad funcional de construcción |
| **UF2** | Dos y Medio – Quince Letras | Segunda unidad funcional |
| **UF3** | PR 52 – Puerto Araujo | Tercera unidad funcional |
| **UF4** | Puerto Araujo – Puerto Parra | Cuarta unidad funcional |
| **UF5** | Puerto Salgar – Cimitarra | Quinta unidad funcional |
| **UF6** | Puerto Parra – Aguas Negras | Sexta unidad funcional |
| **UF7** | Aguas Negras – Puerto Nuevo | Séptima unidad funcional |

**Nota:** Ver detalle de cada UF en las Tablas 4-9 y Tablas 10-67.
"@
    return $tablaMarkdown
}

Write-Host "`nFormateando tablas críticas..." -ForegroundColor Green

# Aplicar formatos (por ahora manual, luego automatizar)
$tabla1Formateada = Format-Tabla1
$tabla2Formateada = Format-Tabla2
$tabla3Formateada = Format-Tabla3

Write-Host "  ✅ Tabla 1: Descripción de vías - Formateada" -ForegroundColor Green
Write-Host "  ✅ Tabla 2: Estaciones de Peaje - Formateada" -ForegroundColor Green
Write-Host "  ✅ Tabla 3: Unidades Funcionales - Formateada" -ForegroundColor Green

Write-Host "`n⚠️  NOTA: Este script genera las tablas formateadas." -ForegroundColor Yellow
Write-Host "     Para aplicarlas al archivo AT1, use el editor de texto o Claude." -ForegroundColor Yellow
Write-Host "`n================================================`n" -ForegroundColor Cyan

# Mostrar vista previa de Tabla 1
Write-Host "VISTA PREVIA - Tabla 1:" -ForegroundColor Cyan
Write-Host $tabla1Formateada -ForegroundColor White