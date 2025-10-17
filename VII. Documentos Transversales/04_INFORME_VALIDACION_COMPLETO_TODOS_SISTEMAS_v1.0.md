# INFORME DE VALIDACIÓN CONTRACTUAL COMPLETO
## Análisis Exhaustivo: Todos los Sistemas del Presupuesto Excel vs. Contrato
### Para Revisión de Especialistas por Disciplina

**Fecha:** 18/10/2025  
**Tipo:** Informe de Validación Técnico-Contractual Exhaustivo  
**Destinatario:** Todos los Especialistas Técnicos (ITS, Civil, Eléctrico, Ambiental, Social, Predial)  
**Responsable:** Administrador Contractual EPC  
**Versión:** 1.0  
**Estado:** 🔴 Revisión Crítica Requerida

---

## 🎯 PROPÓSITO Y ALCANCE

Este informe valida **TODOS los 14 sistemas** identificados en el presupuesto Excel ($69.3B COP) contra el contrato y sus apéndices técnicos.

**Sistemas a validar:**
1. Fibra Óptica y Comunicaciones ($16.3B COP - 30.8%)
2. Panel de Mensajería Variable - PMV (29 unidades - $10.9B - 20.6%)
3. Sistema de Telefonía de Emergencia - SOS (88 postes - $6.8B - 12.8%)
4. Centro de Control Operacional - CCO ($3.9B - 7.4%)
5. Sistema de Peaje ($3.4B - 6.3%)
6. Básculas Dinámicas en Zona de Peaje ($3.2B - 6.0%)
7. Pesaje - Básculas Norte y Sur ($3.3B - 6.2%)
8. Sistema de Control de Altura - Gálibo (19 unidades - $2.4B - 4.6%)
9. Sistema de CCTV (121 cámaras - $1.9B - 3.6%)
10. Radio Comunicaciones ($1.8B - 3.4%)
11. Estación Toma de Datos - ETD/ANPR (38 equipos - $1.7B - 3.2%)
12. Estación Meteorológica (11 estaciones - $0.5B - 0.9%)
13. Paso Elevado Fibra Óptica ($0.08B - 0.2%)
14. Control de Accesos en Peaje ($0.08B - 0.1%)

**TOTAL PRESUPUESTO EXCEL:** $69.301.059.295 COP

---

## 📊 METODOLOGÍA DE VALIDACIÓN

```
Para CADA sistema:
1. ¿Qué dice el CONTRATO? (AT1, AT2, AT3, AT4)
2. ¿Cuál es el MÍNIMO obligatorio?
3. ¿Cuánto propone el EXCEL?
4. ¿Cuánto propone la INGENIERÍA (T03/T04)?
5. ¿Cuál es la DIFERENCIA?
6. ¿Hay JUSTIFICACIÓN TÉCNICA?
7. ¿Recomendación?
```

---

## VALIDACIÓN SISTEMA POR SISTEMA

---

## 1. FIBRA ÓPTICA Y COMUNICACIONES

### 📋 Datos Contractuales:

**AT1, Cap. 3 - Sistemas de comunicación:**
> _"El Concesionario deberá proveer al sistema de comunicación de todos los elementos y equipos necesarios para el cumplimiento adecuado de sus funciones. [...] el Concesionario tenga capacidad de intercomunicarse de forma inmediata y permanente dentro del Proyecto, esto es entre el(los) Centro(s) de Control de Operación, Áreas de Servicio, las Estaciones de Peaje, y demás instalaciones destinadas a la Operación del Proyecto"_

**Obligación:** Sistema de comunicaciones completo (NO especifica km de fibra)

### 📊 Cantidades Comparadas:

| Fuente | Cantidad | Costo | Justificación |
|:-------|:---------|:------|:--------------|
| **Contrato** | No especifica km | - | "Sistema completo de comunicaciones" |
| **Excel** | Implícito en $16.3B COP (30.8%) | $16.324.858.316 COP | No detalla km |
| **T04 Fibra Óptica** | 280 km | $15.102.800 USD (~$60B COP) | Anillo redundante 260 km + derivaciones 20 km |
| **T03 Telecomunicaciones** | 280 km aprox. | Variable | Topología de anillo |

### 🔍 Análisis Técnico:

**Cálculo de necesidad real:**
- Corredor principal: 259.6 km
- Anillo redundante: 2 x 259.6 = 519.2 km (si es anillo doble)
- Derivaciones a equipos ITS: ~20-30 km
- **Total estimado:** 280-300 km (T04) vs 520 km (si anillo completo)

**Topología contractual:** No especificada (puede ser lineal o anillo)

### ✅ Justificación Técnica:

**Topología Lineal con Redundancia Selectiva (280 km):**
- Troncal principal: 260 km
- Derivaciones: 20 km
- Redundancia en puntos críticos (CCO, peajes)
- **Costo:** $15M USD

**vs Topología Anillo Completo (520 km):**
- Doble recorrido completo
- Redundancia total
- **Costo:** $25-30M USD

### 🎯 Decisión Requerida - Especialista de Telecomunicaciones:

