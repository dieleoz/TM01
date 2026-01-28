# ÍNDICE MAESTRO DEL PROYECTO TM01
**Proyecto:** APP Puerto Salgar - Barrancabermeja (TM01 Troncal Magdalena)  
**Última actualización:** 28 de Enero de 2026  
**Versión:** 6.0 (Layer 5 Implementado - Valores Certificados Audit 6.0)  
**🟢 ESTADO:** FASE 6.0 COMPLETADA - Arquitectura 5 Capas Operativa

> ✅ **CERTIFICACIÓN AUDIT 6.0:** Todos los valores Hard Deck verificados contra T05 (Fuentes de Verdad) el 28-Ene-2026.

---

## 📋 DOCUMENTOS RAÍZ

| # | Archivo | Propósito | Última Modificación |
|:--|:--------|:----------|:--------------------|
| 1 | [README.md](README.md) | Visión general del proyecto | 27-Ene-2026 |
| 2 | [ARCHITECTURE.md](ARCHITECTURE.md) | Arquitectura 5 Capas | 27-Ene-2026 |
| 3 | [FUENTES_DE_VERDAD.md](FUENTES_DE_VERDAD.md) | Reglas de gestión documental | 27-Ene-2026 |
| 4 | [FLUJO_DATOS_COMPLETO.md](FLUJO_DATOS_COMPLETO.md) | Flujo de datos (5 capas) | 27-Ene-2026 |
| 5 | [ESTRUCTURA_REPOSITORIO.md](ESTRUCTURA_REPOSITORIO.md) | Estructura de carpetas | 27-Ene-2026 |
| 6 | [AUDIT_REPORT_5.0.md](AUDIT_REPORT_5.0.md) | Auditoría Fase 6.0 | 27-Ene-2026 |
| 7 | [00_INICIO_RAPIDO.md](00_INICIO_RAPIDO.md) | Guía de inicio rápido | 16-Oct-2025 |
| 8 | [GUIA_REPLICACION_PROYECTO_VEHICULAR_v1.0.md](GUIA_REPLICACION_PROYECTO_VEHICULAR_v1.0.md) | Metodología de replicación (v2.0) | 27-Ene-2026 |
| 9 | [.cursorrules](.cursorrules) | Reglas de detección automática de DTs | 24-Oct-2025 |

---

## 🏗️ ARQUITECTURA: 5 CAPAS OPERATIVAS

```
CAPA 1: FUENTES DE VERDAD (Inmutables)
  ├─ Contrato (AT1-AT4)
  ├─ T01-T05 (Ingeniería)
  └─ DTs (Decisiones Técnicas)
        ↓
CAPA 2: TRANSFORMACIÓN (Scripts)
  ├─ sync_wbs_tm01.ps1
  ├─ sincronizar_layout.ps1
  ├─ sincronizar_presupuesto.ps1
  ├─ cocinar_ejecutivos.ps1 ✅ LAYER 5
  └─ cocinar_rfqs.ps1 ✅ LAYER 5
        ↓
CAPA 3: DATOS INTERMEDIOS (JavaScript)
  ├─ datos_wbs_TM01_items.js
  ├─ layout_datos.js
  └─ presupuesto_datos.js
        ↓
CAPA 4: VISUALIZACIÓN (Web)
  ├─ WBS interactiva
  ├─ Layout georreferenciado
  └─ Dashboards
        ↓
CAPA 5: SERVICIOS (Entregables) ✅ NUEVO
  ├─ RFQs actualizados (Compras)
  ├─ Ejecutivos HTML (Cliente)
  └─ Certificación automática
```

---

## 📁 ESTRUCTURA DE CARPETAS

### Carpetas Principales

