# ARQUITECTURA DEL SISTEMA TM01 TRONCAL MAGDALENA
# Proyecto: TM01 Troncal Magdalena - Sistema de Validación Web
# Versión: 1.0 | Fecha: 23 de Octubre de 2025
# Estado: ✅ IMPLEMENTADO Y OPERATIVO

---

## 🎯 CONTEXTO DEL PROYECTO

Sistema de validación web interactivo para el proyecto TM01 Troncal Magdalena, implementando una arquitectura dinámica de 4 capas que permite validación técnica, generación de Decisiones Técnicas (DTs), y propagación automática de cambios a través de todos los documentos del proyecto.

**IMPORTANTE:** El sistema implementa propagación automática de cambios en **4 NIVELES** de documentación para mantener coherencia técnica completa.

---

## 🏗️ ARQUITECTURA EN 4 CAPAS

### **CAPA 1: FUENTES DE VERDAD (Inmutables)**
```
┌─────────────────────────────────────────────────────────────────┐
│  FUENTES DE VERDAD - DOCUMENTOS BASE                            │
├─────────────────────────────────────────────────────────────────┤
│  • Contrato y Apéndices Técnicos (I-II)                        │
│  • Ingeniería Conceptual/Básica/Detalle (III-V)                │
│  • Decisiones Técnicas .md (eventos inmutables)                 │
│  • Matrices Maestras (VIII/)                                    │
│  • Documentos Transversales (VII/)                              │
└─────────────────────────────────────────────────────────────────┘
```

### **CAPA 2: TRANSFORMACIÓN (Scripts PowerShell)**
```
┌─────────────────────────────────────────────────────────────────┐
│  TRANSFORMACIÓN - PROCESAMIENTO DE DATOS                        │
├─────────────────────────────────────────────────────────────────┤
│  • tm01_master_data.js (Fuente única de datos)                 │
│  • Scripts de sincronización automática                         │
│  • Generadores de DTs                                           │
│  • Módulos reutilizables                                        │
│  • Validadores de coherencia técnica                            │
└─────────────────────────────────────────────────────────────────┘
```

### **CAPA 3: DATOS INTERMEDIOS (Generados - No Editar)**
```
┌─────────────────────────────────────────────────────────────────┐
│  DATOS INTERMEDIOS - ESTRUCTURAS DINÁMICAS                     │
├─────────────────────────────────────────────────────────────────┤
│  • datos_wbs_TM01_items.js (24 items WBS)                     │
│  • layout_datos.js (52 equipos georreferenciados)              │
│  • criterios_tecnicos_base.js (UTF-8)                          │
│  • riesgos_wbs.js (Riesgos dinámicos)                          │
│  • presupuesto_datos.js (Cálculos financieros)                 │
│                                                                 │
│  ⚠️ NUNCA editar manualmente - regenerar con scripts            │
└─────────────────────────────────────────────────────────────────┘
```

### **CAPA 4: VISUALIZACIÓN (Interfaces de Usuario)**
```
┌─────────────────────────────────────────────────────────────────┐
│  VISUALIZACIÓN - INTERFACES INTERACTIVAS                       │
├─────────────────────────────────────────────────────────────────┤
│  • index.html (Portal de acceso seguro)                       │
│  • Portal_Sistema_WBS.html (Dashboard principal)               │
│  • WBS_Menu_Principal.html (6 interfaces dinámicas)            │
│  • WBS_COMPLETA_TODO_Interactiva_v4.0.html (24 items)        │
│  • WBS_Layout_Maestro.html (52 equipos georreferenciados)      │
│  • WBS_Presupuesto_TM01_Troncal_Magdalena.html (Presupuesto)  │
│  • QA_Dashboard_TM01.html (Dashboard QA)                      │
│  • Modificador_Dinamico_WBS.html (Cambios en tiempo real)      │
│                                                                 │
│  ✅ Sistema operativo con propagación automática de cambios     │
└─────────────────────────────────────────────────────────────────┘
```