**❓ PREGUNTA:**
> ¿Aprobar topología lineal con redundancia selectiva (280 km, $15M) o anillo completo redundante (520 km, $25-30M)?
> 
> **Opción A:** 280 km (T04) = $15M, redundancia selectiva
> **Opción B:** 520 km (anillo) = $25-30M, redundancia total
> **Presupuesto Excel:** $16.3B COP ≈ $4M USD (??) **Parece SUBESTIMADO**

**⚠️ ALERTA:** Excel tiene $16.3B COP pero T04 estima $15M USD (~$60B COP) → **Discrepancia 4x**

**Decisión:** ☐ 280 km ☐ 520 km ☐ Otra: _______ km

---

## 2. PANEL DE MENSAJERÍA VARIABLE (PMV)

### 📋 Datos Contractuales:

**AT2, Sección 3.3.5.1:**
> _"PMV: **Mínimo 2 por área bidireccional, 1 por área unidireccional**"_

**Obligación mínima:**
- 2 peajes bidireccionales = 2 x 2 = **4 PMV mínimo**

### 📊 Cantidades Comparadas:

| Fuente | Cantidad | Diferencia vs Mínimo | Costo |
|:-------|:---------|:---------------------|:------|
| **Contrato AT2** | 4 PMV | Baseline | $600K (4 x $150K) |
| **Excel** | 29 PMV | **+25 PMV (+625%)** | $10.900.277.832 COP (20.6%!) |
| **T03 ITS** | 12-18 PMV | +8-14 PMV (+200-350%) | $1.8M-$2.7M |

### 🔍 Análisis Técnico:

**Distribución propuesta T03 (16-18 PMV):**
- Peajes: 4 (obligatorio)
- Pre-intercambiadores: 6 (antes de 6 intersecciones a desnivel)
- Zonas urbanas: 4 (reducción velocidad)
- Zonas climáticas: 2-4 (niebla, derrumbes)
- **TOTAL:** 16-18 PMV

**Distribución Excel (29 PMV):**
- No especificado en detalle
- **+11 PMV adicionales** vs T03 (NO justificados)

### ✅ Justificación Técnica:

**Beneficios de 16-18 PMV (vs 4 mínimo):**
- ✅ Información pre-intercambiador (seguridad)
- ✅ Advertencias climáticas (niebla zona Puerto Berrío)
- ✅ Gestión de incidentes en tiempo real
- ✅ Reducción velocidad en zonas urbanas
- Costo adicional: +$1.8M-$2.1M

**¿Por qué NO 29 PMV?**
- ❌ 20.6% del presupuesto total en PMV (exagerado)
- ❌ No hay justificación técnica para 11 PMV adicionales
- ❌ Costo adicional: +$3.75M vs 16-18 PMV

### 🎯 Decisión Requerida - Especialista ITS:

**❓ PREGUNTA:**
> ¿Cuántos PMV aprobar?
> 
> **Opción A:** 4 PMV (solo peajes, contractual) = $600K
> **Opción B:** 16-18 PMV (peajes + intersecciones + zonas críticas) = $2.4M-$2.7M ⭐ Recomendado
> **Opción C:** 29 PMV (Excel, exagerado) = $4.35M

**Decisión:** ☐ 4 PMV ☐ 16-18 PMV ☐ 29 PMV ☐ Otra: _______ 

---

## 3. SISTEMA DE TELEFONÍA DE EMERGENCIA (SOS)

### 📋 Datos Contractuales:

**AT1, Cap. 3:**
> _"Estos postes estarán a una **distancia máxima de tres (3) kilómetros** entre sí."_

**Obligación contractual:** 259.6 km ÷ 3 km = **87 postes**

### 📊 Cantidades Comparadas:

| Fuente | Cantidad | Diferencia vs Contractual | Estado |
|:-------|:---------|:--------------------------|:-------|
| **Contrato AT1** | 87 postes | Baseline (obligatorio) | ✅ Referencia |
| **Excel** | 88 postes | +1 (+1%) | ✅ CORRECTO |
| **T03 ITS** | 30-50 postes | **-37 a -57 (-43% a -66%)** | 🔴 **ERROR GRAVE** |

### 🔍 Análisis:

❌ **T03 ITS tiene un ERROR CRÍTICO**
- Propone 30-50 postes cuando el contrato exige 87
- **Incumplimiento contractual** si no se corrige
- **Déficit:** 37-57 postes faltantes

### ✅ Validación:

✅ **Excel está CORRECTO:** 88 postes ≈ 87 contractuales  
🔴 **T03 está INCORRECTO:** Debe ajustarse a 87

### 🎯 Decisión Requerida - Especialista ITS:

**NO HAY DECISIÓN:** Es contractualmente obligatorio

**ACCIÓN OBLIGATORIA:**
- [x] Ajustar T03 ITS: "30-50 postes" → **"87 postes SOS"**
- [x] Costo: ~$1.5M USD (87 x $17K)
- [x] **NO negociable**

**Decisión:** ☑ 87 postes SOS (obligatorio, sin opciones)

---

## 4. CENTRO DE CONTROL OPERACIONAL (CCO)

### 📋 Datos Contractuales:

**AT1, Cap. 3:**
> _"El Concesionario deberá construir, mantener y operar como mínimo **un (1) Centro de Control de Operación – CCO**"_

**Obligación:** 1 CCO mínimo

### 📊 Cantidades Comparadas:

