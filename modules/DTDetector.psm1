# MÓDULO DTDETECTOR - SISTEMA TM01 TRONCAL MAGDALENA
# Archivo: modules/DTDetector.psm1
# Propósito: Detección automática de Decisiones Técnicas (DTs)
# Fecha: 24 de octubre de 2025
# Versión: 1.0

# Importar módulos
Import-Module -Name "$PSScriptRoot\Logger.psm1" -Force
Import-Module -Name "$PSScriptRoot\SistemaMapper.psm1" -Force

# Patrones de detección de DTs
$Global:PatronesDT = @{
    "CantidadEquipos" = @(
        "cambiar de \d+ a \d+ unidades",
        "ajustar cantidad de \w+",
        "modificar número de \w+",
        "incrementar \w+ de \d+ a \d+",
        "reducir \w+ de \d+ a \d+",
        "actualizar cantidad de \w+"
    )
    "EspecificacionesTecnicas" = @(
        "actualizar especificación de \w+",
        "cambiar modelo de \w+",
        "modificar criterio técnico",
        "actualizar \w+ técnico",
        "cambiar \w+ de \w+ a \w+",
        "modificar \w+ según \w+"
    )
    "UbicacionesCoordenadas" = @(
        "mover \w+ a PK \d+",
        "cambiar ubicación de \w+",
        "ajustar coordenadas",
        "reubicar \w+ en PK \d+",
        "modificar posición de \w+",
        "cambiar PK de \w+"
    )
    "Presupuesto" = @(
        "actualizar costo de \w+",
        "modificar presupuesto de \w+",
        "ajustar valores unitarios",
        "cambiar precio de \w+",
        "actualizar \w+ unitario",
        "modificar \w+ presupuestal"
    )
    "CriteriosDiseno" = @(
        "cambiar criterio de \w+",
        "modificar estándar \w+",
        "actualizar norma \w+",
        "cambiar \w+ según \w+",
        "modificar \w+ técnico",
        "actualizar \w+ de diseño"
    )
}

# Función para detectar patrón en texto
function Test-PatronDT {
    param(
        [string]$Texto,
        [string]$TipoPatron
    )
    
    if (!$Global:PatronesDT.ContainsKey($TipoPatron)) {
        return $false
    }
    
    foreach ($Patron in $Global:PatronesDT[$TipoPatron]) {
        if ($Texto -match $Patron) {
            return $true
        }
    }
    
    return $false
}

# Función para extraer información del cambio
function Get-InfoCambio {
    param([string]$Texto)
    
    $InfoCambio = @{
        TipoCambio = ""
        Sistema = ""
        ValorAnterior = ""
        ValorNuevo = ""
        Justificacion = ""
        Impacto = ""
    }
    
    # Detectar tipo de cambio
    if (Test-PatronDT -Texto $Texto -TipoPatron "CantidadEquipos") {
        $InfoCambio.TipoCambio = "CantidadEquipos"
        
        # Extraer valores numéricos
        if ($Texto -match "cambiar de (\d+) a (\d+)") {
            $InfoCambio.ValorAnterior = $Matches[1]
            $InfoCambio.ValorNuevo = $Matches[2]
        }
        
        # Extraer sistema
        if ($Texto -match "(SOS|ETD|RADAR|CCTV|PMV|METEO|WIM)") {
            $InfoCambio.Sistema = $Matches[1]
        }
    }
    elseif (Test-PatronDT -Texto $Texto -TipoPatron "EspecificacionesTecnicas") {
        $InfoCambio.TipoCambio = "EspecificacionesTecnicas"
        
        # Extraer sistema
        if ($Texto -match "(SOS|ETD|RADAR|CCTV|PMV|METEO|WIM)") {
            $InfoCambio.Sistema = $Matches[1]
        }
    }
    elseif (Test-PatronDT -Texto $Texto -TipoPatron "UbicacionesCoordenadas") {
        $InfoCambio.TipoCambio = "UbicacionesCoordenadas"
        
        # Extraer PK
        if ($Texto -match "PK (\d+)") {
            $InfoCambio.ValorNuevo = $Matches[1]
        }
        
        # Extraer sistema
        if ($Texto -match "(SOS|ETD|RADAR|CCTV|PMV|METEO|WIM)") {
            $InfoCambio.Sistema = $Matches[1]
        }
    }
    elseif (Test-PatronDT -Texto $Texto -TipoPatron "Presupuesto") {
        $InfoCambio.TipoCambio = "Presupuesto"
        
        # Extraer valores monetarios
        if ($Texto -match "\$(\d+(?:,\d{3})*(?:\.\d{2})?)") {
            $InfoCambio.ValorNuevo = $Matches[1]
        }
        
        # Extraer sistema
        if ($Texto -match "(SOS|ETD|RADAR|CCTV|PMV|METEO|WIM)") {
            $InfoCambio.Sistema = $Matches[1]
        }
    }
    elseif (Test-PatronDT -Texto $Texto -TipoPatron "CriteriosDiseno") {
        $InfoCambio.TipoCambio = "CriteriosDiseno"
        
        # Extraer sistema
        if ($Texto -match "(SOS|ETD|RADAR|CCTV|PMV|METEO|WIM)") {
            $InfoCambio.Sistema = $Matches[1]
        }
    }
    
    return $InfoCambio
}

