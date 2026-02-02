# PROMPT: AUDITORÍA FINAL DEL PROYECTO TM01

## 🎯 OBJETIVO

Auditar el proyecto **TM01 Troncal Magdalena** que acaba de completar las Fases 6 y 7, validando la arquitectura de 5 capas, datos maestros, y entregables finales.

---

## 📋 CONTEXTO DEL PROYECTO

### **Estado Actual:**
- ✅ **Fase 6:** Auditoría Forense - COMPLETADA
- ✅ **Fase 7:** Servicios (Layer 5) - COMPLETADA
- ✅ **WBS Page:** Reescrita desde cero - FUNCIONANDO
- ✅ **ROADMAP:** Actualizado con todas las fases completadas

### **Trabajo Reciente Completado (Hoy 02/02/2026):**

1. **WBS Page Fix:**
   - Agregado `vuCOP` a `datos_wbs_TM01_items.js`
   - Reescrita `docs/wbs.html` desde cero
   - Aplicado UI/UX estándar del proyecto
   - Corregidos links de navegación

2. **Documentación:**
   - Actualizado `ROADMAP.md` marcando Fase 7 como completada
   - Creado `walkthrough.md` documentando el fix
   - Creado `PROMPT_VALIDACION_DICTAMEN_FORENSE.md`

---

## 🔍 TAREAS DE AUDITORÍA

### **TAREA 1: Validar Datos Maestros**

Verifica que `docs/data/tm01_master_data.js` NO tenga valores NULL:

```bash
# Buscar valores NULL en datos maestros
git show main:docs/data/tm01_master_data.js | Select-String "null" -Context 3

# Verificar que tiene datos reales
git show main:docs/data/tm01_master_data.js | Select-String "cantidad:|capexUSD:" -Context 1
```

**Criterios de éxito:**
- [ ] NO debe haber valores `null` en cantidades
- [ ] NO debe haber valores `null` en CAPEX
- [ ] Todos los sistemas deben tener datos válidos

---

### **TAREA 2: Validar WBS Page**

Verifica que `docs/wbs.html` funcione correctamente:

```bash
# Abrir página en navegador
start docs/wbs.html

# Verificar que muestra:
# - 11 items WBS
# - Valores COP correctos (no $0)
# - CAPEX Total: $5,208,308.92 USD
# - CAPEX Total: $22,082,047,500 COP
```

**Criterios de éxito:**
- [ ] Página carga sin errores JavaScript
- [ ] Muestra 11 items con cantidades
- [ ] Valores `vuCOP` se muestran correctamente (no $0)
- [ ] Estadísticas calculadas correctamente

---

### **TAREA 3: Validar datos_wbs_TM01_items.js**

Verifica que todos los items tengan la propiedad `vuCOP`:

```bash
# Verificar que todos los items tienen vuCOP
git show main:docs/datos_wbs_TM01_items.js | Select-String "vuCOP" -Context 1
```

**Criterios de éxito:**
- [ ] 11 items deben tener propiedad `vuCOP`
- [ ] Ningún `vuCOP` debe ser undefined o vacío
- [ ] Valores deben coincidir con `tm01_master_data.js`

---

### **TAREA 4: Validar RFQs (Layer 5)**

Verifica que los RFQs estén sincronizados con T05:

```bash
# Verificar RFQ_003_CCTV
git show main:X_ENTREGABLES_CONSOLIDADOS/RFQ_003_CCTV_v2.0.md | Select-String "9\|30" -Context 2

# Comparar con T05
git show main:"V. Ingenieria de Detalle/05_T05_Ingenieria_Detalle_CCTV_v1.0.md" | Select-String "cantidad" -Context 2
```

**Criterios de éxito:**
- [ ] RFQ_003_CCTV debe mostrar **9 cámaras** (no 30)
- [ ] Todos los RFQs deben tener bloques automáticos
- [ ] Valores deben coincidir con T05

---

### **TAREA 5: Validar Hard Deck**

Verifica que las cantidades y precios coincidan con T05:

| Sistema | Cantidad Esperada | CAPEX Esperado (USD) | Fuente |
|:--------|:------------------|:---------------------|:-------|
| SOS | 88 nuevos (98 total) | $2,200,000 | T05 SOS |
| PMV | 39 (25+14) | $2,360,000 | T05 PMV |
| CCTV | 9 | $116,100 | T05 CCTV |
| Peajes | 14 carriles | $2,080,000 | T05 Peajes |
| WIM | 1 | $551,425 | T05 WIM |
| Meteo | 3 | $75,000 | T05 Meteo |
| Fibra | 322 km | $1,260,000 | T05 Fibra |
| Switches L2 | 45 | $225,000 | T05 L2 |
| Switches L3 | 12 | $180,000 | T05 L3 |
| Radio FM | 0 (OpEx) | $0 | DT-RADIO-001 |
| ETD/Radar | 0 (diferido) | $0 | DT-ETD-001 |

**CAPEX Total:** $7,790,000 USD

---

### **TAREA 6: Validar Arquitectura 5 Capas**

Verifica que las 5 capas estén implementadas:

**Capa 1: Fuentes de Verdad**
```bash
ls "I. Contrato General/"
ls "II. Apendices Tecnicos/"
ls docs/Resolución_40117_de_2024_retie.pdf
```