| Fuente | Cantidad | Diferencia | Costo |
|:-------|:---------|:-----------|:------|
| **Contrato AT1** | 1 CCO | Baseline | - |
| **Excel** | Implícito en $3.9B COP | 1 (asumido) | $3.934.077.023 COP |
| **T01/T03 CCO** | 1 CCO | 0 | $2.7M USD |

### 🔍 Análisis:

✅ **Todas las fuentes coinciden:** 1 CCO

**Discrepancia:** Costo Excel ($3.9B COP ≈ $975K USD) vs T03 ($2.7M USD)

**Excel parece SUBESTIMADO** en ~65%

### ✅ Validación:

✅ **Cantidad correcta:** 1 CCO  
⚠️ **Costo Excel bajo:** Revisar alcance (¿incluye edificio, equipos, software?)

### 🎯 Decisión Requerida - Especialista de Sistemas:

**❓ PREGUNTA:**
> ¿El costo de $2.7M USD (T03) es razonable vs $975K (Excel)?
> 
> **T03 incluye:**
> - Edificio/Infraestructura civil
> - Videowall (12-20 pantallas)
> - Servidores (NVR, SCADA, Apps)
> - Sala de control (6-10 puestos)
> - HVAC, UPS, generador
> - **Total:** $2.7M USD
> 
> **¿Excel incluye todo esto?** Parece subestimado.

**Decisión:** ☐ Usar $2.7M USD (T03) ☐ Usar $975K (Excel) ☐ Investigar más

---

## 5. SISTEMA DE PEAJE

### 📋 Datos Contractuales:

**AT1, Tabla 2:**
- Peaje Zambito (PK 9+200)
- Peaje Aguas Negras (PK 83+900, reubicar a PK 80+000)

**Obligación:** 2 estaciones de peaje

**AT2:** Sistema TAG DSRC, clasificación automática, LPR

### 📊 Cantidades Comparadas:

| Fuente | Estaciones | Carriles (total) | Costo |
|:-------|:-----------|:-----------------|:------|
| **Contrato** | 2 | No especifica | - |
| **Excel** | 2 (asumido) | No especificado | $3.352.522.808 COP |
| **T03/T04 Peajes** | 2 | 24 (12 por peaje) | $1.862.000 USD |

### 🔍 Análisis:

**Cantidad de carriles por peaje:**
- Contrato NO especifica
- T03 estima: 12 carriles por peaje (6 entrada + 6 salida, bidireccional)

**Decisión técnica:** ¿6, 8, 10 o 12 carriles por peaje?

**Factores:**
- Tráfico proyectado (TPDA)
- Tiempo de servicio objetivo
- Tipo de peaje (manual, TAG, mixto)

### ✅ Validación:

✅ **2 estaciones correctas**  
⏳ **Carriles por peaje:** Depende de estudio de tráfico

### 🎯 Decisión Requerida - Especialista de Tránsito:

**❓ PREGUNTA:**
> ¿Cuántos carriles por peaje aprobar?
> 
> Basado en:
> - TPDA proyectado
> - Nivel de servicio objetivo
> - Configuración: Manual vs TAG vs Mixto
> 
> **Opciones:**
> - 6 carriles/peaje (3 entrada + 3 salida) = Básico
> - 12 carriles/peaje (6+6) = T03 propuesto
> - 16 carriles/peaje (8+8) = Alto volumen

**Decisión:** Carriles por peaje: _______ (Total: _______  x 2 peajes)

---

## 6. BÁSCULAS DINÁMICAS EN ZONA DE PEAJE

### 📋 Datos Contractuales:

**AT2:** Menciona pesaje, no especifica si en peajes o estaciones separadas

**Interpretación:** WIM en carriles de peaje para pre-selección

### 📊 Cantidades Comparadas:

| Fuente | Descripción | Costo |
|:-------|:------------|:------|
| **Excel** | "Básculas Dinámicas en Zona de Peaje" | $3.182.719.610 COP (6.0%) |
| **T03 Peajes** | WIM en peajes (implícito) | Incluido en sistema de peaje |

### 🔍 Análisis:

**¿Es un sistema separado del peaje?**
- Excel lo lista por separado ($3.2B COP)
- T03 lo incluye en el sistema de peaje

**Configuración posible:**
- WIM en TODOS los carriles de peaje: 24 sistemas WIM
- O WIM solo en carriles de carga: 8-12 sistemas WIM

### ✅ Validación:

⚠️ **Ambigüedad:** No está claro si es separado o parte del peaje

### 🎯 Decisión Requerida - Especialista de Peaje/ITS:

**❓ PREGUNTA:**
> ¿WIM en carriles de peaje es un ítem separado o parte del sistema de peaje?
> 
> **Opción A:** Incluido en peaje (consolidar presupuestos)
> **Opción B:** Separado (mantener $3.2B COP adicional)
> 
> ¿WIM en TODOS los carriles (24) o solo carriles de carga (8-12)?

**Decisión:** ☐ Incluir en peaje ☐ Separar ☐ WIM en _______ carriles

---

## 7. PESAJE - BÁSCULAS NORTE Y SUR (ESTACIONES FIJAS)

### 📋 Datos Contractuales:

**AT1, Tabla 52:**
> _"El Concesionario como mínimo deberá adecuar, operar y mantener **la estación de pesaje existente en el PR4+0100 de la Ruta Nacional 4513**, de modo que funcione para ambos sentidos del flujo vehicular."_

**Obligación:** 1 estación mínimo (adecuar existente)

### 📊 Cantidades Comparadas:

| Fuente | Cantidad | Diferencia | Costo |
|:-------|:---------|:-----------|:------|
| **Contrato AT1** | 1 estación (adecuar existente) | Baseline | $500K (adecuación) |
| **Excel** | "Básculas Norte y Sur" = 2 estaciones | +1 estación | $3.291.697.320 COP |
| **T03 Pesaje WIM** | 2-3 estaciones fijas | +1-2 estaciones | $1.5M-$3.5M USD |

### 🔍 Análisis Técnico:

**Con 1 estación (contractual):**
- Ubicación: PK 4+100 (inicio del corredor)
- Cobertura: Solo primeros 50-80 km
- **Problema:** 180-200 km sin control de peso
- **Evasión:** Muy fácil (evitar la estación)

**Con 2 estaciones (Excel - "Norte y Sur"):**
- Estación Sur: PK 4+100 (existente, adecuar)
- Estación Norte: PK ~150-180 (nueva)
- Cobertura: ~80-120 km entre estaciones
- **Evasión:** Difícil

**Con 3 estaciones (T03):**
- Estación 1: PK 4+100 (existente)
- Estación 2: PK 80-90 (nueva, zona media)
- Estación 3: PK 180-190 (nueva, zona norte)
- Cobertura: ~80 km entre estaciones
- **Evasión:** Muy difícil

### ✅ Justificación Técnica:

**Factores a considerar:**
- Corredor de 259.6 km es MUY LARGO para 1 sola estación
- Control de peso protege pavimento (ROI positivo)
- Normativa NTC 5375 (límites de peso)
- Experiencia en otras concesiones

**Estándar internacional:** 1 estación cada 100-150 km

**Aplicado:** 259.6 km ÷ 120 km = **2 estaciones** (mínimo técnico)

### 🎯 Decisión Requerida - Especialista Civil/Tránsito:

**❓ PREGUNTA:**
> ¿Cuántas estaciones de pesaje instalar?
> 
> **Opción A:** 1 estación (contractual) = $500K, cobertura básica
> **Opción B:** 2 estaciones (Excel "Norte-Sur") = $2.5M, cobertura buena ⭐
> **Opción C:** 3 estaciones (T03 máximo) = $3.5M, cobertura óptima
> 
> Considerar:
> - 259.6 km es largo para 1 estación
> - ROI por protección de pavimento
> - Reducción de evasión

**Decisión:** ☐ 1 estación ☐ 2 estaciones ☐ 3 estaciones

---

## 8. SISTEMA DE CONTROL DE ALTURA (GÁLIBO)

### 📋 Datos Contractuales:

**AT2, Sección 3.3.5.1:**
> _"Detectores de altura: tecnología láser, antes de peajes, puentes con restricción, túneles, intersecciones a desnivel"_

**Obligación:** Antes de estructuras con restricción de altura

### 📊 Cantidades Comparadas:

| Fuente | Cantidad | Justificación |
|:-------|:---------|:--------------|
| **Contrato AT2** | Variable (depende de puentes/túneles) | Antes de cada estructura |
| **Excel** | 19 detectores | No especificado |
| **T03 ITS** | 8-12 detectores | 2 peajes + 6 intersecciones |

### 🔍 Análisis Técnico:

**Estructuras que requieren gálibo:**
- 2 peajes: 2 detectores
- 6-7 intersecciones a desnivel: 6-7 detectores
- Puentes con restricción: **¿? (A contar en AT1)**
- Túneles: **¿Hay? (No encontrados en AT1)**

**Estimación conservadora:** 8-12 detectores (T03)

### ✅ Validación:

⏳ **PENDIENTE:** Contar puentes con restricción de altura en AT1

**Acción:** Leer tablas de puentes en AT1 para identificar gálibos < 5.5m

### 🎯 Decisión Requerida - Especialista Civil:

**❓ PREGUNTA:**
> ¿Cuántos puentes tienen restricción de altura (gálibo < 5.5m)?
> 
> Revisar AT1 tablas de puentes por UF.
> 
> **Cantidad de detectores = 2 (peajes) + 6 (intersecciones) + X (puentes)**

**Decisión:** Puentes con restricción: _______ → Detectores totales: _______

---

## 9. SISTEMA DE CCTV

### 📋 Datos Contractuales:

**AT2, Sección 3.3.5.1:**
> _"CCTV:
> - Cámara panorámica (mínimo 1 por peaje)
> - CCTV adicional en: Áreas de Servicio
> - CCTV adicional en: Zonas de seguridad/accidentalidad (definidas con Interventoría + Policía)"_

**Obligación mínima:** 2 cámaras (1 por peaje)

### 📊 Cantidades Comparadas:

| Fuente | Cantidad | Diferencia vs Mínimo | Costo |
|:-------|:---------|:---------------------|:------|
| **Contrato AT2** | 2 cámaras | Baseline | - |
| **Excel** | 121 cámaras | +119 (+5,950%) | $1.894.483.631 COP |
| **T04 CCTV** | 120-150 cámaras | +118-148 | $480K-$600K USD |