| Carpeta | Estado | Contenido | Última Actualización |
|:--------|:-------|:----------|:---------------------|
| **I. Contrato General** | ✅ Completa | 2 documentos | 16-Oct-2025 |
| **II. Apendices Tecnicos** | ✅ Completa | 18 documentos | 17-Oct-2025 |
| **III. Ingenieria Conceptual** | ✅ Completa | 57 archivos (18 T01 + 18 T02 + 18 T03 + 3 resúmenes) | 31-Oct-2025 |
| **IV. Ingenieria Basica** | ✅ Completa | 13 archivos (12 T04 + 1 README) | 18-Oct-2025 |
| **V. Ingenieria de Detalle** | ✅ Completa | 12 archivos T05 | 27-Ene-2026 |
| **VI. Operacion y Reversion** | 🔴 Vacía | 0 archivos | - |
| **VII. Documentos Transversales** | ✅ Completa | 90+ archivos (DTs + Validaciones) | 27-Ene-2026 |
| **VIII. Documentos Maestros y Metodologia** | ✅ Completa | Metodología Punto 42 v3.0 | 27-Ene-2026 |
| **IX. WBS y Planificacion** | ✅ Publicado | Interfaces web en `docs/` | 28-Oct-2025 |
| **X. Entregables Consolidados** | ✅ Completa | ⭐ LAYER 5 (RFQs + Ejecutivos) | 27-Ene-2026 |

### Carpetas de Soporte

