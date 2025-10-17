# INFORME DE DIFERENCIAS Y JUSTIFICACIONES TÉCNICAS
## Para Revisión de Especialista Técnico
### Análisis: Mínimos Contractuales vs. Propuesta de Ingeniería

**Fecha:** 18/10/2025  
**Tipo:** Informe Técnico para Revisión  
**Destinatario:** Especialista Técnico / Gerente de Ingeniería  
**Responsable:** Administrador Contractual EPC  
**Versión:** 1.0  
**Estado:** 🔴 Revisión Requerida

---

## 🎯 PROPÓSITO DEL INFORME

Este informe documenta las **diferencias** entre:
- ✅ Lo que el **contrato exige como mínimo**
- ⚠️ Lo que la **ingeniería propone** (T01-T04)
- ⚠️ Lo que el **presupuesto Excel** sugiere

**Objetivo:** Que el especialista técnico **revise y apruebe** las justificaciones técnicas para las cantidades propuestas que exceden los mínimos contractuales.

---

## 📊 TABLA MAESTRA DE DIFERENCIAS

| # | Sistema/Equipo | Mín. Contractual | Propuesto T03/T04 | Excel Ref. | Diferencia vs Contrato | Impacto CAPEX | Revisión |
|:--|:---------------|:-----------------|:------------------|:-----------|:-----------------------|:--------------|:---------|
| 1 | Estaciones de Peaje | 2 | 2 | 2 | 0 | $0 | ✅ OK |
| 2 | CCO | 1 | 1 | 1 | 0 | $0 | ✅ OK |
| 3 | **Postes SOS** | **87** | 30-50 | 88 | **-37 a -57** | **-$629K a -$969K** | 🔴 **ERROR T03** |
| 4 | PMV | 4 | 16-18 | 29 | +12-14 | +$1.8M-$2.1M | ⏳ Revisar |
| 5 | CCTV | 2 | 108-120 | 121 | +106-118 | +$0.4M-$0.5M | ⏳ Revisar |
| 6 | **Áreas de Servicio** | **1** | **14** | - | **+13** | **+$6.4M** | ⏳ **Decisión** |
| 7 | **Estaciones de Pesaje** | **1** | **2-3** | 2-3 | **+1-2** | **+$1.2-1.8M** | ⏳ **Decisión** |
| 8 | Intersecciones a Desnivel | 6-7 | 6-8 | - | 0-1 | $0 | ✅ OK |
| 9 | Detectores de Gálibo | "Antes puentes/peajes" | 8-12 | 19 | Variable | Variable | ⏳ Contar puentes |
| 10 | Estaciones Meteorológicas | "Según IDEAM" | 6-8 | 11 | Variable | Variable | ⏳ Normativa |

**TOTAL DIFERENCIA:** +$9.4M a +$10.9M USD **NO contractualmente obligatorios**

---

## 🔴 DIFERENCIA #1: POSTES SOS (CRÍTICO - ERROR DE INGENIERÍA)

### Datos Contractuales:

**AT1, Capítulo 3 - Sistemas de comunicación y postes SOS:**
> _"El sistema de telefonía por postes SOS permitirá la comunicación gratuita con el Centro de Control de Operación más cercano, a lo largo de todo el Corredor del Proyecto. El sistema debe garantizar la comunicación de varios usuarios a la vez, a través de los postes y la ubicación de los sitios desde los cuales se están realizando las llamadas. **Estos postes estarán a una distancia máxima de tres (3) kilómetros entre sí.** El sistema debe tener capacidad para atender de forma inmediata y simultánea a todos los usuarios que lo precisen."_

**Cálculo contractual:**
- Longitud corredor: 259.6 km
- Distancia máxima: 3 km
- **Cantidad obligatoria:** 259.6 ÷ 3 = **87 postes** (alternados en bermas)

### Cantidades Documentadas:

| Fuente | Cantidad | Diferencia vs Contractual | Estado |
|:-------|:---------|:--------------------------|:-------|
| **Contrato AT1** | 87 postes | Baseline | ✅ Referencia |
| **T03 ITS (actual)** | 30-50 postes | **-37 a -57 postes (-43% a -66%)** | 🔴 **ERROR** |
| **T04 (no especifica SOS)** | - | - | - |
| **Presupuesto Excel** | 88 postes | +1 (+1%) | ✅ CORRECTO |

### Justificación Técnica:

❌ **NO HAY JUSTIFICACIÓN** para instalar menos de 87 postes

**El contrato es CLARO:**
- "Distancia **máxima** de 3 km" = Obligación contractual
- No es una sugerencia o estimación

### Impacto Financiero:

**Si solo se instalan 50 postes (máximo de T03):**
- Faltantes: 87 - 50 = 37 postes
- Costo unitario estimado: $17,000 USD/poste
- **Déficit:** 37 x $17,000 = **$629,000 USD**
- **Incumplimiento contractual:** ✅ SÍ

**Si solo se instalan 30 postes (mínimo de T03):**
- Faltantes: 87 - 30 = 57 postes
- **Déficit:** 57 x $17,000 = **$969,000 USD**
- **Incumplimiento contractual:** ✅ SÍ GRAVE

### Decisión Requerida:

🔴 **ACCIÓN INMEDIATA OBLIGATORIA:**
- Ajustar T03 ITS: "30-50 postes" → "87 postes SOS"
- Ajustar costo estimado SOS: ~$1,500,000 USD
- **NO es negociable** (contractual)

---

## ⚠️ DIFERENCIA #2: ÁREAS DE SERVICIO (DECISIÓN COMERCIAL)

### Datos Contractuales:

**AT1, Capítulo 3 - Instalaciones:**
> _"En aras de aprovechar la infraestructura existente en el corredor concesionado, el Concesionario deberá **adecuar las instalaciones construidas en el área de servicio La Lizama PK 4+300 RN 4513**."_

**Obligación contractual:**
- **Mínimo:** Adecuar 1 área existente (La Lizama)
- **Adicionales:** NO especificadas (a criterio del concesionario)

### Cantidades Documentadas:

| Fuente | Cantidad | Diferencia vs Contractual | Costo |
|:-------|:---------|:--------------------------|:------|
| **Contrato AT1** | 1 área (adecuar existente) | Baseline | $300K (adecuación) |
| **T01 Áreas Servicio** | 6 áreas (3 Tipo A + 3 Tipo B) | +5 áreas nuevas | +$6.1M USD |
| **T03 (varios)** | 14 áreas mencionadas | +13 áreas nuevas | +$6.4M USD |

**Discrepancia interna:** T01 dice 6, otros documentos dicen 14 → **Inconsistencia**

### Justificación Técnica Propuesta:

#### Criterio: 1 área cada 20 km (estándar internacional)

**Aplicado a 259.6 km:**
- 259.6 ÷ 20 = **13 áreas**
- +1 existente (La Lizama) = **14 áreas total**

**Distribución sugerida:**
- 3 Tipo A (completas): PK 50, PK 130, PK 210
- 11 Tipo B (intermedias): Cada 20 km aproximadamente

**Beneficios:**
- ✅ Confort de usuarios en viajes largos (259.6 km)
- ✅ Bases operativas para emergencias
- ✅ Servicios sanitarios cada ~20 km
- ✅ Potencial de ingresos (concesión de restaurantes)

**Riesgos:**
- ⚠️ CAPEX: +$6.4M USD NO contractuales
- ⚠️ OPEX: +$860K USD/año (personal 24/7)
- ⚠️ ROI incierto (depende de concesión restaurantes)

### Decisión Requerida del Especialista:

**OPCIÓN A: Solo Contractual (1 área)**
- CAPEX: $300K (adecuación)
- OPEX: $65K/año
- Servicio: Básico
- Cumplimiento: 100%

**OPCIÓN B: Propuesta Técnica (6 áreas - según T01)**
- CAPEX: $6.4M USD
- OPEX: $380K/año
- Servicio: Bueno
- Cobertura: ~40 km entre áreas

**OPCIÓN C: Propuesta Completa (14 áreas - según otros docs)**
- CAPEX: $6.7M USD
- OPEX: $860K/año
- Servicio: Excelente
- Cobertura: ~20 km entre áreas