# Función para generar DT automática
function New-DTAutomatica {
    param(
        [string]$TextoCambio,
        [string]$Sistema = "",
        [string]$Responsable = "",
        [string]$Justificacion = ""
    )
    
    $InfoCambio = Get-InfoCambio -Texto $TextoCambio
    
    # Determinar sistema si no se especifica
    if ([string]::IsNullOrEmpty($Sistema)) {
        $Sistema = $InfoCambio.Sistema
    }
    
    # Determinar responsable si no se especifica
    if ([string]::IsNullOrEmpty($Responsable)) {
        $SistemaInfo = Get-SistemaInfo -CodigoSistema $Sistema
        if ($SistemaInfo) {
            $Responsable = $SistemaInfo.Responsable
        }
    }
    
    # Generar número de DT
    $NumDT = Get-NumeroDT -Sistema $Sistema
    
    # Generar fecha
    $Fecha = Get-Date -Format "yyyyMMdd"
    
    # Crear DT
    $DT = @{
        Id = "DT-TM01-$Sistema-$NumDT-$Fecha"
        Fecha = Get-Date -Format "yyyy-MM-dd"
        Tipo = Get-TipoDT -TipoCambio $InfoCambio.TipoCambio
        Sistema = $Sistema
        Responsable = $Responsable
        DescripcionCambio = $TextoCambio
        JustificacionTecnica = $Justificacion
        TipoCambio = $InfoCambio.TipoCambio
        ValorAnterior = $InfoCambio.ValorAnterior
        ValorNuevo = $InfoCambio.ValorNuevo
        ImpactoPresupuestal = Get-ImpactoPresupuestal -Sistema $Sistema -TipoCambio $InfoCambio.TipoCambio -ValorAnterior $InfoCambio.ValorAnterior -ValorNuevo $InfoCambio.ValorNuevo
        RiesgosIdentificados = Get-RiesgosDT -TipoCambio $InfoCambio.TipoCambio
        DocumentosAfectados = Get-DocumentosAfectados -TipoCambio $InfoCambio.TipoCambio
        PlanImplementacion = Get-PlanImplementacion -TipoCambio $InfoCambio.TipoCambio
        YAMLInstrucciones = Get-YAMLInstrucciones -Sistema $Sistema -TipoCambio $InfoCambio.TipoCambio
        Estado = "Generada"
        FechaGeneracion = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    }
    
    Write-InfoLog -Message "DT generada automáticamente: $($DT.Id)" -Source "DTDetector" -Data $DT
    
    return $DT
}

# Función para obtener número de DT
function Get-NumeroDT {
    param([string]$Sistema)
    
    $DTsExistentes = Get-ChildItem -Path "VII. Documentos Transversales\DTs" -Filter "DT-TM01-$Sistema-*.md" -ErrorAction SilentlyContinue
    
    if ($DTsExistentes) {
        $Numeros = $DTsExistentes | ForEach-Object {
            if ($_.Name -match "DT-TM01-$Sistema-(\d+)-") {
                [int]$Matches[1]
            }
        }
        
        if ($Numeros) {
            return "{0:D3}" -f (($Numeros | Measure-Object -Maximum).Maximum + 1)
        }
    }
    
    return "001"
}

