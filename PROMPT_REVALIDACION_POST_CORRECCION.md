# PROMPT: RE-VALIDACIÓN POST-CORRECCIÓN - TM01

## 🎯 OBJETIVO

Validar que los **3 problemas críticos** identificados en el PR #4 fueron resueltos correctamente después de ejecutar los scripts de corrección.

---

## 📋 CONTEXTO

### **Problemas Identificados (PR #4):**
1. 🔴 **CRÍTICO:** `tm01_master_data.js` tenía 8 propiedades con valor `null`
2. 🟡 **ALTO:** RFQ_003_CCTV mostraba 30 cámaras vs 9 en T05
3. 🟡 **MEDIO:** Discrepancias en Hard Deck

### **Correcciones Aplicadas:**
```bash
# 1. Regenerar datos maestros
powershell scripts/sync_wbs_tm01.ps1

# 2. Sincronizar RFQs
powershell scripts/cocinar_rfqs.ps1
```

---

## ✅ TAREAS DE RE-VALIDACIÓN

### **TAREA 1: Verificar que tm01_master_data.js NO tiene NULLs**

```bash
# Buscar valores NULL
Select-String "null" docs/data/tm01_master_data.js -Context 2

# Debe retornar: 0 resultados (o solo en comentarios/strings)
```

**Criterios de éxito:**
- [ ] NO debe haber `null` en propiedades del objeto `tm01Data`
- [ ] Todas las propiedades deben tener valores válidos
- [ ] Archivo debe tener timestamp reciente (post-corrección)

**Si falla:**
- 🔴 **BLOQUEANTE** - El script `sync_wbs_tm01.ps1` no funcionó
- Revisar logs del script
- Verificar que los archivos T05 existen y tienen datos

---

### **TAREA 2: Verificar datos válidos en tm01_master_data.js**

```bash
# Verificar que tiene cantidades y CAPEX
Select-String "cantidad:|capexUSD:" docs/data/tm01_master_data.js | Select-Object -First 20

# Debe mostrar valores numéricos, no null
```

**Criterios de éxito:**
- [ ] `cantidad` debe tener números (ej: `cantidad: 88`)
- [ ] `capexUSD` debe tener números (ej: `capexUSD: 2200000`)
- [ ] NO debe haber `cantidad: null` o `capexUSD: null`

**Valores esperados (Hard Deck):**
| Sistema | Cantidad | CAPEX USD |
|:--------|:---------|:----------|
| SOS | 88 | 2,200,000 |
| PMV | 39 | 2,360,000 |
| CCTV | 9 | 116,100 |
| Peajes | 14 | 2,080,000 |
| WIM | 1 | 551,425 |
| Meteo | 3 | 75,000 |
| Fibra | 322 | 1,260,000 |
| L2 | 45 | 225,000 |
| L3 | 12 | 180,000 |

---

### **TAREA 3: Verificar RFQ_003_CCTV sincronizado**

```bash
# Buscar referencias a cantidad de cámaras
Select-String "9|30" X_ENTREGABLES_CONSOLIDADOS/RFQ_003_CCTV_v2.0.md -Context 2

# Debe mostrar 9 cámaras, NO 30
```

**Criterios de éxito:**
- [ ] RFQ debe mencionar **9 cámaras** (no 30)
- [ ] Debe tener bloque automático con datos de T05
- [ ] Debe tener sello "CERTIFICACIÓN DE COMPRAS"

**Si falla:**
- 🟡 **ALTO** - El script `cocinar_rfqs.ps1` no funcionó
- Ejecutar manualmente: `powershell scripts/cocinar_rfqs.ps1`
- Verificar que T05_CCTV tiene cantidad correcta

---

### **TAREA 4: Verificar WBS Page funciona**

```bash
# Abrir página en navegador
start docs/wbs.html

# Verificar visualmente:
# - Carga sin errores JavaScript
# - Muestra 11 items
# - Valores COP no son $0
# - CAPEX Total: $5,208,308.92 USD
```

**Criterios de éxito:**
- [ ] Página carga sin errores en consola del navegador
- [ ] Muestra 11 items WBS
- [ ] Valores `vuCOP` se muestran correctamente (no $0)
- [ ] Estadísticas calculadas: CAPEX Total USD y COP

**Si falla:**
- 🔴 **CRÍTICO** - Los datos maestros siguen con problemas
- Verificar `datos_wbs_TM01_items.js` tiene `vuCOP`
- Verificar `tm01_master_data.js` tiene datos válidos

---

### **TAREA 5: Verificar Hard Deck alineado**

```bash
# Comparar T05 con tm01_master_data.js
# Para cada sistema, verificar que cantidad y CAPEX coincidan

# Ejemplo para SOS:
Select-String "88|98" "V. Ingenieria de Detalle/04_T05_Ingenieria_Detalle_Postes_SOS_v1.0.md"
Select-String "SOS|88" docs/data/tm01_master_data.js
```

**Criterios de éxito:**
- [ ] Cantidades en `tm01_master_data.js` coinciden con T05
- [ ] CAPEX en `tm01_master_data.js` coincide con T05
- [ ] NO hay discrepancias entre fuentes

**Si falla:**
- 🟡 **MEDIO** - Revisar T05 vs datos maestros
- Actualizar T05 si es necesario
- Re-ejecutar `sync_wbs_tm01.ps1`

---

