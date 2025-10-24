# PLAN DE TESTING INTEGRAL - SISTEMA TM01
# Archivo: docs/PLAN_TESTING_INTEGRAL.md
# Propósito: Plan completo de testing para validar todos los componentes
# Fecha: 24 de octubre de 2025
# Versión: 1.0

## ÍNDICE
1. [Objetivos del Testing](#objetivos-del-testing)
2. [Estrategia de Testing](#estrategia-de-testing)
3. [Testing Unitario](#testing-unitario)
4. [Testing de Integración](#testing-de-integración)
5. [Testing de Sistema](#testing-de-sistema)
6. [Testing de Rendimiento](#testing-de-rendimiento)
7. [Testing de Regresión](#testing-de-regresión)
8. [Criterios de Aceptación](#criterios-de-aceptación)

---

## OBJETIVOS DEL TESTING

### Objetivos Principales
- **Validar funcionalidad**: Todos los componentes funcionan correctamente
- **Verificar integridad**: Los datos se mantienen consistentes
- **Confirmar rendimiento**: El sistema cumple con los tiempos esperados
- **Garantizar calidad**: El código cumple con estándares de calidad
- **Preparar producción**: El sistema está listo para uso en producción

### Objetivos Específicos
- ✅ **Scripts de Sincronización**: 4/4 scripts funcionando correctamente
- ✅ **Módulos PowerShell**: 4/4 módulos operativos
- ✅ **Sistema de DTs**: Detección automática funcionando
- ✅ **Interfaces Web**: Todas las interfaces operativas
- ✅ **Arquitectura de 4 Capas**: Flujo completo funcionando
- ✅ **Documentación**: Manuales completos y actualizados

---

## ESTRATEGIA DE TESTING

### Enfoque de Testing
1. **Testing Unitario**: Validar cada componente individualmente
2. **Testing de Integración**: Validar interacción entre componentes
3. **Testing de Sistema**: Validar el sistema completo
4. **Testing de Rendimiento**: Validar tiempos y recursos
5. **Testing de Regresión**: Validar que cambios no rompan funcionalidad

### Herramientas de Testing
- **PowerShell**: Scripts de testing personalizados
- **Validación Manual**: Verificación visual de interfaces
- **Logs**: Análisis de logs de ejecución
- **Métricas**: Medición de rendimiento

### Criterios de Éxito
- **100% de scripts**: Todos los scripts ejecutan sin errores
- **< 20 segundos**: Tiempo de sincronización completa
- **0 errores críticos**: Sin errores que impidan funcionamiento
- **100% de cobertura**: Todos los componentes probados

---

## TESTING UNITARIO

### 1. Testing de Módulos PowerShell

#### Logger.psm1
```powershell
# Test 1: Configuración básica
Import-Module "modules\Logger.psm1" -Force
Set-LoggerConfig -LogLevel "DEBUG" -LogDirectory "logs"
Write-InfoLog -Message "Test message" -Source "TestLogger"
# Verificar: Log generado en logs/

# Test 2: Contexto de correlación
$Context = New-LogContext -ContextName "TestContext"
Write-InfoLog -Message "Context test" -Source "TestLogger"
Complete-LogContext -Context $Context -Status "COMPLETED"
# Verificar: Contexto completado correctamente

# Test 3: Niveles de log
Write-DebugLog -Message "Debug message" -Source "TestLogger"
Write-WarningLog -Message "Warning message" -Source "TestLogger"
Write-ErrorLog -Message "Error message" -Source "TestLogger"
# Verificar: Todos los niveles funcionando
```

#### SistemaMapper.psm1
```powershell
# Test 1: Información de sistemas
Import-Module "modules\SistemaMapper.psm1" -Force
$Sistemas = Get-TodosSistemas
# Verificar: 7 sistemas retornados

# Test 2: Sistema específico
$SistemaSOS = Get-SistemaInfo -CodigoSistema "SOS"
# Verificar: Datos correctos del sistema SOS

# Test 3: Cálculos de costo
$CostoSOS = Get-CostoTotalSistema -CodigoSistema "SOS"
$CostoTotal = Get-CostoTotalProyecto
# Verificar: Cálculos correctos

# Test 4: Estadísticas
$Estadisticas = Get-EstadisticasProyecto
# Verificar: Estadísticas completas
```

#### DTDetector.psm1
```powershell
# Test 1: Detección de patrones
Import-Module "modules\DTDetector.psm1" -Force
$TextoCambio = "Cambiar cantidad de postes SOS de 88 a 100 unidades"
$RequiereDT = Test-PatronDT -Texto $TextoCambio -TipoPatron "CantidadEquipos"
# Verificar: Patrón detectado correctamente

# Test 2: Extracción de información
$InfoCambio = Get-InfoCambio -Texto $TextoCambio
# Verificar: Información extraída correctamente

# Test 3: Generación de DT
$DT = New-DTAutomatica -TextoCambio $TextoCambio -Sistema "SOS"
# Verificar: DT generada correctamente

# Test 4: Guardado de DT
$Guardado = Save-DT -DT $DT
# Verificar: DT guardada correctamente
```

#### LayoutExecutor.psm1
```powershell
# Test 1: Cálculo de coordenadas
Import-Module "modules\LayoutExecutor.psm1" -Force
$Coordenadas = Get-CoordenadasPorPK -PK 100
# Verificar: Coordenadas calculadas correctamente

# Test 2: Generación de layout
$LayoutSOS = Get-LayoutSistema -Sistema "SOS"
# Verificar: Layout generado correctamente

# Test 3: Layout completo
$LayoutCompleto = New-LayoutCompleto -IncluirTodos
# Verificar: Layout completo generado

# Test 4: Validación de layout
$Validado = Test-Layout -Layout $LayoutCompleto
# Verificar: Layout validado correctamente
```

### 2. Testing de Scripts de Sincronización

#### sync_wbs_tm01.ps1
```powershell
# Test 1: Ejecución básica
powershell -ExecutionPolicy Bypass -File "scripts/sync_wbs_tm01.ps1" -Verbose
# Verificar: Script ejecuta sin errores

# Test 2: Archivo generado
Test-Path "Sistema_Validacion_Web/datos_wbs_TM01_items.js"
# Verificar: Archivo generado

# Test 3: Contenido del archivo
Get-Content "Sistema_Validacion_Web/datos_wbs_TM01_items.js" | Select-Object -First 10
# Verificar: Contenido correcto

# Test 4: Tamaño del archivo
$Size = (Get-Item "Sistema_Validacion_Web/datos_wbs_TM01_items.js").Length
# Verificar: Tamaño > 20KB
```

#### sincronizar_layout.ps1
```powershell
# Test 1: Ejecución básica
powershell -ExecutionPolicy Bypass -File "scripts/sincronizar_layout.ps1" -Verbose
# Verificar: Script ejecuta sin errores

# Test 2: Archivo generado
Test-Path "Sistema_Validacion_Web/layout_datos.js"
# Verificar: Archivo generado

# Test 3: Contenido del archivo
Get-Content "Sistema_Validacion_Web/layout_datos.js" | Select-Object -First 10
# Verificar: Contenido correcto

# Test 4: Tamaño del archivo
$Size = (Get-Item "Sistema_Validacion_Web/layout_datos.js").Length
# Verificar: Tamaño > 5KB
```

#### sincronizar_presupuesto.ps1
```powershell
# Test 1: Ejecución básica
powershell -ExecutionPolicy Bypass -File "scripts/sincronizar_presupuesto.ps1" -Verbose
# Verificar: Script ejecuta sin errores

# Test 2: Archivo generado
Test-Path "Sistema_Validacion_Web/presupuesto_datos.js"
# Verificar: Archivo generado

# Test 3: Contenido del archivo
Get-Content "Sistema_Validacion_Web/presupuesto_datos.js" | Select-Object -First 10
# Verificar: Contenido correcto

# Test 4: Tamaño del archivo
$Size = (Get-Item "Sistema_Validacion_Web/presupuesto_datos.js").Length
# Verificar: Tamaño > 10KB
```

#### sincronizar_SISTEMA_TM01_COMPLETO.ps1
```powershell
# Test 1: Ejecución básica
powershell -ExecutionPolicy Bypass -File "scripts/sincronizar_SISTEMA_TM01_COMPLETO.ps1" -Verbose
# Verificar: Script ejecuta sin errores

# Test 2: Todos los archivos generados
Test-Path "Sistema_Validacion_Web/datos_wbs_TM01_items.js"
Test-Path "Sistema_Validacion_Web/layout_datos.js"
Test-Path "Sistema_Validacion_Web/presupuesto_datos.js"
# Verificar: Todos los archivos generados

# Test 3: Log de ejecución
Get-Content "logs/sync_completo_*.log" | Select-Object -Last 10
# Verificar: Log generado correctamente
```

---

## TESTING DE INTEGRACIÓN

### 1. Testing de Flujo de Datos

#### Flujo WBS
```powershell
# Test 1: Flujo completo WBS
# 1. Modificar tm01_master_data.js
# 2. Ejecutar sync_wbs_tm01.ps1
# 3. Verificar datos_wbs_TM01_items.js
# 4. Verificar wbs.html

# Test 2: Validación de datos
$WBSData = Get-Content "Sistema_Validacion_Web/datos_wbs_TM01_items.js" -Raw
# Verificar: Estructura correcta
# Verificar: 24 items WBS
# Verificar: Totales correctos
```

#### Flujo Layout
```powershell
# Test 1: Flujo completo Layout
# 1. Modificar tm01_master_data.js
# 2. Ejecutar sincronizar_layout.ps1
# 3. Verificar layout_datos.js
# 4. Verificar layout.html

# Test 2: Validación de coordenadas
$LayoutData = Get-Content "Sistema_Validacion_Web/layout_datos.js" -Raw
# Verificar: Estructura correcta
# Verificar: 200+ equipos
# Verificar: Coordenadas válidas
```

#### Flujo Presupuesto
```powershell
# Test 1: Flujo completo Presupuesto
# 1. Modificar tm01_master_data.js
# 2. Ejecutar sincronizar_presupuesto.ps1
# 3. Verificar presupuesto_datos.js
# 4. Verificar presupuesto.html

# Test 2: Validación de cálculos
$PresupuestoData = Get-Content "Sistema_Validacion_Web/presupuesto_datos.js" -Raw
# Verificar: Estructura correcta
# Verificar: Cálculos AIU/IVA correctos
# Verificar: Total USD 10.95M
```

### 2. Testing de Módulos Integrados

#### Integración Logger + Scripts
```powershell
# Test 1: Logging en scripts
# Ejecutar cualquier script con -Verbose
# Verificar: Logs generados correctamente

# Test 2: Contexto de correlación
# Ejecutar script maestro
# Verificar: Contexto de correlación funcionando
```

#### Integración SistemaMapper + LayoutExecutor
```powershell
# Test 1: Mapeo de sistemas en layout
$Sistemas = Get-TodosSistemas
$LayoutCompleto = New-LayoutCompleto -IncluirTodos
# Verificar: Layout generado para todos los sistemas

# Test 2: Cálculos de costo en layout
$CostoTotal = Get-CostoTotalProyecto
$LayoutCompleto = New-LayoutCompleto -IncluirTodos
# Verificar: Costos consistentes
```

#### Integración DTDetector + Scripts
```powershell
# Test 1: Detección automática
$TextoCambio = "Cambiar cantidad de postes SOS de 88 a 100 unidades"
$DT = Invoke-DTDetection -TextoCambio $TextoCambio -Sistema "SOS" -AutoExecute $false
# Verificar: DT generada correctamente

# Test 2: Ejecución automática
$DT = Invoke-DTDetection -TextoCambio $TextoCambio -Sistema "SOS" -AutoExecute $true
# Verificar: Scripts ejecutados automáticamente
```

---

## TESTING DE SISTEMA

### 1. Testing de Arquitectura de 4 Capas

#### Capa 1: Fuentes de Verdad
```powershell
# Test 1: Archivo fuente
Test-Path "Sistema_Validacion_Web/data/tm01_master_data.js"
# Verificar: Archivo existe

# Test 2: Estructura del archivo
$MasterData = Get-Content "Sistema_Validacion_Web/data/tm01_master_data.js" -Raw
# Verificar: Estructura correcta
# Verificar: Datos completos
```

#### Capa 2: Transformación
```powershell
# Test 1: Scripts disponibles
Test-Path "scripts/sync_wbs_tm01.ps1"
Test-Path "scripts/sincronizar_layout.ps1"
Test-Path "scripts/sincronizar_presupuesto.ps1"
Test-Path "scripts/sincronizar_SISTEMA_TM01_COMPLETO.ps1"
# Verificar: Todos los scripts existen

# Test 2: Módulos disponibles
Test-Path "modules/Logger.psm1"
Test-Path "modules/SistemaMapper.psm1"
Test-Path "modules/DTDetector.psm1"
Test-Path "modules/LayoutExecutor.psm1"
# Verificar: Todos los módulos existen
```

#### Capa 3: Datos Intermedios
```powershell
# Test 1: Archivos generados
Test-Path "Sistema_Validacion_Web/datos_wbs_TM01_items.js"
Test-Path "Sistema_Validacion_Web/layout_datos.js"
Test-Path "Sistema_Validacion_Web/presupuesto_datos.js"
# Verificar: Todos los archivos generados

# Test 2: Estructura de archivos
$WBSData = Get-Content "Sistema_Validacion_Web/datos_wbs_TM01_items.js" -Raw
$LayoutData = Get-Content "Sistema_Validacion_Web/layout_datos.js" -Raw
$PresupuestoData = Get-Content "Sistema_Validacion_Web/presupuesto_datos.js" -Raw
# Verificar: Estructura correcta de todos los archivos
```

#### Capa 4: Visualización
```powershell
# Test 1: Interfaces disponibles
Test-Path "Sistema_Validacion_Web/index.html"
Test-Path "Sistema_Validacion_Web/wbs.html"
Test-Path "Sistema_Validacion_Web/layout.html"
Test-Path "Sistema_Validacion_Web/presupuesto.html"
# Verificar: Todas las interfaces existen

# Test 2: Funcionalidad de interfaces
# Abrir cada interfaz en navegador
# Verificar: Interfaces cargan correctamente
# Verificar: Datos se muestran correctamente
# Verificar: Funcionalidades interactivas
```

### 2. Testing de Sistema de DTs

#### Detección Automática
```powershell
# Test 1: Patrones de detección
$Patrones = @(
    "Cambiar cantidad de postes SOS de 88 a 100 unidades",
    "Actualizar especificación de ETD",
    "Mover cámara CCTV a PK 150",
    "Modificar presupuesto de PMV"
)

foreach ($Patron in $Patrones) {
    $DT = Invoke-DTDetection -TextoCambio $Patron -AutoExecute $false
    # Verificar: DT generada para cada patrón
}
```

#### Propagación Automática
```powershell
# Test 1: Ejecución automática
$TextoCambio = "Cambiar cantidad de postes SOS de 88 a 100 unidades"
$DT = Invoke-DTDetection -TextoCambio $TextoCambio -Sistema "SOS" -AutoExecute $true
# Verificar: Scripts ejecutados automáticamente
# Verificar: Archivos actualizados
# Verificar: Logs generados
```

---

## TESTING DE RENDIMIENTO

### 1. Tiempos de Ejecución

#### Scripts Individuales
```powershell
# Test 1: Tiempo de sync_wbs_tm01.ps1
$StartTime = Get-Date
powershell -ExecutionPolicy Bypass -File "scripts/sync_wbs_tm01.ps1"
$EndTime = Get-Date
$Duration = $EndTime - $StartTime
# Verificar: Tiempo < 5 segundos

# Test 2: Tiempo de sincronizar_layout.ps1
$StartTime = Get-Date
powershell -ExecutionPolicy Bypass -File "scripts/sincronizar_layout.ps1"
$EndTime = Get-Date
$Duration = $EndTime - $StartTime
# Verificar: Tiempo < 8 segundos

# Test 3: Tiempo de sincronizar_presupuesto.ps1
$StartTime = Get-Date
powershell -ExecutionPolicy Bypass -File "scripts/sincronizar_presupuesto.ps1"
$EndTime = Get-Date
$Duration = $EndTime - $StartTime
# Verificar: Tiempo < 5 segundos
```

#### Script Maestro
```powershell
# Test 1: Tiempo de sincronización completa
$StartTime = Get-Date
powershell -ExecutionPolicy Bypass -File "scripts/sincronizar_SISTEMA_TM01_COMPLETO.ps1"
$EndTime = Get-Date
$Duration = $EndTime - $StartTime
# Verificar: Tiempo < 20 segundos
```

### 2. Uso de Recursos

#### Memoria
```powershell
# Test 1: Uso de memoria durante ejecución
$Process = Get-Process -Name "powershell" | Where-Object {$_.Id -eq $PID}
$MemoryUsage = $Process.WorkingSet64 / 1MB
# Verificar: Uso de memoria < 100MB
```

#### CPU
```powershell
# Test 1: Uso de CPU durante ejecución
$CPUUsage = (Get-Counter "\Processor(_Total)\% Processor Time").CounterSamples.CookedValue
# Verificar: Uso de CPU < 50%
```

#### Disco
```powershell
# Test 1: Espacio en disco
$DiskSpace = Get-WmiObject -Class Win32_LogicalDisk | Where-Object {$_.DeviceID -eq "C:"}
$FreeSpace = $DiskSpace.FreeSpace / 1GB
# Verificar: Espacio libre > 1GB
```

---

## TESTING DE REGRESIÓN

### 1. Testing de Cambios

#### Cambio en Cantidad
```powershell
# Test 1: Cambio de cantidad SOS
# 1. Modificar cantidad SOS en tm01_master_data.js
# 2. Ejecutar sincronización completa
# 3. Verificar: Archivos actualizados
# 4. Verificar: Cálculos correctos
# 5. Verificar: Interfaces actualizadas
```

#### Cambio en Especificación
```powershell
# Test 1: Cambio de especificación ETD
# 1. Modificar especificación ETD en tm01_master_data.js
# 2. Ejecutar sincronización completa
# 3. Verificar: Archivos actualizados
# 4. Verificar: Layout actualizado
# 5. Verificar: Interfaces actualizadas
```

#### Cambio en Ubicación
```powershell
# Test 1: Cambio de ubicación CCTV
# 1. Modificar ubicación CCTV en tm01_master_data.js
# 2. Ejecutar sincronización completa
# 3. Verificar: Archivos actualizados
# 4. Verificar: Coordenadas actualizadas
# 5. Verificar: Mapa actualizado
```

### 2. Testing de DTs Automáticas

#### DT de Cantidad
```powershell
# Test 1: DT automática de cantidad
$TextoCambio = "Cambiar cantidad de postes SOS de 88 a 100 unidades"
$DT = Invoke-DTDetection -TextoCambio $TextoCambio -Sistema "SOS" -AutoExecute $true
# Verificar: DT generada
# Verificar: Scripts ejecutados
# Verificar: Archivos actualizados
# Verificar: Logs generados
```

#### DT de Especificación
```powershell
# Test 1: DT automática de especificación
$TextoCambio = "Actualizar especificación de ETD según nueva norma"
$DT = Invoke-DTDetection -TextoCambio $TextoCambio -Sistema "ETD" -AutoExecute $true
# Verificar: DT generada
# Verificar: Scripts ejecutados
# Verificar: Archivos actualizados
# Verificar: Logs generados
```

---

## CRITERIOS DE ACEPTACIÓN

### Criterios Funcionales
- ✅ **100% de scripts**: Todos los scripts ejecutan sin errores
- ✅ **100% de módulos**: Todos los módulos funcionan correctamente
- ✅ **100% de interfaces**: Todas las interfaces cargan correctamente
- ✅ **100% de DTs**: Sistema de DTs automático funcionando
- ✅ **100% de documentación**: Manuales completos y actualizados

### Criterios de Rendimiento
- ✅ **< 20 segundos**: Tiempo de sincronización completa
- ✅ **< 100MB**: Uso de memoria durante ejecución
- ✅ **< 50%**: Uso de CPU durante ejecución
- ✅ **> 1GB**: Espacio libre en disco

### Criterios de Calidad
- ✅ **0 errores críticos**: Sin errores que impidan funcionamiento
- ✅ **100% de cobertura**: Todos los componentes probados
- ✅ **Logs completos**: Registro detallado de todas las operaciones
- ✅ **Validación exitosa**: Todos los tests pasan

### Criterios de Producción
- ✅ **Sistema estable**: Funcionamiento consistente
- ✅ **Datos consistentes**: Integridad de datos garantizada
- ✅ **Interfaces operativas**: Todas las interfaces funcionando
- ✅ **Documentación completa**: Manuales de usuario y desarrollador
- ✅ **Testing completo**: Todos los componentes validados

---

## EJECUCIÓN DEL TESTING

### Fase 1: Testing Unitario (Día 1)
- Testing de módulos PowerShell
- Testing de scripts individuales
- Validación de funciones básicas

### Fase 2: Testing de Integración (Día 2)
- Testing de flujo de datos
- Testing de módulos integrados
- Validación de interacciones

### Fase 3: Testing de Sistema (Día 3)
- Testing de arquitectura de 4 capas
- Testing de sistema de DTs
- Validación del sistema completo

### Fase 4: Testing de Rendimiento (Día 4)
- Testing de tiempos de ejecución
- Testing de uso de recursos
- Validación de rendimiento

### Fase 5: Testing de Regresión (Día 5)
- Testing de cambios
- Testing de DTs automáticas
- Validación de estabilidad

### Fase 6: Validación Final (Día 6)
- Revisión de criterios de aceptación
- Documentación de resultados
- Preparación para producción

---

## REPORTE DE TESTING

### Template de Reporte
```markdown
# REPORTE DE TESTING INTEGRAL - SISTEMA TM01
## Fecha: [fecha]
## Versión: 1.0

### RESUMEN EJECUTIVO
- **Total Tests**: [número]
- **Tests Exitosos**: [número]
- **Tests Fallidos**: [número]
- **Cobertura**: [porcentaje]%
- **Estado General**: [PASS/FAIL]

### DETALLE POR FASE
#### Fase 1: Testing Unitario
- **Tests Ejecutados**: [número]
- **Tests Exitosos**: [número]
- **Tests Fallidos**: [número]
- **Estado**: [PASS/FAIL]

#### Fase 2: Testing de Integración
- **Tests Ejecutados**: [número]
- **Tests Exitosos**: [número]
- **Tests Fallidos**: [número]
- **Estado**: [PASS/FAIL]

#### Fase 3: Testing de Sistema
- **Tests Ejecutados**: [número]
- **Tests Exitosos**: [número]
- **Tests Fallidos**: [número]
- **Estado**: [PASS/FAIL]

#### Fase 4: Testing de Rendimiento
- **Tests Ejecutados**: [número]
- **Tests Exitosos**: [número]
- **Tests Fallidos**: [número]
- **Estado**: [PASS/FAIL]

#### Fase 5: Testing de Regresión
- **Tests Ejecutados**: [número]
- **Tests Exitosos**: [número]
- **Tests Fallidos**: [número]
- **Estado**: [PASS/FAIL]

### MÉTRICAS DE RENDIMIENTO
- **Tiempo de Sincronización Completa**: [tiempo] segundos
- **Uso de Memoria**: [memoria] MB
- **Uso de CPU**: [cpu]%
- **Espacio en Disco**: [espacio] GB

### PROBLEMAS IDENTIFICADOS
- **Problema 1**: [descripción]
- **Problema 2**: [descripción]
- **Problema 3**: [descripción]

### RECOMENDACIONES
- **Recomendación 1**: [descripción]
- **Recomendación 2**: [descripción]
- **Recomendación 3**: [descripción]

### CONCLUSIÓN
[Conclusión del testing]

### PRÓXIMOS PASOS
- **Paso 1**: [descripción]
- **Paso 2**: [descripción]
- **Paso 3**: [descripción]
```

---

*Plan de Testing Integral v1.0 - Sistema de Validación Web TM01 Troncal Magdalena*
*Última actualización: 24 de octubre de 2025*
