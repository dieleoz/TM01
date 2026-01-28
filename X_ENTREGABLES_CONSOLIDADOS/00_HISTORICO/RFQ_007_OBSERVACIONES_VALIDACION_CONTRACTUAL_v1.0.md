# OBSERVACIONES VALIDACIÓN CONTRACTUAL - RFQ-007
## Análisis de cumplimiento expreso del contrato y Resolución 718/2018

**RFQ:** RFQ-007-RADARES-SANCIONATORIOS  
**Fecha validación:** 04 de noviembre de 2025  
**Versión:** 1.0

---

## 🔴 OBSERVACIONES CRÍTICAS

### 1. FALTA CLARIDAD EN LA APLICACIÓN DE RESOLUCIÓN 718/2018

#### Problema Identificado:
El RFQ-007 menciona Resolución 718/2018 pero **NO deja claro**:
- **CÓMO** se aplica (obligatoria por contrato)
- **QUÉ obligaciones específicas** derivan de ella (además de señalización)
- **QUIÉN** es responsable de cumplir cada obligación

#### Texto del Contrato (AT2 §3.3.4.5):
> *"Se debe cumplir con la Resolución 0718 del 22 de marzo de 2018 'por el cual se reglamentan los criterios técnicos para la instalación y operación de medios técnicos o tecnológicos para la detección de presuntas infracciones al tránsito y se dictan otras disposiciones'."*

#### Obligaciones de Res. 718/2018 (además de señalización):

| Obligación | Artículo Res. 718/2018 | Estado en RFQ-007 | Observación |
|:-----------|:----------------------|:------------------|:------------|
| **1. Estudio técnico previo** | Art. 4 | ⚠️ **MENCIONADO PERO NO CLARO** | Se menciona en ubicaciones pero no como requisito previo obligatorio |
| **2. Autorización previa MinTransporte** | Art. 4 | ⚠️ **CONFUSO** | Se habla de "habilitación" pero Res. 718 dice "autorización previa" |
| **3. Homologación ONAC** | Art. 5 | ✅ Bien incluido | - |
| **4. Señalización 500 m** | Art. 8 | ✅ Bien incluido | - |
| **5. Calibración anual** | Art. 7 | ✅ Bien incluido | - |
| **6. Protección datos personales** | Art. 10 | ⚠️ **NO EXPLÍCITO** | Se menciona Ley 1581/2012 pero no el cumplimiento específico de Res. 718 |

---

## 🔴 OBSERVACIONES ESPECÍFICAS AL RFQ-007

### OBSERVACIÓN 1: Estudio Técnico de Siniestralidad y Flujo Vehicular

#### Ubicación en RFQ-007:
- **Línea 83-88:** Se menciona "estudio técnico de seguridad vial" pero como parte de ubicaciones, NO como requisito previo obligatorio de Res. 718/2018.

#### Requisito Contractual (Res. 718/2018 Art. 4):
> *"Para la instalación de medios técnicos o tecnológicos de detección de infracciones, se requiere **estudio técnico previo** que demuestre: siniestralidad, flujo vehicular, puntos críticos, y justificación técnica."*

#### Corrección Necesaria:
El RFQ debe **separar claramente**:
1. **Estudio técnico previo** (requisito de Res. 718/2018 Art. 4) - **OBLIGATORIO ANTES** de instalación
2. **Ubicación de equipos** (basada en estudio técnico)

**Recomendación:** Agregar sección específica:
```markdown
## 📋 ESTUDIO TÉCNICO PREVIO (Res. 718/2018 Art. 4)

**OBLIGATORIO:** Previo a la instalación de radares sancionatorios, se requiere estudio técnico que demuestre:
- Análisis de siniestralidad en puntos propuestos
- Análisis de flujo vehicular
- Identificación de puntos críticos de infracciones
- Justificación técnica de cada ubicación

**Responsable:** Oferente debe incluir estudio técnico en propuesta o compromiso de realizarlo previo a instalación.
```

---

### OBSERVACIÓN 2: Autorización Previa vs. Habilitación

#### Ubicación en RFQ-007:
- **Línea 46:** "Habilitación ante Ministerio de Transporte (Res. 718/2018)"
- **Línea 181:** "RAD-006: Habilitación ante Ministerio de Transporte"

#### Requisito Contractual (Res. 718/2018 Art. 4):
> *"Se requiere **autorización previa** del Ministerio de Transporte para la instalación y operación."*

#### Problema:
- El término "habilitación" es **ambiguo**.
- Res. 718/2018 exige **"autorización previa"** (antes de instalar).
- El RFQ no deja claro que es **PREVIA** a la instalación.

#### Corrección Necesaria:
Cambiar "habilitación" por **"autorización previa"** y aclarar que debe obtenerse **ANTES** de la instalación.

**Recomendación:** 
```markdown
**RAD-006** | Autorización previa ante Ministerio de Transporte (Res. 718/2018 Art. 4) - **REQUISITO PREVIO A INSTALACIÓN** | 2 | UND
```