**❓ PREGUNTA AL ESPECIALISTA:**
> ¿Qué opción recomienda considerando:
> 1. Nivel de servicio deseado
> 2. Modelo financiero de la concesión
> 3. Competitividad vs otras concesiones
> 4. Potencial de ingresos por concesión de restaurantes?

---

## ⚠️ DIFERENCIA #3: ESTACIONES DE PESAJE (DECISIÓN TÉCNICA)

### Datos Contractuales:

**AT1, Capítulo 3 - Estaciones de Pesaje:**
> _"El Concesionario como mínimo deberá **adecuar, operar y mantener la estación de pesaje existente en el PR4+0100 de la Ruta Nacional 4513**, de modo que funcione para ambos sentidos del flujo vehicular."_

**Obligación contractual:**
- **Mínimo:** 1 estación (adecuar existente en PK 4+100 RN 4513)
- **Adicionales:** NO especificadas

### Cantidades Documentadas:

| Fuente | Cantidad | Ubicación | Costo |
|:-------|:---------|:----------|:------|
| **Contrato AT1** | 1 (adecuar) | PK 4+100 RN 4513 | $500K (adecuación) |
| **T01/T03 Pesaje WIM** | 2-3 estaciones fijas | PK 80, PK 180 (estimados) | $2.5M-$3.5M |
| **Excel** | 2-3 (Norte + Sur) | No especificado | Variable |

### Justificación Técnica Propuesta:

#### Criterio: Cobertura de corredor largo (259.6 km)

**Con 1 estación (contractual):**
- Ubicación: PK 4+100 (inicio del corredor)
- Cobertura: Solo primeros 50-80 km
- **Problema:** Los últimos 180 km sin control de peso
- **Evasión:** Fácil (evitar la única estación)

**Con 2-3 estaciones (propuesta):**
- Estación 1: PK 4+100 (existente, adecuar)
- Estación 2: PK 80-90 (nueva, zona intermedia)
- Estación 3: PK 180-190 (nueva, zona norte) - Opcional

**Beneficios:**
- ✅ Mejor cobertura (espaciadas cada 80-90 km)
- ✅ Menor evasión (difícil evitar 2-3 estaciones)
- ✅ Cumplimiento de normativa de pesos (NTC 5375)
- ✅ Protección del pavimento (reducción de daños por sobrepeso)

**Costo-Beneficio:**
- CAPEX adicional: +$2M USD (2 estaciones nuevas)
- OPEX adicional: +$400K/año (personal 24/7, mantenimiento)
- **Ahorro en reparación de pavimento:** Estimado $500K-$1M/año
- **ROI:** Positivo en 2-4 años

### Decisión Requerida del Especialista:

**❓ PREGUNTA AL ESPECIALISTA:**
> ¿Instalar 1 estación (contractual) o 2-3 estaciones (propuesta)?
> 
> Considerando:
> 1. Corredor de 259.6 km es muy largo para 1 sola estación
> 2. Evasión es fácil con 1 estación
> 3. CAPEX adicional: $2M USD
> 4. ROI positivo por protección de pavimento

---

## ⏳ DIFERENCIA #4: PMV ADICIONALES (JUSTIFICACIÓN TÉCNICA)

### Datos Contractuales:

**AT2, Sección 3.3.5.1:**
> _"PMV: **Mínimo 2 por área bidireccional, 1 por área unidireccional**"_

**Obligación contractual:**
- Peajes bidireccionales: 2 (Zambito + Aguas Negras)
- **Mínimo:** 2 x 2 = **4 PMV**

### Cantidades Documentadas:

| Fuente | Cantidad | Diferencia | Costo Adicional |
|:-------|:---------|:-----------|:----------------|
| **Contrato AT2** | 4 PMV | Baseline | $0 |
| **T03 ITS** | 16-18 PMV | +12-14 PMV | +$1.8M-$2.1M |
| **Excel** | 29 PMV | +25 PMV | +$3.75M |

### Justificación Técnica Propuesta:

