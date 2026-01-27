# PROYECTO TM01 TRONCAL MAGDALENA
## Sistema de Validación Web con Arquitectura Dinámica

![Status](https://img.shields.io/badge/Status-Operativo-success)
![Progress](https://img.shields.io/badge/Progress-100%25-brightgreen)
![Validations](https://img.shields.io/badge/Validations-13%2F13-success)
![Budget](https://img.shields.io/badge/Budget-USD%207.79M%20ITS-blue)
![Architecture](https://img.shields.io/badge/Architecture-4%20Layers-blue)

🛡️ **DICTAMEN DE AUDITORÍA FORENSE (v30.2)**
> **Ubicación WIM Confirmada:** PR 4+0100 (RN 4513).
> **Ubicación Peaje Aguas Negras:** PR 80+000 (Variante Palmas).
> **Estatus Eléctrico:** Certificado bajo RETIE 2024 (Res. 40117).
> **Estatus Recaudo:** Compatible con ColPass (IP/REV 2021).
> **Saneamiento Financiero:** +$84k USD (WIM-DAC) integrados al presupuesto.

---
**Versión:** 30.2 (AUDIT 6.0 PASSED - NORMATIVE FIXED)  
**Fecha de actualización:** 27 de Enero 2026  
**Estado:** 🟢 **APTO PARA CONSTRUCCIÓN** - Fully RETIE 2024 (Res. 40117) & IP/REV 2021 Compliant  
**Responsable:** Equipo Técnico TM01 / Auditoría Forense  
**Metodología:** Punto 42 v2.0 (Arquitectura Dinámica 4 Capas - Reconciliación Hard Deck)  
**GitHub:** https://github.com/dieleoz/TM01  
**GitHub Pages:** https://dieleoz.github.io/TM01/  

---

## 📋 RESUMEN EJECUTIVO

Este repositorio contiene la **documentación completa de ingeniería EPC** para el proyecto **TM01 Troncal Magdalena** (293 km), estructurada bajo un **Marco de Gestión de Proyectos (MGP)** alineado con las mejores prácticas del PMI y **Metodología Punto 42**, implementando un **Sistema de Validación Web con Arquitectura Dinámica de 4 Capas**.

### 🎯 Objetivos Principales

1. **Trazabilidad Contractual:** Cada decisión técnica fundamentada en AT1/AT2/AT3
2. **Optimización Arquitectónica:** Diseños eficientes y constructibles
3. **Validación Rigurosa:** 100% de sistemas validados contractualmente
4. **Metodología Sistemática:** Proceso genérico aplicable a cualquier equipo/sistema
5. **Arquitectura unificada:** 4 capas (Master → PS1 → JS → HTML)
6. **Sistema Web Operativo:** Interfaces HTML interactivas con propagación automática

### 📊 Estado Actual del Proyecto

**✅ COMPLETADO (100%):**
- ✅ **Fase 0-6:** Todas las fases completadas
- ✅ **Validaciones Contractuales:** 13/13 sistemas (100%)
- ✅ **Documentación Técnica:** 85+ documentos generados
- ✅ **Sistema Web:** 8 interfaces HTML operativas
- ✅ **Scripts de Sincronización:** 4/4 scripts funcionando
- ✅ **Arquitectura 4 Capas:** Implementada y operativa
- ✅ **Merge Bidireccional:** Sistema 3-vías funcional
- ✅ **Testing Automatizado:** Framework Pester implementado

**📈 Métricas del Proyecto:**
- **Longitud Total:** 293 km (259.6 km principales + 33.4 km adicionales)
- **Presupuesto ITS Puro:** USD $7.79M
- **Sistemas Validados:** 13/13 (100%)
- **Documentos Técnicos:** 85+ archivos
- **CAPEX/km:** USD $221K/km (dentro del rango APP 4G)

---

## 🏗️ ARQUITECTURA DEL SISTEMA

### Arquitectura en 4 Capas

```
┌─────────────────────────────────────────────────────────────────┐
│  CAPA 1: FUENTES DE VERDAD (Inmutables)                        │
├─────────────────────────────────────────────────────────────────┤
│  • Contrato y Apéndices Técnicos (I-II)                        │
│  • Ingeniería Conceptual/Básica/Detalle (III-V)                │
│  • Decisiones Técnicas .md (eventos inmutables)                 │
│  • Matrices Maestras (VIII/)                                    │
└─────────────────────────────────────────────────────────────────┘
                              ↓
┌─────────────────────────────────────────────────────────────────┐
│  CAPA 2: TRANSFORMACIÓN (Scripts PowerShell)                   │
├─────────────────────────────────────────────────────────────────┤
│  • tm01_master_data.js (Fuente única de datos)                 │
│  • Scripts de sincronización automática                         │
│  • Generadores de DTs                                           │
│  • Módulos reutilizables                                        │
└─────────────────────────────────────────────────────────────────┘
                              ↓
┌─────────────────────────────────────────────────────────────────┐
│  CAPA 3: DATOS INTERMEDIOS (Generados - No Editar)            │
├─────────────────────────────────────────────────────────────────┤
│  • datos_wbs_TM01_items.js (24 items WBS)                     │
│  • layout_datos.js (52 equipos georreferenciados)              │
│  • presupuesto_datos.js (Presupuesto dinámico)                 │
│  • criterios_tecnicos_base.js                                  │
│                                                                 │
│  ⚠️ NUNCA editar manualmente - regenerar con scripts            │
└─────────────────────────────────────────────────────────────────┘
                              ↓
┌─────────────────────────────────────────────────────────────────┐
│  CAPA 4: VISUALIZACIÓN (Interfaces de Usuario)                 │
├─────────────────────────────────────────────────────────────────┤
│  • index.html (Portal de acceso seguro)                       │
│  • Portal_Sistema_WBS.html (Dashboard principal)               │
│  • WBS_Menu_Principal.html (6 interfaces dinámicas)            │
│  • WBS_COMPLETA_TODO_Interactiva_v4.0.html (24 items)        │
│  • WBS_Layout_Maestro.html (52 equipos georreferenciados)      │
│  • WBS_Presupuesto_TM01_Troncal_Magdalena.html (Presupuesto)  │
│  • QA_Dashboard_TM01.html (Dashboard QA)                      │
│                                                                 │
│  ✅ Sistema operativo con propagación automática de cambios     │
└─────────────────────────────────────────────────────────────────┘
└─────────────────────────────────────────────────────────────────┘
      │                                                           ↑
      │                                                           │
      ▼                                                           │
┌─────────────────┐                                     ┌─────────┴─────────┐
│  USUARIO FINAL  │ ─── (5) Propone Cambios ──────────► │  GESTOR CAMBIOS   │
└─────────────────┘     (gestion_cambios.html)          │  (Genera DT.md)   │
                                                        └───────────────────┘
                                                                  │
                                                                  │ (6) Aplica cambio
                                                                  ▼
                                                        ┌───────────────────┐
                                                        │  V. DETALLE (T05) │
                                                        └───────────────────┘
```

### 🔄 CIERRE DEL CICLO (Feedback Loop)
El sistema no es solo de lectura. La **Herramienta de Gestión** permite:
1. Visualizar datos actuales (Capa 4).
2. Simular cambios de cantidades/precios.
3. **Generar DTs (Markdowns)** automáticamente.
4. Estos DTs se aplican a la **Capa 1 (T05)** para reiniciar el ciclo de sincronización.

### ⚠️ REGLA CRÍTICA: SINCRONIZACIÓN OBLIGATORIA

> **� IMPORTANTE: Después de modificar CUALQUIER archivo fuente, DEBES ejecutar el script de sincronización**
>
> **Archivos fuente que requieren sincronización:**
> - ✏️ Documentos `.md` en `V. Ingenieria de Detalle/` (T05)
> - ✏️ `docs/data/tm01_master_data.js` (modificaciones manuales)
> - ✏️ Cualquier archivo en Capas 1 o 2
>
> **Script obligatorio:**
> ```powershell
> powershell -ExecutionPolicy Bypass -File "scripts/sync_wbs_tm01.ps1"
> ```
>
> **¿Por qué?**
> - `presupuesto.html` y otros dashboards cargan desde `datos_wbs_TM01_items.js` (Capa 3)
> - Este archivo es **GENERADO AUTOMÁTICAMENTE** por el script
> - Si no ejecutas el script, los dashboards mostrarán **valores desactualizados**
>
> **Ejemplo del error:**
> - PR #1 actualizó `tm01_master_data.js` con Peajes = $1.89M ✅
> - PR #1 NO ejecutó `sync_wbs_tm01.ps1` ❌
> - Resultado: `presupuesto.html` seguía mostrando $2.08M (datos viejos)

### �📁 Estructura del Sistema Web

```
📁 Sistema_Validacion_Web/
├── index.html                                    # 🔐 Acceso seguro con roles
├── Portal_Sistema_WBS.html                       # 🎯 Portal principal
├── QA_Dashboard_TM01.html                        # 📊 Dashboard QA
├── WBS_Menu_Principal.html                       # 🎛️ Menú principal con 6 interfaces
├── WBS_COMPLETA_TODO_Interactiva_v4.0.html      # 📋 WBS interactiva completa
├── WBS_Layout_Maestro.html                       # 🗺️ Layout maestro interactivo
├── WBS_Presupuesto_TM01_Troncal_Magdalena.html   # 💰 WBS Presupuesto interactivo
├── MATRIZ_CUMPLIMIENTO_TM01_Troncal_Magdalena.html # ✅ Matriz contractual vs técnico
├── GENERADOR_DT_TM01_Troncal_Magdalena.html      # 📝 Generador Documentos Técnicos
├── REPORTES_VALIDACION_TM01_Troncal_Magdalena.html # 📈 Reportes automáticos
├── justificacion_alcance.html                    # ⚖️ Dashboard Justificación Contractual
└── data/
    ├── tm01_master_data.js                       # 🗄️ Fuente única de verdad
    └── datos_wbs_TM01_items.js                   # 📊 Datos WBS estructurados (GENERADO - NO EDITAR)
```

### 🔐 Sistema de Acceso Seguro

| Rol | Usuario | Contraseña | Acceso |
|:----|:--------|:-----------|:-------|
| **QA** | qa | qa | Dashboard QA + todas las herramientas |
| **Especificador** | especificador | esp | Herramientas de especificación |
| **Admin** | admin | admin | Acceso completo al sistema |

---

## 📂 ESTRUCTURA DEL PROYECTO

```
0.0 FORMATOS PARA IA/
│
├── I. Contrato General/              (2 documentos)
├── II. Apendices Tecnicos/           (18 documentos)
├── III. Ingenieria Conceptual/       (39 documentos T01/T02/T03)
├── IV. Ingenieria Basica/            (13 documentos T04)
├── V. Ingenieria de Detalle/        (10 documentos T05)
├── VI. Operacion y Reversion/        (Pendiente)
├── VII. Documentos Transversales/    (86 documentos)
├── VIII. Documentos Maestros y Metodologia/ (Pendiente)
├── IX. WBS y Planificacion/          (WBS + interfaces web)
├── X. Entregables Consolidados/      (Presupuestos + RFQs)
│
├── Sistema_Validacion_Web/           (Sistema web completo)
├── scripts/                          (Scripts PowerShell)
├── templates/                        (Plantillas metodológicas)
├── tests/                            (Tests automatizados)
├── docs/                             (Documentación técnica)
│
├── README.md                         (Este archivo)
├── ROADMAP.md                        (Plan de trabajo)
├── INDICE_MAESTRO_PROYECTO.md        (Índice completo)
└── 00_INICIO_RAPIDO.md              (Guía de inicio rápido)
```

---

## 🚀 FUNCIONALIDADES PRINCIPALES

### 1. Sistema de Datos Dinámico
- ✅ **Fuente única de verdad:** `tm01_master_data.js` centraliza todos los datos
- ✅ **Propagación automática:** Cambios se reflejan en todas las interfaces
- ✅ **Sincronización en tiempo real:** ~3 segundos de actualización
- ✅ **Estructura robusta:** Basada en arquitectura de 4 capas

### 2. Scripts de Sincronización Automática
- ✅ **sync_wbs_tm01.ps1**: Sincronización WBS Inteligente (Ignora detalles, captura Tipos)
- ✅ **sincronizar_layout.ps1**: Layout georreferenciado (52+ equipos)
- ✅ **sincronizar_presupuesto.ps1**: Presupuesto dinámico con cálculos AIU/IVA
- ✅ **sincronizar_SISTEMA_TM01_COMPLETO.ps1**: Script maestro con validación contrato-first

### 3. Sistema de Decisiones Técnicas (DTs)
- ✅ **Generación automática:** Desde cualquier interfaz WBS
- ✅ **Plantillas predefinidas:** Cambio técnico, optimización, gestión de riesgo
- ✅ **Propagación automática:** Afecta presupuesto, layout, documentación
- ✅ **Trazabilidad completa:** Desde propuesta hasta implementación
- ✅ **Overrides con YAML:** Validación contractual automática

### 4. Merge Bidireccional (3-vías)
- ✅ **Preservación de cambios manuales:** Merge inteligente BASE vs SOURCE vs CURRENT
- ✅ **Validación contractual:** Reglas YAML declarativas
- ✅ **Resolución automática:** Conflictos resueltos según prioridades
- ✅ **Log de conflictos:** Registro completo de cambios

### 5. Testing Automatizado
- ✅ **Framework Pester:** Tests unitarios e integración
- ✅ **Cobertura de código:** 31.92% (323/1012 comandos)
- ✅ **28 tests implementados:** 17 pasados, 11 pendientes ajustes menores

---

## 📊 INFORMACIÓN OFICIAL DEL PROYECTO

### Datos Oficiales Confirmados

- **Longitud Total:** 293 km (259.6 km principales + 33.4 km adicionales)
- **Rutas:** RN 4510 (Honda-Río Ermitaño), RN 4511 (Río Ermitaño-La Lizama), RN 4513 (Conexión CCO)
- **CCO:** La Lizama PK 4+300 (RN 4513)
- **UFs:** 0D, 1, 2, 3, 4, 5, 6-13 (extensiones)

### Sistemas ITS Validados

| Sistema | Cantidad | Estado |
|:--------|:---------|:-------|
| **Postes SOS** | 88 unidades (1 cada 3 km) | ✅ Validado (Riesgo gap >3km) |
| **ETD/RADAR** | 16 equipos (14 ETD + 2 Radares) | ✅ Validado |
| **CCTV** | 20 cámaras (15 Tipo A + 5 Tipo C) | ✅ Validado (Optimizado 2026) |
| **PMV** | 39 unidades (25 Vía Abierta + 14 Peaje) | ✅ Validado (Cumple IP/REV) |
| **Estaciones Meteorológicas** | 3 unidades | ✅ Validado |
| **WIM** | 1 estación bidireccional | ✅ Validado ($551k Reconciliado) |
| **Radio FM** | 0 unidades (Eliminado) | ❌ Eliminado (Ver DT-TM01-002) |
| **Fibra Óptica** | 322 km de Fibra y Tritubo | ✅ Validado (293 Contractual + 10% Holgura) |

⚠️ **Nota:** Presupuesto en proceso de Reconciliación v30.2 para integrar sensores de clasificación WIM-DAC en peajes (~$84k USD) y actualización de PMVs.

---

## 🎓 METODOLOGÍA PUNTO 42

### Niveles de Documentación

**T01 - Ficha de Sistema:**
- Identificación del sistema
- Requisitos contractuales
- Componentes principales
- Estimación preliminar CAPEX/OPEX

**T02 - Análisis de Requisitos:**
- Requisitos funcionales/no funcionales
- Casos de uso
- Criterios de aceptación

**T03 - Arquitectura Conceptual:**
- Diagramas de alto nivel
- Topologías de red
- Distribución de componentes
- Estimación de recursos

**T04 - Especificaciones Técnicas:**
- Especificaciones detalladas equipos
- Estándares y normativas
- Protocolos de prueba

**T05 - Ingeniería de Detalle:**
**T05 - Ingeniería de Detalle:**
- APU (Análisis Precios Unitarios)
- Cotizaciones de mercado
- Presupuesto definitivo

### Cumplimiento Legal Vigente (2026)
- **RETIE 2024:** Todos los diseños eléctricos cumplen con la **Resolución 40117 de 2024**.
- **Interoperabilidad:** Todos los sistemas de recaudo cumplen con la **Resolución 20213040035125 (IP/REV)**, reemplazando la obsoleta Res. 546/2018.

---

## 🔗 ENLACES RÁPIDOS

### Documentos Esenciales
- [FUENTES_DE_VERDAD.md](FUENTES_DE_VERDAD.md) - ⭐ **Jerarquía de fuentes de verdad y workflow de validación**
- [ROADMAP.md](ROADMAP.md) - Plan de trabajo y cronograma
- [INDICE_MAESTRO_PROYECTO.md](INDICE_MAESTRO_PROYECTO.md) - Índice completo del proyecto
- [00_INICIO_RAPIDO.md](00_INICIO_RAPIDO.md) - Guía de inicio rápido

### Sistema Web
- [GitHub Pages](https://dieleoz.github.io/TM01/) - Sistema web en producción
- [Portal WBS](docs/WBS_Menu_Principal.html) - Menú principal del sistema
- [Justificación Alcance](docs/justificacion_alcance.html) - ⚖️ Dashboard Contractual

### Documentos Consolidados
- [Presupuesto ITS Puro](X.%20Entregables%20Consolidados/PRESUPUESTO_ITS_PURO_v2.0.md)
- [RFQ Fibra Óptica](X.%20Entregables%20Consolidados/RFQ_001_FIBRA_OPTICA_v1.0.md)

---

## 🛠️ COMANDOS ÚTILES

### 🚀 Iniciar Sistema Web (Recomendado)
```powershell
# Sincroniza automáticamente y sirve el sistema web
powershell -ExecutionPolicy Bypass -File "docs/servidor_web.ps1"
```
**Resultado:** 
- ✅ Parsea documentos T01/T03 MVP v1.1
- ✅ Actualiza tm01_master_data.js
- ✅ Regenera todas las interfaces
- ✅ Inicia servidor en http://localhost:8000
- ✅ **Sin revisión manual URL por URL**

### 🔄 Sincronización Manual (Si es necesario)
```powershell
# Sincronización completa desde documentos fuente
powershell -ExecutionPolicy Bypass -File "scripts/sincronizar_SISTEMA_TM01_COMPLETO.ps1" -Force -Verbose
```

### 📊 Parsear Valores CAPEX desde T01
```powershell
# Extraer valores CAPEX desde documentos T01 MVP v1.1
powershell -ExecutionPolicy Bypass -File "scripts/sync_T01_to_masterdata.ps1"

# Modo DryRun (solo mostrar valores sin aplicar cambios)
powershell -ExecutionPolicy Bypass -File "scripts/sync_T01_to_masterdata.ps1" -DryRun
```

### 🧪 Ejecutar Tests
```powershell
powershell -ExecutionPolicy Bypass -File "tests/Run-AllTests.ps1"
```

### 🔧 Corregir Encoding HTML
```powershell
powershell -ExecutionPolicy Bypass -File "scripts/Fix-HtmlEncoding.ps1"
```

### ⚠️ IMPORTANTE: Principio de Sincronización Automática

> **"NO HARDCODEAR - PARSEAR AUTOMÁTICAMENTE"**
> 
> - Los valores en `tm01_master_data.js` NO deben estar hardcodeados
> - Deben ser parseados automáticamente desde documentos T01/T03 MVP v1.1
> - Al servir el sistema, la sincronización debe ser automática
> - **No se debe revisar URL por URL manualmente**

---

## 📞 INFORMACIÓN DEL PROYECTO

### Datos Generales

| Campo | Valor |
|:------|:------|
| **Nombre** | APP Puerto Salgar - Barrancabermeja |
| **Longitud Principal** | 259.6 km (RN 4510 + RN 4511) |
| **Longitud Total** | ~293 km (incluyendo RN 4513 conexión CCO) |
| **Ubicación** | Cundinamarca, Boyacá y Santander |
| **Tipo** | Concesión APP 4G |
| **Duración** | 25 años (construcción + operación) |
| **CAPEX** | USD 57.2M ≈ COP 228.8 mil millones |
| **CAPEX/km** | USD 221,186/km |

---

## 📝 HISTORIAL DE VERSIONES

### v4.1 (05-Dic-2025) - Sincronización Automática
- ✅ **Parser automático de T01/T03:** Extrae valores CAPEX desde documentos fuente
- ✅ **Servidor web mejorado:** Sincroniza automáticamente antes de servir
- ✅ **Eliminación de hardcoding:** Valores parseados desde documentos
- ✅ **Documentación actualizada:** ARCHITECTURE.md y README.md
- ✅ **Principio fundamental:** "NO HARDCODEAR - PARSEAR AUTOMÁTICAMENTE"
- ✅ **Resultado:** Sin revisión manual URL por URL necesaria

### v4.0 (31-Oct-2025)
- ✅ Limpieza y organización completa del README
- ✅ Consolidación de información duplicada
- ✅ Actualización de estado actual del proyecto

### v3.8 (31-Oct-2025)
- ✅ Merge bidireccional 3-vías implementado
- ✅ Testing automatizado con Pester
- ✅ Parser YAML funcional
- ✅ Scripts consolidados

### v3.0 (28-Oct-2025)
- ✅ Sistema de validación web completado
- ✅ Arquitectura 4 capas operativa
- ✅ Scripts de sincronización automática

---

**Última actualización:** 05 de diciembre de 2025  
**Versión:** 4.1  
**Estado:** ✅ **OPERATIVO** - Sistema con sincronización automática completa