---

## 🔄 FLUJO DE DATOS DINÁMICO

### **Sistema de propagación automática:**

```
┌─────────────┐
│   FUENTE    │ ← Usuario actualiza datos en tm01_master_data.js
│   ÚNICA     │
│   DE VERDAD │
└──────┬──────┘
       │
       ↓ [Scripts de sincronización automática]
       │
┌──────▼────────────────────┐
│ datos_wbs_TM01_items.js   │ ← Datos estructurados para interfaces
│          (24 items)        │
└──────┬────────────────────┘
       │
       ├──→ [WBS_COMPLETA_TODO_Interactiva_v4.0.html] → Visualización WBS
       │
       ├──→ [WBS_Presupuesto_TM01_Troncal_Magdalena.html] → Presupuesto
       │
       ├──→ [WBS_Layout_Maestro.html] → Layout georreferenciado
       │
       └──→ [Generación automática de DTs] → Documentos técnicos
```

---

## 📋 SISTEMA DE DECISIONES TÉCNICAS (DT)

### Arquitectura de Event Sourcing:

```
┌─────────────────────────────────────────────────────┐
│  DECISIÓN TÉCNICA (DT-TM01-[SISTEMA]-[NUM]-FECHA.md) │
│  Evento inmutable que documenta un cambio técnico   │
├─────────────────────────────────────────────────────┤
│                                                     │
│  § 1-9: CONTEXTO TÉCNICO                           │
│  ├─ Ítem WBS afectado                              │
│  ├─ Justificación técnica                          │
│  ├─ Criterios de diseño                            │
│  ├─ Alternativas evaluadas                         │
│  └─ Riesgos identificados                          │
│                                                     │
│  § 10: YAML DE INSTRUCCIONES ⚙️                     │
│  ```yaml                                            │
│  dt_metadata:                                       │
│    dt_id: "DT-TM01-SOS-001"                        │
│    sistema: "SOS"                                  │
│    impacto_presupuesto: true                       │
│                                                     │
│  archivos_actualizar:                              │
│    - file: "data/tm01_master_data.js"              │
│      cambios:                                       │
│        - campo: "cantidad"                         │
│          buscar: "88"                              │
│          reemplazar: "100"                         │
│  ```                                                │
│                                                     │
│  § 11: CHECKBOX DE EJECUCIÓN                       │
│  - [ ] Ejecutado por Cursor                        │
│                                                     │
│  § 12: LOG DE EJECUCIÓN                            │
│  (Se completa automáticamente)                      │
└─────────────────────────────────────────────────────┘
```

**Flujo de ejecución:**
1. Especialista genera DT (interfaz HTML o manual)
2. DT incluye YAML con instrucciones
3. Cursor lee YAML y ejecuta cambios
4. Propagación automática en 4 niveles
5. Log de ejecución completado
6. Auditoría completa mantenida

---

## 🔄 SINCRONIZACIÓN AUTOMÁTICA

### Componentes Sincronizados:

| Componente | Fuente | Script | Destino | Frecuencia |
|:-----------|:-------|:-------|:--------|:-----------|
| **WBS Operativa** | tm01_master_data.js | sync_wbs_tm01.ps1 | datos_wbs_TM01_items.js | Manual |
| **Layout** | DTs | sincronizar_layout.ps1 | layout_datos.js | Con DTs |
| **Presupuesto** | WBS JSON | sincronizar_presupuesto.ps1 | presupuesto_datos.js | Automática |
| **Riesgos** | MATRIZ_RIESGOS | sincronizar_riesgos.ps1 | riesgos_wbs.js | Automática |
| **Reporte** | WBS JSON | generar_reporte_gerencial.ps1 | reporte_gerencial_data.js | Automática |

**Comando único:**
```powershell
.\scripts\sincronizar_SISTEMA_TM01_COMPLETO.ps1
```

**Resultado:** 4 interfaces sincronizadas en ~6 segundos