#### Distribución de 16-18 PMV:

| Ubicación | Cantidad | Justificación Técnica | Contractual |
|:----------|:---------|:----------------------|:------------|
| **Peajes** | 4 | 2 peajes x 2 PMV | ✅ Obligatorio AT2 |
| **Pre-intercambiadores** | 6 | 6 intersecciones a desnivel x 1 PMV | ✅ Justificado técnicamente |
| **Zonas de reducción de velocidad** | 4 | Aproximación a zonas urbanas | ⏳ A validar |
| **Zonas de advertencia climática** | 2-4 | Zonas de niebla, derrumbes | ⏳ A validar |
| **TOTAL** | **16-18 PMV** | - | - |

**Beneficios de los 12-14 PMV adicionales:**
- ✅ Información oportuna antes de intercambiadores (seguridad)
- ✅ Advertencias de condiciones climáticas adversas
- ✅ Gestión de incidentes (desvíos, cierres)
- ✅ Reducción de accidentalidad (información preventiva)

**Costo-Beneficio:**
- CAPEX adicional: +$1.8M-$2.1M USD (12-14 PMV)
- Costo por PMV: ~$150K USD
- **Beneficio:** Reducción estimada de accidentalidad 10-15%
- **ROI:** Difícil de cuantificar, pero mejora seguridad vial

### Decisión Requerida del Especialista:

**❓ PREGUNTA AL ESPECIALISTA:**
> ¿Aprobar 16-18 PMV (recomendado) o solo 4 PMV (mínimo contractual)?
> 
> **Opción A:** 4 PMV (solo peajes) = $0 adicional, servicio básico
> **Opción B:** 16-18 PMV (peajes + intersecciones + zonas críticas) = +$1.8-2.1M, servicio alto
> **Opción C:** 29 PMV (Excel, exagerado) = +$3.75M, servicio excesivo

**Recomendación técnica:** ✅ Opción B (16-18 PMV)

---

## ⏳ DIFERENCIA #5: CÁMARAS CCTV ADICIONALES

### Datos Contractuales:

**AT2, Sección 3.3.5.1:**
> _"CCTV (circuito cerrado de TV):
> - **Cámara panorámica (mínimo 1 por peaje)**
> - CCTV adicional en: Áreas de Servicio
> - CCTV adicional en: Zonas de seguridad/accidentalidad (definidas con Interventoría + Policía)"_

**Obligación contractual:**
- **Mínimo:** 2 cámaras (1 por peaje)
- **Adicionales:** "En áreas de servicio y zonas de accidentalidad" (sin cantidad específica)

### Cantidades Documentadas:

| Fuente | Cantidad | Diferencia | Costo Adicional |
|:-------|:---------|:-----------|:----------------|
| **Contrato AT2** | 2 cámaras | Baseline | $0 |
| **T04 CCTV** | 120-150 | +118-148 | +$0.5M-$0.6M |
| **Excel** | 121 | +119 | +$0.5M |

### Justificación Técnica Propuesta:

#### Escenario A: Solo 1 Área de Servicio (Contractual)

| Ubicación | Cantidad | Justificación |
|:----------|:---------|:--------------|
| Peajes (2) | 12 | 2 x 6 cámaras (cobertura completa) |
| CCO (1) | 8 | Perímetro + accesos + sala control |
| Intersecciones a desnivel (6) | 24 | 6 x 4 cámaras |
| Área de Servicio La Lizama (1) | 4 | Perímetro + accesos |
| Estación Pesaje (1) | 6 | Báscula + accesos |
| Zonas de accidentalidad (20 estimadas) | 40 | 20 x 2 cámaras (a definir con Policía) |
| **TOTAL ESCENARIO A** | **94 cámaras** | - |

#### Escenario B: 14 Áreas de Servicio (Propuesta)

| Ubicación | Cantidad | Justificación |
|:----------|:---------|:--------------|
| Subtotal Escenario A | 94 | Ver arriba |
| Áreas de Servicio adicionales (13) | 52 | 13 x 4 cámaras |
| **TOTAL ESCENARIO B** | **146 cámaras** | - |

