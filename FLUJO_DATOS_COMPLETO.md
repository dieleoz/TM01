# 🔄 FLUJO DE DATOS: DESDE CONTRATO HASTA FRONTEND

**Versión:** 1.0  
**Fecha:** 27 de Enero 2026  
**Propósito:** Explicar cómo se actualiza cada archivo .js y de dónde viene la data

---

## 📊 DIAGRAMA DE FLUJO COMPLETO

```
┌─────────────────────────────────────────────────────────────┐
│  1. CONTRATO (AT1, AT2, AT3, AT4)                          │
│  Ubicación: II. Apendices Tecnicos/                        │
│  Tipo: ❌ INMUTABLE (no editar)                             │
└────────────────────────┬────────────────────────────────────┘
                         ↓
┌─────────────────────────────────────────────────────────────┐
│  2. ANÁLISIS PROMPT MAESTRO (Temporal)                     │
│  Ubicación: docs/ (luego → docs/old/)                      │
│  Tipo: ✏️ TEMPORAL (se archiva después de usar)            │
│  ─────────────────────────────────────────────────────────  │
│  • Lee AT1/AT2/AT3/AT4                                      │
│  • Identifica cantidades contractuales                      │
│  • Propone solución optimizada                              │
│  Output: ANALISIS_[SISTEMA]_PROMPT_MAESTRO_V3.X.md         │
└────────────────────────┬────────────────────────────────────┘
                         ↓
┌─────────────────────────────────────────────────────────────┐
│  3. T05 - INGENIERÍA DE DETALLE                            │
│  Ubicación: V. Ingenieria de Detalle/XX_T05_*.md           │
│  Tipo: ✏️ EDITABLE (fuente de cantidades y precios)        │
│  ─────────────────────────────────────────────────────────  │
│  • Actualizar con datos validados del análisis             │
│  • Tablas de componentes con cantidades y precios          │
│  • CAPEX total por sistema                                  │
└────────────────────────┬────────────────────────────────────┘
                         ↓
┌─────────────────────────────────────────────────────────────┐
│  4. DATOS MAESTROS (JavaScript)                            │
│  Ubicación: docs/data/tm01_master_data.js                  │
│  Tipo: ✏️ EDITABLE MANUALMENTE (fuente única de verdad)    │
│  ─────────────────────────────────────────────────────────  │
│  • Actualizar objeto [sistema]Summary                       │
│  • Agregar trazabilidad contractual                         │
│  • Agregar desglose detallado                               │
│                                                              │
│  EJEMPLO:                                                    │
│  sosSummary: {                                               │
│    cantidad: 98,                                             │
│    capexUSD: 2450000,                                        │
│    fuenteContractual: "AT1 L3525",                          │
│    validadoPor: "ANALISIS_SOS_PROMPT_MAESTRO_V3.1.md"       │
│  }                                                           │
└────────────────────────┬────────────────────────────────────┘
                         ↓
┌─────────────────────────────────────────────────────────────┐
│  5. SCRIPT DE SINCRONIZACIÓN (PowerShell)                  │
│  Ubicación: scripts/sync_wbs_tm01.ps1                      │
│  Tipo: 🤖 EJECUTABLE (genera archivos automáticamente)      │
│  ─────────────────────────────────────────────────────────  │
│  Comando:                                                    │
│  powershell -ExecutionPolicy Bypass -File "scripts\sync_wbs_tm01.ps1"
│                                                              │
│  Lee: docs/data/tm01_master_data.js                         │
│  Genera: docs/data/datos_wbs_TM01_items.js                  │
└────────────────────────┬────────────────────────────────────┘
                         ↓
┌─────────────────────────────────────────────────────────────┐
│  6. WBS GENERADO (JavaScript)                              │
│  Ubicación: docs/data/datos_wbs_TM01_items.js              │
│  Tipo: 🤖 AUTO-GENERADO (❌ NUNCA EDITAR MANUALMENTE)       │
│  ─────────────────────────────────────────────────────────  │
│  • Estructura de datos para dashboards                      │
│  • Se regenera cada vez que ejecutas sync_wbs_tm01.ps1      │
└────────────────────────┬────────────────────────────────────┘
                         ↓
┌─────────────────────────────────────────────────────────────┐
│  7. FRONTEND (Dashboards HTML)                             │
│  Ubicación: docs/*.html                                     │
│  Tipo: 🌐 FRONTEND (lee de .js, no tiene datos hardcoded)  │
│  ─────────────────────────────────────────────────────────  │
│  • presupuesto.html → Lee datos_wbs_TM01_items.js          │
│  • wbs.html → Lee datos_wbs_TM01_items.js                  │
│  • layout.html → Lee layout_datos.js                        │
└────────────────────────┬────────────────────────────────────┘
                         ↓
┌─────────────────────────────────────────────────────────────┐
│  8. LAYER 5: SERVICIOS (Del Horno al Plato)               │
│  Ubicación: scripts/ + X_ENTREGABLES_CONSOLIDADOS/         │
│  Tipo: 🤖 SCRIPTS DE COCINA (generan entregables finales)  │
│  ─────────────────────────────────────────────────────────  │
│  SCRIPTS:                                                    │
│  • cocinar_ejecutivos.ps1 → Lee T01, genera HTMLs          │
│  • cocinar_rfqs.ps1 → Lee T05, actualiza RFQs              │
│                                                              │
│  OUTPUT:                                                     │
│  • X_ENTREGABLES_CONSOLIDADOS/7_SISTEMAS_EJECUTIVOS/*.md   │
│  • X_ENTREGABLES_CONSOLIDADOS/8_DOCUMENTOS_SERVIDOS/*.html │
│  • X_ENTREGABLES_CONSOLIDADOS/RFQ_*.md (con bloques auto)  │
└─────────────────────────────────────────────────────────────┘
                         ↓
┌─────────────────────────────────────────────────────────────┐
│  X. FICHA TÉCNICA DEFENSIVA (T04)                          │
│  Ubicación: docs/specs/*.html                              │
│  Tipo: 🛡️ BLINDAJE TÉCNICO (Construction Ready)            │
│  ─────────────────────────────────────────────────────────  │
│  1. Generar: generar_specs_tecnicas.ps1                    │
│  2. Validar: "Ingeniería Defensiva" (Cláusulas de Rechazo) │
│  3. Resultado: "LISTO PARA COMPRAS"                        │
└─────────────────────────────────────────────────────────────┘
```