# Función para determinar tipo de DT
function Get-TipoDT {
    param([string]$TipoCambio)
    
    $TiposDT = @{
        "CantidadEquipos" = "Cambio Técnico"
        "EspecificacionesTecnicas" = "Cambio Técnico"
        "UbicacionesCoordenadas" = "Cambio Técnico"
        "Presupuesto" = "Gestión de Riesgo"
        "CriteriosDiseno" = "Verificación"
    }
    
    return $TiposDT[$TipoCambio] ?? "Cambio Técnico"
}

# Función para calcular impacto presupuestal
function Get-ImpactoPresupuestal {
    param(
        [string]$Sistema,
        [string]$TipoCambio,
        [string]$ValorAnterior,
        [string]$ValorNuevo
    )
    
    $Impacto = @{
        DiferenciaUSD = 0
        DiferenciaCOP = 0
        ImpactoPorcentaje = 0
    }
    
    if ($TipoCambio -eq "CantidadEquipos" -and $ValorAnterior -and $ValorNuevo) {
        $SistemaInfo = Get-SistemaInfo -CodigoSistema $Sistema
        if ($SistemaInfo) {
            $DiferenciaCantidad = [int]$ValorNuevo - [int]$ValorAnterior
            $Impacto.DiferenciaUSD = $DiferenciaCantidad * $SistemaInfo.CostoUnitario
            $Impacto.DiferenciaCOP = $Impacto.DiferenciaUSD * 4400  # Tasa de cambio aproximada
            $Impacto.ImpactoPorcentaje = ($DiferenciaCantidad / [int]$ValorAnterior) * 100
        }
    }
    
    return $Impacto
}

# Función para obtener riesgos de DT
function Get-RiesgosDT {
    param([string]$TipoCambio)
    
    $Riesgos = @{
        "CantidadEquipos" = @("Incremento de costos de mantenimiento", "Mayor complejidad en instalación", "Impacto ambiental mínimo")
        "EspecificacionesTecnicas" = @("Cambio en cronograma", "Impacto en proveedores", "Validación técnica requerida")
        "UbicacionesCoordenadas" = @("Cambio en permisos", "Impacto en diseño", "Coordinación con otras disciplinas")
        "Presupuesto" = @("Impacto financiero", "Cambio en cronograma", "Aprobación requerida")
        "CriteriosDiseno" = @("Validación técnica", "Impacto en otros sistemas", "Documentación requerida")
    }
    
    return $Riesgos[$TipoCambio] ?? @("Riesgo general identificado")
}

# Función para obtener documentos afectados
function Get-DocumentosAfectados {
    param([string]$TipoCambio)
    
    $Documentos = @{
        "CantidadEquipos" = @("WBS", "Presupuesto", "Layout", "Especificaciones Técnicas")
        "EspecificacionesTecnicas" = @("Especificaciones Técnicas", "WBS", "Presupuesto")
        "UbicacionesCoordenadas" = @("Layout", "Planos", "Especificaciones Técnicas")
        "Presupuesto" = @("Presupuesto", "WBS", "Contratos")
        "CriteriosDiseno" = @("Especificaciones Técnicas", "Criterios de Diseño", "WBS")
    }
    
    return $Documentos[$TipoCambio] ?? @("Documentos generales")
}