#### Escenario C: Conservador (Propuesta T04)

| Cantidades | Valor |
|:-----------|:------|
| T04 propone | 120-150 cámaras |
| Escenario B calcula | 146 cámaras |
| **Conclusión** | ✅ T04 es **consistente** con 14 áreas |

### Decisión Requerida del Especialista:

**La cantidad de CCTV depende de la decisión sobre áreas de servicio:**

**❓ PREGUNTA AL ESPECIALISTA:**
> Si se decide construir 14 áreas de servicio:
> - ✅ Aprobar 120-150 cámaras CCTV (justificado)
> 
> Si se decide solo adecuar 1 área (contractual):
> - ⚠️ Reducir a ~94 cámaras
> - Ahorro: $100K-$200K USD

---

## ⏳ DIFERENCIA #6: OTROS EQUIPOS (JUSTIFICACIONES)

### Detectores de Gálibo (Control de Altura)

**AT2, Sección 3.3.5.1:**
> _"Detectores de altura: tecnología láser, antes de peajes, puentes con restricción, túneles, intersecciones a desnivel"_

**Obligación:** Antes de estructuras con restricción de altura

**Pendiente:** Contar puentes con restricción de altura en AT1

| Propuesta | Cantidad | Justificación | Decisión |
|:----------|:---------|:--------------|:---------|
| **T03 ITS** | 8-12 detectores | Estimación (2 peajes + 6 intersecciones) | ⏳ Contar puentes en AT1 |
| **Excel** | 19 detectores | No justificado | ⚠️ Parece exagerado |

**Recomendación:** ✅ Usar 8-12 de T03 (conservador)

---

### Estaciones Meteorológicas

**AT2, Sección 3.3.5.1:**
> _"Equipos meteorológicos (según Resolución 546/2018 + IDEAM)"_

**Obligación:** Según normativa externa (IDEAM)

**Resolución 546/2018 (IDEAM)** requiere estaciones meteorológicas automáticas en corredores viales.

| Propuesta | Cantidad | Justificación | Decisión |
|:----------|:---------|:--------------|:---------|
| **T03 ITS** | 6-8 estaciones | 1 cada 35-40 km (criterio conservador) | ✅ Razonable |
| **Excel** | 11 estaciones | 1 cada 24 km | ⏳ A validar con IDEAM |

**Recomendación:** ✅ Usar 6-8 de T03, validar con normativa IDEAM

---

### Radares de Velocidad / ANPR (Aforo)

**AT2 menciona existencia, NO especifica cantidad**

| Propuesta | Cantidad | Justificación | Decisión |
|:----------|:---------|:--------------|:---------|
| **T03 ITS - Radares** | 15-20 | Estimación técnica (puntos críticos) | ⏳ A criterio técnico |
| **T03 ITS - ANPR** | 10-15 | Estimación técnica (aforo + control) | ⏳ A criterio técnico |
| **Excel - ANPR** | 38 | No justificado | ⚠️ Exagerado |

**Recomendación:** ✅ Usar cantidades de T03 (conservadoras)

---

## 💰 RESUMEN FINANCIERO DE DECISIONES

### Matriz de Decisiones y Costos:

| # | Decisión | Opción Contractual | Opción Propuesta | Diferencia | Decisor |
|:--|:---------|:-------------------|:-----------------|:-----------|:--------|
| 1 | Postes SOS | 87 (obligatorio) | 87 (ajustar T03) | $0 | ❌ NO negociable |
| 2 | Áreas Servicio | 1 ($300K) | 14 ($6.7M) | **+$6.4M** | ⏳ Gerencia |
| 3 | Estaciones Pesaje | 1 ($500K) | 2-3 ($2.5M-$3.5M) | **+$2M-$3M** | ⏳ Especialista |
| 4 | PMV | 4 ($600K) | 16-18 ($2.4M-$2.7M) | **+$1.8M-$2.1M** | ⏳ Especialista |
| 5 | CCTV | 2 (incluido) | 94-146 (depende áreas) | **+$0.4M-$0.6M** | ⏳ Depende decisión #2 |