---

## 🎯 RESPUESTA A TU PREGUNTA: ¿EL .JS SE ACTUALIZA DE DÓNDE?

### **HAY 2 ARCHIVOS .JS DIFERENTES:**

#### **1. `tm01_master_data.js` (FUENTE EDITABLE)**

**Se actualiza:** ✏️ **MANUALMENTE** por ti o por mí

**Cuándo actualizarlo:**
- Después de validar datos con PROMPT MAESTRO
- Después de actualizar T05
- Cuando hay cambios en cantidades o CAPEX

**Cómo actualizarlo:**
```javascript
// Abrir: docs/data/tm01_master_data.js
// Buscar el objeto del sistema (ej: sosSummary)
// Actualizar campos:

sosSummary: {
  cantidad: 98,           // ← Actualizar aquí
  capexUSD: 2450000,      // ← Actualizar aquí
  fuenteContractual: "AT1 L3525",  // ← Agregar trazabilidad
  validadoPor: "ANALISIS_SOS_PROMPT_MAESTRO_V3.1.md"
}
```

---

#### **2. `datos_wbs_TM01_items.js` (AUTO-GENERADO)**

**Se actualiza:** 🤖 **AUTOMÁTICAMENTE** por el script `sync_wbs_tm01.ps1`

**Cuándo se actualiza:**
- Cada vez que ejecutas `sync_wbs_tm01.ps1`
- El script lee `tm01_master_data.js` y genera `datos_wbs_TM01_items.js`

**❌ NUNCA editar manualmente** este archivo porque:
1. Se sobrescribe cada vez que ejecutas el script
2. Perderías tus cambios
3. La fuente de verdad es `tm01_master_data.js`

---

## 📋 FLUJO DE TRABAJO PASO A PASO

### **EJEMPLO: Actualizar sistema SOS**