---

### OBSERVACIÓN 3: Protección de Datos Personales (Res. 718/2018 Art. 10)

#### Ubicación en RFQ-007:
- **Línea 163:** Se menciona "Ley 1581/2012 - Protección de Datos Personales"
- **NO se menciona** específicamente el cumplimiento de Res. 718/2018 Art. 10

#### Requisito Contractual (Res. 718/2018 Art. 10):
> *"El tratamiento de datos personales (imágenes, matrículas) debe cumplir Ley 1581/2012 y normas de protección de datos. Las imágenes solo pueden usarse para fines de control de tránsito."*

#### Corrección Necesaria:
Agregar cumplimiento específico de Res. 718/2018 Art. 10 en software de evidencia.

**Recomendación:** Agregar en especificaciones:
```markdown
### Software de gestión y evidencia
- **Protección datos personales:** Cumplimiento Res. 718/2018 Art. 10 + Ley 1581/2012
  - Uso exclusivo para control de tránsito
  - Consentimiento informado (señalización)
  - Protección y confidencialidad de imágenes
  - Acceso restringido a datos personales
```

---

### OBSERVACIÓN 4: Relación Contrato vs. Resolución 718/2018

#### Problema:
El RFQ-007 **NO deja claro** que Res. 718/2018 es obligatoria **PORQUE** el contrato (AT2 §3.3.4.5) la incorpora.

#### Texto Actual del RFQ:
- Línea 25: "conforme a **Resolución 718/2018**"
- Línea 160: "**Resolución 718/2018** (OBLIGATORIA)"

#### Lo que FALTA:
No explica **POR QUÉ** es obligatoria (incorporación vía AT2 §3.3.4.5).

#### Corrección Necesaria:
Agregar sección que explique la relación contractual:

**Recomendación:** Agregar después de "Normativa de referencia":
```markdown
### Aplicación de Resolución 718/2018

**Base Contractual:** El Apéndice Técnico 2 (AT2) §3.3.4.5 establece expresamente:

> *"Se debe cumplir con la Resolución 0718 del 22 de marzo de 2018 'por el cual se reglamentan los criterios técnicos para la instalación y operación de medios técnicos o tecnológicos para la detección de presuntas infracciones al tránsito y se dictan otras disposiciones'."*

**Por lo tanto, Resolución 718/2018 es OBLIGATORIA** para radares sancionatorios porque:
1. El contrato (AT2 §3.3.4.5) la incorpora expresamente
2. El contrato (AT3 Cap. 4.3) la incluye en normativa aplicable
3. Todas las obligaciones de Res. 718/2018 son parte de las obligaciones contractuales

**Obligaciones derivadas de Res. 718/2018:**
- Art. 4: Estudio técnico previo + Autorización previa MinTransporte
- Art. 5: Homologación ONAC
- Art. 7: Calibración anual obligatoria
- Art. 8: Señalización preventiva (500 m antes)
- Art. 10: Protección de datos personales
```

---

### OBSERVACIÓN 5: Cronograma de Certificaciones

#### Problema:
El RFQ menciona certificaciones pero **NO establece** el orden y dependencias.

#### Requisito Contractual (Res. 718/2018):
1. **PRIMERO:** Estudio técnico
2. **SEGUNDO:** Autorización previa MinTransporte (requiere estudio técnico)
3. **TERCERO:** Homologación ONAC (puede ser paralela)
4. **CUARTO:** Instalación (requiere autorización previa)
5. **QUINTO:** Calibración inicial (requiere instalación)

#### Corrección Necesaria:
Agregar sección de cronograma de certificaciones.

**Recomendación:** Agregar en sección de certificaciones:
```markdown
### Cronograma de Certificaciones (Orden de Ejecución)

**Secuencia obligatoria según Res. 718/2018:**

| Fase | Actividad | Requisito Previo | Plazo Estimado |
|:-----|:----------|:-----------------|:---------------|
| **1** | Estudio técnico siniestralidad y flujo | - | 4-6 semanas |
| **2** | Autorización previa MinTransporte | Estudio técnico | 8-12 semanas |
| **3** | Homologación ONAC | Equipos disponibles | 6-8 semanas (paralelo) |
| **4** | Instalación equipos | Autorización previa | 2-4 semanas |
| **5** | Calibración inicial ONAC | Instalación completa | 1-2 semanas |

**Nota:** El oferente debe incluir cronograma detallado considerando estos tiempos.
```

---

## 📊 TABLA DE OBSERVACIONES RESUMIDA

