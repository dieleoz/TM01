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
**Verify exact values:**
- [ ] SOS: **88 units** (not 98)
- [ ] SOS CAPEX: **$2,200,000 USD**
- [ ] CCTV: **45 cameras**
- [ ] CCTV CAPEX: **$1,125,000 USD**
- [ ] PMV: **12 units**
- [ ] PMV CAPEX: **$600,000 USD**
- [ ] Peaje CAPEX: **$1,890,218.94 USD**
- [ ] WIM CAPEX: **$551,425 USD**
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
- [ ] Verify PMV count: 12 units
- [ ] Verify PMV CAPEX: $600,000 USD
- [ ] Export to Excel (verify functionality)
- [ ] Navigate to Layout interface
- [ ] Verify geospatial data loads
- [ ] Filter by CCTV system
- [ ] Verify 45 cameras displayed
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
- ✅ SOS: 88 units / $2.2M: [PASS/FAIL]
- ✅ CCTV: 45 cameras / $1.125M: [PASS/FAIL]
- ✅ PMV: 12 units / $600K: [PASS/FAIL]
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

**Agent 3 Validation Protocol**  
**Version:** 3.0 (Layer 5 + Production)  
**Last Updated:** 27 de Enero 2026
