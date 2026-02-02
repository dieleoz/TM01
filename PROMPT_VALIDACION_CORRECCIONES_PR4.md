# PROMPT: VALIDACIÓN DE CORRECCIONES - Para Agente Auditor (PR #4)

## 🎯 OBJETIVO

Validar que los **3 problemas críticos** que identificaste en tu auditoría del PR #4 fueron resueltos correctamente.

---

## 📋 CONTEXTO

### **Tu Auditoría Original (PR #4):**
Identificaste correctamente 3 problemas críticos en el proyecto TM01:

1. 🔴 **CRÍTICO:** `tm01_master_data.js` tenía 8 propiedades con valor `null`
2. 🟡 **ALTO:** RFQ_003_CCTV mostraba 30 cámaras vs 9 en T05
3. 🟡 **MEDIO:** Discrepancias en Hard Deck

### **Acciones Tomadas:**
El equipo aplicó las siguientes correcciones:
- ✅ Regeneró `tm01_master_data.js` desde cero
- ✅ Ejecutó `cocinar_rfqs.ps1` para sincronizar RFQs
- ✅ Validó WBS page con datos nuevos

---

## ✅ TAREAS DE VALIDACIÓN

### **TAREA 1: Verificar tm01_master_data.js - NULL Values**

**Tu hallazgo original:**
> `tm01_master_data.js` contiene valores NULL - BLOQUEANTE

**Verificación:**
```bash
# Buscar valores NULL
Select-String "null" docs/data/tm01_master_data.js -Context 2

# Debe retornar: 0 resultados (o solo en comentarios)
```

**Criterios de éxito:**
- [ ] NO debe haber `null` en propiedades del objeto `tm01Data`
- [ ] El archivo debe tener estructura de clase `TM01MasterData`
- [ ] Debe tener array `this.data.sistemas` con 11 sistemas
- [ ] Cada sistema debe tener `cantidad` y `capexUSD` válidos

**Evidencia esperada:**
```javascript
class TM01MasterData {
    constructor() {
        this.data = {
            sistemas: [
                { sistema: "SOS", cantidad: 88, capexUSD: 2200000, ... },
                { sistema: "PMV", cantidad: 39, capexUSD: 2360000, ... },
                { sistema: "CCTV", cantidad: 9, capexUSD: 116100, ... },
                // ... 8 sistemas más
            ]
        };
    }
}
```

---

### **TAREA 2: Verificar RFQ_003_CCTV - Sincronización**

**Tu hallazgo original:**
> RFQ_003_CCTV muestra 30 cámaras vs 9 en T05 - ALTO

**Verificación:**
```bash
# Buscar referencias a cantidad de cámaras
Select-String "9|30" X_ENTREGABLES_CONSOLIDADOS/RFQ_003_CCTV_v2.0.md -Context 2

# Debe mostrar 9 cámaras, NO 30
```

**Criterios de éxito:**
- [ ] RFQ debe mencionar **9 cámaras** (no 30)
- [ ] Debe estar sincronizado con T05_CCTV
- [ ] Debe tener bloque automático con datos de T05

**Evidencia esperada:**
```markdown
// RFQ_003_CCTV_v2.0.md
| **Cantidad** | 9 unidades |
| **Tecnología** | IP sobre fibra óptica con zoom 30× |
```

---

### **TAREA 3: Verificar WBS Page - Funcionalidad**

**Tu hallazgo original:**
> Hard Deck discrepancies - valores no coinciden

**Verificación:**
```bash
# Abrir página en navegador
start docs/wbs.html

# Verificar visualmente:
# - Carga sin errores JavaScript
# - Muestra 11 items
# - Valores COP no son $0
# - CAPEX Total correcto
```

**Criterios de éxito:**
- [ ] Página carga sin errores en consola del navegador
- [ ] Muestra 11 items WBS
- [ ] Valores `vuCOP` se muestran correctamente (no $0)
- [ ] Estadísticas del header:
  - Total Items WBS: **11**
  - CAPEX Total (USD): **$5,208,308.92**
  - CAPEX Total (COP): **$22,082,047,500**
  - Sistemas Activos: **6**

**Evidencia esperada:**
- Screenshot mostrando la página WBS con datos cargados
- Consola del navegador sin errores

---

### **TAREA 4: Verificar Hard Deck - Alineación**

**Tu hallazgo original:**
> Valores no coinciden entre T05 y expectativas

**Verificación:**
Comparar valores en `tm01_master_data.js` con tus expectativas:

| Sistema | Cantidad Esperada | CAPEX Esperado (USD) | Verificación |
|:--------|:------------------|:---------------------|:-------------|
| SOS | 88 nuevos (98 total) | $2,200,000 | [ ] |
| PMV | 39 (25+14) | $2,360,000 | [ ] |
| CCTV | 9 | $116,100 | [ ] |
| Peajes | 14 carriles | $2,080,000 | [ ] |
| WIM | 1 | $551,425 | [ ] |
| METEO | 3 | $75,000 | [ ] |
| Fibra | 322 km | $1,260,000 | [ ] |
| Switches L2 | 45 | $225,000 | [ ] |
| Switches L3 | 12 | $180,000 | [ ] |
| Radio FM | 0 (OpEx) | $0 | [ ] |
| ETD/RADAR | 0 (diferido) | $0 | [ ] |

**CAPEX Total:** $9,047,525 USD