### 🔍 Análisis Técnico:

**Desglose de 120 cámaras (T04):**

| Ubicación | Cámaras/Sitio | Cantidad Sitios | Subtotal | Fuente |
|:----------|:--------------|:----------------|:---------|:-------|
| Peajes | 6 | 2 | 12 | AT1 - 2 peajes |
| CCO | 8 | 1 | 8 | AT1 - 1 CCO |
| Intersecciones a desnivel | 4 | 6 | 24 | AT1 - 6 intersecciones |
| Estaciones de Pesaje | 6 | 2 (asumido) | 12 | Decisión pendiente |
| **Áreas de Servicio** | 4 | **14 (asumido)** | **56** | **Decisión crítica** |
| Zonas de accidentalidad | 2 | 10 (estimado) | 20 | AT2 - Con Interventoría |
| **TOTAL** | - | - | **132** | - |

**Conclusión:** 120-150 cámaras es razonable **SI se construyen 14 áreas de servicio**

### ✅ Justificación Técnica:

**Escenario 1: Solo 1 Área de Servicio (contractual)**
- Total cámaras: 12 + 8 + 24 + 12 + 4 + 20 = **80 cámaras**
- Costo: ~$320K USD

**Escenario 2: 14 Áreas de Servicio (propuesta)**
- Total cámaras: 80 + (13 x 4) = **132 cámaras**
- Costo: ~$530K USD

### 🎯 Decisión Requerida - Especialista ITS:

**❓ PREGUNTA:**
> La cantidad de CCTV depende de la decisión sobre áreas de servicio:
> 
> **Si 1 área:** 80 cámaras = $320K
> **Si 14 áreas:** 120-132 cámaras = $480K-$530K
> 
> ¿Aprobar 120-150 cámaras (asumiendo 14 áreas)?

**Decisión:** ☐ 80 cámaras (1 área) ☐ 120 cámaras (14 áreas) ☐ Otra: _______

---

## 10. RADIO COMUNICACIONES

### 📋 Datos Contractuales:

**AT1/AT2:** Menciona "radiocomunicación" pero NO especifica sistema

### 📊 Cantidades Comparadas:

| Fuente | Descripción | Costo |
|:-------|:------------|:------|
| **Contrato** | "Radiocomunicación" (no detalla) | - |
| **Excel** | Sistema de Radio | $1.812.038.101 COP (3.4%) |
| **T03 Telecomunicaciones** | Radio troncalizado digital | Incluido en presupuesto |

### 🔍 Análisis Técnico:

**Sistema de radio puede incluir:**
- Radio troncalizado digital (Motorola, Hytera)
- Repetidoras en puntos altos
- Radios móviles (vehículos: patrullas, grúas, ambulancias)
- Radios portátiles (personal de campo)

**Estimación:**
- 3-5 repetidoras
- 30-40 radios móviles
- 20-30 radios portátiles
- **Costo estimado:** $400K-$600K USD

**Excel:** $1.8B COP ≈ $450K USD ✅ Razonable

### ✅ Validación:

✅ **Costo razonable**  
⏳ **Cantidad específica:** Depende de flota de vehículos

### 🎯 Decisión Requerida - Especialista de Telecomunicaciones:

**❓ PREGUNTA:**
> ¿Aprobar sistema de radio troncalizado?
> 
> Considerar:
> - Cobertura en zonas sin celular
> - Comunicación de emergencia
> - Flota de vehículos operativos
> 
> **¿Es necesario o redundante con celular 4G/5G?**

**Decisión:** ☐ Aprobar radio ☐ Solo celular ☐ Híbrido

---

## 11. ESTACIÓN TOMA DE DATOS (ETD/ANPR)

### 📋 Datos Contractuales:

**AT2:** NO especifica sistema de aforo o ANPR

**Implícito:** Necesidad de contar tráfico para gestión y reportes ANI

### 📊 Cantidades Comparadas:

| Fuente | Cantidad | Costo |
|:-------|:---------|:------|
| **Contrato** | No especifica | - |
| **Excel** | 38 equipos | $1.715.153.656 COP (3.2%) |
| **T03 ITS** | 10-15 estaciones | Incluido en CCTV/ITS |

### 🔍 Análisis Técnico:

**Funciones de ETD/ANPR:**
- Aforo vehicular (conteo por categoría)
- LPR (Lectura de Placas)
- Velocidad promedio
- Origen-Destino (pares de cámaras)

**Ubicaciones típicas:**
- Inicio/fin de UF
- Intersecciones principales
- Peajes (para validación)

**Estimación técnica:**
- 14 UF x 1 ETD = 14 equipos (básico)
- O 1 cada 20 km = 13 equipos

### ✅ Validación:

⏳ **NO especificado en contrato**  
⏳ **Justificación:** Necesario para gestión de tráfico y reportes ANI

### 🎯 Decisión Requerida - Especialista ITS:

**❓ PREGUNTA:**
> ¿Cuántas estaciones ETD/ANPR son necesarias?
> 
> **Opción A:** 10-15 (T03) = 1 por UF + intersecciones
> **Opción B:** 38 (Excel) = 1 cada 7 km (??) **Parece exagerado**
> 
> ¿O usar CCTV existentes con analítica de video (sin hardware adicional)?

