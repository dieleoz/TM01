# PROMPT: VALIDACIÓN Y MEJORA DEL DICTAMEN DE AUDITORÍA FORENSE TM01

## 🎯 OBJETIVO

Revisar, validar y mejorar el **Dictamen de Auditoría Forense - Arquitectura 5 Capas TM01** aplicando la **Metodología Punto 42 v3.0** y la **Guía de Replicación de Proyectos Vehiculares**.

---

## 📚 DOCUMENTOS DE REFERENCIA

Debes leer y comprender estos documentos antes de proceder:

1. **`VALIDATION_PROMPT_AGENT_3.md`** - Prompt de validación Layer 5 Services
2. **`VIII. Documentos Maestros y Metodologia/00_METODOLOGIA_PUNTO_42_v3.0.md`** - Metodología oficial del proyecto
3. **`VIII. Documentos Maestros y Metodologia/GUIA_REPLICACION_PROYECTO_VEHICULAR_v1.0.md`** - Guía de replicación
4. **`DICTAMEN_AUDITORIA_FORENSE_5_CAPAS.md`** - Documento a validar/mejorar

---

## 🔍 TAREAS DE VALIDACIÓN

### **TAREA 1: Validar Arquitectura 5 Capas**

Verifica que el dictamen documente correctamente las 5 capas según la Metodología Punto 42 v3.0:

#### **Capa 1: Fuentes de Verdad (Inmutables)**
- [ ] ¿El dictamen identifica todas las fuentes contractuales?
- [ ] ¿Valida que AT1-AT4 no han sido editados?
- [ ] ¿Verifica la presencia de RETIE 2024, IP/REV 2021, Manual 2024?

#### **Capa 2: Decisiones Técnicas (DTs)**
- [ ] ¿El dictamen lista todos los DTs activos (42 archivos)?
- [ ] ¿Valida que cada DT cita una fuente de verdad?
- [ ] ¿Verifica la trazabilidad DT → Fuente?

#### **Capa 3: Ingeniería de Detalle (T01-T05)**
- [ ] ¿El dictamen valida los 12 archivos T04?
- [ ] ¿Valida los 12 archivos T05?
- [ ] ¿Verifica que T05 es la única fuente de precios?

#### **Capa 4: Motor de Datos (Scripts + JSON)**
- [ ] ¿El dictamen valida `tm01_master_data.js`?
- [ ] ¿Verifica los 4 scripts de sincronización?
- [ ] ¿Valida que no hay hardcoding en dashboards?

#### **Capa 5: Servicios y Entregables (Layer 5)**
- [ ] ¿El dictamen valida `cocinar_rfqs.ps1`?
- [ ] ¿Valida `cocinar_ejecutivos.ps1`?
- [ ] ¿Verifica que los 9 RFQs tienen bloques automáticos?
- [ ] ¿Valida que los ejecutivos HTML están generados?

---

### **TAREA 2: Validar Hard Deck (Cantidades y Precios)**

Verifica que el dictamen valide correctamente las cantidades y precios contra fuentes de verdad:

#### **Sistemas a Validar:**
- [ ] **SOS:** 98 unidades (88 nuevos + 10 existentes) - $2,200,000 USD
- [ ] **PMV:** 39 unidades (25 mainline + 14 peajes) - $2,360,000 USD
- [ ] **CCTV:** 9 cámaras - $116,100 USD
- [ ] **Peajes:** 14 carriles - $2,080,000 USD
- [ ] **WIM:** 1 estación - $551,425 USD
- [ ] **Meteo:** 3 estaciones - $75,000 USD
- [ ] **Fibra:** 322 km - $1,260,000 USD
- [ ] **Switches L2:** 45 unidades - $225,000 USD
- [ ] **Switches L3:** 12 unidades - $180,000 USD
- [ ] **Radio FM:** 0 unidades (OpEx) - $0 USD
- [ ] **ETD/Radar:** 0 unidades (diferido) - $0 USD

#### **CAPEX Total Esperado:** $7,790,000 USD

---

### **TAREA 3: Validar Cumplimiento Normativo**

Verifica que el dictamen valide correctamente el cumplimiento normativo:

#### **RETIE 2024 (Resolución 40117/2024):**
- [ ] ¿El dictamen confirma que 50+ archivos citan RETIE 2024?
- [ ] ¿Identifica las 2 referencias residuales a RETIE 2013 en AT1/AT3?
- [ ] ¿Documenta que estas referencias están mitigadas con nota aclaratoria?
- [ ] ¿Verifica que todos los T04/T05 citan RETIE 2024?

#### **IP/REV 2021 (Resolución 20213040035125/2021):**
- [ ] ¿El dictamen valida cumplimiento de peajes?
- [ ] ¿Verifica ISO 18000-63 para RFID?
- [ ] ¿Identifica faltantes de encriptación AES-128/256?
- [ ] ¿Identifica faltantes de integración SiGT?