**Capa 2: Decisiones Técnicas**
```bash
ls "VII. Documentos Transversales/DTs/" | Measure-Object
# Debe mostrar ~42 archivos DT
```

**Capa 3: Ingeniería de Detalle**
```bash
ls "V. Ingenieria de Detalle/*T05*.md" | Measure-Object
# Debe mostrar 12-13 archivos T05
```

**Capa 4: Motor de Datos**
```bash
ls docs/data/tm01_master_data.js
ls scripts/sync_wbs_tm01.ps1
```

**Capa 5: Servicios**
```bash
ls scripts/cocinar_rfqs.ps1
ls scripts/cocinar_ejecutivos.ps1
ls X_ENTREGABLES_CONSOLIDADOS/8_DOCUMENTOS_SERVIDOS/RFQs/
```

---

### **TAREA 7: Validar ROADMAP**

Verifica que el ROADMAP refleje el estado actual:

```bash
git show main:ROADMAP.md | Select-String "FASE 6\|FASE 7\|WBS PAGE" -Context 2
```

**Criterios de éxito:**
- [ ] Fase 6 marcada como ✅ COMPLETADA
- [ ] Fase 7 marcada como ✅ COMPLETADA
- [ ] WBS PAGE incluida en la lista de sistemas cerrados

---

## 📊 FORMATO DE SALIDA

Genera un **Dictamen de Auditoría Final** con esta estructura:

```markdown
# DICTAMEN DE AUDITORÍA FINAL - TM01 TRONCAL MAGDALENA

**Fecha:** 02 de Febrero de 2026
**Auditor:** [TU NOMBRE]
**Versión:** 7.0 (Post-WBS Fix)

## 🎯 RESUMEN EJECUTIVO

### DICTAMEN FINAL:
[✅ CERTIFICADO / 🟡 CERTIFICADO CON OBSERVACIONES / 🔴 NO CERTIFICADO]

## ✅ VALIDACIONES COMPLETADAS

### 1. Datos Maestros (tm01_master_data.js)
- [ ] Sin valores NULL
- [ ] Cantidades correctas
- [ ] CAPEX correcto

### 2. WBS Page
- [ ] Funciona sin errores
- [ ] Muestra 11 items
- [ ] Valores COP correctos

### 3. datos_wbs_TM01_items.js
- [ ] Todos los items tienen vuCOP
- [ ] Valores coinciden con master data

### 4. RFQs (Layer 5)
- [ ] RFQ_003_CCTV: 9 cámaras ✅
- [ ] Bloques automáticos presentes
- [ ] Sincronizados con T05

### 5. Hard Deck
- [ ] SOS: 88 nuevos (98 total) @ $2.2M
- [ ] PMV: 39 @ $2.36M
- [ ] CCTV: 9 @ $116k
- [ ] [... resto de sistemas ...]
- [ ] CAPEX Total: $7.79M USD

### 6. Arquitectura 5 Capas
- [ ] Capa 1: Fuentes de Verdad ✅
- [ ] Capa 2: DTs (42 archivos) ✅
- [ ] Capa 3: T05 (12-13 archivos) ✅
- [ ] Capa 4: Motor de Datos ✅
- [ ] Capa 5: Servicios ✅

### 7. ROADMAP
- [ ] Fase 6 completada ✅
- [ ] Fase 7 completada ✅
- [ ] WBS PAGE documentada ✅

## 🔧 PROBLEMAS ENCONTRADOS

[Lista de problemas con prioridad]

## 📝 CERTIFICACIÓN FINAL

[Certificar o rechazar el proyecto]

---

**Auditor:** [TU NOMBRE]
**Firma Digital:** [✅/🔴]
**Metodología:** Punto 42 v3.0
```

---

## ✅ CRITERIOS DE CERTIFICACIÓN

Para certificar el proyecto, TODOS estos criterios deben cumplirse:

1. ✅ `tm01_master_data.js` sin valores NULL
2. ✅ `docs/wbs.html` funciona correctamente
3. ✅ Todos los items tienen `vuCOP`
4. ✅ RFQ_003_CCTV muestra 9 cámaras (no 30)
5. ✅ Hard Deck coincide con T05
6. ✅ 5 capas implementadas
7. ✅ ROADMAP actualizado

**Si algún criterio falla:** 🔴 **NO CERTIFICAR** - Documentar problema y proponer solución

---

## 🚀 COMANDOS RÁPIDOS

```bash
# Clonar repositorio
git clone https://github.com/dieleoz/TM01.git
cd TM01

# Verificar branch main
git checkout main
git pull origin main

# Ejecutar validaciones
powershell -File scripts/sync_wbs_tm01.ps1
powershell -File scripts/cocinar_rfqs.ps1

# Abrir WBS page
start docs/wbs.html

# Generar reporte
git log --oneline -20 > audit_commits.txt
```

---

## 📌 NOTAS IMPORTANTES

- **NO edites archivos** - Solo audita
- **Documenta TODO** con evidencia (archivo, línea, screenshot)
- **Sé específico** en los hallazgos
- **Certifica solo si TODO cumple** - No hay medias tintas

---

**¡Buena suerte con la auditoría!** 🎯