---

## 🧩 MÓDULOS REUTILIZABLES

### Módulos Creados:

```
scripts/modules/
├─ Logger.psm1 (262 líneas)
│  └─ 8 funciones de logging estructurado JSON
│
├─ SistemaMapper.psm1 (15 líneas)
│  └─ Mapeo de 6 sistemas TM01
│
├─ DTDetector.psm1 (47 líneas)
│  └─ Detección de DTs recientes/con impacto layout
│
├─ LayoutExecutor.psm1 (52 líneas)
│  └─ Ejecución de scripts especializados (SOS, CCTV, PMV, etc.)
│
├─ Consolidator.psm1 (72 líneas)
│  └─ Consolidación de documentos ejecutivos
│
└─ LayoutPreserver.psm1 (285 líneas)
   ├─ Get-LayoutCompleto - Carga layout con fallback a backup
   ├─ Get-EquiposPorCategoria - Filtra por categoría WBS
   ├─ Remove-EquiposPorCategoria - Elimina solo categoría específica
   ├─ Add-EquiposNuevos - Agrega nuevos equipos
   └─ Save-LayoutCompleto - Guarda con backup automático
```

---

## 🔍 FLUJO COMPLETO DE UNA DT

### Ejemplo: Cambio de Cantidad de Cámaras CCTV

```
PASO 1: ESPECIALISTA (WBS Interactiva HTML)
├─ Filtra por "CCTV"
├─ Ve 45 elementos
├─ Click "📝 DT" en item específico
├─ Completa observación técnica
└─ Descarga: DT-TM01-CCTV-001-2025-10-23.md

PASO 2: GUARDAR DT
└─ Mover a: II. Apendices Tecnicos/Decisiones_Tecnicas/

PASO 3: EJECUTAR (Automático o Manual)
│
├─ OPCIÓN A: Automático (Cursor con .cursorrules)
│   └─ Cursor detecta DT → Lee YAML → Ejecuta
│
└─ OPCIÓN B: Manual (Script)
    └─ .\scripts\sincronizar_SISTEMA_TM01_COMPLETO.ps1

PASO 4: DETECCIÓN (cocinar.ps1)
├─ Detecta DT con impacto_layout: true
├─ Lee sistema: "CCTV"
└─ Ejecuta: regenerar_cctv_45_camaras.ps1

PASO 5: REGENERACIÓN LAYOUT
├─ Limpia elementos antiguos
├─ Genera 45 cámaras según criterio técnico
├─ Actualiza layout.md
├─ Regenera layout_datos.js
└─ Actualiza LAYOUT_INTEGRAL_COMPLETO_v1.0.json

PASO 6: CONSOLIDACIÓN (cocinar.ps1)
├─ Lee fuentes de cocina (III, V)
├─ Consolida en SISTEMA_03_CCTV_EJECUTIVO.md
└─ Agrega nota de DT aplicada

PASO 7: EXPORTACIÓN (servir.ps1)
├─ Lee SISTEMA_03_...EJECUTIVO.md
├─ Pandoc genera .docx
├─ Pandoc genera .html
└─ Guarda en X_ENTREGABLES_CONSOLIDADOS/8_DOCUMENTOS_SERVIDOS/

PASO 8: VERIFICACIÓN
├─ Abrir WBS_Layout_Maestro.html
├─ Ctrl+Shift+F5 (limpiar cache)
├─ Filtrar por "CCTV"
└─ Verificar: 45 elementos

PASO 9: LOG (Si usa cocinar_v2.ps1 -ConLogs)
└─ Genera: logs/cocinar_YYYYMMDD_HHMMSS.json
   ├─ DTs procesadas: 1
   ├─ Archivos modificados: 8
   ├─ Duración: 25 segundos
   └─ Métricas: elementos_procesados=45
```

**Tiempo total:** ~25 segundos (automático)  
**Intervención manual:** Solo 1 comando

---