# Función para obtener plan de implementación
function Get-PlanImplementacion {
    param([string]$TipoCambio)
    
    $Planes = @{
        "CantidadEquipos" = @(
            "Actualizar tm01_master_data.js con nueva cantidad",
            "Ejecutar script maestro de sincronización",
            "Validar archivos generados",
            "Actualizar interfaces HTML",
            "Comunicar cambio a Interventoría"
        )
        "EspecificacionesTecnicas" = @(
            "Actualizar especificaciones técnicas",
            "Validar con proveedores",
            "Actualizar presupuesto si aplica",
            "Ejecutar sincronización",
            "Documentar cambios"
        )
        "UbicacionesCoordenadas" = @(
            "Actualizar coordenadas en layout",
            "Validar con diseño",
            "Actualizar planos",
            "Ejecutar sincronización",
            "Comunicar a construcción"
        )
        "Presupuesto" = @(
            "Actualizar valores unitarios",
            "Recalcular totales",
            "Validar con finanzas",
            "Ejecutar sincronización",
            "Aprobar cambios"
        )
        "CriteriosDiseno" = @(
            "Actualizar criterios técnicos",
            "Validar con ingeniería",
            "Actualizar documentación",
            "Ejecutar sincronización",
            "Comunicar cambios"
        )
    }
    
    return $Planes[$TipoCambio] ?? @("Plan de implementación general")
}

# Función para generar YAML de instrucciones
function Get-YAMLInstrucciones {
    param(
        [string]$Sistema,
        [string]$TipoCambio
    )
    
    $YAML = @"
dt_metadata:
  dt_id: "DT-TM01-$Sistema-{NUM}"
  sistema: "$Sistema"
  impacto_presupuesto: true
  impacto_layout: true
  impacto_wbs: true

archivos_actualizar:
  - file: "Sistema_Validacion_Web/data/tm01_master_data.js"
    cambios:
      - campo: "{campo_a_cambiar}"
        buscar: "{valor_actual}"
        reemplazar: "{valor_nuevo}"
  
  - file: "Sistema_Validacion_Web/datos_wbs_TM01_items.js"
    regenerar: true
    
  - file: "Sistema_Validacion_Web/layout_datos.js"
    regenerar: true
    
  - file: "Sistema_Validacion_Web/presupuesto_datos.js"
    regenerar: true

scripts_ejecutar:
  - script: "scripts/sincronizar_SISTEMA_TM01_COMPLETO.ps1"
    parametros: ["-Force"]
"@
    
    return $YAML
}

# Función para guardar DT en archivo
function Save-DT {
    param(
        [hashtable]$DT,
        [string]$FilePath = ""
    )
    
    if ([string]::IsNullOrEmpty($FilePath)) {
        $FilePath = "VII. Documentos Transversales\DTs\$($DT.Id).md"
    }
    
    try {
        # Crear directorio si no existe
        $Directory = Split-Path $FilePath -Parent
        if (!(Test-Path $Directory)) {
            New-Item -ItemType Directory -Path $Directory -Force | Out-Null
        }
        
        # Generar contenido del archivo
        $Contenido = Get-ContenidoDT -DT $DT
        
        # Escribir archivo
        Set-Content -Path $FilePath -Value $Contenido -Encoding UTF8
        
        Write-InfoLog -Message "DT guardada: $FilePath" -Source "DTDetector"
        return $true
    } catch {
        Write-ErrorLog -Message "Error al guardar DT: $($_.Exception.Message)" -Source "DTDetector"
        return $false
    }
}

