# 📁 ESTRUCTURA DE REPOSITORIO TM01

**Versión:** 1.0  
**Fecha:** 27 de Enero 2026  
**Propósito:** Definir ubicaciones estándar para cada tipo de documento

---

## 🎯 REGLA DE ORO

```
CADA TIPO DE DOCUMENTO TIENE UNA UBICACIÓN ÚNICA
NO DUPLICAR - NO IMPROVISAR - SEGUIR LA ESTRUCTURA
```

---

## 📂 ESTRUCTURA COMPLETA

### **I-VI: DOCUMENTACIÓN CONTRACTUAL Y TÉCNICA**

```
I. Contrato General/              → Contrato base (inmutable)
II. Apendices Tecnicos/           → AT1, AT2, AT3, AT4 (inmutable)
III. Ingenieria Conceptual/       → T01, T02, T03 (histórico)
IV. Ingenieria Basica/            → T04 (especificaciones técnicas)
V. Ingenieria de Detalle/         → T05 (precios y cantidades) ✏️ EDITABLE
VI. Operacion y Reversion/        → Documentos de operación
```

**Regla:** Solo editar T05. El resto es referencia.

---

### **VII. DOCUMENTOS TRANSVERSALES** ⭐ IMPORTANTE

```
VII. Documentos Transversales/
├── DTs/                          → ✅ DECISIONES TÉCNICAS (DT-TM01-XXX-NNN.md)
│   ├── DT-TM01-PMV-001.md
│   ├── DT-TM01-SOS-001.md
│   └── DT-TM01-METEO-001.md
│
├── Validaciones/                 → Validaciones contractuales
│   ├── VALIDACION_PMV_v1.0.md
│   └── VALIDACION_SOS_v1.0.md
│
└── Notas_Tecnicas/               → Notas técnicas consolidadas
    ├── NOTA_TECNICA_PMV_v1.0.md
    └── NOTA_TECNICA_SOS_v1.0.md
```