## 🎯 FUNCIONALIDADES IMPLEMENTADAS

### **1. Sistema de Datos Dinámico:**
- ✅ **Fuente única de verdad:** `tm01_master_data.js` centraliza todos los datos
- ✅ **Propagación automática:** Cambios se reflejan en todas las interfaces
- ✅ **Sincronización en tiempo real:** ~3 segundos de actualización
- ✅ **Estructura robusta:** Basada en arquitectura de 4 capas

### **2. Interfaces Interactivas:**
- ✅ **Portal de acceso seguro:** Sistema de login con roles (QA, Especificador, Admin)
- ✅ **Dashboard principal:** Navegación centralizada a todas las interfaces
- ✅ **WBS interactiva:** 24 items con botones de acción (Exportar, Analizar Riesgos, Proponer Cambios, Generar DT)
- ✅ **Layout georreferenciado:** 52 equipos con mapa interactivo
- ✅ **Presupuesto dinámico:** Cálculos automáticos con AIU, IVA y subtotales por subsistema
- ✅ **Modificador dinámico:** Cambios en tiempo real con propagación automática

### **3. Generación de DTs:**
- ✅ **DT por item WBS:** Botón contextual en cada elemento
- ✅ **Menú de tipos:** Cambio Técnico, Optimización, Gestión de Riesgo, Verificación, Personalizado
- ✅ **Formulario completo:** Observación, justificación, impacto presupuestal, responsable
- ✅ **Descarga automática:** Archivo Markdown listo para usar

### **4. Análisis y Reportes:**
- ✅ **Análisis de riesgos:** Ventana emergente con clasificación por nivel
- ✅ **Propuestas de cambios:** Interfaz para proponer modificaciones
- ✅ **Exportación Excel:** Múltiples hojas con desglose completo
- ✅ **Estadísticas financieras:** Totales, AIU, IVA, subtotales por subsistema

---

## 🔧 PATRONES ARQUITECTÓNICOS IMPLEMENTADOS

### **1. Single Source of Truth (SSOT)**
- **Archivo maestro:** `tm01_master_data.js`
- **Beneficio:** Elimina inconsistencias y duplicación de datos
- **Implementación:** Todas las interfaces cargan desde la misma fuente

### **2. Event Sourcing**
- **DTs como eventos:** Cada DT es un evento inmutable
- **Beneficio:** Trazabilidad completa de cambios
- **Implementación:** Log de ejecución automático en cada DT

### **3. Repository Pattern**
- **Fuente centralizada:** `datos_wbs_TM01_items.js` como repositorio
- **Beneficio:** Separación entre datos y lógica de presentación
- **Implementación:** Interfaces cargan datos desde repositorio

### **4. Module Pattern**
- **Módulos PowerShell:** `.psm1` reutilizables
- **Beneficio:** Código modular y mantenible
- **Implementación:** 6 módulos especializados

### **5. Cache-Busting Pattern**
- **Versionamiento automático:** `archivo.js?v=timestamp`
- **Beneficio:** Previene errores por caché del navegador
- **Implementación:** Timestamps en carga de archivos JS

---

## 📚 REFERENCIAS

**Documentos relacionados:**
- `README.md` - Documentación principal
- `ROADMAP.md` - Plan de trabajo y cronograma
- `LECCIONES_APRENDIDAS.md` - Errores y soluciones documentadas
- `GUIA_REPLICACION_PROYECTO_VEHICULAR_v1.0.md` - Metodología base
- `scripts/REQUISITOS_SISTEMA.md` - Requisitos técnicos

**Diagramas:**
- Este documento incluye diagramas ASCII de arquitectura
- Para diagramas visuales: Ver `38. DiagramasArquitectura_v1.0.md`

---

**Documento creado:** 23 de Octubre de 2025  
**Versión:** 1.0  
**Estado:** ✅ COMPLETADO  
**Responsable:** Equipo Técnico / Arquitectura  
**Próxima revisión:** Enero 2026