### **TAREA 6: Verificar timestamp de archivos**

```bash
# Verificar que los archivos fueron regenerados
Get-Item docs/data/tm01_master_data.js | Select-Object Name, LastWriteTime
Get-Item X_ENTREGABLES_CONSOLIDADOS/RFQ_003_CCTV_v2.0.md | Select-Object Name, LastWriteTime

# Debe mostrar fecha/hora reciente (post-corrección)
```

**Criterios de éxito:**
- [ ] `tm01_master_data.js` tiene timestamp reciente
- [ ] `RFQ_003_CCTV_v2.0.md` tiene timestamp reciente
- [ ] Timestamps son posteriores a la ejecución de scripts

---

## 📊 FORMATO DE SALIDA

Genera un **Dictamen de Re-Validación** con esta estructura:

```markdown
# DICTAMEN DE RE-VALIDACIÓN POST-CORRECCIÓN - TM01

**Fecha:** 02 de Febrero de 2026
**Auditor:** [TU NOMBRE]
**Versión:** Post-Fix v7.1

## 🎯 RESUMEN EJECUTIVO

### DICTAMEN FINAL:
[✅ PROBLEMAS RESUELTOS / 🟡 PARCIALMENTE RESUELTO / 🔴 PROBLEMAS PERSISTEN]

## ✅ RE-VALIDACIONES COMPLETADAS

### 1. tm01_master_data.js - NULL Values
- [ ] ✅ Sin valores NULL
- [ ] ✅ Datos válidos presentes
- [ ] ✅ Timestamp reciente

**Evidencia:**
```bash
Select-String "null" docs/data/tm01_master_data.js
# Resultado: [COPIAR OUTPUT]
```

### 2. RFQ_003_CCTV - Sincronización
- [ ] ✅ Muestra 9 cámaras (no 30)
- [ ] ✅ Bloque automático presente
- [ ] ✅ Timestamp reciente

**Evidencia:**
```bash
Select-String "9|30" X_ENTREGABLES_CONSOLIDADOS/RFQ_003_CCTV_v2.0.md
# Resultado: [COPIAR OUTPUT]
```

### 3. WBS Page - Funcionalidad
- [ ] ✅ Carga sin errores
- [ ] ✅ Muestra 11 items
- [ ] ✅ Valores COP correctos

**Screenshot:**
[INSERTAR SCREENSHOT DE WBS PAGE]

### 4. Hard Deck - Alineación
- [ ] ✅ SOS: 88 @ $2.2M
- [ ] ✅ PMV: 39 @ $2.36M
- [ ] ✅ CCTV: 9 @ $116k
- [ ] ✅ [... resto de sistemas ...]

## 🔧 PROBLEMAS RESIDUALES

[Lista de problemas que aún persisten, si los hay]

## 📝 CERTIFICACIÓN FINAL

[Certificar que los problemas fueron resueltos o documentar qué falta]

---

**Auditor:** [TU NOMBRE]
**Firma Digital:** [✅/🔴]
**Metodología:** Punto 42 v3.0
```

---

## ✅ CRITERIOS DE CERTIFICACIÓN

Para certificar que los problemas fueron resueltos, TODOS estos criterios deben cumplirse:

1. ✅ `tm01_master_data.js` sin valores NULL
2. ✅ `tm01_master_data.js` con datos válidos (cantidades y CAPEX)
3. ✅ RFQ_003_CCTV muestra 9 cámaras (no 30)
4. ✅ WBS Page funciona correctamente
5. ✅ Hard Deck alineado con T05
6. ✅ Archivos tienen timestamps recientes

**Si algún criterio falla:** 🔴 **PROBLEMAS PERSISTEN** - Documentar qué script falló y por qué

---

## 🚀 COMANDOS RÁPIDOS

```bash
# Verificar NULL values
Select-String "null" docs/data/tm01_master_data.js

# Verificar datos válidos
Select-String "cantidad:|capexUSD:" docs/data/tm01_master_data.js | Select-Object -First 20

# Verificar RFQ_003_CCTV
Select-String "9|30" X_ENTREGABLES_CONSOLIDADOS/RFQ_003_CCTV_v2.0.md -Context 2

# Abrir WBS Page
start docs/wbs.html

# Verificar timestamps
Get-Item docs/data/tm01_master_data.js | Select-Object Name, LastWriteTime
Get-Item X_ENTREGABLES_CONSOLIDADOS/RFQ_003_CCTV_v2.0.md | Select-Object Name, LastWriteTime
```

---

## 📌 NOTAS IMPORTANTES

- **NO edites archivos manualmente** - Solo valida
- **Documenta TODO** con evidencia (comando + output)
- **Toma screenshots** de WBS Page funcionando
- **Certifica solo si TODO cumple** - No hay medias tintas

---

## 🎯 RESULTADO ESPERADO

Si los scripts funcionaron correctamente, deberías ver:

1. ✅ `tm01_master_data.js` con datos válidos (no NULL)
2. ✅ RFQ_003_CCTV con 9 cámaras
3. ✅ WBS Page mostrando 11 items con valores COP
4. ✅ Hard Deck alineado

**Si ves esto:** 🎉 **PROBLEMAS RESUELTOS - PROYECTO CERTIFICADO**

**Si NO ves esto:** 🔴 **INVESTIGAR** - Revisar logs de scripts y T05

---

**¡Buena suerte con la re-validación!** 🎯