**Decisión:** ☐ 10-15 ETD ☐ 38 ETD ☐ Usar CCTV ☐ Otra: _______

---

## 12. ESTACIONES METEOROLÓGICAS

### 📋 Datos Contractuales:

**AT2, Sección 3.3.5.1:**
> _"Equipos meteorológicos (según Resolución 546/2018 + IDEAM)"_

**Obligación:** Según normativa externa (IDEAM)

### 📊 Cantidades Comparadas:

| Fuente | Cantidad | Costo |
|:-------|:---------|:------|
| **Normativa IDEAM** | Variable (a consultar) | - |
| **Excel** | 11 estaciones | $486.775.340 COP (0.9%) |
| **T03 ITS** | 6-8 estaciones | ~$200K-$300K USD |

### 🔍 Análisis Técnico:

**Criterios posibles:**
- 1 estación cada 25-30 km: 259.6÷25 = **10-11 estaciones**
- 1 estación cada 35-40 km: 259.6÷35 = **7-8 estaciones**
- 1 estación por zona climática: Variable

### ✅ Validación:

✅ **Excel (11 estaciones) es razonable** (1 cada 24 km)  
✅ **T03 (6-8) es conservador** (1 cada 35 km)

### 🎯 Decisión Requerida - Especialista Ambiental/ITS:

**❓ PREGUNTA:**
> ¿Cuántas estaciones meteorológicas según normativa IDEAM y Res. 546/2018?
> 
> **Opción A:** 6-8 estaciones (conservador)
> **Opción B:** 11 estaciones (Excel, 1 cada 24 km)
> 
> Validar con normativa IDEAM para corredores viales.

**Decisión:** ☐ 6-8 ☐ 11 ☐ Consultar IDEAM ☐ Otra: _______

---

## 13. PASO ELEVADO FIBRA ÓPTICA

### 📋 Datos Contractuales:

**AT1:** No especifica paso elevado de fibra

### 📊 Cantidades Comparadas:

| Fuente | Descripción | Costo |
|:-------|:------------|:------|
| **Excel** | "Paso Elevado Fibra Óptica" | $82.081.639 COP (0.2%) |
| **T04 Fibra** | Implícito en instalación | Incluido |

### 🔍 Análisis:

**Posible interpretación:** Cruce aéreo de fibra (puente, río, etc.)

**Justificación:** Puede requerirse en cruces especiales

### ✅ Validación:

⏳ **PENDIENTE:** Identificar en AT1 si hay cruces que requieran paso elevado

**Costo bajo:** $82M COP ≈ $20K USD (razonable para 1-2 cruces)

### 🎯 Decisión Requerida - Especialista Telecomunicaciones:

**❓ PREGUNTA:**
> ¿Hay cruces (ríos, vías, etc.) que requieran paso elevado de fibra?
> 
> Revisar AT1 para:
> - Cruces de ríos
> - Cruces de vías férreas
> - Cruces de otras concesiones

**Decisión:** ☐ Sí, incluir $20K ☐ No necesario ☐ Investigar

---

## 14. CONTROL DE ACCESOS EN PEAJE

### 📋 Datos Contractuales:

**AT2:** NO especifica control de accesos

### 📊 Cantidades Comparadas:

| Fuente | Descripción | Costo |
|:-------|:------------|:------|
| **Excel** | "Control de Accesos en Peaje" | $78.424.521 COP (0.1%) |
| **T03 Peajes** | No especificado | - |

### 🔍 Análisis:

**Posibles interpretaciones:**
- Torniquetes de acceso peatonal
- Barreras vehiculares
- Sistema de seguridad perimetral

**Costo:** $78M COP ≈ $20K USD (muy bajo)

### ✅ Validación:

⏳ **NO especificado en contrato**  
⏳ **Costo bajo:** Puede incluirse

### 🎯 Decisión Requerida - Especialista de Seguridad:

**❓ PREGUNTA:**
> ¿Es necesario sistema de control de accesos en peajes?
> 
> Considerar:
> - Seguridad perimetral
> - Acceso peatonal controlado
> - Costo bajo ($20K)

**Decisión:** ☐ Incluir ☐ No necesario

---

## 📊 TABLA MAESTRA DE VALIDACIÓN - TODOS LOS SISTEMAS