| # | Observación | Severidad | Ubicación RFQ | Acción Requerida |
|:--|:------------|:----------|:--------------|:-----------------|
| **1** | Estudio técnico no separado como requisito previo | 🔴 **ALTA** | Líneas 83-88 | Agregar sección específica |
| **2** | "Habilitación" vs "Autorización previa" | 🔴 **ALTA** | Líneas 46, 181 | Cambiar terminología |
| **3** | Protección datos personales Res. 718 Art. 10 | 🟡 **MEDIA** | Línea 163 | Agregar cumplimiento específico |
| **4** | No explica relación contrato-Res. 718/2018 | 🔴 **ALTA** | Sección normativa | Agregar sección explicativa |
| **5** | No hay cronograma de certificaciones | 🟡 **MEDIA** | Sección certificaciones | Agregar cronograma ordenado |

---

## ✅ RECOMENDACIONES DE CORRECCIÓN

### Corrección 1: Agregar sección "APLICACIÓN DE RESOLUCIÓN 718/2018"

**Ubicación:** Después de "Normativa de referencia" (después de línea 168)

**Contenido:**
```markdown
### Aplicación de Resolución 718/2018

**Base Contractual:** El Apéndice Técnico 2 (AT2) §3.3.4.5 establece expresamente:

> *"Se debe cumplir con la Resolución 0718 del 22 de marzo de 2018 'por el cual se reglamentan los criterios técnicos para la instalación y operación de medios técnicos o tecnológicos para la detección de presuntas infracciones al tránsito y se dictan otras disposiciones'."*

**Por lo tanto, Resolución 718/2018 es OBLIGATORIA** para radares sancionatorios porque el contrato la incorpora expresamente.

**Obligaciones específicas de Res. 718/2018 (además de señalización):**

| Artículo | Obligación | Requisito |
|:---------|:-----------|:----------|
| **Art. 4** | Estudio técnico previo | Demostrar siniestralidad, flujo vehicular, puntos críticos |
| **Art. 4** | Autorización previa MinTransporte | Obtener ANTES de instalación |
| **Art. 5** | Homologación ONAC | Certificación metrológica obligatoria |
| **Art. 7** | Calibración anual | Por laboratorio acreditado |
| **Art. 8** | Señalización preventiva | 500 m antes del dispositivo |
| **Art. 10** | Protección datos personales | Cumplimiento Ley 1581/2012, uso exclusivo control tránsito |
```

---

### Corrección 2: Modificar sección "UBICACIONES ESPECÍFICAS"

**Ubicación:** Líneas 81-99

**Cambio:** Separar claramente:
1. Estudio técnico previo (requisito Res. 718/2018 Art. 4)
2. Autorización previa (requisito Res. 718/2018 Art. 4)
3. Ubicaciones definitivas (resultado de estudio técnico)

---

### Corrección 3: Modificar "ESTRUCTURA DE COTIZACIÓN"

**Ubicación:** Línea 181

**Cambio:**
```markdown
| **RAD-006** | Autorización previa ante Ministerio de Transporte (Res. 718/2018 Art. 4) - **REQUISITO PREVIO A INSTALACIÓN** | 2 | UND | | | | |
```

**Agregar:**
```markdown
| **RAD-016** | Estudio técnico previo conforme Res. 718/2018 Art. 4 (siniestralidad, flujo vehicular, puntos críticos) | 1 | LOT | | | | |
```

---

### Corrección 4: Agregar en "SOFTWARE DE GESTIÓN"

**Ubicación:** Después de línea 144

**Agregar:**
```markdown
- **Protección datos personales (Res. 718/2018 Art. 10):** 
  - Cumplimiento Ley 1581/2012
  - Uso exclusivo para control de tránsito
  - Protección y confidencialidad de imágenes
  - Acceso restringido a datos personales
  - Consentimiento informado (vía señalización)
```

---

## 📋 RESUMEN EJECUTIVO

### Problemas Identificados:

1. ✅ **Falta claridad** en cómo Res. 718/2018 se aplica (vía contrato AT2 §3.3.4.5)
2. ✅ **Estudio técnico previo** no está separado como requisito obligatorio de Res. 718/2018
3. ✅ **"Habilitación" vs "Autorización previa"** - término incorrecto
4. ✅ **Protección datos personales** no menciona cumplimiento específico Res. 718/2018 Art. 10
5. ✅ **Falta cronograma** de certificaciones con orden y dependencias

### Impacto:

- **Alto riesgo contractual:** Si no se cumplen requisitos previos de Res. 718/2018, la instalación puede ser rechazada
- **Confusión en ofertas:** Los oferentes pueden no incluir costos de estudio técnico previo
- **Retrasos en proyecto:** Sin autorización previa, no se puede instalar

---

## ✅ RECOMENDACIÓN FINAL

**AGREGAR** al RFQ-007:
1. Sección "Aplicación de Resolución 718/2018" explicando relación contractual
2. Separación clara de estudio técnico previo como requisito obligatorio
3. Cambio de "habilitación" por "autorización previa"
4. Cumplimiento específico de Res. 718/2018 Art. 10 en protección de datos
5. Cronograma de certificaciones con orden y dependencias

---

**Fin del documento – Observaciones Validación Contractual RFQ-007 v1.0**