```bash
# PASO 1: Crear análisis PROMPT MAESTRO (temporal)
# Ubicación: docs/ANALISIS_SOS_PROMPT_MAESTRO_V3.1.md
# Propósito: Validar cantidades contractuales

# PASO 2: Actualizar T05 con datos validados
# Ubicación: V. Ingenieria de Detalle/04_T05_Ingenieria_Detalle_Postes_SOS_v1.0.md
# Cambio: 88 → 98 postes, CAPEX $2.2M → $2.45M

# PASO 3: Actualizar tm01_master_data.js MANUALMENTE
# Ubicación: docs/data/tm01_master_data.js
# Editar objeto sosSummary:
sosSummary: {
  cantidad: 98,
  capexUSD: 2450000,
  fuenteContractual: "AT1 L3525",
  validadoPor: "ANALISIS_SOS_PROMPT_MAESTRO_V3.1.md"
}

# PASO 4: Ejecutar script de sincronización
powershell -ExecutionPolicy Bypass -File "scripts\sync_wbs_tm01.ps1"
# Esto GENERA automáticamente: docs/data/datos_wbs_TM01_items.js

# PASO 5: Verificar frontend
# Abrir: docs/presupuesto.html
# Verificar que muestra 98 postes y $2.45M

# PASO 6: Archivar análisis (ya cumplió su propósito)
# Mover: docs/ANALISIS_SOS_PROMPT_MAESTRO_V3.1.md → docs/old/

# PASO 7: Crear DT (decisión técnica)
# Ubicación: VII. Documentos Transversales/DTs/DT-TM01-SOS-001.md

# PASO 8: Commit y push
git add -A
git commit -m "feat(SOS): update to 98 posts per AT1 L3525"
git push origin main

# PASO 9: Generar RFQs actualizados (LAYER 5)
powershell -ExecutionPolicy Bypass -File "scripts\cocinar_rfqs.ps1"
# Esto ACTUALIZA: X_ENTREGABLES_CONSOLIDADOS/RFQ_002_SOS_Postes_v2.0.md
# Inyecta bloque automático con cantidades desde T05

# PASO 10: Generar Ejecutivos HTML (LAYER 5)
powershell -ExecutionPolicy Bypass -File "scripts\cocinar_ejecutivos.ps1"
# Esto GENERA: X_ENTREGABLES_CONSOLIDADOS/8_DOCUMENTOS_SERVIDOS/HTML/*.html

# PASO 11: Verificar entregables finales
# Abrir: X_ENTREGABLES_CONSOLIDADOS/RFQ_002_SOS_Postes_v2.0.md
# Verificar bloque automático con 98 postes
# Verificar sello "CERTIFICACION DE COMPRAS"
```

---

## 🚫 ERRORES COMUNES

| Error | Por qué está mal | Cómo corregir |
|:------|:-----------------|:--------------|
| **Editar `datos_wbs_TM01_items.js`** | Se sobrescribe al ejecutar script | Editar `tm01_master_data.js` + ejecutar script |
| **No ejecutar script después de editar** | Frontend muestra datos viejos | Siempre ejecutar `sync_wbs_tm01.ps1` |
| **Dejar análisis en `docs/`** | Carpeta se llena de archivos temporales | Mover a `docs/old/` después de usar |
| **Hardcodear datos en HTML** | Datos no se sincronizan | HTML debe leer de `.js` |

---

## ✅ CHECKLIST DE ACTUALIZACIÓN

Después de cada análisis PROMPT MAESTRO:

- [ ] ✅ Análisis creado en `docs/` (temporal)
- [ ] ✅ T05 actualizado con cantidades validadas
- [ ] ✅ `tm01_master_data.js` actualizado MANUALMENTE
- [ ] ✅ `sync_wbs_tm01.ps1` ejecutado
- [ ] ✅ `datos_wbs_TM01_items.js` generado automáticamente
- [ ] ✅ Frontend verificado (presupuesto.html, wbs.html)
- [ ] ✅ Análisis movido a `docs/old/`
- [ ] ✅ DT creada en `VII. Documentos Transversales/DTs/`
- [ ] ✅ Commit y push a Git
- [ ] ✅ **LAYER 5:** `cocinar_rfqs.ps1` ejecutado
- [ ] ✅ **LAYER 5:** `cocinar_ejecutivos.ps1` ejecutado
- [ ] ✅ **LAYER 5:** RFQs verificados (bloques automáticos + sello)
- [ ] ✅ **LAYER 5:** Ejecutivos HTML generados

---

## 📚 RESUMEN

**Archivos EDITABLES (tú los modificas):**
- ✏️ `V. Ingenieria de Detalle/XX_T05_*.md`
- ✏️ `docs/data/tm01_master_data.js`

**Archivos AUTO-GENERADOS (script los crea):**
- 🤖 `docs/data/datos_wbs_TM01_items.js`
- 🤖 `docs/data/validaciones_content.js`

**Scripts de Cocina (LAYER 5):**
- 🍳 `scripts/cocinar_rfqs.ps1` (T05 → RFQs)
- 🍳 `scripts/cocinar_ejecutivos.ps1` (T01 → HTMLs)

**Archivos TEMPORALES (se archivan después):**
- 📄 `docs/ANALISIS_[SISTEMA]_PROMPT_MAESTRO_V3.X.md` → `docs/old/`

---

**Última actualización:** 27 de Enero 2026  
**Estado:** ✅ FLUJO VALIDADO