| # | Sistema | Mín. Contractual | Excel | T03/T04 | Estado | Decisor | Diferencia CAPEX |
|:--|:--------|:-----------------|:------|:--------|:-------|:--------|:-----------------|
| 1 | Fibra Óptica | "Sistema completo" | $16.3B COP (~$4M USD?) | 280 km ($15M) | ⚠️ Excel subestimado | Telecom | **-$11M?** |
| 2 | PMV | 4 | 29 | 16-18 | ⚠️ Excel exagerado | ITS | +$1.8M (vs Excel -$1.8M) |
| 3 | SOS | 87 | 88 ✅ | 30-50 ❌ | 🔴 T03 error | ITS | $0 (ajustar T03) |
| 4 | CCO | 1 | 1 | 1 | ✅ OK | Sistemas | Validar costo |
| 5 | Peaje | 2 est. | 2 | 2 | ✅ OK | Tránsito | Validar carriles |
| 6 | WIM Peaje | No especifica | Sí | Implícito | ⏳ Aclarar | Peaje | Consolidar? |
| 7 | Pesaje Fijo | 1 | 2 ("N+S") | 2-3 | ⏳ Decisión | Civil | +$2M-$3M |
| 8 | Gálibo | Antes puentes/peajes | 19 | 8-12 | ⏳ Contar puentes | Civil | Variable |
| 9 | CCTV | 2 | 121 | 120-150 | ⏳ Depende áreas | ITS | Depende decisión |
| 10 | Radio | No especifica | Sí | Sí | ✅ Razonable | Telecom | ~$450K |
| 11 | ETD/ANPR | No especifica | 38 | 10-15 | ⚠️ Excel exagerado | ITS | T03 más realista |
| 12 | Meteorológicas | Según IDEAM | 11 | 6-8 | ⏳ Validar normativa | Ambiental | Variable |
| 13 | Paso Elevado FO | No especifica | $20K | Implícito | ✅ OK si necesario | Telecom | $0-$20K |
| 14 | Control Accesos | No especifica | $20K | No | ⏳ Evaluar | Seguridad | $0-$20K |

---

## 🔴 HALLAZGOS CRÍTICOS POR ESPECIALIDAD

### Especialista ITS:

**Errores encontrados:**
1. 🔴 **Postes SOS:** T03 propone 30-50, contrato exige 87 (ajustar obligatorio)
2. ⚠️ **PMV:** Excel propone 29 (exagerado), T03 propone 16-18 (razonable)
3. ⚠️ **ETD/ANPR:** Excel propone 38 (exagerado), T03 propone 10-15 (razonable)

### Especialista Civil/Tránsito:

**Decisiones requeridas:**
1. ⏳ **Estaciones de Pesaje:** 1 (contractual) vs 2-3 (propuesta) - Impacto: +$2-3M
2. ⏳ **Carriles de Peaje:** ¿6, 12 o 16 por peaje? - Impacto: Variable
3. ⏳ **Detectores de Gálibo:** Contar puentes con restricción en AT1

### Especialista de Telecomunicaciones:

**Decisiones requeridas:**
1. ⚠️ **Fibra Óptica:** Excel $4M vs T04 $15M (Discrepancia 4x) - Investigar alcance Excel
2. ⏳ **Radio:** ¿Necesario con cobertura celular? Costo: ~$450K
3. ⏳ **Paso Elevado FO:** ¿Hay cruces especiales? Costo: $20K

### Especialista de Operaciones:

**Decisiones comerciales:**
1. 🔴 **Áreas de Servicio:** 1 (contractual) vs 14 (propuesta) - Impacto: **+$6.4M**
2. ⏳ **Modelo de negocio:** ¿Concesión de restaurantes genera ROI?

### Especialista Ambiental:

**Decisiones normativas:**
1. ⏳ **Meteorológicas:** 6-8 vs 11 - Validar con IDEAM y Res. 546/2018

---

## 💰 RESUMEN FINANCIERO POR ESCENARIOS

### Escenario 1: MÍNIMO CONTRACTUAL ESTRICTO

| Sistema | Cantidad | CAPEX (USD) |
|:--------|:---------|:------------|
| Peajes (2 x 6 carriles) | 2 est., 12 carriles | $1.0M |
| CCO | 1 | $2.7M |
| SOS | 87 | $1.5M |
| PMV | 4 | $0.6M |
| CCTV | 80 | $0.3M |
| Fibra | 280 km | $15M |
| Pesaje | 1 estación | $0.5M |
| Área Servicio | 1 (adecuar) | $0.3M |
| Otros | Mínimos | $3M |
| **TOTAL ESCENARIO 1** | - | **$24.9M USD** |

---

### Escenario 2: PROPUESTA TÉCNICA CONSERVADORA (RECOMENDADO) ⭐

| Sistema | Cantidad | CAPEX (USD) |
|:--------|:---------|:------------|
| Peajes (2 x 12 carriles) | 2 est., 24 carriles | $1.9M |
| CCO | 1 | $2.7M |
| SOS | 87 | $1.5M |
| PMV | 16-18 | $2.4M-$2.7M |
| CCTV | 120 | $0.5M |
| Fibra | 280 km | $15M |
| Iluminación | 650 luminarias | $1.8M |
| Señalización | 259.6 km | $7.8M |
| Pesaje | 2-3 estaciones | $2.5M-$3.5M |
| Áreas Servicio | **6 áreas** | $6.4M |
| Otros equipos ITS | Según T03/T04 | $3M |
| **TOTAL ESCENARIO 2** | - | **$45.5M-$48M USD** |

---

### Escenario 3: PRESUPUESTO EXCEL (SIN VALIDAR)

| Sistema | Excel (COP) | Excel (USD ~) |
|:--------|:------------|:--------------|
| **TOTAL Excel** | $69.301.059.295 COP | ~$17.3M USD |

**⚠️ PROBLEMA:** Excel parece tener errores:
- Fibra: $16.3B COP ($4M USD) vs T04 $15M USD (4x diferencia!)
- PMV: 29 unidades (exagerado)
- **Excel total ($17.3M) < T04 total ($45M)** → Excel SUBESTIMADO?