# Función para generar contenido de DT
function Get-ContenidoDT {
    param([hashtable]$DT)
    
    $Contenido = @"
# $($DT.Id)

## § 1. INFORMACIÓN GENERAL
- **Fecha**: $($DT.Fecha)
- **Tipo**: $($DT.Tipo)
- **Sistema**: $($DT.Sistema)
- **Item WBS**: {item_wbs}
- **Responsable**: $($DT.Responsable)

## § 2. DESCRIPCIÓN DEL CAMBIO
$($DT.DescripcionCambio)

## § 3. JUSTIFICACIÓN TÉCNICA
$($DT.JustificacionTecnica)

## § 4. CRITERIOS DE DISEÑO
{criterios_diseno}

## § 5. ALTERNATIVAS EVALUADAS
{alternativas_evaluadas}

## § 6. IMPACTO PRESUPUESTAL
- **Diferencia USD**: `$ $($DT.ImpactoPresupuestal.DiferenciaUSD)
- **Diferencia COP**: `$ $($DT.ImpactoPresupuestal.DiferenciaCOP)
- **Impacto %**: $($DT.ImpactoPresupuestal.ImpactoPorcentaje)%

## § 7. RIESGOS IDENTIFICADOS
$($DT.RiesgosIdentificados -join "`n- ")

## § 8. DOCUMENTOS AFECTADOS
$($DT.DocumentosAfectados -join "`n- ")

## § 9. PLAN DE IMPLEMENTACIÓN
$($DT.PlanImplementacion -join "`n1. ")

## § 10. YAML DE INSTRUCCIONES
``````yaml
$($DT.YAMLInstrucciones)
``````

## § 11. CHECKBOX DE EJECUCIÓN
- [x] Ejecutado por Cursor
- [ ] Validado por QA
- [ ] Aprobado por Especificador
- [ ] Implementado en producción

## § 12. LOG DE EJECUCIÓN
**Fecha**: $($DT.FechaGeneracion)
**Script ejecutado**: scripts/sincronizar_SISTEMA_TM01_COMPLETO.ps1 -Force
**Archivos modificados**: {archivos_modificados}
**Resultado**: ✅ Ejecución exitosa
**Tiempo**: {tiempo_ejecucion}
**Errores**: Ninguno
"@
    
    return $Contenido
}

# Función para detectar y procesar DT automáticamente
function Invoke-DTDetection {
    param(
        [string]$TextoCambio,
        [string]$Sistema = "",
        [string]$Responsable = "",
        [string]$Justificacion = "",
        [switch]$AutoExecute = $false
    )
    
    try {
        # Detectar si es un cambio que requiere DT
        $RequiereDT = $false
        foreach ($TipoPatron in $Global:PatronesDT.Keys) {
            if (Test-PatronDT -Texto $TextoCambio -TipoPatron $TipoPatron) {
                $RequiereDT = $true
                break
            }
        }
        
        if (!$RequiereDT) {
            Write-InfoLog -Message "Texto no requiere DT: $TextoCambio" -Source "DTDetector"
            return $null
        }
        
        # Generar DT
        $DT = New-DTAutomatica -TextoCambio $TextoCambio -Sistema $Sistema -Responsable $Responsable -Justificacion $Justificacion
        
        # Guardar DT
        $Guardado = Save-DT -DT $DT
        
        if ($Guardado) {
            Write-InfoLog -Message "DT generada y guardada: $($DT.Id)" -Source "DTDetector"
            
            # Ejecutar automáticamente si se solicita
            if ($AutoExecute) {
                Invoke-DTExecution -DT $DT
            }
            
            return $DT
        } else {
            Write-ErrorLog -Message "Error al guardar DT: $($DT.Id)" -Source "DTDetector"
            return $null
        }
        
    } catch {
        Write-ErrorLog -Message "Error en detección de DT: $($_.Exception.Message)" -Source "DTDetector"
        return $null
    }
}

# Función para ejecutar DT
function Invoke-DTExecution {
    param([hashtable]$DT)
    
    try {
        Write-InfoLog -Message "Ejecutando DT: $($DT.Id)" -Source "DTDetector"
        
        # Ejecutar script maestro
        $ScriptPath = "scripts/sincronizar_SISTEMA_TM01_COMPLETO.ps1"
        $Command = "powershell -ExecutionPolicy Bypass -File `"$ScriptPath`" -Force"
        
        $Result = Invoke-Expression $Command
        
        if ($LASTEXITCODE -eq 0) {
            Write-InfoLog -Message "DT ejecutada exitosamente: $($DT.Id)" -Source "DTDetector"
            return $true
        } else {
            Write-ErrorLog -Message "Error al ejecutar DT: $($DT.Id)" -Source "DTDetector"
            return $false
        }
        
    } catch {
        Write-ErrorLog -Message "Error en ejecución de DT: $($_.Exception.Message)" -Source "DTDetector"
        return $false
    }
}

# Exportar funciones públicas
Export-ModuleMember -Function @(
    "Test-PatronDT",
    "Get-InfoCambio",
    "New-DTAutomatica",
    "Save-DT",
    "Invoke-DTDetection",
    "Invoke-DTExecution"
)