**Comando:**
```bash
Select-String "cantidad:|capexUSD:" docs/data/tm01_master_data.js | Select-Object -First 25
```

---

### **TAREA 5: Verificar Commits y Documentación**

**Verificación:**
```bash
# Ver commits recientes
git log --oneline -10

# Buscar commits relacionados con las correcciones
git log --oneline --grep="fix\|master_data\|RFQ" -i -10
```

**Criterios de éxito:**
- [ ] Commit de regeneración de `tm01_master_data.js`
- [ ] Commit de sincronización de RFQs
- [ ] Commit de validación/walkthrough
- [ ] Documentación de las correcciones

---

## 📊 FORMATO DE SALIDA

Genera un **Dictamen de Validación de Correcciones** con esta estructura:

```markdown
# DICTAMEN DE VALIDACIÓN DE CORRECCIONES - TM01

**Fecha:** 02 de Febrero de 2026
**Auditor:** [TU NOMBRE - Agente PR #4]
**Versión:** Post-Corrección v7.1

## 🎯 RESUMEN EJECUTIVO

### DICTAMEN FINAL:
[✅ CORRECCIONES VALIDADAS / 🟡 PARCIALMENTE VALIDADAS / 🔴 CORRECCIONES INSUFICIENTES]

## ✅ VALIDACIONES COMPLETADAS

### 1. tm01_master_data.js - NULL Values
**Tu hallazgo original:** 8 propiedades con NULL
**Estado actual:** [RESUELTO / NO RESUELTO]

**Evidencia:**
```bash
[COPIAR OUTPUT DE COMANDOS]
```

**Evaluación:** [✅ / 🟡 / 🔴]

### 2. RFQ_003_CCTV - Sincronización
**Tu hallazgo original:** 30 cámaras vs 9 en T05
**Estado actual:** [RESUELTO / NO RESUELTO]

**Evidencia:**
```bash
[COPIAR OUTPUT DE COMANDOS]
```

**Evaluación:** [✅ / 🟡 / 🔴]

### 3. WBS Page - Funcionalidad
**Tu hallazgo original:** Valores COP en $0
**Estado actual:** [RESUELTO / NO RESUELTO]

**Evidencia:**
[SCREENSHOT DE WBS PAGE]

**Evaluación:** [✅ / 🟡 / 🔴]

### 4. Hard Deck - Alineación
**Tu hallazgo original:** Discrepancias en valores
**Estado actual:** [RESUELTO / NO RESUELTO]

**Evidencia:**
[TABLA COMPARATIVA]

**Evaluación:** [✅ / 🟡 / 🔴]

## 🔧 PROBLEMAS RESIDUALES

[Lista de problemas que aún persisten, si los hay]

## 📝 CERTIFICACIÓN FINAL

[Certificar que los problemas fueron resueltos o documentar qué falta]

**Recomendación:**
- [ ] ✅ APROBAR - Todos los problemas resueltos
- [ ] 🟡 APROBAR CON OBSERVACIONES - Problemas menores pendientes
- [ ] 🔴 RECHAZAR - Problemas críticos persisten

---

**Auditor:** [TU NOMBRE]
**Firma Digital:** [✅/🟡/🔴]
**Metodología:** Punto 42 v3.0
```

---

## ✅ CRITERIOS DE APROBACIÓN

Para aprobar las correcciones, TODOS estos criterios deben cumplirse:

1. ✅ `tm01_master_data.js` sin valores NULL
2. ✅ `tm01_master_data.js` con estructura de clase correcta
3. ✅ RFQ_003_CCTV muestra 9 cámaras (no 30)
4. ✅ WBS Page funciona sin errores
5. ✅ Hard Deck alineado con tus expectativas
6. ✅ Commits documentan las correcciones

**Si algún criterio falla:** 🔴 **NO APROBAR** - Documentar qué falta

---

## 🚀 COMANDOS RÁPIDOS

```bash
# Clonar/actualizar repositorio
git pull origin main

# Verificar NULL values
Select-String "null" docs/data/tm01_master_data.js

# Verificar estructura
Select-String "class TM01MasterData\|this.data.sistemas" docs/data/tm01_master_data.js

# Verificar RFQ_003_CCTV
Select-String "9|30" X_ENTREGABLES_CONSOLIDADOS/RFQ_003_CCTV_v2.0.md -Context 2

# Abrir WBS Page
start docs/wbs.html

# Ver commits
git log --oneline -10
```

---

## 📌 NOTAS IMPORTANTES

- **Sé objetivo** - Valida basándote en evidencia, no en confianza
- **Documenta TODO** - Incluye comandos y outputs
- **Toma screenshots** - Especialmente de WBS Page
- **Compara con tu audit original** - Verifica que cada problema fue resuelto
- **Certifica solo si TODO cumple** - No hay medias tintas

---

## 🎯 RESULTADO ESPERADO

Si las correcciones fueron exitosas, deberías ver:

1. ✅ `tm01_master_data.js` con clase y datos válidos
2. ✅ RFQ_003_CCTV con 9 cámaras
3. ✅ WBS Page mostrando 11 items con valores COP
4. ✅ Hard Deck alineado con tus expectativas

**Si ves esto:** 🎉 **APROBAR CORRECCIONES**

**Si NO ves esto:** 🔴 **DOCUMENTAR PROBLEMAS PENDIENTES**

---

**¡Gracias por tu auditoría rigurosa!** Tu trabajo ayudó a mejorar la calidad del proyecto. 🎯