**¿TRM usado en Excel?** Si TRM = 1,000 → $69B COP = $69M USD (más cercano a T04)

---

## 🎯 MATRIZ DE REVISIÓN COMPLETA - TODOS LOS ESPECIALISTAS

### Por favor completar:

| # | Sistema | Especialidad | Cant. Recomendada | Aprobar (S/N) | Observaciones |
|:--|:--------|:-------------|:------------------|:--------------|:--------------|
| 1 | Fibra Óptica | Telecomunicaciones | 280 km, $15M USD | _______ | __________________ |
| 2 | PMV | ITS | 16-18 unidades | _______ | __________________ |
| 3 | SOS | ITS | **87 postes** (obligatorio) | **SÍ** | __________________ |
| 4 | CCO | Sistemas | 1 centro, $2.7M | _______ | __________________ |
| 5 | Peaje | Tránsito | 2 est., __ carriles/peaje | _______ | __________________ |
| 6 | WIM Peaje | Peaje | ¿Separado o incluido? | _______ | __________________ |
| 7 | Pesaje Fijo | Civil | 1-3 estaciones | _______ | __________________ |
| 8 | Gálibo | Civil | 8-12 detectores | _______ | __________________ |
| 9 | CCTV | ITS | 80-132 (depende áreas) | _______ | __________________ |
| 10 | Radio | Telecomunicaciones | Sistema troncalizado | _______ | __________________ |
| 11 | ETD/ANPR | ITS | 10-15 estaciones | _______ | __________________ |
| 12 | Meteorológicas | Ambiental | 6-11 estaciones | _______ | __________________ |
| 13 | Iluminación | Eléctrico | 650 luminarias | _______ | __________________ |
| 14 | Señalización | Vial | 259.6 km | _______ | __________________ |
| 15 | Áreas Servicio | Operaciones | 1-14 áreas | _______ | __________________ |

---

## 📋 ACCIONES POR ESPECIALISTA

### Especialista ITS:
- [ ] Validar PMV: 16-18 vs 29
- [ ] Validar ETD/ANPR: 10-15 vs 38
- [ ] Ajustar SOS: 30-50 → **87** (obligatorio)
- [ ] Validar CCTV según decisión de áreas servicio

### Especialista Civil/Tránsito:
- [ ] Decidir estaciones de pesaje: 1, 2 o 3
- [ ] Definir carriles por peaje: 6, 12 o 16
- [ ] Contar puentes con restricción (gálibo)

### Especialista Telecomunicaciones:
- [ ] Validar 280 km fibra vs costo Excel ($4M vs $15M)
- [ ] Decidir sobre sistema de radio
- [ ] Identificar cruces para paso elevado FO

### Especialista Ambiental:
- [ ] Validar estaciones meteorológicas con IDEAM (6-8 vs 11)

### Especialista de Operaciones:
- [ ] **DECISIÓN CRÍTICA:** Áreas de servicio 1 vs 6 vs 14 (Impacto: $0 vs $6.4M)
- [ ] Modelo de negocio de restaurantes/tiendas
- [ ] Análisis de ROI

### Gerencia Financiera:
- [ ] Aprobar inversión adicional de $0M a $20M según decisiones
- [ ] Validar TRM usado en Excel (parece incorrecto)

---

## 🎯 RECOMENDACIONES FINALES

### 1. Aprobar Escenario 2 (Conservador) - $45.5M-$48M USD ⭐

**Justificación:**
- ✅ Cumple 100% contrato
- ✅ Nivel de servicio alto
- ✅ Competitivo vs otras concesiones
- ✅ Cantidades técnicamente justificadas
- ✅ Sin exageraciones del Excel

### 2. NO usar Presupuesto Excel sin validar

**Problemas identificados:**
- 29 PMV (exagerado)
- 38 ANPR (exagerado)
- Fibra $4M vs $15M real (error de TRM?)
- Total $17M vs $45M (discrepancia 2.6x)

### 3. Ajustes Obligatorios Inmediatos:

🔴 **CRÍTICO:**
- T03 ITS: Postes SOS 30-50 → **87**
- Aclarar: 1 área contractual + 13 propuestas

---

## ✅ FIRMA Y APROBACIÓN

**Este informe requiere revisión y aprobación de TODOS los especialistas:**

| Especialista | Fecha | Firma | Decisiones/Observaciones |
|:-------------|:------|:------|:-------------------------|
| ITS | ______ | ______ | ________________________ |
| Civil/Tránsito | ______ | ______ | ________________________ |
| Telecomunicaciones | ______ | ______ | ________________________ |
| Eléctrico | ______ | ______ | ________________________ |
| Ambiental | ______ | ______ | ________________________ |
| Operaciones | ______ | ______ | ________________________ |
| Financiero | ______ | ______ | ________________________ |

**Gerente de Proyecto - Aprobación Final:**

Nombre: ________________________  
Fecha: ________________________  
Firma: ________________________  

**CAPEX Aprobado:** $________________ USD

---

## 10. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 18/10/2025 | Administrador Contractual EPC | Informe exhaustivo de validación - todos los sistemas |

---

**Fin del documento - Informe de Validación Completo Todos los Sistemas**  
*Para revisión multidisciplinaria*  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*