**TOTAL INVERSIÓN ADICIONAL:** +$10.6M a +$12.1M USD **NO contractuales**

---

## 🎯 MATRIZ DE REVISIÓN PARA ESPECIALISTA

### Formato de Respuesta Sugerido:

**Por favor revisar y aprobar/rechazar cada diferencia:**

| # | Sistema | Cant. Propuesta | ¿Aprobar? | Observaciones del Especialista |
|:--|:--------|:----------------|:----------|:-------------------------------|
| 1 | Postes SOS | **87** (ajustar) | ✅ ☐ / ❌ ☐ | ________________________ |
| 2 | Áreas Servicio | 1 ☐ / 6 ☐ / 14 ☐ | Opción: ___ | ________________________ |
| 3 | Estaciones Pesaje | 1 ☐ / 2 ☐ / 3 ☐ | Opción: ___ | ________________________ |
| 4 | PMV | 4 ☐ / 16-18 ☐ | Opción: ___ | ________________________ |
| 5 | CCTV | 94 ☐ / 120 ☐ / 150 ☐ | Opción: ___ | ________________________ |
| 6 | Gálibo | 8-12 ☐ | ✅ ☐ / ❌ ☐ | ________________________ |
| 7 | Meteo | 6-8 ☐ | ✅ ☐ / ❌ ☐ | ________________________ |

---

## 📋 DOCUMENTOS DE REFERENCIA

### Documentos Contractuales:
1. [AT1 - Alcance del Proyecto](../II.%20Apendices%20Tecnicos/AT1_Alcance_Proyecto_v1.0.md) - Infraestructura obligatoria
2. [AT2 - Operación y Mantenimiento](../II.%20Apendices%20Tecnicos/AT2_Operacion_Mantenimiento_v1.0.md) - Requisitos de equipos ITS
3. [AT3 - Especificaciones Generales](../II.%20Apendices%20Tecnicos/AT3_Especificaciones_Generales_v1.0.md) - Normativa técnica
4. [AT4 - Indicadores](../II.%20Apendices%20Tecnicos/AT4_Indicadores_v1.0.md) - KPIs y penalizaciones

### Documentos de Ingeniería:
1. [T01 ITS](../III.%20Ingenieria%20Conceptual/24_T01_Ficha_Sistema_ITS_v1.0.md)
2. [T03 ITS](../III.%20Ingenieria%20Conceptual/53_T03_Arquitectura_Conceptual_ITS_v1.0.md) - 🔴 **Requiere ajuste SOS**
3. [T01 Áreas Servicio](../III.%20Ingenieria%20Conceptual/36_T01_Ficha_Sistema_Areas_Servicio_v1.0.md)
4. [T01 Pesaje WIM](../III.%20Ingenieria%20Conceptual/39_T01_Ficha_Sistema_Pesaje_WIM_v1.0.md)
5. [T04 CCTV](../IV.%20Ingenieria%20Basica/47_T04_Especificacion_Camaras_CCTV_v1.0.md)

### Documentos de Validación:
1. [00_VALIDACION_CONTRACTUAL_vs_PRESUPUESTO](00_VALIDACION_CONTRACTUAL_vs_PRESUPUESTO_v1.0.md)
2. [01_MATRIZ_JUSTIFICACION_CONTRACTUAL](01_MATRIZ_JUSTIFICACION_CONTRACTUAL_EQUIPOS_v1.0.md)
3. [02_RESUMEN_VALIDACION_FINAL](02_RESUMEN_VALIDACION_CONTRACTUAL_FINAL_v1.0.md)

---

## 🎯 RECOMENDACIONES TÉCNICAS

### Recomendación 1: Obligatorios (Sin Decisión)

✅ **Implementar SIN excepción:**
- Postes SOS: **87** (ajustar T03 de 30-50 a 87)
- Peajes: 2
- CCO: 1
- PMV en peajes: 4
- CCTV en peajes: 2 mínimo

### Recomendación 2: Propuesta Técnica Conservadora

✅ **Recomendado técnicamente:**
- PMV: 16-18 (no 29 del Excel)
- Estaciones Pesaje: 2-3 (mejor cobertura)
- Gálibo: 8-12 (no 19 del Excel)
- Meteorológicas: 6-8 (no 11 del Excel)