#### **Manual de Señalización Vial 2024:**
- [ ] ¿El dictamen valida especificaciones PMV?
- [ ] ¿Verifica protocolo NTCIP 1203 o DATEX II?
- [ ] ¿Valida altura de carácter 400mm?
- [ ] ¿Valida brillo L3 (≥8,500 cd/m²)?

---

### **TAREA 4: Validar Observaciones y Acciones Correctivas**

Verifica que el dictamen identifique correctamente:

#### **Observaciones Menores:**
- [ ] ¿Identifica la falta de DATEX II explícito en T05 PMV?
- [ ] ¿Identifica la falta de AES/SiGT en T04 Peajes?
- [ ] ¿Identifica la falta de presupuesto Cable Radiante en túneles?

#### **Acciones Correctivas:**
- [ ] ¿Propone actualizar T05 PMV con DATEX II?
- [ ] ¿Propone crear T04 Peajes v2.0 con AES/SiGT?
- [ ] ¿Propone verificar presupuesto de túneles?

---

### **TAREA 5: Validar Matriz de Semáforos**

Verifica que la matriz de semáforos sea precisa:

| Sistema | Estado Esperado | Justificación |
|:--------|:----------------|:--------------|
| SOS | 🟢 CUMPLE | Trazabilidad AT2 + DT-SOS-002, RETIE 2024 |
| PMV | 🟡 OBSERVACIÓN | Falta DATEX II explícito |
| CCTV | 🟢 CUMPLE | DT-CCTV-003, IP66 ONVIF |
| Radio FM | 🟡 VERIFICAR TÚNELES | Falta Cable Radiante |
| Peajes | 🟡 OBSERVACIÓN | Falta AES/SiGT |
| ETD/Radar | 🟢 CUMPLE | DT-ETD-001, diferido |
| WIM | 🟢 CUMPLE | AT2 + Manual 2024 |
| Meteo | 🟢 CUMPLE | DT-METEO-001 |
| Fibra | 🟢 CUMPLE | AT1, RETIE 2024 |
| Switches L2/L3 | 🟢 CUMPLE | T05, RETIE 2024 |

---

## 🔧 TAREAS DE MEJORA

### **MEJORA 1: Agregar Validación de Layer 5 (Services)**

El dictamen actual valida Layer 5, pero puede mejorarse con:

#### **Validaciones Adicionales:**
- [ ] Verificar que `cocinar_rfqs.ps1` ejecuta sin errores
- [ ] Verificar que `cocinar_ejecutivos.ps1` ejecuta sin errores
- [ ] Verificar tiempo de ejecución < 10 segundos
- [ ] Verificar que RFQs tienen sello "CERTIFICACIÓN DE COMPRAS"
- [ ] Verificar que ejecutivos HTML están en `X_ENTREGABLES_CONSOLIDADOS/8_DOCUMENTOS_SERVIDOS/HTML/`

#### **Evidencias a Incluir:**
```bash
# Ejecutar scripts de cocina
powershell scripts/cocinar_rfqs.ps1
powershell scripts/cocinar_ejecutivos.ps1

# Verificar salidas
ls X_ENTREGABLES_CONSOLIDADOS/8_DOCUMENTOS_SERVIDOS/RFQs/
ls X_ENTREGABLES_CONSOLIDADOS/8_DOCUMENTOS_SERVIDOS/HTML/
```

---

### **MEJORA 2: Agregar Sección de Replicabilidad**

Basándote en la **Guía de Replicación de Proyectos Vehiculares**, agrega una sección que valide:

#### **Replicabilidad del Proyecto:**
- [ ] ¿El proyecto TM01 puede ser replicado a otro proyecto vehicular?
- [ ] ¿Los templates T01/T02 están disponibles?
- [ ] ¿Los scripts de cocina son genéricos o específicos de TM01?
- [ ] ¿La estructura de carpetas sigue el estándar Punto 42 v3.0?

#### **Checklist de Replicación:**
- [ ] Estructura de carpetas (I-VIII) implementada
- [ ] Templates metodológicos disponibles
- [ ] Scripts de sincronización parametrizables
- [ ] Documentación de proceso de replicación

---

### **MEJORA 3: Agregar Validación de README.md**

El dictamen propone cambios al README.md, pero puede mejorarse:

#### **Validar que README.md incluya:**
- [ ] Referencia a Arquitectura 5 Capas (no 4)
- [ ] Referencia a Metodología Punto 42 v3.0
- [ ] Referencia a Layer 5 (Services)
- [ ] Descripción de scripts de cocina
- [ ] Instrucciones de regeneración de entregables

#### **Código Sugerido para README.md:**
```markdown
## 🏛️ ARQUITECTURA DE 5 CAPAS

Este proyecto implementa la **Metodología Punto 42 v3.0** con arquitectura de 5 capas:

1. **CAPA 1: Fuentes de Verdad** - Contrato, AT1-AT4, Resoluciones (RETIE 2024, IP/REV 2021)
2. **CAPA 2: Decisiones Técnicas** - 42 DTs documentando cambios técnicos
3. **CAPA 3: Ingeniería de Detalle** - T01-T05 (12 sistemas)
4. **CAPA 4: Motor de Datos** - Scripts PowerShell + `tm01_master_data.js`
5. **CAPA 5: Servicios y Entregables** - Scripts de cocina (`cocinar_rfqs.ps1`, `cocinar_ejecutivos.ps1`)

### Layer 5: Automatización de Entregables

```bash
# Generar RFQs con datos de T05
powershell scripts/cocinar_rfqs.ps1