**Regla:** 
- **DTs/** = Historial inmutable de decisiones técnicas
- **Validaciones/** = Documentos para Interventoría
- **Notas_Tecnicas/** = Documentos para Cliente/Proveedores

---

### **docs/ - ANÁLISIS Y FRONTEND** ⭐ IMPORTANTE

```
docs/
├── ANALISIS_[SISTEMA]_PROMPT_MAESTRO_V3.X.md  → ✅ ANÁLISIS CONTRACTUALES
│   ├── ANALISIS_PMV_PROMPT_MAESTRO_V2.9.md
│   ├── ANALISIS_METEO_PROMPT_MAESTRO_V3.0.md
│   └── ANALISIS_SOS_PROMPT_MAESTRO_V3.1.md
│
├── INTEGRACION_PROMPT_MAESTRO_FRONTEND.md     → Guía de integración
├── PROMPT_MAESTRO_V3.0_METODOLOGIA_TM01.md    → Metodología completa
│
├── data/                                       → ✅ DATOS MAESTROS
│   ├── tm01_master_data.js                    → ✏️ EDITABLE (fuente de verdad)
│   ├── datos_wbs_TM01_items.js                → 🤖 AUTO-GENERADO (NO EDITAR)
│   └── validaciones_content.js                → 🤖 AUTO-GENERADO (NO EDITAR)
│
├── *.html                                      → 🤖 DASHBOARDS (NO EDITAR DATOS)
│   ├── presupuesto.html
│   ├── wbs.html
│   └── layout.html
│
└── old/                                        → ❌ ARCHIVOS OBSOLETOS
    └── [documentos deprecados]
```

**Regla:**
- **ANALISIS_*.md** = Análisis PROMPT MAESTRO (1 por sistema)
- **data/tm01_master_data.js** = ÚNICA fuente editable
- **data/datos_wbs_TM01_items.js** = NUNCA editar (auto-generado)
- **old/** = Mover aquí documentos obsoletos

---

### **X. ENTREGABLES CONSOLIDADOS** ⭐ LAYER 5 (SERVICES)

```
X_ENTREGABLES_CONSOLIDADOS/
├── 00_HISTORICO/                 → Versiones obsoletas archivadas
├── 7_SISTEMAS_EJECUTIVOS/        → Resúmenes ejecutivos (Markdown)
├── 8_DOCUMENTOS_SERVIDOS/        → HTMLs generados (cocinar_ejecutivos.ps1)
├── RFQ_001_FIBRA_OPTICA_v2.0.md  → RFQs listos para licitar
├── RFQ_002_SOS_Postes_v2.0.md
├── RFQ_003_CCTV_v2.0.md
├── RFQ_008_PMV_v1.0.md
├── PRESUPUESTO_ITS_PURO_v2.0.md  → Presupuesto consolidado
└── README.md                     → 🤖 Guía de regeneración automática
```

**Regla:** 
- **Documentos para proveedores y compras.**
- **🤖 AUTO-GENERADOS:** Los RFQs se actualizan con `cocinar_rfqs.ps1` desde T05.
- **NO EDITAR MANUALMENTE:** Regenerar con scripts cuando cambien los T05.

---

## 🔄 FLUJO DE TRABAJO CORRECTO

### **PASO 1: ANÁLISIS CONTRACTUAL**

```
1. Ejecutar PROMPT MAESTRO V3.1
   ↓
2. Generar: docs/ANALISIS_[SISTEMA]_PROMPT_MAESTRO_V3.X.md
   ↓
   Ubicación: docs/ (NO en VII. Documentos Transversales)
```

**Ejemplo:**
- ✅ `docs/ANALISIS_SOS_PROMPT_MAESTRO_V3.1.md`
- ❌ `VII. Documentos Transversales/ANALISIS_SOS_PROMPT_MAESTRO_V3.1.md`

---

### **PASO 2: ACTUALIZAR T05**

```
1. Editar: V. Ingenieria de Detalle/XX_T05_[SISTEMA]_v1.0.md
   ↓
2. Actualizar cantidades y CAPEX con datos validados
```

**Ejemplo:**
- ✅ `V. Ingenieria de Detalle/04_T05_Ingenieria_Detalle_Postes_SOS_v1.0.md`

---

### **PASO 3: ACTUALIZAR DATOS MAESTROS**

```
1. Editar: docs/data/tm01_master_data.js
   ↓
2. Actualizar objeto [sistema]Summary con trazabilidad
```

**Ejemplo:**
```javascript
sosSummary: {
  cantidad: 98,
  capexUSD: 2450000,
  fuenteContractual: "AT1 L3525",
  validadoPor: "ANALISIS_SOS_PROMPT_MAESTRO_V3.1.md",
  fechaValidacion: "2026-01-27"
}
```

---

### **PASO 4: SINCRONIZAR WBS**

```
1. Ejecutar: powershell scripts/sync_wbs_tm01.ps1
   ↓
2. Genera automáticamente: docs/data/datos_wbs_TM01_items.js
   ↓
   ❌ NUNCA editar datos_wbs_TM01_items.js manualmente
```

---

### **PASO 5: CREAR DECISIÓN TÉCNICA**

```
1. Generar: VII. Documentos Transversales/DTs/DT-TM01-[SISTEMA]-NNN.md
   ↓
   Ubicación: VII. Documentos Transversales/DTs/ (NO en raíz de VII)
```

**Ejemplo:**
- ✅ `VII. Documentos Transversales/DTs/DT-TM01-SOS-001.md`
- ❌ `VII. Documentos Transversales/DT-TM01-SOS-001.md`

---

### **PASO 6: COMMIT Y PUSH**

```
1. git add -A
2. git commit -m "feat([SISTEMA]): descripción del cambio"
3. git push origin main
   ↓
4. Vercel auto-deploy
```

---

## 🚫 ERRORES COMUNES A EVITAR

| Error | Incorrecto | Correcto |
|:------|:-----------|:---------|
| **DT en raíz de VII** | `VII. Documentos Transversales/DT-TM01-SOS-001.md` | `VII. Documentos Transversales/DTs/DT-TM01-SOS-001.md` |
| **Análisis en VII** | `VII. Documentos Transversales/ANALISIS_SOS_*.md` | `docs/ANALISIS_SOS_PROMPT_MAESTRO_V3.1.md` |
| **Editar JS generado** | Editar `datos_wbs_TM01_items.js` | Editar `tm01_master_data.js` + ejecutar script |
| **Múltiples análisis** | `ANALISIS_SOS_V1.md`, `ANALISIS_SOS_V2.md` | Sobrescribir `ANALISIS_SOS_PROMPT_MAESTRO_V3.1.md` |
| **Archivos obsoletos** | Dejar en carpetas principales | Mover a `docs/old/` |

---

## 📋 CHECKLIST DE ORGANIZACIÓN

### **Después de cada análisis PROMPT MAESTRO:**

- [ ] ✅ Análisis en `docs/ANALISIS_[SISTEMA]_PROMPT_MAESTRO_V3.X.md`
- [ ] ✅ T05 actualizado en `V. Ingenieria de Detalle/`
- [ ] ✅ DT creada en `VII. Documentos Transversales/DTs/`
- [ ] ✅ `tm01_master_data.js` actualizado
- [ ] ✅ `sync_wbs_tm01.ps1` ejecutado
- [ ] ✅ Commit y push a Git
- [ ] ❌ NO crear archivos duplicados
- [ ] ❌ NO editar archivos auto-generados

---

## 🗂️ ARCHIVOS QUE NUNCA DEBES EDITAR MANUALMENTE

```
❌ docs/data/datos_wbs_TM01_items.js          → Auto-generado por sync_wbs_tm01.ps1
❌ docs/data/validaciones_content.js          → Auto-generado por sync_wbs_tm01.ps1
❌ docs/*.html (datos hardcodeados)           → Deben leer de .js
```

**Regla:** Si necesitas cambiar datos, edita `tm01_master_data.js` y ejecuta el script.

---

## 📚 RESUMEN DE UBICACIONES

| Tipo de Documento | Ubicación | Editable | Propósito |
|:------------------|:----------|:---------|:----------|
| **Análisis PROMPT MAESTRO** | `docs/ANALISIS_*.md` | ✅ | Validación contractual |
| **Decisiones Técnicas** | `VII. Documentos Transversales/DTs/` | ✅ | Historial de cambios |
| **T05 (Ingeniería)** | `V. Ingenieria de Detalle/` | ✅ | Precios y cantidades |
| **Datos Maestros** | `docs/data/tm01_master_data.js` | ✅ | Fuente única de verdad |
| **WBS Generado** | `docs/data/datos_wbs_TM01_items.js` | ❌ | Auto-generado |
| **Dashboards HTML** | `docs/*.html` | ❌ | Frontend (lee de .js) |
| **Archivos Obsoletos** | `docs/old/` | ❌ | Histórico |

---

**Última actualización:** 27 de Enero 2026  
**Estado:** ✅ ESTRUCTURA VALIDADA  
**Próxima revisión:** Cuando se agregue un nuevo tipo de documento