### Recomendación 3: Decisión Comercial

⏳ **Requiere evaluación financiera/comercial:**
- Áreas de Servicio: 1 vs 6 vs 14 (impacto: $0 vs $6M vs $6.7M)
- Análisis ROI de restaurantes/tiendas
- Modelo de negocio de concesión

---

## 📊 ESCENARIOS PROPUESTOS

### Escenario MÍNIMO (Solo Contractual)

| Sistema | Cantidad | CAPEX |
|:--------|:---------|:------|
| Equipamiento ITS básico | Mínimos | $8.4M USD |
| Fibra óptica básica | 260 km | $5M USD |
| Iluminación mínima | 200 luminarias | $600K USD |
| **TOTAL** | - | **~$14M USD** |

**Cumplimiento:** 100% contractual  
**Nivel de servicio:** Básico  
**Competitividad:** Baja

---

### Escenario CONSERVADOR (Recomendado) ⭐

| Sistema | Cantidad | CAPEX |
|:--------|:---------|:------|
| Equipamiento ITS | Propuesta T03/T04 | $12M USD |
| Fibra óptica completa | 280 km | $15M USD |
| Iluminación completa | 650 luminarias | $1.8M USD |
| Señalización completa | 259.6 km | $7.8M USD |
| Áreas de Servicio | **6 áreas** (3 A + 3 B) | $6.4M USD |
| Estaciones Pesaje | 2-3 | $2.5M USD |
| **TOTAL** | - | **~$46M USD** |

**Cumplimiento:** 100% contractual + extras justificados  
**Nivel de servicio:** Alto  
**Competitividad:** Excelente

---

### Escenario COMPLETO (Presupuesto Excel)

| Sistema | Cantidad | CAPEX |
|:--------|:---------|:------|
| Según Excel | 306 equipos | $69.3B COP (~$17M USD) |
| **TOTAL** | - | **Variable** |

**Problemática:** Cantidades NO validadas (ej: 29 PMV exagerado)  
**Recomendación:** ❌ NO usar sin validar cada cantidad

---

## ✅ CONCLUSIONES Y ACCIONES

### Conclusiones:

1. ✅ **Validación contractual completada**
2. 🔴 **T03 ITS tiene error crítico** (postes SOS subestimados 43-66%)
3. ⏳ **Propuesta de ingeniería incluye $36.6M NO obligatorios**
4. ✅ **Cantidades de T03/T04 son técnicamente razonables** (excepto SOS)
5. ❌ **Presupuesto Excel tiene cantidades exageradas** (29 PMV, 38 ANPR)

### Acciones Inmediatas:

- [ ] 🔴 **Especialista revisa y aprueba** este informe
- [ ] 🔴 **Gerencia decide** sobre áreas de servicio (1 vs 6 vs 14)
- [ ] 🔴 **Ajustar T03 ITS:** Postes SOS 30-50 → 87
- [ ] ⏳ **Aclarar T01 Áreas Servicio:** 1 contractual + 5-13 propuestas
- [ ] ⏳ **Actualizar estimaciones** de costos con decisiones tomadas

---

## 📝 FIRMA DE REVISIÓN

**Especialista Técnico:**

Nombre: ________________________  
Fecha: ________________________  
Firma: ________________________  

**Decisiones:**
- Áreas de Servicio: 1 ☐ / 6 ☐ / 14 ☐
- Estaciones Pesaje: 1 ☐ / 2 ☐ / 3 ☐
- PMV: 4 ☐ / 16-18 ☐ / 29 ☐
- CCTV: 94 ☐ / 120 ☐ / 150 ☐

**Observaciones:**
_________________________________________________________
_________________________________________________________
_________________________________________________________

---

## 10. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 18/10/2025 | Administrador Contractual EPC | Informe inicial de diferencias y justificaciones para revisión |

---

**Fin del documento - Informe de Diferencias y Justificaciones Técnicas**  
*Para revisión y aprobación de Especialista Técnico*  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*

