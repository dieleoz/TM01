# ARQUITECTURA TÉCNICA DETALLADA - SISTEMA TM01
# Archivo: docs/ARQUITECTURA_TECNICA.md
# Propósito: Documentación técnica detallada de la arquitectura del sistema
# Fecha: 24 de octubre de 2025
# Versión: 1.0

## ÍNDICE
1. [Visión General](#visión-general)
2. [Arquitectura de 4 Capas](#arquitectura-de-4-capas)
3. [Flujo de Datos](#flujo-de-datos)
4. [Componentes del Sistema](#componentes-del-sistema)
5. [Patrones de Diseño](#patrones-de-diseño)
6. [Integración y APIs](#integración-y-apis)
7. [Seguridad](#seguridad)
8. [Escalabilidad](#escalabilidad)

---

## VISIÓN GENERAL

### Propósito del Sistema
El **Sistema de Validación Web TM01** es una solución integral para la gestión de proyectos de ingeniería EPC que implementa una arquitectura de 4 capas con separación clara de responsabilidades y automatización completa del flujo de datos.

### Objetivos Arquitectónicos
- **Mantenibilidad**: Código organizado y bien documentado
- **Escalabilidad**: Arquitectura preparada para crecimiento
- **Confiabilidad**: Validación automática y consistencia de datos
- **Eficiencia**: Automatización completa de procesos
- **Flexibilidad**: Adaptable a diferentes tipos de proyectos

### Principios de Diseño
1. **Single Source of Truth**: Una única fuente de datos maestros
2. **Separation of Concerns**: Cada capa tiene responsabilidades específicas
3. **Loose Coupling**: Interfaces bien definidas entre componentes
4. **High Cohesion**: Funcionalidades relacionadas agrupadas
5. **Event Sourcing**: DTs como eventos inmutables
6. **Fail Fast**: Validación temprana y detección de errores

---

## ARQUITECTURA DE 4 CAPAS

### Diagrama de Arquitectura
```
┌─────────────────────────────────────────────────────────────────┐
│                    CAPA 4: VISUALIZACIÓN                        │
│  ┌─────────────┐ ┌─────────────┐ ┌─────────────┐ ┌─────────────┐ │
│  │   index.html│ │   wbs.html  │ │ layout.html  │ │presupuesto. │ │
│  │  Dashboard  │ │ Visualización│ │ Mapa Interac.│ │   html      │ │
│  │  Principal  │ │     WBS     │ │   Layout     │ │ Dashboard   │ │
│  └─────────────┘ └─────────────┘ └─────────────┘ └─────────────┘ │
└─────────────────────────────────────────────────────────────────┘
                                │
                                ▼
┌─────────────────────────────────────────────────────────────────┐
│                 CAPA 3: DATOS INTERMEDIOS                       │
│  ┌─────────────┐ ┌─────────────┐ ┌─────────────┐               │
│  │datos_wbs_...│ │layout_datos.│ │presupuesto_ │               │
│  │    js       │ │     js      │ │   datos.js  │               │
│  │ (24 items)  │ │ (200+ eq.)  │ │ (USD 10.9M) │               │
│  └─────────────┘ └─────────────┘ └─────────────┘               │
└─────────────────────────────────────────────────────────────────┘
                                │
                                ▼
┌─────────────────────────────────────────────────────────────────┐
│                 CAPA 2: TRANSFORMACIÓN                         │
│  ┌─────────────┐ ┌─────────────┐ ┌─────────────┐ ┌─────────────┐ │
│  │sync_wbs_... │ │sincronizar_ │ │sincronizar_ │ │sincronizar_ │ │
│  │   ps1       │ │  layout.ps1 │ │presupuesto. │ │SISTEMA_TM01 │ │
│  │   WBS       │ │   Layout    │ │   Presup.   │ │COMPLETO.ps1 │ │
│  └─────────────┘ └─────────────┘ └─────────────┘ └─────────────┘ │
│  ┌─────────────┐ ┌─────────────┐ ┌─────────────┐ ┌─────────────┐ │
│  │ Logger.psm1 │ │SistemaMapper│ │ DTDetector.  │ │LayoutExecut.│ │
│  │  Logging    │ │   .psm1     │ │   .psm1     │ │   .psm1     │ │
│  │ Estructurado│ │ Mapeo Sist. │ │ Detección   │ │ Gestión     │ │
│  └─────────────┘ └─────────────┘ └─────────────┘ └─────────────┘ │
└─────────────────────────────────────────────────────────────────┘
                                │
                                ▼
┌─────────────────────────────────────────────────────────────────┐
│                CAPA 1: FUENTES DE VERDAD                       │
│  ┌─────────────┐ ┌─────────────┐ ┌─────────────┐               │
│  │tm01_master_ │ │ contratos/   │ │especificac. │               │
│  │  data.js    │ │             │ │     /       │               │
│  │ Fuente Unica│ │ Documentos  │ │ Especificac.│               │
│  │   de Datos  │ │Contractuales│ │  Técnicas   │               │
│  └─────────────┘ └─────────────┘ └─────────────┘               │
└─────────────────────────────────────────────────────────────────┘
```

### Descripción de Capas

#### Capa 1: Fuentes de Verdad (Inmutables)
**Propósito**: Almacenar datos maestros y documentos base del proyecto.

**Componentes**:
- `tm01_master_data.js`: Fuente única de datos estructurados
- `contratos/`: Documentos contractuales y especificaciones
- `especificaciones/`: Especificaciones técnicas detalladas

**Características**:
- **Inmutabilidad**: Solo lectura, cambios controlados
- **Versionado**: Control de versiones con Git
- **Integridad**: Validación de estructura y contenido
- **Trazabilidad**: Historial completo de cambios

#### Capa 2: Transformación (Scripts PowerShell)
**Propósito**: Procesar y transformar datos de la Capa 1 a la Capa 3.

**Componentes**:
- **Scripts de Sincronización**: Procesamiento específico por tipo de dato
- **Módulos PowerShell**: Funcionalidades reutilizables
- **Sistema de Logging**: Registro estructurado de operaciones
- **Detección de DTs**: Automatización de decisiones técnicas

**Características**:
- **Modularidad**: Código organizado en módulos reutilizables
- **Logging**: Registro detallado de todas las operaciones
- **Validación**: Verificación de integridad de datos
- **Error Handling**: Manejo robusto de errores

#### Capa 3: Datos Intermedios (Generados)
**Propósito**: Almacenar datos procesados y estructurados para visualización.

**Componentes**:
- `datos_wbs_TM01_items.js`: Estructura WBS procesada
- `layout_datos.js`: Equipos georreferenciados
- `presupuesto_datos.js`: Cálculos financieros

**Características**:
- **Generación Automática**: Creados por scripts de la Capa 2
- **Estructura Optimizada**: Formato optimizado para visualización
- **APIs JavaScript**: Funciones de consulta y manipulación
- **No Editable**: Solo lectura, regeneración automática

#### Capa 4: Visualización (Interfaces HTML)
**Propósito**: Presentar datos de manera interactiva y accesible.

**Componentes**:
- `index.html`: Dashboard principal
- `wbs.html`: Visualización de estructura WBS
- `layout.html`: Mapa interactivo de equipos
- `presupuesto.html`: Dashboard presupuestal

**Características**:
- **Responsive Design**: Adaptable a diferentes dispositivos
- **Interactividad**: Filtros, búsquedas, zoom
- **Tiempo Real**: Datos actualizados automáticamente
- **Exportación**: Múltiples formatos de salida

---

## FLUJO DE DATOS

### Flujo Principal
```
1. Modificación de Datos Maestros
   ↓
2. Detección Automática de Cambios
   ↓
3. Generación de DT (si aplica)
   ↓
4. Ejecución de Scripts de Transformación
   ↓
5. Generación de Datos Intermedios
   ↓
6. Actualización de Interfaces Web
   ↓
7. Validación y Logging
```

### Flujo Detallado por Componente

#### Flujo WBS
```
tm01_master_data.js (WBS data)
         ↓
sync_wbs_tm01.ps1
         ↓
datos_wbs_TM01_items.js
         ↓
wbs.html (Visualización)
```

#### Flujo Layout
```
tm01_master_data.js (Layout data)
         ↓
sincronizar_layout.ps1
         ↓
layout_datos.js
         ↓
layout.html (Mapa interactivo)
```

#### Flujo Presupuesto
```
tm01_master_data.js (Budget data)
         ↓
sincronizar_presupuesto.ps1
         ↓
presupuesto_datos.js
         ↓
presupuesto.html (Dashboard)
```

#### Flujo de DTs
```
Cambio Detectado
         ↓
DTDetector.psm1
         ↓
DT Generada (.md)
         ↓
Script Maestro Ejecutado
         ↓
Propagación en 4 Capas
```

### Flujo de Sincronización Completa
```
sincronizar_SISTEMA_TM01_COMPLETO.ps1
         ↓
┌─────────────────────────────────────┐
│ 1. sync_wbs_tm01.ps1               │
│ 2. sincronizar_layout.ps1          │
│ 3. sincronizar_presupuesto.ps1      │
└─────────────────────────────────────┘
         ↓
┌─────────────────────────────────────┐
│ 1. datos_wbs_TM01_items.js         │
│ 2. layout_datos.js                  │
│ 3. presupuesto_datos.js             │
└─────────────────────────────────────┘
         ↓
Validación y Logging
```

---

## COMPONENTES DEL SISTEMA

### Scripts de Sincronización

#### sync_wbs_tm01.ps1
**Propósito**: Sincronizar datos WBS desde fuente maestra.

**Entrada**: `tm01_master_data.js`
**Salida**: `datos_wbs_TM01_items.js`

**Funcionalidades**:
- Lectura de datos WBS estructurados
- Procesamiento de jerarquía de items
- Cálculo de totales y subtotales
- Generación de APIs JavaScript
- Validación de integridad

**Algoritmo**:
```powershell
1. Leer tm01_master_data.js
2. Extraer datos WBS
3. Procesar jerarquía (capítulos → subcapítulos → items)
4. Calcular totales por nivel
5. Generar APIs de consulta
6. Escribir datos_wbs_TM01_items.js
7. Validar estructura generada
```

#### sincronizar_layout.ps1
**Propósito**: Generar layout georreferenciado de equipos.

**Entrada**: `tm01_master_data.js`
**Salida**: `layout_datos.js`

**Funcionalidades**:
- Cálculo de coordenadas por PK
- Distribución de equipos por sistema
- Generación de datos georreferenciados
- APIs de consulta espacial
- Validación de coordenadas

**Algoritmo**:
```powershell
1. Leer configuración de sistemas
2. Para cada sistema:
   a. Calcular ubicaciones según criterios
   b. Interpolar coordenadas por PK
   c. Generar datos de equipos
3. Consolidar todos los equipos
4. Generar APIs de consulta
5. Escribir layout_datos.js
6. Validar coordenadas
```

#### sincronizar_presupuesto.ps1
**Propósito**: Calcular presupuesto dinámico con AIU/IVA.

**Entrada**: `tm01_master_data.js`
**Salida**: `presupuesto_datos.js`

**Funcionalidades**:
- Cálculo de subtotales por item
- Aplicación de AIU (33%)
- Cálculo de IVA (19%)
- Generación de totales consolidados
- APIs de consulta financiera

**Algoritmo**:
```powershell
1. Leer datos WBS y costos
2. Para cada item:
   a. Calcular subtotal (cantidad × costo unitario)
   b. Aplicar AIU (33% del subtotal)
   c. Calcular IVA (19% del subtotal + AIU)
   d. Calcular total por item
3. Consolidar totales por sistema
4. Calcular totales generales
5. Generar APIs de consulta
6. Escribir presupuesto_datos.js
```

#### sincronizar_SISTEMA_TM01_COMPLETO.ps1
**Propósito**: Ejecutar sincronización completa del sistema.

**Funcionalidades**:
- Ejecución secuencial de scripts
- Validación de archivos generados
- Generación de reportes
- Manejo de errores
- Logging detallado

**Algoritmo**:
```powershell
1. Validar archivo fuente
2. Ejecutar sync_wbs_tm01.ps1
3. Ejecutar sincronizar_layout.ps1
4. Ejecutar sincronizar_presupuesto.ps1
5. Validar archivos generados
6. Generar reporte de ejecución
7. Logging de resultados
```

### Módulos PowerShell

#### Logger.psm1
**Propósito**: Sistema de logging estructurado.

**Características**:
- Formato JSON estructurado
- Múltiples niveles de log
- Rotación automática de archivos
- Contexto de correlación
- Envío por email para errores críticos

**APIs Principales**:
```powershell
Set-LoggerConfig -LogLevel "INFO" -LogDirectory "logs"
Write-InfoLog -Message "Mensaje" -Source "Script"
$Context = New-LogContext -ContextName "Operacion"
Complete-LogContext -Context $Context -Status "COMPLETED"
```

#### SistemaMapper.psm1
**Propósito**: Mapeo y gestión de sistemas ITS.

**Características**:
- Configuración centralizada de sistemas
- Cálculo automático de costos
- Estadísticas del proyecto
- Validación de configuración
- Exportación/importación de configuraciones

**APIs Principales**:
```powershell
Get-SistemaInfo -CodigoSistema "SOS"
Get-TodosSistemas
Get-CostoTotalProyecto
Get-EstadisticasProyecto
Test-SistemaConfig -CodigoSistema "SOS"
```

#### DTDetector.psm1
**Propósito**: Detección automática de Decisiones Técnicas.

**Características**:
- Patrones de detección configurables
- Generación automática de DTs
- Cálculo de impacto presupuestal
- Ejecución automática de cambios
- Validación de DTs generadas

**APIs Principales**:
```powershell
Test-PatronDT -Texto $Texto -TipoPatron "CantidadEquipos"
Get-InfoCambio -Texto $Texto
New-DTAutomatica -TextoCambio $Texto -Sistema "SOS"
Invoke-DTDetection -TextoCambio $Texto -AutoExecute $true
```

#### LayoutExecutor.psm1
**Propósito**: Gestión de layout georreferenciado.

**Características**:
- Cálculo de coordenadas por PK
- Generación de layout por sistema
- Exportación en múltiples formatos
- Validación de layout
- APIs de consulta espacial

**APIs Principales**:
```powershell
Get-CoordenadasPorPK -PK 100
New-LayoutCompleto -IncluirTodos
Get-LayoutSistema -Sistema "SOS"
Export-Layout -Layout $Layout -Format "JavaScript"
Test-Layout -Layout $Layout
```

---

## PATRONES DE DISEÑO

### Patrón Repository
**Implementación**: `tm01_master_data.js` como repositorio único de datos.

**Beneficios**:
- Centralización de datos
- Consistencia garantizada
- Facilita mantenimiento
- Simplifica testing

### Patrón Factory
**Implementación**: Módulos PowerShell como factories de objetos.

**Ejemplo**:
```powershell
# Factory para crear DTs
function New-DTAutomatica {
    param([string]$TextoCambio, [string]$Sistema)
    
    $DT = @{
        Id = "DT-TM01-$Sistema-{NUM}-{FECHA}"
        Fecha = Get-Date -Format "yyyy-MM-dd"
        Sistema = $Sistema
        # ... más propiedades
    }
    
    return $DT
}
```

### Patrón Observer
**Implementación**: Sistema de logging como observador de eventos.

**Ejemplo**:
```powershell
# Observer para cambios en el sistema
Write-InfoLog -Message "Cambio detectado" -Source "DTDetector" -Data @{
    Sistema = "SOS"
    Cambio = "Cantidad: 88 → 100"
    Impacto = "USD 180,000"
}
```

### Patrón Strategy
**Implementación**: Diferentes estrategias de exportación en LayoutExecutor.

**Ejemplo**:
```powershell
# Estrategias de exportación
switch ($Format) {
    "JavaScript" { $Contenido = Get-LayoutJavaScript -Layout $Layout }
    "JSON" { $Contenido = $Layout | ConvertTo-Json -Depth 3 }
    "CSV" { $Contenido = Get-LayoutCSV -Layout $Layout }
}
```

### Patrón Command
**Implementación**: Scripts como comandos ejecutables.

**Ejemplo**:
```powershell
# Comando para sincronización completa
function Invoke-SyncCommand {
    param([string]$ScriptPath, [string]$ScriptName)
    
    $Command = "powershell -ExecutionPolicy Bypass -File `"$ScriptPath`""
    $Result = Invoke-Expression $Command
    
    return $LASTEXITCODE -eq 0
}
```

---

## INTEGRACIÓN Y APIs

### APIs JavaScript

#### API WBS
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
            "categoria": "SOS",
            "tipo": "capitulo",
            "cantidad": 88,
            "costo_unitario": 15000,
            "costo_total": 1320000,
            "responsable": "Ing. Civil",
            "estado": "Activo"
        }
    ]
};

// APIs de consulta
function obtenerTodosItems() { return window.wbsDataGlobal.items; }
function obtenerItemsPorCapitulo(capitulo) { /* ... */ }
function obtenerItemsPorCategoria(categoria) { /* ... */ }
function obtenerEstadisticasWBS() { /* ... */ }
```

#### API Layout
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
];

// APIs de consulta
function obtenerTodosEquipos() { return layoutDatos; }
function obtenerEquiposPorSistema(sistema) { /* ... */ }
function obtenerEquiposPorPK(pkInicio, pkFin) { /* ... */ }
function obtenerCoordenadasMapa() { /* ... */ }
```

#### API Presupuesto
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
    ],
    "totales": {
        "subtotal": 6920000,
        "aiu": 2283600,
        "iva": 1748486,
        "total": 10952086
    }
};

// APIs de consulta
function obtenerTodosItems() { return presupuestoDatos.items; }
function obtenerTotales() { return presupuestoDatos.totales; }
function calcularTotalesPorSistema() { /* ... */ }
function exportarPresupuestoCSV() { /* ... */ }
```

### Integración entre Capas

#### Flujo de Datos WBS
```
tm01_master_data.js (Capa 1)
         ↓
sync_wbs_tm01.ps1 (Capa 2)
         ↓
datos_wbs_TM01_items.js (Capa 3)
         ↓
wbs.html (Capa 4)
```

#### Flujo de Datos Layout
```
tm01_master_data.js (Capa 1)
         ↓
sincronizar_layout.ps1 (Capa 2)
         ↓
layout_datos.js (Capa 3)
         ↓
layout.html (Capa 4)
```

#### Flujo de Datos Presupuesto
```
tm01_master_data.js (Capa 1)
         ↓
sincronizar_presupuesto.ps1 (Capa 2)
         ↓
presupuesto_datos.js (Capa 3)
         ↓
presupuesto.html (Capa 4)
```

---

## SEGURIDAD

### Medidas de Seguridad Implementadas

#### Control de Acceso
- **Archivos de solo lectura**: Datos intermedios no editables
- **Permisos de escritura**: Solo en directorios específicos
- **Validación de entrada**: Verificación de datos de entrada
- **Sanitización**: Limpieza de datos antes de procesamiento

#### Validación de Datos
```powershell
# Validación de PK
if ($PK -lt 0 -or $PK -gt 293) {
    Write-ErrorLog -Message "PK fuera del rango válido: $PK" -Source "LayoutExecutor"
    return $null
}

# Validación de coordenadas
if ($Equipo.Latitud -lt 7.0 -or $Equipo.Latitud -gt 8.0) {
    $Errores += "Latitud inválida en $($Equipo.Id): $($Equipo.Latitud)"
}
```

#### Logging de Seguridad
```powershell
# Logging de cambios críticos
Write-InfoLog -Message "Cambio crítico detectado" -Source "DTDetector" -Data @{
    Sistema = $Sistema
    Cambio = $Cambio
    Usuario = $env:USERNAME
    Timestamp = Get-Date
}
```

#### Manejo de Errores
```powershell
# Manejo robusto de errores
try {
    $Result = Invoke-Expression $Command
    if ($LASTEXITCODE -eq 0) {
        Write-InfoLog -Message "Operación exitosa" -Source "Script"
    } else {
        Write-ErrorLog -Message "Error en operación" -Source "Script"
    }
} catch {
    Write-ErrorLog -Message "Error crítico: $($_.Exception.Message)" -Source "Script"
}
```

### Recomendaciones de Seguridad

#### Para Producción
- Implementar autenticación de usuarios
- Configurar HTTPS para interfaces web
- Implementar backup automático de datos
- Configurar monitoreo de seguridad
- Implementar auditoría de cambios

#### Para Desarrollo
- Usar variables de entorno para configuraciones sensibles
- Implementar validación de entrada más estricta
- Configurar logging de seguridad detallado
- Implementar testing de seguridad
- Documentar procedimientos de seguridad

---

## ESCALABILIDAD

### Estrategias de Escalabilidad

#### Escalabilidad Horizontal
- **Módulos independientes**: Cada módulo puede escalarse por separado
- **Scripts paralelos**: Posibilidad de ejecución en paralelo
- **Distribución de carga**: Separación de responsabilidades

#### Escalabilidad Vertical
- **Optimización de algoritmos**: Mejora de rendimiento de scripts
- **Caché de datos**: Almacenamiento temporal de resultados
- **Compresión de datos**: Reducción del tamaño de archivos

### Métricas de Rendimiento

#### Tiempos de Ejecución
- **Sincronización WBS**: ~3 segundos
- **Sincronización Layout**: ~5 segundos
- **Sincronización Presupuesto**: ~2 segundos
- **Sincronización Completa**: ~15 segundos

#### Uso de Recursos
- **Memoria**: < 100MB durante ejecución
- **CPU**: < 50% durante ejecución
- **Disco**: ~50MB para datos generados
- **Red**: Mínimo (solo logging)

### Optimizaciones Implementadas

#### Optimización de Scripts
```powershell
# Uso de arrays eficientes
$LayoutCompleto = @()
foreach ($Sistema in $Sistemas.GetEnumerator()) {
    $LayoutSistema = Get-LayoutSistema -Sistema $Sistema.Key
    $LayoutCompleto += $LayoutSistema
}

# Uso de hashtables para búsquedas rápidas
$SistemasMap = @{}
foreach ($Sistema in $Sistemas) {
    $SistemasMap[$Sistema.Codigo] = $Sistema
}
```

#### Optimización de Datos
```javascript
// Uso de índices para búsquedas rápidas
const equiposPorSistema = {};
layoutDatos.forEach(equipo => {
    if (!equiposPorSistema[equipo.sistema]) {
        equiposPorSistema[equipo.sistema] = [];
    }
    equiposPorSistema[equipo.sistema].push(equipo);
});
```

### Preparación para Escalamiento

#### Para Proyectos Más Grandes
- **Modularización**: Separación en módulos más pequeños
- **Paralelización**: Ejecución paralela de scripts
- **Distribución**: Separación en múltiples servidores
- **Caché**: Implementación de sistema de caché

#### Para Más Usuarios
- **Interfaces responsivas**: Optimización para múltiples dispositivos
- **Caché del navegador**: Almacenamiento local de datos
- **CDN**: Distribución de contenido estático
- **Load Balancing**: Distribución de carga

---

## REFERENCIAS TÉCNICAS

### Documentación Relacionada
- [Manual de Usuario](MANUAL_USUARIO.md)
- [Manual de Desarrollador](MANUAL_DESARROLLADOR.md)
- [README Principal](../README.md)
- [Roadmap del Proyecto](../ROADMAP.md)

### Herramientas y Tecnologías
- **PowerShell**: Scripting y automatización
- **JavaScript**: APIs y interfaces web
- **HTML5**: Interfaces de usuario
- **CSS3**: Estilos y diseño responsivo
- **Git**: Control de versiones
- **Markdown**: Documentación

### Estándares y Convenciones
- **PowerShell**: Verb-Noun naming convention
- **JavaScript**: camelCase for functions, PascalCase for classes
- **HTML**: kebab-case for classes, camelCase for IDs
- **CSS**: BEM methodology (futuro)
- **Git**: Conventional Commits

---

*Arquitectura Técnica Detallada v1.0 - Sistema de Validación Web TM01 Troncal Magdalena*
*Última actualización: 24 de octubre de 2025*
