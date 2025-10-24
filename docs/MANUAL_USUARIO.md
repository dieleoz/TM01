# MANUAL DE USUARIO - SISTEMA DE VALIDACIÓN WEB TM01
# Archivo: docs/MANUAL_USUARIO.md
# Propósito: Guía completa para usuarios del sistema TM01
# Fecha: 24 de octubre de 2025
# Versión: 1.0

## ÍNDICE
1. [Introducción](#introducción)
2. [Arquitectura del Sistema](#arquitectura-del-sistema)
3. [Guía de Inicio Rápido](#guía-de-inicio-rápido)
4. [Scripts de Sincronización](#scripts-de-sincronización)
5. [Módulos PowerShell](#módulos-powershell)
6. [Sistema de DTs Automático](#sistema-de-dts-automático)
7. [Interfaces Web](#interfaces-web)
8. [Troubleshooting](#troubleshooting)
9. [Referencias](#referencias)

---

## INTRODUCCIÓN

El **Sistema de Validación Web TM01** es una solución integral para la gestión de proyectos de ingeniería EPC (Engineering, Procurement, Construction) específicamente diseñada para la **Troncal Magdalena TM01** (293 km).

### Características Principales
- ✅ **Arquitectura de 4 Capas** completamente operativa
- ✅ **Sincronización Automática** de datos en tiempo real
- ✅ **Detección Automática** de Decisiones Técnicas (DTs)
- ✅ **Interfaces Web** interactivas y responsivas
- ✅ **Módulos PowerShell** reutilizables y escalables

### Beneficios
- **Eficiencia**: Automatización completa del flujo de datos
- **Precisión**: Validación automática y consistencia de datos
- **Trazabilidad**: Seguimiento completo de cambios y decisiones
- **Escalabilidad**: Arquitectura preparada para otros proyectos

---

## ARQUITECTURA DEL SISTEMA

### Capa 1: Fuentes de Verdad (Inmutables)
```
Sistema_Validacion_Web/data/
├── tm01_master_data.js          # Fuente única de verdad
├── contratos/                    # Documentos contractuales
└── especificaciones/             # Especificaciones técnicas
```

### Capa 2: Transformación (Scripts PowerShell)
```
scripts/
├── sync_wbs_tm01.ps1            # Sincronización WBS
├── sincronizar_layout.ps1       # Sincronización Layout
├── sincronizar_presupuesto.ps1  # Sincronización Presupuesto
└── sincronizar_SISTEMA_TM01_COMPLETO.ps1  # Script maestro
```

### Capa 3: Datos Intermedios (Generados)
```
Sistema_Validacion_Web/
├── datos_wbs_TM01_items.js      # Datos WBS estructurados
├── layout_datos.js              # Layout georreferenciado
└── presupuesto_datos.js         # Presupuesto dinámico
```

### Capa 4: Visualización (Interfaces HTML)
```
Sistema_Validacion_Web/
├── index.html                   # Dashboard principal
├── wbs.html                     # Visualización WBS
├── layout.html                  # Mapa interactivo
└── presupuesto.html             # Dashboard presupuestal
```

---

## GUÍA DE INICIO RÁPIDO

### Prerrequisitos
- Windows 10/11 con PowerShell 5.1+
- Navegador web moderno (Chrome, Firefox, Edge)
- Acceso a archivos del proyecto TM01

### Instalación
1. **Clonar repositorio**:
   ```bash
   git clone https://github.com/dieleoz/TM01.git
   cd TM01
   ```

2. **Verificar estructura**:
   ```powershell
   Test-Path "Sistema_Validacion_Web/data/tm01_master_data.js"
   Test-Path "scripts/sincronizar_SISTEMA_TM01_COMPLETO.ps1"
   ```

3. **Ejecutar sincronización inicial**:
   ```powershell
   powershell -ExecutionPolicy Bypass -File "scripts/sincronizar_SISTEMA_TM01_COMPLETO.ps1" -Verbose
   ```

### Verificación
1. **Abrir dashboard**: `Sistema_Validacion_Web/index.html`
2. **Verificar datos**: Comprobar que se muestran 24 items WBS
3. **Verificar layout**: Comprobar que se muestran 200+ equipos
4. **Verificar presupuesto**: Comprobar totales USD 10.95M

---

## SCRIPTS DE SINCRONIZACIÓN

### Script Maestro
```powershell
# Ejecutar sincronización completa
powershell -ExecutionPolicy Bypass -File "scripts/sincronizar_SISTEMA_TM01_COMPLETO.ps1" -Verbose

# Parámetros disponibles
-Force          # Sobrescribir archivos existentes
-DryRun         # Simular ejecución sin cambios
-Verbose        # Mostrar información detallada
```

### Scripts Individuales

#### 1. Sincronización WBS
```powershell
powershell -ExecutionPolicy Bypass -File "scripts/sync_wbs_tm01.ps1" -Verbose
```
- **Entrada**: `tm01_master_data.js`
- **Salida**: `datos_wbs_TM01_items.js`
- **Resultado**: 24 items WBS estructurados

#### 2. Sincronización Layout
```powershell
powershell -ExecutionPolicy Bypass -File "scripts/sincronizar_layout.ps1" -Verbose
```
- **Entrada**: `tm01_master_data.js`
- **Salida**: `layout_datos.js`
- **Resultado**: 200+ equipos georreferenciados

#### 3. Sincronización Presupuesto
```powershell
powershell -ExecutionPolicy Bypass -File "scripts/sincronizar_presupuesto.ps1" -Verbose
```
- **Entrada**: `tm01_master_data.js`
- **Salida**: `presupuesto_datos.js`
- **Resultado**: Presupuesto dinámico con AIU/IVA

### Logs y Monitoreo
```powershell
# Ver logs recientes
Get-Content "logs/sync_completo_*.log" | Select-Object -Last 20

# Verificar archivos generados
Test-Path "Sistema_Validacion_Web/datos_wbs_TM01_items.js"
Test-Path "Sistema_Validacion_Web/layout_datos.js"
Test-Path "Sistema_Validacion_Web/presupuesto_datos.js"
```

---

## MÓDULOS POWERSHELL

### Logger.psm1 - Logging Estructurado
```powershell
Import-Module "modules\Logger.psm1"

# Configurar logger
Set-LoggerConfig -LogLevel "INFO" -LogDirectory "logs"

# Usar funciones de logging
Write-InfoLog -Message "Mensaje informativo" -Source "MiScript"
Write-ErrorLog -Message "Error encontrado" -Source "MiScript"

# Contexto de correlación
$Context = New-LogContext -ContextName "OperacionCompleja"
# ... operaciones ...
Complete-LogContext -Context $Context -Status "COMPLETED"
```

### SistemaMapper.psm1 - Mapeo de Sistemas
```powershell
Import-Module "modules\SistemaMapper.psm1"

# Obtener información de sistemas
$Sistemas = Get-TodosSistemas
$SistemaSOS = Get-SistemaInfo -CodigoSistema "SOS"

# Calcular costos
$CostoSOS = Get-CostoTotalSistema -CodigoSistema "SOS"
$CostoTotal = Get-CostoTotalProyecto

# Obtener estadísticas
$Estadisticas = Get-EstadisticasProyecto
```

### DTDetector.psm1 - Detección de DTs
```powershell
Import-Module "modules\DTDetector.psm1"

# Detectar cambio automáticamente
$TextoCambio = "Cambiar cantidad de postes SOS de 88 a 100 unidades"
$DT = Invoke-DTDetection -TextoCambio $TextoCambio -Sistema "SOS" -AutoExecute $true

# Verificar patrones
$RequiereDT = Test-PatronDT -Texto $TextoCambio -TipoPatron "CantidadEquipos"
```

### LayoutExecutor.psm1 - Gestión de Layout
```powershell
Import-Module "modules\LayoutExecutor.psm1"

# Generar layout completo
$LayoutCompleto = New-LayoutCompleto -IncluirTodos

# Generar layout por sistema
$LayoutSOS = Get-LayoutSistema -Sistema "SOS"

# Exportar en diferentes formatos
Export-Layout -Layout $LayoutCompleto -FilePath "layout.js" -Format "JavaScript"
Export-Layout -Layout $LayoutCompleto -FilePath "layout.csv" -Format "CSV"
```

---

## SISTEMA DE DTs AUTOMÁTICO

### Archivo .cursorrules
El archivo `.cursorrules` contiene las reglas para detección automática de DTs:

```yaml
# Patrones de detección
- "cambiar de X a Y unidades"
- "ajustar cantidad de [equipo]"
- "modificar número de [sistema]"
- "actualizar especificación de [equipo]"
- "cambiar modelo de [sistema]"
- "mover [equipo] a PK X"
- "cambiar ubicación de [sistema]"
- "actualizar costo de [item]"
- "modificar presupuesto de [sistema]"
```

### Proceso Automático
1. **Detección**: El sistema detecta patrones de cambio
2. **Generación**: Se crea automáticamente una DT
3. **Propagación**: Se ejecuta el script maestro
4. **Validación**: Se actualizan todos los archivos

### Ubicación de DTs
```
VII. Documentos Transversales/DTs/
├── DT-TM01-SOS-001-20251024.md
├── DT-TM01-ETD-002-20251024.md
├── DT-TM01-CCTV-003-20251024.md
└── ...
```

### Formato de DT
```markdown
# DT-TM01-[SISTEMA]-[NUM]-[FECHA]

## § 1. INFORMACIÓN GENERAL
- **Fecha**: [fecha actual]
- **Tipo**: [Cambio Técnico/Optimización/Gestión de Riesgo/Verificación]
- **Sistema**: [SOS/ETD/RADAR/CCTV/PMV/METEO/WIM]
- **Responsable**: [rol técnico correspondiente]

## § 2. DESCRIPCIÓN DEL CAMBIO
[Descripción detallada del cambio solicitado]

## § 3. JUSTIFICACIÓN TÉCNICA
[Justificación técnica del cambio]

## § 4-12. [Secciones adicionales...]
```

---

## INTERFACES WEB

### Dashboard Principal (`index.html`)
- **Resumen ejecutivo** del proyecto
- **Estadísticas clave** (equipos, costos, progreso)
- **Enlaces rápidos** a otras interfaces
- **Estado del sistema** en tiempo real

### Visualización WBS (`wbs.html`)
- **Estructura jerárquica** de 24 items WBS
- **Filtros por sistema** (SOS, ETD, CCTV, etc.)
- **Búsqueda avanzada** por código o descripción
- **Exportación** a PDF/Excel

### Mapa Interactivo (`layout.html`)
- **Mapa georreferenciado** con 200+ equipos
- **Filtros por sistema** y tipo de equipo
- **Información detallada** al hacer clic
- **Zoom y navegación** intuitiva

### Dashboard Presupuestal (`presupuesto.html`)
- **Totales por sistema** y categoría
- **Gráficos dinámicos** de distribución
- **Cálculos automáticos** de AIU/IVA
- **Exportación** a Excel/PDF

### Características de las Interfaces
- **Responsive Design**: Adaptable a móviles y tablets
- **Tiempo Real**: Datos actualizados automáticamente
- **Interactividad**: Filtros, búsquedas, zoom
- **Exportación**: Múltiples formatos de salida

---

## TROUBLESHOOTING

### Problemas Comunes

#### 1. Scripts no ejecutan
```powershell
# Verificar política de ejecución
Get-ExecutionPolicy

# Cambiar política temporalmente
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process
```

#### 2. Archivos no se generan
```powershell
# Verificar permisos de escritura
Test-Path "Sistema_Validacion_Web/"
Get-Acl "Sistema_Validacion_Web/"

# Verificar espacio en disco
Get-WmiObject -Class Win32_LogicalDisk | Select-Object DeviceID, @{Name="Size(GB)";Expression={[math]::Round($_.Size/1GB,2)}}, @{Name="FreeSpace(GB)";Expression={[math]::Round($_.FreeSpace/1GB,2)}}
```

#### 3. Módulos no cargan
```powershell
# Verificar ruta de módulos
$env:PSModulePath

# Importar módulo con ruta completa
Import-Module "D:\ruta\completa\modules\Logger.psm1" -Force
```

#### 4. Datos no se actualizan
```powershell
# Verificar archivo fuente
Test-Path "Sistema_Validacion_Web/data/tm01_master_data.js"

# Verificar contenido del archivo
Get-Content "Sistema_Validacion_Web/data/tm01_master_data.js" | Select-Object -First 10
```

### Logs de Diagnóstico
```powershell
# Ver logs de error
Get-Content "logs/sync_completo_errors_*.log" | Select-Object -Last 20

# Ver logs de sincronización
Get-Content "logs/sync_completo_*.log" | Select-Object -Last 20

# Ver logs de módulos
Get-Content "logs/tm01_*.log" | Select-Object -Last 20
```

### Comandos de Verificación
```powershell
# Verificar estructura completa
Test-Path "Sistema_Validacion_Web/data/tm01_master_data.js"
Test-Path "scripts/sincronizar_SISTEMA_TM01_COMPLETO.ps1"
Test-Path "modules/Logger.psm1"
Test-Path "VII. Documentos Transversales/DTs/"

# Verificar archivos generados
Test-Path "Sistema_Validacion_Web/datos_wbs_TM01_items.js"
Test-Path "Sistema_Validacion_Web/layout_datos.js"
Test-Path "Sistema_Validacion_Web/presupuesto_datos.js"

# Verificar interfaces
Test-Path "Sistema_Validacion_Web/index.html"
Test-Path "Sistema_Validacion_Web/wbs.html"
Test-Path "Sistema_Validacion_Web/layout.html"
Test-Path "Sistema_Validacion_Web/presupuesto.html"
```

---

## REFERENCIAS

### Documentación Técnica
- [Arquitectura del Sistema](ARCHITECTURE.md)
- [Roadmap del Proyecto](ROADMAP.md)
- [Manual de Desarrollador](docs/MANUAL_DESARROLLADOR.md)

### Archivos de Configuración
- [`.cursorrules`](.cursorrules) - Reglas de detección automática
- [`tm01_master_data.js`](Sistema_Validacion_Web/data/tm01_master_data.js) - Fuente de datos

### Scripts Principales
- [`sincronizar_SISTEMA_TM01_COMPLETO.ps1`](scripts/sincronizar_SISTEMA_TM01_COMPLETO.ps1) - Script maestro
- [`sync_wbs_tm01.ps1`](scripts/sync_wbs_tm01.ps1) - Sincronización WBS
- [`sincronizar_layout.ps1`](scripts/sincronizar_layout.ps1) - Sincronización Layout
- [`sincronizar_presupuesto.ps1`](scripts/sincronizar_presupuesto.ps1) - Sincronización Presupuesto

### Módulos PowerShell
- [`Logger.psm1`](modules/Logger.psm1) - Logging estructurado
- [`SistemaMapper.psm1`](modules/SistemaMapper.psm1) - Mapeo de sistemas
- [`DTDetector.psm1`](modules/DTDetector.psm1) - Detección de DTs
- [`LayoutExecutor.psm1`](modules/LayoutExecutor.psm1) - Gestión de layout

### Contacto y Soporte
- **Equipo Técnico**: TM01 Development Team
- **Email**: soporte@tm01.com
- **Repositorio**: https://github.com/dieleoz/TM01
- **Documentación**: https://docs.tm01.com

---

*Manual de Usuario v1.0 - Sistema de Validación Web TM01 Troncal Magdalena*
*Última actualización: 24 de octubre de 2025*
