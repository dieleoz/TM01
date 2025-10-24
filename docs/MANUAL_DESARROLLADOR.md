# MANUAL DE DESARROLLADOR - SISTEMA DE VALIDACIÓN WEB TM01
# Archivo: docs/MANUAL_DESARROLLADOR.md
# Propósito: Guía técnica para desarrolladores del sistema TM01
# Fecha: 24 de octubre de 2025
# Versión: 1.0

## ÍNDICE
1. [Arquitectura Técnica](#arquitectura-técnica)
2. [Estructura del Código](#estructura-del-código)
3. [Módulos PowerShell](#módulos-powershell)
4. [APIs y Interfaces](#apis-y-interfaces)
5. [Base de Datos](#base-de-datos)
6. [Testing y QA](#testing-y-qa)
7. [Deployment](#deployment)
8. [Mantenimiento](#mantenimiento)

---

## ARQUITECTURA TÉCNICA

### Patrón de Arquitectura
El sistema implementa un **patrón de arquitectura de 4 capas** con separación clara de responsabilidades:

```
┌─────────────────────────────────────────────────────────────┐
│                    CAPA 4: VISUALIZACIÓN                   │
│  ┌─────────────┐ ┌─────────────┐ ┌─────────────┐ ┌─────────┐ │
│  │   index.html│ │   wbs.html  │ │ layout.html  │ │presup..│ │
│  └─────────────┘ └─────────────┘ └─────────────┘ └─────────┘ │
└─────────────────────────────────────────────────────────────┘
                                │
                                ▼
┌─────────────────────────────────────────────────────────────┐
│                 CAPA 3: DATOS INTERMEDIOS                   │
│  ┌─────────────┐ ┌─────────────┐ ┌─────────────┐            │
│  │datos_wbs_...│ │layout_datos.│ │presupuesto_ │            │
│  │    js       │ │     js      │ │   datos.js  │            │
│  └─────────────┘ └─────────────┘ └─────────────┘            │
└─────────────────────────────────────────────────────────────┘
                                │
                                ▼
┌─────────────────────────────────────────────────────────────┐
│                 CAPA 2: TRANSFORMACIÓN                      │
│  ┌─────────────┐ ┌─────────────┐ ┌─────────────┐            │
│  │sync_wbs_... │ │sincronizar_ │ │sincronizar_ │            │
│  │   ps1       │ │  layout.ps1 │ │presupuesto. │            │
│  └─────────────┘ └─────────────┘ └─────────────┘            │
└─────────────────────────────────────────────────────────────┘
                                │
                                ▼
┌─────────────────────────────────────────────────────────────┐
│                CAPA 1: FUENTES DE VERDAD                     │
│  ┌─────────────┐ ┌─────────────┐ ┌─────────────┐            │
│  │tm01_master_ │ │ contratos/  │ │especificac. │            │
│  │  data.js    │ │             │ │     /       │            │
│  └─────────────┘ └─────────────┘ └─────────────┘            │
└─────────────────────────────────────────────────────────────┘
```

### Principios de Diseño
- **Single Source of Truth**: `tm01_master_data.js` como única fuente
- **Event Sourcing**: DTs como eventos inmutables
- **Separation of Concerns**: Cada capa tiene responsabilidades específicas
- **Loose Coupling**: Interfaces bien definidas entre capas
- **High Cohesion**: Funcionalidades relacionadas agrupadas

---

## ESTRUCTURA DEL CÓDIGO

### Organización de Directorios
```
TM01/
├── Sistema_Validacion_Web/           # Capa 4: Visualización
│   ├── data/                         # Capa 1: Fuentes de Verdad
│   │   └── tm01_master_data.js       # Fuente única de datos
│   ├── datos_wbs_TM01_items.js       # Capa 3: Datos WBS
│   ├── layout_datos.js               # Capa 3: Datos Layout
│   ├── presupuesto_datos.js          # Capa 3: Datos Presupuesto
│   ├── index.html                    # Dashboard principal
│   ├── wbs.html                      # Visualización WBS
│   ├── layout.html                   # Mapa interactivo
│   └── presupuesto.html              # Dashboard presupuestal
├── scripts/                          # Capa 2: Transformación
│   ├── sync_wbs_tm01.ps1            # Script WBS
│   ├── sincronizar_layout.ps1       # Script Layout
│   ├── sincronizar_presupuesto.ps1  # Script Presupuesto
│   ├── sincronizar_SISTEMA_TM01_COMPLETO.ps1  # Script maestro
│   └── test_modulos_tm01.ps1        # Script de pruebas
├── modules/                          # Módulos PowerShell
│   ├── Logger.psm1                  # Logging estructurado
│   ├── SistemaMapper.psm1            # Mapeo de sistemas
│   ├── DTDetector.psm1              # Detección de DTs
│   └── LayoutExecutor.psm1          # Gestión de layout
├── VII. Documentos Transversales/    # Documentación del proyecto
│   └── DTs/                         # Decisiones Técnicas
├── logs/                            # Archivos de log
├── docs/                            # Documentación técnica
├── .cursorrules                     # Reglas de detección automática
├── README.md                        # Documentación principal
├── ROADMAP.md                       # Roadmap del proyecto
└── ARCHITECTURE.md                  # Arquitectura del sistema
```

### Convenciones de Nomenclatura

#### Archivos PowerShell
- **Scripts**: `snake_case.ps1` (ej: `sync_wbs_tm01.ps1`)
- **Módulos**: `PascalCase.psm1` (ej: `Logger.psm1`)
- **Funciones**: `Verb-Noun` (ej: `Get-SistemaInfo`)

#### Archivos JavaScript
- **Datos**: `snake_case.js` (ej: `datos_wbs_TM01_items.js`)
- **Funciones**: `camelCase` (ej: `obtenerTodosEquipos`)

#### Archivos HTML
- **Páginas**: `snake_case.html` (ej: `layout.html`)
- **IDs**: `camelCase` (ej: `dashboardPrincipal`)
- **Clases**: `kebab-case` (ej: `sistema-sos`)

---

## MÓDULOS POWERSHELL

### Logger.psm1 - Sistema de Logging

#### Arquitectura
```powershell
# Configuración global
$Global:LoggerConfig = @{
    LogLevel = "INFO"
    LogFormat = "JSON"
    LogDirectory = "logs"
    MaxLogSize = 10MB
    MaxLogFiles = 5
    EnableConsole = $true
    EnableFile = $true
    EnableEmail = $false
}
```

#### Funciones Principales
```powershell
# Configuración
Set-LoggerConfig -LogLevel "DEBUG" -LogDirectory "logs"

# Logging básico
Write-InfoLog -Message "Operación completada" -Source "MiScript"
Write-ErrorLog -Message "Error encontrado" -Source "MiScript"

# Contexto de correlación
$Context = New-LogContext -ContextName "OperacionCompleja"
# ... operaciones ...
Complete-LogContext -Context $Context -Status "COMPLETED"
```

#### Formato de Log
```json
{
  "timestamp": "2025-10-24T10:00:00.000Z",
  "level": "INFO",
  "message": "Operación completada",
  "source": "MiScript",
  "processId": 1234,
  "threadId": 1,
  "correlationId": "abc12345",
  "data": {
    "equipos": 200,
    "tiempo": 15.2
  }
}
```

### SistemaMapper.psm1 - Mapeo de Sistemas

#### Estructura de Datos
```powershell
$Global:SistemasTM01 = @{
    "SOS" = @{
        Nombre = "Sistema de Postes de Auxilio"
        Codigo = "SOS"
        Responsable = "Ing. Civil"
        Criterio = "AT1 Cap. 3 - Criterio 1km"
        Cantidad = 88
        CostoUnitario = 15000
        PKInicio = 0
        PKFin = 293
        Intervalo = 1
        Tipo = "Infraestructura"
        Prioridad = "Alta"
        Estado = "Activo"
    }
    # ... otros sistemas
}
```

#### APIs Principales
```powershell
# Información de sistemas
Get-SistemaInfo -CodigoSistema "SOS"
Get-TodosSistemas
Get-SistemasPorTipo -Tipo "Infraestructura"

# Cálculos
Get-CostoTotalSistema -CodigoSistema "SOS"
Get-CostoTotalProyecto
Get-EstadisticasProyecto

# Validación
Test-SistemaConfig -CodigoSistema "SOS"
Update-SistemaConfig -CodigoSistema "SOS" -NuevosValores @{Cantidad = 100}
```

### DTDetector.psm1 - Detección de DTs

#### Patrones de Detección
```powershell
$Global:PatronesDT = @{
    "CantidadEquipos" = @(
        "cambiar de \d+ a \d+ unidades",
        "ajustar cantidad de \w+",
        "modificar número de \w+"
    )
    "EspecificacionesTecnicas" = @(
        "actualizar especificación de \w+",
        "cambiar modelo de \w+",
        "modificar criterio técnico"
    )
    # ... otros patrones
}
```

#### Flujo de Detección
```powershell
# 1. Detectar patrón
$RequiereDT = Test-PatronDT -Texto $TextoCambio -TipoPatron "CantidadEquipos"

# 2. Extraer información
$InfoCambio = Get-InfoCambio -Texto $TextoCambio

# 3. Generar DT
$DT = New-DTAutomatica -TextoCambio $TextoCambio -Sistema "SOS"

# 4. Guardar DT
Save-DT -DT $DT

# 5. Ejecutar cambios
Invoke-DTExecution -DT $DT
```

### LayoutExecutor.psm1 - Gestión de Layout

#### Cálculo de Coordenadas
```powershell
function Get-CoordenadasPorPK {
    param([double]$PK)
    
    # Interpolación lineal entre PKs
    $Progreso = ($PK - $PKInicio) / ($PKFin - $PKInicio)
    $Latitud = $LatitudInicio + ($LatitudFin - $LatitudInicio) * $Progreso
    $Longitud = $LongitudInicio + ($LongitudFin - $LongitudInicio) * $Progreso
    
    return @{
        PK = $PK
        Latitud = [Math]::Round($Latitud, 6)
        Longitud = [Math]::Round($Longitud, 6)
    }
}
```

#### Generación de Layout
```powershell
# Layout completo
$LayoutCompleto = New-LayoutCompleto -IncluirTodos

# Layout por sistema
$LayoutSOS = Get-LayoutSistema -Sistema "SOS"

# Exportación
Export-Layout -Layout $LayoutCompleto -FilePath "layout.js" -Format "JavaScript"
Export-Layout -Layout $LayoutCompleto -FilePath "layout.csv" -Format "CSV"
```

---

## APIS Y INTERFACES

### API JavaScript - Datos WBS
```javascript
// Estructura de datos
window.wbsDataGlobal = {
    "fecha_actualizacion": "2025-10-24",
    "total_capitulos": 6,
    "version": "1.0",
    "items": [
        {
            "codigo": "1",
            "descripcion": "SISTEMA SOS (POSTES DE AUXILIO)",
            "capitulo": "1",
            "subcapitulo": "",
            "categoria": "SOS",
            "tipo": "capitulo",
            "cantidad": 88,
            "costo_unitario": 15000,
            "costo_total": 1320000,
            "responsable": "Ing. Civil",
            "estado": "Activo"
        }
        // ... más items
    ]
};

// Funciones de consulta
function obtenerTodosItems() { return window.wbsDataGlobal.items; }
function obtenerItemsPorCapitulo(capitulo) { /* ... */ }
function obtenerItemsPorCategoria(categoria) { /* ... */ }
function obtenerEstadisticasWBS() { /* ... */ }
```

### API JavaScript - Layout
```javascript
// Estructura de datos
const layoutDatos = [
    {
        "id": "SOS_001",
        "nombre": "Poste SOS PK 1",
        "tipo": "SOS",
        "sistema": "SOS",
        "pk": 1,
        "latitud": 7.499,
        "longitud": -73.201,
        "estado": "Activo"
    }
    // ... más equipos
];

// Funciones de consulta
function obtenerTodosEquipos() { return layoutDatos; }
function obtenerEquiposPorSistema(sistema) { /* ... */ }
function obtenerEquiposPorPK(pkInicio, pkFin) { /* ... */ }
function obtenerCoordenadasMapa() { /* ... */ }
```

### API JavaScript - Presupuesto
```javascript
// Estructura de datos
const presupuestoDatos = {
    "fecha_actualizacion": "2025-10-24",
    "version": "1.0",
    "items": [
        {
            "codigo": "1.1.1",
            "descripcion": "Postes SOS",
            "cantidad": 88,
            "costo_unitario": 15000,
            "subtotal": 1320000,
            "aiu": 435600,
            "iva": 333414,
            "total": 2089014
        }
        // ... más items
    ],
    "totales": {
        "subtotal": 6920000,
        "aiu": 2283600,
        "iva": 1748486,
        "total": 10952086
    }
};

// Funciones de consulta
function obtenerTodosItems() { return presupuestoDatos.items; }
function obtenerTotales() { return presupuestoDatos.totales; }
function calcularTotalesPorSistema() { /* ... */ }
function exportarPresupuestoCSV() { /* ... */ }
```

---

## BASE DE DATOS

### Estructura de Datos Principal
El sistema utiliza `tm01_master_data.js` como base de datos principal:

```javascript
class TM01MasterData {
    constructor() {
        this.data = {
            wbs: [],           // Estructura WBS
            presupuesto: [],   // Datos presupuestales
            layout: [],        // Datos de layout
            contratos: [],     // Información contractual
            dts: [],          // Decisiones técnicas
            cambios: []        // Historial de cambios
        };
        this.initializeData();
    }
    
    initializeData() {
        // Inicialización de datos
        this.data.wbs = [
            {
                id: '1',
                nivel: 1,
                item: "1",
                descripcion: "SISTEMA SOS",
                sistema: "SOS",
                tipo: "capitulo",
                cantidad: 88,
                costo_unitario: 15000,
                responsable: "Ing. Civil",
                estado: "Activo"
            }
            // ... más items
        ];
    }
}
```

### Relaciones de Datos
```
WBS (Work Breakdown Structure)
├── Capítulos (Nivel 1)
│   ├── Subcapítulos (Nivel 2)
│   │   ├── Items (Nivel 3)
│   │   │   ├── Subitems (Nivel 4)
│   │   │   └── Actividades (Nivel 5)
│   │   └── ...
│   └── ...
└── ...

Layout (Equipos Georreferenciados)
├── SOS (88 equipos)
├── ETD (14 equipos)
├── RADAR (2 equipos)
├── CCTV (45 equipos)
├── PMV (12 equipos)
├── METEO (3 equipos)
└── WIM (1 equipo)

Presupuesto (Cálculos Financieros)
├── Subtotal (Costos directos)
├── AIU (33% del subtotal)
├── IVA (19% del subtotal + AIU)
└── Total Final
```

---

## TESTING Y QA

### Estrategia de Testing

#### 1. Testing Unitario
```powershell
# Test de módulos individuales
Import-Module "modules\Logger.psm1"
$Context = New-LogContext -ContextName "Test"
Write-InfoLog -Message "Test message" -Source "Test"
Complete-LogContext -Context $Context -Status "COMPLETED"
```

#### 2. Testing de Integración
```powershell
# Test de scripts completos
powershell -ExecutionPolicy Bypass -File "scripts/sincronizar_SISTEMA_TM01_COMPLETO.ps1" -DryRun
```

#### 3. Testing de Regresión
```powershell
# Test de DTs automáticas
$TextoCambio = "Cambiar cantidad de postes SOS de 88 a 100 unidades"
$DT = Invoke-DTDetection -TextoCambio $TextoCambio -Sistema "SOS" -AutoExecute $false
```

### Script de Testing
```powershell
# scripts/test_modulos_tm01.ps1
try {
    # PRUEBA 1: Logger
    Write-InfoLog -Message "PRUEBA 1: Modulo Logger" -Source "TestModulos"
    $Context = New-LogContext -ContextName "PruebaLogger"
    Complete-LogContext -Context $Context -Status "COMPLETED"
    
    # PRUEBA 2: SistemaMapper
    Write-InfoLog -Message "PRUEBA 2: Modulo SistemaMapper" -Source "TestModulos"
    $Sistemas = Get-TodosSistemas
    $Estadisticas = Get-EstadisticasProyecto
    
    # PRUEBA 3: DTDetector
    Write-InfoLog -Message "PRUEBA 3: Modulo DTDetector" -Source "TestModulos"
    $TextoCambio = "Cambiar cantidad de postes SOS de 88 a 100 unidades"
    $DT = New-DTAutomatica -TextoCambio $TextoCambio -Sistema "SOS"
    
    # PRUEBA 4: LayoutExecutor
    Write-InfoLog -Message "PRUEBA 4: Modulo LayoutExecutor" -Source "TestModulos"
    $LayoutCompleto = New-LayoutCompleto -IncluirTodos
    $Validado = Test-Layout -Layout $LayoutCompleto
    
    Write-InfoLog -Message "=== PRUEBA DE MODULOS TM01 COMPLETADA EXITOSAMENTE ===" -Source "TestModulos"
    
} catch {
    Write-ErrorLog -Message "Error en prueba de modulos: $($_.Exception.Message)" -Source "TestModulos"
    exit 1
}
```

### Criterios de Aceptación
- ✅ **Funcionalidad**: Todos los scripts ejecutan sin errores
- ✅ **Rendimiento**: Sincronización completa en < 20 segundos
- ✅ **Datos**: Archivos generados con estructura correcta
- ✅ **Logs**: Logging estructurado funcionando
- ✅ **DTs**: Detección automática operativa
- ✅ **Layout**: Coordenadas calculadas correctamente
- ✅ **Presupuesto**: Cálculos financieros precisos

---

## DEPLOYMENT

### Requisitos del Sistema
- **OS**: Windows 10/11
- **PowerShell**: 5.1+
- **Navegador**: Chrome 90+, Firefox 88+, Edge 90+
- **Espacio**: 100MB mínimo
- **RAM**: 4GB recomendado

### Proceso de Deployment

#### 1. Preparación
```powershell
# Verificar requisitos
$PSVersionTable.PSVersion
Get-ExecutionPolicy
Test-Path "Sistema_Validacion_Web/data/tm01_master_data.js"
```

#### 2. Instalación
```powershell
# Clonar repositorio
git clone https://github.com/dieleoz/TM01.git
cd TM01

# Configurar permisos
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process

# Ejecutar sincronización inicial
powershell -ExecutionPolicy Bypass -File "scripts/sincronizar_SISTEMA_TM01_COMPLETO.ps1" -Verbose
```

#### 3. Verificación
```powershell
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

#### 4. Configuración
```powershell
# Configurar logging
Import-Module "modules\Logger.psm1"
Set-LoggerConfig -LogLevel "INFO" -LogDirectory "logs"

# Configurar módulos
Import-Module "modules\SistemaMapper.psm1"
Import-Module "modules\DTDetector.psm1"
Import-Module "modules\LayoutExecutor.psm1"
```

### Configuración de Producción
```powershell
# Configuración optimizada para producción
Set-LoggerConfig -LogLevel "WARNING" -LogDirectory "logs" -MaxLogSize 50MB -MaxLogFiles 10

# Configuración de email para alertas
Set-LoggerConfig -EnableEmail $true -EmailRecipients @("admin@tm01.com") -EmailServer "smtp.tm01.com"
```

---

## MANTENIMIENTO

### Tareas de Mantenimiento Regular

#### Diario
- Verificar logs de error
- Monitorear espacio en disco
- Validar sincronización automática

#### Semanal
- Rotar logs antiguos
- Verificar integridad de datos
- Actualizar documentación

#### Mensual
- Revisar métricas de rendimiento
- Optimizar consultas
- Actualizar dependencias

### Comandos de Mantenimiento
```powershell
# Limpiar logs antiguos
Get-ChildItem "logs" -Filter "*.log" | Where-Object {$_.LastWriteTime -lt (Get-Date).AddDays(-30)} | Remove-Item

# Verificar integridad de datos
Test-Path "Sistema_Validacion_Web/data/tm01_master_data.js"
Get-Content "Sistema_Validacion_Web/data/tm01_master_data.js" | Select-Object -First 1

# Verificar espacio en disco
Get-WmiObject -Class Win32_LogicalDisk | Select-Object DeviceID, @{Name="FreeSpace(GB)";Expression={[math]::Round($_.FreeSpace/1GB,2)}}

# Verificar rendimiento
Measure-Command { powershell -ExecutionPolicy Bypass -File "scripts/sincronizar_SISTEMA_TM01_COMPLETO.ps1" }
```

### Monitoreo y Alertas
```powershell
# Configurar alertas por email
Set-LoggerConfig -EnableEmail $true -EmailRecipients @("admin@tm01.com", "dev@tm01.com")

# Monitorear errores críticos
Get-Content "logs/sync_completo_errors_*.log" | Select-Object -Last 10

# Monitorear rendimiento
Get-Content "logs/sync_completo_*.log" | Select-String "segundos" | Select-Object -Last 5
```

### Actualizaciones y Mejoras
```powershell
# Actualizar desde repositorio
git pull origin main

# Ejecutar sincronización después de actualización
powershell -ExecutionPolicy Bypass -File "scripts/sincronizar_SISTEMA_TM01_COMPLETO.ps1" -Force

# Verificar funcionamiento
powershell -ExecutionPolicy Bypass -File "scripts/test_modulos_tm01.ps1"
```

---

## REFERENCIAS TÉCNICAS

### Documentación Externa
- [PowerShell Documentation](https://docs.microsoft.com/en-us/powershell/)
- [JavaScript MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript)
- [HTML5 Specification](https://html.spec.whatwg.org/)
- [CSS3 Specification](https://www.w3.org/Style/CSS/)

### Herramientas de Desarrollo
- **IDE**: Visual Studio Code, PowerShell ISE
- **Git**: Control de versiones
- **Testing**: PowerShell Pester (futuro)
- **Documentación**: Markdown, GitBook

### Estándares y Convenciones
- **PowerShell**: Verb-Noun naming convention
- **JavaScript**: camelCase for functions, PascalCase for classes
- **HTML**: kebab-case for classes, camelCase for IDs
- **CSS**: BEM methodology (futuro)

---

*Manual de Desarrollador v1.0 - Sistema de Validación Web TM01 Troncal Magdalena*
*Última actualización: 24 de octubre de 2025*