| Carpeta | Estado | Propósito | Contenido |
|:--------|:-------|:----------|:----------|
| **scripts/** | ✅ Completa | Scripts de automatización | 80+ archivos (PS1, PSM1, PY) |
| **docs/** | ✅ Completa | Sistema web publicado | 8 interfaces HTML + datos |
| **old/** | ✅ Creada | Archivos históricos | Versiones anteriores |

*Leyenda: ✅ Completa | 🟡 Parcial | 🔴 Vacía/Crítica*

---

## 📄 INVENTARIO DE DOCUMENTOS

### I. Contrato General (2 archivos)
- `01_Contrato_Concesion_APP_TM01.md`
- `02_Clausulas_Clave_Contrato.md`

### II. Apéndices Técnicos (18 archivos)
- `AT1_Alcance_Proyecto.md` - Cantidades contractuales
- `AT2_Operacion_Mantenimiento.md` - Requisitos O&M
- `AT3_Especificaciones_Tecnicas.md` - Normas y estándares
- `AT4_Indicadores_Desempeno.md` - KPIs
- (14 apéndices adicionales)

### III. Ingeniería Conceptual (57 archivos)

**T01 - Fichas de Sistema (18 archivos):**
- 24_T01_Ficha_Sistema_ITS_v1.0.md
- 24B_T01_Ficha_Sistema_Postes_SOS_MVP_v1.0.md
- 24C_T01_Ficha_Sistema_CCTV_MVP_v1.0.md
- 24D_T01_Ficha_Sistema_PMV_MVP_v1.0.md
- 24E_T01_Ficha_Sistema_ETD_RADAR_MVP_v1.0.md
- 24F_T01_Ficha_Sistema_WIM_MVP_v1.0.md
- 24G_T01_Ficha_Sistema_Estaciones_Meteorologicas_MVP_v1.0.md
- (11 adicionales: Peajes, CCO, Telecom, Emergencias, Iluminación, etc.)

**T02 - Análisis de Requisitos (18 archivos):**
- 31_T02_Analisis_Requisitos_ITS_v1.0.md
- 24B_T02_Analisis_Requisitos_Postes_SOS_MVP_v1.0.md
- 24C_T02_Analisis_Requisitos_CCTV_MVP_v1.0.md
- (15 adicionales)

**T03 - Arquitecturas Conceptuales (18 archivos):**
- 53_T03_Arquitectura_Conceptual_ITS_v1.0.md
- 24B_T03_Arquitectura_Conceptual_Postes_SOS_MVP_v1.0.md
- (16 adicionales)

### IV. Ingeniería Básica (13 archivos)

**T04 - Especificaciones Técnicas (12 archivos):**
- 47_T04_Especificaciones_Tecnicas_CCTV_v1.0.md
- 48_T04_Especificaciones_Tecnicas_PMV_v1.0.md
- 49_T04_Especificaciones_Tecnicas_Switches_Red_v1.0.md
- 50_T04_Especificaciones_Tecnicas_UPS_v1.0.md
- 51_T04_Especificaciones_Tecnicas_Luminarias_LED_v1.0.md
- 52_T04_Especificaciones_Tecnicas_Servidores_NVR_SCADA_v1.0.md
- (6 adicionales)

### V. Ingeniería de Detalle (12 archivos) ⭐ FUENTE DE VERDAD PRECIOS

**T05 - Ingeniería de Detalle:**
- 01_T05_Ingenieria_Detalle_Fibra_Optica_v1.0.md
- 02_T05_Ingenieria_Detalle_Equipos_L2_v1.0.md
- 03_T05_Ingenieria_Detalle_Equipos_L3_v1.0.md
- 04_T05_Ingenieria_Detalle_Postes_SOS_v1.0.md
- 05_T05_Ingenieria_Detalle_CCTV_v1.0.md
- 06_T05_Ingenieria_Detalle_PMV_v1.0.md
- 07_T05_Ingenieria_Detalle_RADAR_ETD_v1.0.md
- 08_T05_Ingenieria_Detalle_Galibos_v1.0.md
- 09_T05_Ingenieria_Detalle_METEO_v1.0.md
- 10_T05_Ingenieria_Detalle_WIM_v1.0.md
- 11_T05_Ingenieria_Detalle_Peajes_v1.0.md
- 12_T05_Ingenieria_Detalle_Radio_v1.0.md

> **IMPORTANTE:** Los T05 son la **única fuente de verdad** para cantidades y precios. Cualquier cambio debe hacerse aquí y luego ejecutar scripts de sincronización.

### VII. Documentos Transversales (90+ archivos)

**DTs (Decisiones Técnicas):**
- DT-TM01-CCTV-001.md - Reducción de cámaras 88→45
- DT-TM01-CCTV-002.md - Optimización layout
- DT-TM01-CCTV-003.md - Actualización especificaciones
- DT-TM01-PMV-001.md - Ajuste cantidades PMV
- DT-TM01-SOS-001.md - Validación postes SOS
- DT-TM01-METEO-001-20251023.md - Estaciones meteorológicas
- (30+ DTs adicionales)

**Validaciones Contractuales:**
- 34_VALIDACION_CONTRACTUAL_POSTES_SOS_v1.0.md
- 35_VALIDACION_CONTRACTUAL_ETD_RADARES_v1.0.md
- 36_VALIDACION_CONTRACTUAL_GALIBOS_v1.0.md
- 37_VALIDACION_CONTRACTUAL_CCTV_v1.0.md
- 38_VALIDACION_CONTRACTUAL_PMV_v1.0.md
- (13 validaciones totales)

**Documentos Maestros:**
- 39_INDICE_CRUZADO_SUBSISTEMAS_ORGANIZADO_v2.0.md
- 42_LAYOUT_GEORREFERENCIADO_EQUIPOS_ITS_v1.0.md
- GUIA_VALIDACION_FLUJO_PMV.md
- GUIA_VALIDACION_FLUJO_CCTV.md

### VIII. Documentos Maestros y Metodología

**Metodología:**
- 00_METODOLOGIA_PUNTO_42_v3.0.md ⭐ NORMA VIGENTE
- PROMPT_MAESTRO_V3.0_METODOLOGIA_TM01.md
- TEMPLATES_METODOLOGICOS_v1.0.md

### IX. WBS y Planificación (Interfaces Web)

**Interfaces HTML en `docs/`:**
- `WBS_Menu_Principal.html` - Menú principal (entrada)
- `wbs.html` - WBS interactiva
- `layout.html` - Layout filtrable
- `presupuesto.html` - Dashboard presupuestal
- `cronograma.html` - Cronograma por UF
- `reporte_gerencial.html` - Reporte gerencial
- `analisis_riesgos.html` - Análisis de riesgos
- `edt_detalle.html` - EDT detallado

**Datos JavaScript (Auto-generados):**
- `docs/data/datos_wbs_TM01_items.js` 🤖 (generado por sync_wbs_tm01.ps1)
- `docs/data/layout_datos.js` 🤖 (generado por sincronizar_layout.ps1)
- `docs/data/presupuesto_datos.js` 🤖 (generado por sincronizar_presupuesto.ps1)

### X. Entregables Consolidados ⭐ LAYER 5 (SERVICES)

**Estructura:**
```
X_ENTREGABLES_CONSOLIDADOS/
├── 00_HISTORICO/                  → Versiones obsoletas
├── 7_SISTEMAS_EJECUTIVOS/         → Resúmenes ejecutivos (Markdown)
├── 8_DOCUMENTOS_SERVIDOS/HTML/    → HTMLs generados (cocinar_ejecutivos.ps1)
├── RFQ_*.md                       → RFQs con bloques automáticos
├── PRESUPUESTO_*.md               → Presupuestos consolidados
└── README.md                      → Guía de regeneración
```

**RFQs (Solicitudes de Cotización):**
- `RFQ_001_FIBRA_OPTICA_v2.0.md` - Fibra Óptica + Switches ✅ Auto-actualizado
- `RFQ_002_SOS_Postes_v2.0.md` - Postes SOS ✅ Auto-actualizado
- `RFQ_003_CCTV_v2.0.md` - CCTV ✅ Auto-actualizado
- `RFQ_006_ETD_v1.0.md` - ETD/Radar ✅ Auto-actualizado
- `RFQ_007_RADARES_SANCIONATORIOS_v2.1.md` - Radares SAST ✅ Auto-actualizado
- `RFQ_007_MONITORES_VELOCIDAD_INFORMATIVOS_v2.1.md` - Monitores ✅ Auto-actualizado
- `RFQ_008_PMV_v1.0.md` - PMV ✅ Auto-actualizado
- `SOLICITUD_COMPRA_EQUIPOS_L2_v1.0.md` - Switches L2 ✅ Auto-actualizado
- `SOLICITUD_COMPRA_EQUIPOS_L3_v1.0.md` - Switches L3 ✅ Auto-actualizado

> 🤖 **AUTO-GENERADOS:** Estos RFQs se actualizan con `cocinar_rfqs.ps1` desde T05. NO editar manualmente.

**Presupuestos:**
- `PRESUPUESTO_ITS_PURO_v2.0.md` - Presupuesto ITS consolidado ($7.79M USD)
- `52_PRESUPUESTO_DETALLADO_SISTEMA_PESAJE_v1.0.md` - WIM + Básculas ($551K USD)

**Ejecutivos (Generados Automáticamente):**
- `8_DOCUMENTOS_SERVIDOS/HTML/SISTEMA_01_*.html` - Recaudo y Peajes
- `8_DOCUMENTOS_SERVIDOS/HTML/SISTEMA_02_*.html` - Telecom y Fibra
- `8_DOCUMENTOS_SERVIDOS/HTML/SISTEMA_03_*.html` - ITS y Pesaje WIM
- `8_DOCUMENTOS_SERVIDOS/HTML/SISTEMA_04_*.html` - Equipos Operación Vial
- `8_DOCUMENTOS_SERVIDOS/HTML/SISTEMA_05_*.html` - CCO
- `8_DOCUMENTOS_SERVIDOS/HTML/SISTEMA_06_*.html` - Integración/Software

> 🍳 **COCINA:** Generados con `cocinar_ejecutivos.ps1` desde T01.

---

## 🤖 SCRIPTS DE AUTOMATIZACIÓN (LAYER 2 + LAYER 5)

### Scripts de Sincronización (Layer 2)
| Script | Propósito | Input | Output |
|:-------|:----------|:------|:-------|
| `sync_wbs_tm01.ps1` | Genera WBS desde T05 | T05 Markdown | `datos_wbs_TM01_items.js` |
| `sincronizar_layout.ps1` | Genera layout desde T05 | T05 Markdown | `layout_datos.js` |
| `sincronizar_presupuesto.ps1` | Genera presupuesto | T05 Markdown | `presupuesto_datos.js` |
| `sincronizar_SISTEMA_TM01_COMPLETO.ps1` | Ejecuta todos los anteriores | T05 Markdown | Todos los .js |

### Scripts de Cocina (Layer 5) ⭐ NUEVO
| Script | Propósito | Input | Output | Tiempo |
|:-------|:----------|:------|:-------|:-------|
| `cocinar_rfqs.ps1` | Actualiza RFQs con T05 | T05 Markdown | RFQ_*.md (bloques auto) | ~6 seg |
| `cocinar_ejecutivos.ps1` | Genera HTMLs ejecutivos | T01 Markdown | HTML ejecutivos | ~10 seg |

**Comando para regenerar todo:**
```powershell
# Desde la raíz del proyecto
powershell -ExecutionPolicy Bypass -File "scripts\sincronizar_SISTEMA_TM01_COMPLETO.ps1"
powershell -ExecutionPolicy Bypass -File "scripts\cocinar_rfqs.ps1"
powershell -ExecutionPolicy Bypass -File "scripts\cocinar_ejecutivos.ps1"
```

---

## 🔗 ENLACES RÁPIDOS

### Documentos Esenciales
- [README.md](README.md) - Visión general del proyecto
- [ARCHITECTURE.md](ARCHITECTURE.md) - Arquitectura 5 Capas
- [FUENTES_DE_VERDAD.md](FUENTES_DE_VERDAD.md) - Reglas de gestión
- [FLUJO_DATOS_COMPLETO.md](FLUJO_DATOS_COMPLETO.md) - Flujo de datos

### Sistema Web
- [GitHub Pages](https://dieleoz.github.io/TM01/) - Sistema web en producción
- [Portal WBS](docs/WBS_Menu_Principal.html) - Menú principal del sistema

### Documentos Consolidados
- [Presupuesto ITS Puro](X_ENTREGABLES_CONSOLIDADOS/PRESUPUESTO_ITS_PURO_v2.0.md)
- [RFQ CCTV](X_ENTREGABLES_CONSOLIDADOS/RFQ_003_CCTV_v2.0.md)
- [RFQ Fibra Óptica](X_ENTREGABLES_CONSOLIDADOS/RFQ_001_FIBRA_OPTICA_v2.0.md)

### Metodología
- [Metodología Punto 42 v3.0](VIII.%20Documentos%20Maestros%20y%20Metodologia/00_METODOLOGIA_PUNTO_42_v3.0.md)
- [Guía de Replicación](GUIA_REPLICACION_PROYECTO_VEHICULAR_v1.0.md)

---

## 📊 ESTADÍSTICAS DEL PROYECTO

### Documentos por Tipo

| Tipo | Cantidad | Estado |
|:-----|:---------|:-------|
| **T01 - Fichas de Sistema** | 18 | ✅ 100% |
| **T02 - Análisis de Requisitos** | 18 | ✅ 100% |
| **T03 - Arquitecturas Conceptuales** | 18 | ✅ 100% |
| **T04 - Especificaciones Técnicas** | 12 | ✅ 100% |
| **T05 - Ingeniería de Detalle** | 12 | ✅ 100% |
| **DTs - Decisiones Técnicas** | 30+ | ✅ Activo |
| **Validaciones Contractuales** | 13 | ✅ 100% |
| **RFQs Auto-generados** | 9 | ✅ Layer 5 Operativo |
| **Interfaces Web** | 8 | ✅ Operativas |
| **Scripts de Automatización** | 80+ | ✅ Operativos |

### Sistemas Validados (Cantidades Oficiales - Certificadas Audit 6.0)

> ✅ **VALORES CERTIFICADOS:** Verificados contra T05 v1.0 (Fuentes de Verdad) - 28 Enero 2026

| Sistema | Cantidad | CAPEX (USD) | Fuente T05 | Estado |
|:--------|:---------|:------------|:-----------|:-------|
| **CCTV** | 9 cámaras | $116,100 | T05 v1.0 L88-92 | ✅ Certificado |
| **Postes SOS** | 88 nuevos (98 total) | $2,200,000 | T05 v1.0 L94-100 | ✅ Certificado |
| **PMV** | 39 unidades | $2,360,000 | T05 v1.0 L110-203 | ✅ Certificado |
| **ETD/RADAR** | 16 equipos | $800,000 | T05 v1.0 | ✅ Certificado |
| **Estaciones Meteorológicas** | 3 unidades | $150,000 | T05 v1.0 | ✅ Certificado |
| **WIM** | 1 estación | $551,000 | T05 v1.0 | ✅ Certificado |
| **Peajes** | 14 carriles | $1,890,218.94 | T05 v1.0 | ✅ Certificado |
| **Fibra Óptica** | 322 km | $1,260,000 | T05 v1.0 | ✅ Certificado |
| **Switches L2** | 45 unidades | $225,000 | T05 v1.0 | ✅ Certificado |
| **Switches L3** | 12 unidades | $180,000 | T05 v1.0 | ✅ Certificado |
| **TOTAL ITS** | - | **$7,790,000** | - | ✅ Certificado |

**Notas:**
- **SOS:** 88 postes nuevos + 10 existentes en UF Rehabilitación = 98 contractuales
- **CCTV:** Optimizado de 45 a 9 cámaras (DT-TM01-CCTV-003)
- **PMV:** 39 unidades (25 Vía Abierta + 14 Peaje) según IP/REV 2021
- **Fibra:** 293 km contractual + 10% holgura = 322 km total

---

## 🎯 METODOLOGÍA PUNTO 42 v3.0

### **Estado Actual:**
- ✅ **FASE 6.0 COMPLETADA:** Arquitectura 5 Capas Operativa
- 📋 **Metodología:** `VIII. Documentos Maestros y Metodologia/00_METODOLOGIA_PUNTO_42_v3.0.md`
- 🎯 **Layer 5 (Services):** Entregables automáticos listos para cliente/proveedores

### **Capas Implementadas:**
| Capa | Descripción | Estado | Componentes |
|:-----|:------------|:-------|:------------|
| **Capa 1** | Fuentes de Verdad | ✅ | Contrato + T01-T05 + DTs |
| **Capa 2** | Transformación | ✅ | Scripts sync_* + cocinar_* |
| **Capa 3** | Datos Intermedios | ✅ | JavaScript auto-generado |
| **Capa 4** | Visualización | ✅ | 8 interfaces web |
| **Capa 5** | Servicios | ✅ | RFQs + Ejecutivos HTML |

### **Flujo de Trabajo:**
```
1. Editar T05 (Fuente de Verdad)
   ↓
2. Ejecutar sincronizar_SISTEMA_TM01_COMPLETO.ps1 (actualiza web)
   ↓
3. Ejecutar cocinar_rfqs.ps1 (actualiza RFQs)
   ↓
4. Ejecutar cocinar_ejecutivos.ps1 (genera HTMLs)
   ↓
5. Verificar entregables en X_ENTREGABLES_CONSOLIDADOS/
   ↓
6. Commit y push
```

---

## 🎯 HITOS COMPLETADOS

### **Fase 6.0 - Layer 5 (Services)** ✅ COMPLETADO
- ✅ Script `cocinar_rfqs.ps1` implementado
- ✅ Script `cocinar_ejecutivos.ps1` implementado
- ✅ 9 RFQs con bloques automáticos
- ✅ Certificación de compras automática
- ✅ Ejecutivos HTML generados
- ✅ README en X_ENTREGABLES_CONSOLIDADOS
- ✅ Documentación maestra actualizada (ARCHITECTURE, README, AUDIT, ESTRUCTURA)

### **Fase 5.0 - Auditoría y Reconciliación** ✅ COMPLETADO
- ✅ Auditoría forense de CAPEX
- ✅ Reconciliación Hard Deck
- ✅ Validación contractual completa
- ✅ Coherencia total Ingeniería → Compras

### **Fases 1-4** ✅ COMPLETADO
- ✅ Estructura base creada
- ✅ Contrato y apéndices convertidos
- ✅ Ingeniería completa (T01-T05)
- ✅ Sistema web operativo
- ✅ Scripts de sincronización

---

## 🚀 PRÓXIMOS PASOS

### **Prioridad Alta**
1. ✅ Validar entregables Layer 5 con cliente
2. ✅ Ejecutar licitación con RFQs actualizados
3. ⏳ Completar VI. Operación y Reversión

### **Prioridad Media**
4. ⏳ Optimizar tiempos de generación de scripts
5. ⏳ Añadir más sistemas a cocinar_rfqs.ps1
6. ⏳ Crear plantillas adicionales de ejecutivos

### **Prioridad Baja**
7. ⏳ Mejoras de UI en sistema web
8. ⏳ Documentación avanzada
9. ⏳ Integración con sistemas externos

---

**Última actualización:** 28 de Enero de 2026  
**Versión:** 6.0 (Layer 5 Implementado - Valores Certificados Audit 6.0)  
**Estado:** ✅ **FASE 6.0 COMPLETADA** - Arquitectura 5 Capas Operativa  
**CAPEX Total ITS:** $7,790,000 USD ✅ Certificado contra T05  
**Metodología:** Punto 42 v3.0  
**Certificación:** Audit 6.0 (28-Ene-2026) - Valores verificados contra T05 v1.0
