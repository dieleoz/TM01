# VALIDATION PROMPT: AGENT 3 - Layer 5 Services & Production Deployment

## Objective
Validate the complete implementation of the TM01 "Troncal Magdalena" project, including Layer 5 (Services) automation, production deployment, and data integrity across all 5 architectural layers.

## Context
- **Metodología:** Punto 42 v3.0 (5 Capas)
- **Estado:** Fase 6.0 Completada - Layer 5 Implementado
- **CAPEX Total ITS:** $7,790,000 USD
- **Sistemas Validados:** 13/13 (100%)

---

## Instructions for Agent 3

### 1. Repository Verification
- **Repository Link**: [dieleoz/TM01](https://github.com/dieleoz/TM01)
- **Branch**: `main`
- **Last Commit**: Verify Layer 5 implementation commits
- **Structure**: Confirm 5-layer architecture is documented

### 2. Layer 5 (Services) Validation

#### A. Scripts de Cocina (Cooking Scripts)
**Verify existence and functionality:**
- [ ] `scripts/cocinar_rfqs.ps1` exists
- [ ] `scripts/cocinar_ejecutivos.ps1` exists
- [ ] Scripts execute without errors
- [ ] Execution time < 10 seconds

#### B. RFQs Auto-generados
**Verify automatic blocks in RFQs:**
- [ ] `X_ENTREGABLES_CONSOLIDADOS/RFQ_003_CCTV_v2.0.md` has automatic block
- [ ] `X_ENTREGABLES_CONSOLIDADOS/RFQ_002_SOS_Postes_v2.0.md` has automatic block
- [ ] `X_ENTREGABLES_CONSOLIDADOS/RFQ_008_PMV_v1.0.md` has automatic block
- [ ] All RFQs have "CERTIFICACIÓN DE COMPRAS" seal
- [ ] Automatic blocks contain T05 data

#### C. Ejecutivos HTML
**Verify generated executivesummaries:**
- [ ] `X_ENTREGABLES_CONSOLIDADOS/8_DOCUMENTOS_SERVIDOS/HTML/` exists
- [ ] At least 6 HTML files generated
- [ ] HTMLs are properly formatted
- [ ] HTMLs contain T01 data

#### D. README Documentation
**Verify regeneration guide:**
- [ ] `X_ENTREGABLES_CONSOLIDADOS/README.md` exists
- [ ] Contains regeneration instructions
- [ ] Contains T05 → RFQ mapping table
- [ ] Contains workflow steps

### 3. Production Deployment (Vercel)

#### A. Deployment Status
- [ ] Access Vercel project dashboard
- [ ] Confirm build status of `main` branch is successful
- [ ] Verify deployment URL is active
- [ ] Check deployment logs for errors

#### B. Live URL Testing
**Visit the live URL and verify:**
- [ ] Homepage loads without errors
- [ ] WBS Menu Principal is accessible
- [ ] All 8 interfaces are functional
- [ ] No console errors in browser

### 4. Data Integrity Audit (Hard Deck Validation)

#### A. Master Data Source (`tm01_master_data.js`)
**Verify exact values (Certified Audit 6.0 - 28-Jan-2026):**
- [ ] SOS: **88 new units** (98 total including 10 existing)
- [ ] SOS CAPEX: **$2,200,000 USD** (88 New Units + 10 Rehab Integration)
- [ ] SOS Count: **98 Total** (88 EPC + 10 Rehabilitation)
- [ ] CCTV: **9 cameras** (optimized from 45)
- [ ] CCTV CAPEX: **$116,100 USD**
- [ ] PMV: **43 units** (25 Mainline + 4 Toll Approach + 14 Toll Lane)
- [ ] PMV CAPEX: **$2,390,000 USD** (Segregated ITS + Tolls)
- [ ] Peaje CAPEX: **$2,086,577.24 USD** (2 Stations, WIM-DAC Integration)
- [ ] WIM CAPEX: **$551,425 USD** (1 Bidirectional Station: 2 Lanes + 2 Static Scales)
- [ ] Radio CAPEX: **$0 USD** (Transferred to SPV/OPEX - Hybrid Model)
- [ ] Fiber Optic CAPEX: **$7,980,000 USD** (322km Cable 48H + Civil Works)
- [ ] Total ITS CAPEX: **$7,790,000 USD**

#### B. Web Dashboard Verification
**Navigate to WBS section and verify:**
- [ ] Subtotals match `tm01_master_data.js` exactly
- [ ] No inflation from individual item sums
- [ ] All systems display correct quantities
- [ ] All systems display correct CAPEX

#### C. GeoJSON Data
**Verify geospatial data:**
- [ ] `docs/data/layout.geojson` exists
- [ ] Contains 191+ equipment locations
- [ ] GeoJSON is RFC 7946 compliant
- [ ] Dashboard consumes GeoJSON via fetch

### 5. Architecture Validation (5 Layers)

#### Layer 1: Fuentes de Verdad
- [ ] T01-T05 documents exist in correct folders
- [ ] DTs (Decisiones Técnicas) documented
- [ ] Contrato and Apéndices Técnicos present

#### Layer 2: Transformación
- [ ] `sincronizar_SISTEMA_TM01_COMPLETO.ps1` exists
- [ ] `cocinar_rfqs.ps1` exists
- [ ] `cocinar_ejecutivos.ps1` exists
- [ ] All scripts execute successfully

#### Layer 3: Datos Intermedios
- [ ] `docs/data/datos_wbs_TM01_items.js` exists
- [ ] `docs/data/layout_datos.js` exists
- [ ] `docs/data/presupuesto_datos.js` exists
- [ ] Files are auto-generated (not manually edited)

#### Layer 4: Visualización
- [ ] 8 HTML interfaces exist
- [ ] All interfaces load without errors
- [ ] Data is consumed from Layer 3 files
- [ ] No hardcoded data in HTML

#### Layer 5: Servicios
- [ ] RFQs with automatic blocks exist
- [ ] Ejecutivos HTML generated
- [ ] README with regeneration guide exists
- [ ] Certification seals present

### 6. Browser Testing (Full-Stack)

**Use browser agent to perform:**
- [ ] Navigate to WBS interface
- [ ] Filter by PMV system
- [ ] Verify PMV count: 39 units (25 Mainline + 14 Toll)
- [ ] Verify PMV CAPEX: $2,360,000 USD
- [ ] Export to Excel (verify functionality)
- [ ] Navigate to Layout interface
- [ ] Verify geospatial data loads
- [ ] Filter by CCTV system
- [ ] Verify 9 cameras displayed
- [ ] Navigate to Presupuesto interface
- [ ] Verify total ITS CAPEX: $7,790,000 USD

### 7. Documentation Validation

**Verify master documentation:**
- [ ] `ARCHITECTURE.md` reflects 5 layers
- [ ] `README.md` updated to v3.0
- [ ] `AUDIT_REPORT_5.0.md` shows Phase 6.0 completed
- [ ] `ESTRUCTURA_REPOSITORIO.md` documents Layer 5
- [ ] `FLUJO_DATOS_COMPLETO.md` includes Layer 5
- [ ] `INDICE_MAESTRO_PROYECTO.md` updated to v6.0
- [ ] `LECCIONES_APRENDIDAS.md` includes ROADMAP insights

### 8. Final Report

**Create `DEPLOYMENT_CERTIFICATE.md` with:**

```markdown
# DEPLOYMENT CERTIFICATE - TM01 TRONCAL MAGDALENA

**Fecha:** [Current Date]  
**Versión:** 6.0 (Layer 5 Implemented)  
**Estado:** ✅ CERTIFICADO PARA PRODUCCIÓN

## Validaciones Completadas

### Layer 5 (Services)
- ✅ cocinar_rfqs.ps1: [PASS/FAIL]
- ✅ cocinar_ejecutivos.ps1: [PASS/FAIL]
- ✅ RFQs con bloques automáticos: [PASS/FAIL]
- ✅ README regeneración: [PASS/FAIL]

### Production Deployment
- ✅ Vercel build: [PASS/FAIL]
- ✅ Live URL: [PASS/FAIL]
- ✅ All interfaces: [PASS/FAIL]

### Data Integrity
- ✅ SOS: 88 new (98 total) / $2.2M: [PASS/FAIL]
- ✅ CCTV: 9 cameras / $116.1K: [PASS/FAIL]
- ✅ PMV: 39 units / $2.36M: [PASS/FAIL]
- ✅ Peaje: $1.89M: [PASS/FAIL]
- ✅ Total ITS: $7.79M: [PASS/FAIL]

### Architecture (5 Layers)
- ✅ Layer 1: Fuentes de Verdad: [PASS/FAIL]
- ✅ Layer 2: Transformación: [PASS/FAIL]
- ✅ Layer 3: Datos Intermedios: [PASS/FAIL]
- ✅ Layer 4: Visualización: [PASS/FAIL]
- ✅ Layer 5: Servicios: [PASS/FAIL]

## Resultado Final
**Estado:** [CERTIFICADO / REQUIERE CORRECCIONES]

## Observaciones
[List any issues found]

## Próximos Pasos
[Recommendations if any]

---
**Certificado por:** Agent 3  
**Metodología:** Punto 42 v3.0  
**Proyecto:** APP Puerto Salgar - Barrancabermeja
```

---

## Success Criteria

**All checks must PASS for certification:**
- ✅ Layer 5 scripts execute successfully
- ✅ RFQs have automatic blocks with T05 data
- ✅ Vercel deployment is live and functional
- ✅ All data integrity checks match Hard Deck values
- ✅ All 5 architectural layers are operational
- ✅ Browser testing shows no errors
- ✅ Documentation is complete and updated

**If ANY check FAILS:**
- Document the failure in DEPLOYMENT_CERTIFICATE.md
- Create a list of corrective actions
- Re-run validation after corrections

---

## 🔍 VALIDACIÓN CRUZADA DE COHERENCIA

### Objetivo
Verificar que TODOS los documentos maestros tengan información coherente y actualizada, evitando inconsistencias entre fuentes.

### A. Coherencia de Arquitectura
- [ ] **README.md** menciona "5 Capas" (NO "4 Capas")
- [ ] **ARCHITECTURE.md** menciona "5 Capas"
- [ ] **00_METODOLOGIA_PUNTO_42_v3.0.md** título dice "ARQUITECTURA DE 5 CAPAS"
- [ ] Todos los diagramas incluyen Layer 5 (Services)
- [ ] **README.md** versión: 5.0 (NO 4.1 o anterior)

### B. Coherencia de Datos Hard Deck (Cross-Check)
Verificar que TODOS los documentos tengan los MISMOS valores certificados de T05:

| Sistema | T05 (Fuente de Verdad) | INDICE_MAESTRO | VALIDATION_PROMPT | README | Estado |
|:--------|:-----------------------|:---------------|:------------------|:-------|:-------|
| **CCTV** | 9 cámaras / $116,100 | ✅ Verificar | ✅ Línea 73 | ✅ Verificar | Debe coincidir |
| **PMV** | 39 paneles / $2,360,000 | ✅ Verificar | ✅ Línea 74 | ✅ Verificar | Debe coincidir |
| **SOS** | 88 nuevos (98 total) / $2,200,000 | ✅ Verificar | ✅ Línea 75 | ✅ Verificar | Debe coincidir |
| **Peajes** | 14 carriles / $1,890,219 | ✅ Verificar | ✅ Línea 76 | ✅ Verificar | Debe coincidir |
| **WIM** | 1 estación / $551,000 | ✅ Verificar | ✅ Línea 77 | ✅ Verificar | Debe coincidir |

**Fuentes de Verdad (en orden de prioridad):**
1. **T05 (Ingeniería de Detalle)** - Carpeta `V. Ingenieria de Detalle/`
2. **tm01_master_data.js** - Archivo `docs/data/tm01_master_data.js`
3. **INDICE_MAESTRO_PROYECTO.md** - Sincronizado con T05

### C. Coherencia de Versiones y Fechas
- [ ] **README.md** - Versión 5.0 / Fecha: 28-Ene-2026
- [ ] **LECCIONES_APRENDIDAS.md** - Versión 3.0 en TODAS las secciones (encabezado y footer)
- [ ] **VALIDATION_PROMPT_AGENT_3.md** - Versión 3.1 / Fecha: 28-Ene-2026
- [ ] **INDICE_MAESTRO_PROYECTO.md** - Fecha actualizada
- [ ] Todos los documentos maestros tienen fecha 27-28 Ene 2026

### D. Coherencia de Metodología
- [ ] Todos mencionan "Metodología Punto 42 v3.0"
- [ ] Todos mencionan "Contract-First Architecture"
- [ ] Todos mencionan "5 Capas" (NO "4 Capas")
- [ ] Todos mencionan "Layer 5 (Services)" cuando aplique

### E. Coherencia de Alcance Contractual
- [ ] **Cable Radiante (Leaky Feeder):** ❌ NO APLICA (proyecto sin túneles)
- [ ] **DT-TM01-RADIO-001.md** incluye verificación de alcance
- [ ] **DICTAMEN_CABLE_RADIANTE_NO_APLICA.md** existe y está actualizado
- [ ] Todos los documentos reflejan que NO hay túneles en el proyecto

### Procedimiento de Validación Cruzada
1. **Leer T05** para obtener valores oficiales
2. **Comparar** con INDICE_MAESTRO_PROYECTO.md
3. **Comparar** con VALIDATION_PROMPT_AGENT_3.md (este documento)
4. **Comparar** con README.md
5. **Reportar** cualquier discrepancia encontrada
6. **Corregir** usando T05 como fuente de verdad

### Criterio de Aprobación
✅ **APROBADO:** Todos los valores coinciden entre documentos  
❌ **RECHAZADO:** Cualquier discrepancia encontrada

---


**Agent 3 Validation Protocol**  
**Version:** 3.1 (Layer 5 + Production + Audit 6.0 Certified Values)  
**Last Updated:** 28 de Enero 2026  
**Certification:** Values certified against T05 v1.0 (Audit 6.0)