# Generar ejecutivos HTML con datos de T01
powershell scripts/cocinar_ejecutivos.ps1
```
```

---

### **MEJORA 4: Agregar Validación de Git/Repositorio**

Basándote en `VALIDATION_PROMPT_AGENT_3.md`, agrega validación de:

#### **Repositorio GitHub:**
- [ ] Verificar que el repositorio existe: https://github.com/dieleoz/TM01
- [ ] Verificar que el branch `main` está actualizado
- [ ] Verificar últimos commits relacionados con Layer 5
- [ ] Verificar que `.gitignore` excluye archivos generados

#### **Estructura de Commits:**
```bash
# Verificar commits de Layer 5
git log --oneline --grep="Layer 5\|cocinar\|RFQ\|ejecutivo" -i

# Verificar commits de RETIE 2024
git log --oneline --grep="RETIE 2024" -i
```

---

## 📊 FORMATO DE SALIDA

Genera un **Dictamen Mejorado** con la siguiente estructura:

```markdown
# DICTAMEN DE AUDITORÍA FORENSE - ARQUITECTURA 5 CAPAS TM01 v2.0
## Auditoría de Integridad y Migración a 5 Capas

**Fecha de Auditoría:** [FECHA]
**Auditor:** [TU NOMBRE]
**Versión Proyecto:** 6.0 (Layer 5 Implementado)
**Metodología:** Punto 42 v3.0 (5 Capas)
**Repositorio:** https://github.com/dieleoz/TM01

---

## 🎯 RESUMEN EJECUTIVO

### **DICTAMEN FINAL:**
[✅ CERTIFICADO / 🟡 CERTIFICADO CON OBSERVACIONES / 🔴 NO CERTIFICADO]

[Resumen de hallazgos principales]

---

## 📋 TAREA 1: VALIDACIÓN ARQUITECTURA 5 CAPAS

[Validación detallada de cada capa]

---

## 🔎 TAREA 2: CHECKLIST DE VALIDACIÓN FORENSE (HARD DECK)

[Validación de cantidades y precios por sistema]

---

## 📊 MATRIZ DE SEMÁFOROS - VALIDACIÓN POR SISTEMA

[Tabla con estado de cada sistema]

---

## 🔧 ACCIONES CORRECTIVAS RECOMENDADAS

[Lista priorizada de acciones]

---

## 🔄 VALIDACIÓN DE REPLICABILIDAD

[Nueva sección - Validar que el proyecto es replicable]

---

## 💻 VALIDACIÓN DE LAYER 5 (SERVICES)

[Nueva sección - Validar scripts de cocina y entregables]

---

## 📝 DICTAMEN FINAL

[Certificación final con condiciones]

---

**Auditor:** [TU NOMBRE]
**Fecha:** [FECHA]
**Firma Digital:** [✅ CERTIFICADO / 🔴 NO CERTIFICADO]
**Metodología:** Punto 42 v3.0 (5 Capas)
**Versión Dictamen:** 2.0
```

---

## ✅ CRITERIOS DE ÉXITO

Tu dictamen mejorado debe:

1. ✅ **Validar las 5 capas** según Metodología Punto 42 v3.0
2. ✅ **Validar Hard Deck** de todos los sistemas contra fuentes de verdad
3. ✅ **Validar cumplimiento normativo** RETIE 2024, IP/REV 2021, Manual 2024
4. ✅ **Identificar observaciones** menores y bloqueantes
5. ✅ **Proponer acciones correctivas** priorizadas
6. ✅ **Validar Layer 5 (Services)** con ejecución de scripts
7. ✅ **Validar replicabilidad** del proyecto
8. ✅ **Actualizar README.md** con referencias a 5 capas
9. ✅ **Certificar o rechazar** el proyecto para producción

---

## 🚀 INSTRUCCIONES DE EJECUCIÓN

1. **Lee todos los documentos de referencia** listados arriba
2. **Ejecuta las validaciones** de las Tareas 1-5
3. **Implementa las mejoras** de las Mejoras 1-4
4. **Genera el dictamen mejorado** siguiendo el formato de salida
5. **Certifica o rechaza** el proyecto con justificación clara

---

## 📌 NOTAS IMPORTANTES

- **No edites fuentes de verdad** (Capa 1: Contrato, AT1-AT4)
- **Documenta todas las observaciones** con evidencia (archivo, línea)
- **Prioriza acciones correctivas** (Alta/Media/Baja)
- **Sé específico** en las recomendaciones (qué archivo, qué línea, qué cambio)
- **Valida ejecutando scripts** (no solo revisando código)

---

**¡Buena suerte con la auditoría!** 🎯
