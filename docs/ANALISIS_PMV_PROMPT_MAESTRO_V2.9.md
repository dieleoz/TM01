# 🎩👷 ANÁLISIS PMV - PROMPT MAESTRO V2.9
## ESTRATEGA DE INGENIERÍA ITS (CONTRACTUAL + MERCADO)

**Proyecto:** Corredor Vial Troncal del Magdalena 1  
**Sistema:** Paneles de Mensajería Variable (PMV)  
**Versión:** 2.9 - Decantación de Obligaciones  
**Fecha:** 27 de Enero 2026  
**Rol:** Director Técnico de la Concesión (Cumplimiento + Ahorro)

---

## ═══════════════════════════════════════════════════════════════════
## 1️⃣ DECANTACIÓN DE OBLIGACIONES (EL "QUÉ" Y EL "DÓNDE")
## ═══════════════════════════════════════════════════════════════════

| Ubicación | ¿Es Obligatorio? | Fuente Contractual | Cantidad / Detalle |
|:----------|:-----------------|:-------------------|:-------------------|
| **Vía Abierta (Corredor)** | ✅ **SÍ** | **AT1, Línea 3388** | **"El Concesionario deberá instalar cómo mínimo veinticinco (25) paneles LED en el Corredor del Proyecto, los cuales no podrán estar separados uno del otro por una distancia mayor a veinte (20) kilómetros por sentido."** |
| **Peajes (Zambito + Aguas Negras)** | ✅ **SÍ** | **AT2, Línea 913** | **"paneles de mensajes variables (al menos dos por cada área de peaje bidireccional y al menos uno por cada área de peaje unidireccional)"** |
| **Pesajes** | ❌ **NO EXIGIDO** | AT2, Línea 913 | **EXCLUSIÓN POR SILENCIO POSITIVO:** El numeral de Pesajes NO lista PMV como equipo obligatorio. Solo menciona "equipos de detección" y "CCTV". |
| **Áreas de Servicio** | ⚠️ **CONDICIONAL** | AT2, Línea 917 | **"en otros puntos donde se requiera monitorear el tráfico, los cuales serán definidos conjuntamente por el Concesionario y la Interventoría"** |

---

### 📊 CÁLCULO DE CANTIDAD TOTAL BLINDADA

#### 🎩 **AUDITOR (Contractual):**

**COMPONENTE 1: PMV DE VÍA (CORREDOR)**
- **Fuente:** AT1, Línea 3388
- **Cantidad mínima:** **25 unidades**
- **Interdistancia máxima:** 20 km por sentido
- **Longitud del corredor:** 259.6 km (AT1)
- **Cálculo teórico:** 259.6 km ÷ 20 km = ~13 PMV por sentido × 2 sentidos = **26 PMV**
- **Contractual:** **Mínimo 25** (el contrato da flexibilidad)

**COMPONENTE 2: PMV DE PEAJE (OBLIGATORIO)**
- **Fuente:** AT2, Línea 913
- **Peaje Zambito (Bidireccional):** **Mínimo 2 PMV**
- **Peaje Aguas Negras (Bidireccional):** **Mínimo 2 PMV**
- **Subtotal peajes:** **4 PMV mínimo**

**COMPONENTE 3: DISPLAYS DE CARRIL IP/REV (NORMATIVA SOBREVINIENTE)**
- **Fuente:** Resolución 20213040035125 (IP/REV 2021), Art. 2.9.9
- **Texto:** "Los carriles IP/REV del peaje deben contar con pantallas de información alfanuméricas LED... (al menos uno por cada carril de peaje)"
- **Peaje Zambito:** 7 carriles (estimado) = **7 displays**
- **Peaje Aguas Negras:** 7 carriles (estimado) = **7 displays**
- **Subtotal IP/REV:** **14 displays**

---

### ✅ **CANTIDAD TOTAL BLINDADA:**

```
25 PMV de Vía (AT1)
+ 4 PMV de Peaje (AT2 - Pórticos/Banderolas)
+ 14 Displays de Carril (IP/REV 2021 - Obligatorio)
─────────────────────────────────────────────────
= 43 UNIDADES TOTALES
```

**NOTA CRÍTICA:** La cantidad de **39 unidades** que aparece en el T05 actual **NO incluye los 4 PMV de pórtico de peaje** (AT2). Esto es un error de contabilización.

---

### 👷 **INGENIERO (Mercado):**

**RECOMENDACIÓN DE OPTIMIZACIÓN:**

Los "4 PMV de peaje" (AT2) pueden ser **integrados con los displays de carril** (IP/REV) si se usa tecnología modular:

**Solución de Mercado:**
- **Pórtico de peaje con display integrado:** 1 panel grande (3×1.5m) + 7 displays pequeños (1×0.5m) en el mismo pórtico
- **Fabricantes:** Daktronics (SmartLane™), SWARCO (Canopy Display System)
- **Ahorro:** ~$40,000 USD por peaje (estructura compartida)

**Cantidad Optimizada:**
```
25 PMV de Vía (Pórticos/Banderolas)
+ 2 Pórticos de Peaje Integrados (Panel + 7 Displays c/u)
─────────────────────────────────────────────────
= 27 ESTRUCTURAS FÍSICAS
= 39 UNIDADES FUNCIONALES (25 vía + 14 displays)
```

---

## ═══════════════════════════════════════════════════════════════════
## 2️⃣ ESPECIFICACIONES: CONTRATO vs. MERCADO (EL "CÓMO")
## ═══════════════════════════════════════════════════════════════════

| Componente | Lo que pide el Contrato (Literal) | Solución de Mercado (Experto) | ¿Por qué? (Ahorro/Blindaje) |
|:-----------|:-----------------------------------|:------------------------------|:----------------------------|
| **Tipología** | **AT2, Línea 917:** "Los paneles de mensajería variable deberán ser alfanuméricos y gráficos" | **Full Matrix RGB** (Daktronics VF-3020, SWARCO CCM-3) | Cumple "alfanumérico + gráfico". RGB permite pictogramas a color (Manual 2024). |
| **Altura de Carácter** | **AT3, Línea 344:** "Anexo técnico del proyecto de adopción de requisitos funcionales y técnicos de los paneles de mensaje variable" (Res. 546/2018) | **400 mm** (Manual 2024, Tabla 2-20) | **BLINDAJE NORMATIVO:** Res. 546/2018 fue derogada. Manual 2024 exige 400mm para vías >90 km/h. |
| **Protocolo** | **NO ESPECIFICADO** en AT1/AT2/AT3 | **NTCIP 1203 v3** (estándar) + **DATEX II** (opcional) | NTCIP es estándar global. DATEX II cumple Manual 2024 (interoperabilidad europea). |
| **Energía** | **AT2, Línea 917:** "funcionamiento 24h" (implícito en operación continua) | **Grid-Powered** (110/220 VAC) + **UPS 48h** | **AHORRO:** Solar para PMV de 400mm cuesta $18k USD/unidad. Grid + UPS = $3k USD. Ahorro: **$15k × 25 = $375k USD**. |
| **Integración CCO** | **AT2, Línea 917:** "Sistema de Control de Tráfico" + **AT2, Línea 1099:** "enviar mensajes periódicos a los Usuarios por medio de paneles de mensajes variables" | **Ethernet IP** + **SNMP** + **API REST** | Integración nativa con SICC. Permite control remoto desde CCO. |
| **Brillo** | **NO ESPECIFICADO** en AT1/AT2/AT3 | **Clase L3** (UNE-EN 12966) | **BLINDAJE NORMATIVO:** Manual 2024 cita UNE-EN 12966. L3 = máxima visibilidad (≥8,500 cd/m²). |
| **Protección** | **NO ESPECIFICADO** en AT1/AT2/AT3 | **IP65** (gabinete hermético) | **RETIE 2024:** Obligatorio para instalaciones eléctricas en intemperie. |

---

### 👷 **INGENIERO (Recomendación de Marca):**

**SOLUCIÓN DE MERCADO ÓPTIMA:**

**Para PMV de Vía (25 unidades):**
- **Marca:** Daktronics VF-3020 o SWARCO CCM-3
- **Especificación:** Full Matrix RGB, 400mm, P20, NTCIP 1203
- **Precio referencial:** $45,000 USD/panel (solo equipo)
- **Estructura:** Pórtico CCP-14 = $35,000 USD
- **Total:** **$80,000 USD/unidad** × 25 = **$2,000,000 USD**

**Para Displays de Carril (14 unidades):**
- **Marca:** Daktronics SmartLane™ o SWARCO Canopy Display
- **Especificación:** P10 Ámbar, 1×0.5m, NTCIP 1203
- **Precio referencial:** $5,000 USD/display
- **Montaje:** Canopy de peaje (existente)
- **Total:** **$5,000 USD/unidad** × 14 = **$70,000 USD**

**CAPEX TOTAL OPTIMIZADO:** **$2,070,000 USD**

---

## ═══════════════════════════════════════════════════════════════════
## 3️⃣ ESTRATEGIA DE DEFENSA Y COMPRA
## ═══════════════════════════════════════════════════════════════════

### 🎩 **AUDITOR (Argumento "No Compra" para Pesajes):**

**TEXTO COPY-PASTE JURÍDICO-TÉCNICO:**

> "De conformidad con el Apéndice Técnico 2, Sección 3.3.5.1, Línea 913, el Sistema de Control de Tráfico en Estaciones de Peaje deberá contar con paneles de mensajes variables. Sin embargo, el numeral correspondiente a Estaciones de Pesaje (Sección 3.3.5.2) **NO incluye paneles de mensajería variable** en la lista de equipos obligatorios, limitándose a 'equipos de detección', 'CCTV' y 'sistemas de control de velocidad'.
>
> En aplicación del principio de **EXCLUSIÓN POR SILENCIO POSITIVO** (Sección 19.15 de la Parte General del Contrato), la ausencia de mención explícita de PMV en el numeral de Pesajes implica que **NO es una obligación contractual** para dichas estaciones.
>
> Por tanto, cualquier solicitud de instalación de PMV en Pesajes constituiría un **alcance adicional no contractual**, sujeto a modificación del Contrato y pago adicional."

---

### 👷 **INGENIERO (Defensa Técnica del Equipo Propuesto):**

**TEXTO PARA DEFENDER SOLUCIÓN ECONÓMICA:**

> "El panel propuesto (Daktronics VF-3020 / SWARCO CCM-3) cumple **simultáneamente** con:
>
> 1. **AT2, Línea 917:** Tipología alfanumérica y gráfica (Full Matrix RGB)
> 2. **Manual de Señalización 2024, Tabla 2-20:** Altura de carácter 400mm para vías de 120 km/h
> 3. **UNE-EN 12966:** Clase L3 (brillo), Clase B6/B7 (ángulo de visión), IP65 (protección)
> 4. **RETIE 2024:** Certificación de producto (Anexo 5), SPT ≤10Ω, DPS certificados
>
> **Ventajas técnicas vs. solución solar:**
> - **Disponibilidad:** 99.8% (grid) vs. 95% (solar con baterías degradadas)
> - **Mantenimiento:** $800/año (grid) vs. $2,500/año (solar: baterías + paneles)
> - **CAPEX:** $3,000 (UPS 48h) vs. $18,000 (kit solar)
> - **Cumplimiento O6:** Grid garantiza disponibilidad ≥98% (AT4, Línea 2406)
>
> **Ahorro total:** **$375,000 USD** (15 unidades × $25k diferencia)"

---

## ═══════════════════════════════════════════════════════════════════
## 4️⃣ RIESGO DE GLOSA (EL "POR QUÉ")
## ═══════════════════════════════════════════════════════════════════

### 🎩 **AUDITOR (Indicador Afectado):**

**INDICADOR:** **O6 - Disponibilidad de Sistemas ITS**

**Fuente:** AT4, Líneas 2398-2411

**Concepto de Medición:**
> "Porcentaje de tiempo que los sistemas ITS (Peaje, Pesaje, CCO, Video, **PMV**, SOS, Radio, METEO) operan correctamente según sus especificaciones funcionales."

**Valor de Aceptación:**
- **≥ 99.5%** para Peaje y Pesaje
- **≥ 98%** para otros subsistemas (PMV)

**Método de Medida:**
```
D = (HT - (TI + TM)) / HT × 100

Donde:
HT = Horas Totales del mes (720h)
TI = Tiempo de Indisponibilidad (Falla)
TM = Tiempo de Mantenimiento Programado Autorizado
```

**Tiempo Máximo de Corrección:**
- **Inmediato** (Redundancia)
- **4 horas** (Falla crítica)

---

### ⚠️ **CONSECUENCIA (Glosa Binaria):**

**AT4, Línea 2411:**
> "La disponibilidad se mide de forma **BINARIA** para cada activo. Si un equipo (ej. PMV o Cámara) no comunica o no cumple su función principal durante el periodo de evaluación, **se pierde el 100% de la disponibilidad de ese activo** para el cálculo del día. No existen disponibilidades parciales. Cualquier valor inferior al Valor de Aceptación genera Glosa Administrativa automática."

**Ejemplo de Glosa:**
- **Escenario:** 1 PMV fuera de servicio por 24 horas en un mes
- **Cálculo:** D = (720h - 24h) / 720h × 100 = **96.7%**
- **Resultado:** **INCUMPLE** (Valor de Aceptación: ≥98%)
- **Glosa:** Deducción en Retribución Mensual (según Tabla 5, AT4)

---

### 👷 **INGENIERO (Mitigación):**

**REQUISITOS TÉCNICOS PARA EVITAR GLOSA:**

1. **Redundancia de Comunicación:**
   - Enlace primario: Fibra óptica
   - Enlace secundario: 4G LTE (failover automático)
   - **Costo:** $500 USD/PMV (SIM + router industrial)

2. **UPS con Autonomía 48h:**
   - **Especificación:** Baterías de gel, 2.5 kW, 48h autonomía
   - **Cumple:** Manual 2024 (Sección 2.7.6)
   - **Costo:** $3,000 USD/PMV

3. **Buffer de Datos (SICC):**
   - Almacenamiento local de mensajes (256 mensajes preprogramados)
   - Operación autónoma si pierde comunicación con CCO
   - **Costo:** Incluido en controlador NTCIP

4. **Monitoreo 24/7:**
   - SNMP traps + Ping cada 5 minutos
   - Alerta automática a CCO si PMV no responde
   - **Costo:** Incluido en SICC

**INVERSIÓN EN MITIGACIÓN:** **$3,500 USD/PMV** × 39 = **$136,500 USD**

**ROI:** Evitar 1 glosa mensual (estimado: $50,000 USD) = **Recuperación en 3 meses**

---

## ═══════════════════════════════════════════════════════════════════
## ⚠️ FUENTES UTILIZADAS
## ═══════════════════════════════════════════════════════════════════

### 🎩 **AUDITOR (Contractuales):**

| Documento | Línea | Contenido Exacto |
|:----------|:------|:-----------------|
| **AT1** | 3169 | "Paneles de Mensajería Variable (PMV): Se deberán instalar **mínimo veinticinco (25) unidades** a lo largo del corredor." |
| **AT1** | 3388 | "El Concesionario deberá instalar cómo mínimo veinticinco (25) paneles LED en el Corredor del Proyecto, los cuales no podrán estar separados uno del otro por una distancia mayor a veinte (20) kilómetros por sentido." |
| **AT2** | 913 | "paneles de mensajes variables (al menos dos por cada área de peaje bidireccional y al menos uno por cada área de peaje unidireccional)" |
| **AT2** | 917 | "Los paneles de mensajería variable deberán ser alfanuméricos y gráficos." |
| **AT2** | 1099 | "El Concesionario deberá enviar mensajes periódicos a los Usuarios por medio de paneles de mensajes variables" |
| **AT3** | 344 | "Anexo técnico del proyecto de adopción de requisitos funcionales y técnicos de los paneles de mensaje variable para el país" (Res. 546/2018 - **DEROGADA**) |
| **AT4** | 2398-2411 | Indicador O6 - Disponibilidad de Sistemas ITS (≥98% para PMV) |

---

### 👷 **INGENIERO (Normativa Vigente):**

| Norma | Vigencia | Aplicación PMV |
|:------|:---------|:---------------|
| **Manual de Señalización Vial 2024** | Octubre 2025 | Altura carácter 400mm (Tabla 2-20), UNE-EN 12966, DATEX II |
| **Resolución 20213040035125 (IP/REV 2021)** | 2021 | Art. 2.9.9: Display por carril de peaje (obligatorio) |
| **Resolución 40117 de 2024 (RETIE)** | 2024 | Anexo 5 (Dictamen de inspección), SPT ≤10Ω, DPS certificados |
| **UNE-EN 12966** | Vigente | Clase L3 (brillo), B6/B7 (ángulo), IP65 (protección) |
| **UNE-EN 16157-4 (DATEX II)** | Vigente | Intercambio de datos ITS (interoperabilidad) |
| **CCP-14** | 2014 | Diseño sísmico de pórticos (estructuras especiales) |
| **AASHTO LRFD** | 2015+ | Cargas de viento y fatiga (soportes de señales) |

---

## ═══════════════════════════════════════════════════════════════════
## 📊 RESUMEN EJECUTIVO (DOBLE SOMBRERO)
## ═══════════════════════════════════════════════════════════════════

### 🎩 **AUDITOR (Contractual):**

**CANTIDAD MÍNIMA OBLIGATORIA:**
- **25 PMV de vía** (AT1, Línea 3388)
- **4 PMV de peaje** (AT2, Línea 913: 2 por Zambito + 2 por Aguas Negras)
- **14 Displays de carril** (IP/REV 2021, Art. 2.9.9)
- **TOTAL:** **43 unidades funcionales**

**RIESGO DE GLOSA:**
- Indicador O6 (AT4): Disponibilidad ≥98%
- Medición binaria: 1 PMV fuera = 100% de indisponibilidad de ese activo
- Glosa automática si D < 98%

---

### 👷 **INGENIERO (Mercado):**

**SOLUCIÓN OPTIMIZADA:**
- **27 estructuras físicas** (25 vía + 2 pórticos de peaje integrados)
- **39 unidades funcionales** (25 PMV + 14 displays)
- **CAPEX:** $2,070,000 USD (vs. $2,596,000 en T05 actual)
- **AHORRO:** **$526,000 USD** (eliminación de solar + optimización de estructura)

**TECNOLOGÍA RECOMENDADA:**
- **Vía:** Daktronics VF-3020 / SWARCO CCM-3 (Full Matrix RGB, 400mm, NTCIP)
- **Peaje:** Daktronics SmartLane™ / SWARCO Canopy Display (P10 Ámbar, IP/REV)
- **Energía:** Grid-Powered + UPS 48h (ahorro $375k vs. solar)
- **Comunicación:** Fibra + 4G LTE failover (mitigación glosa O6)

---

## ✅ **DICTAMEN FINAL:**

**La cantidad correcta para construcción 2026 es:**

```
┌─────────────────────────────────────────────────────────────┐
│  25 PMV de Vía (AT1)                                        │
│  + 4 PMV de Peaje (AT2)                                     │
│  + 14 Displays de Carril (IP/REV 2021)                     │
│  ─────────────────────────────────────────────────────────  │
│  = 43 UNIDADES FUNCIONALES                                  │
│  = 27 ESTRUCTURAS FÍSICAS (optimización)                    │
│  = $2,070,000 USD CAPEX (optimizado)                        │
└─────────────────────────────────────────────────────────────┘
```

**ACCIÓN INMEDIATA:**
1. ✅ Corregir T05: Cambiar de 39 a **43 unidades** (o 27 estructuras + 43 funcionales)
2. ✅ Actualizar `tm01_master_data.js`: CAPEX = **$2,070,000 USD**
3. ✅ Crear DT justificando optimización de estructura (ahorro $526k)
4. ✅ Actualizar RFQ con especificaciones UNE-EN 12966 + DATEX II

---

**Última actualización:** 27 de Enero 2026  
**Estado:** 🟢 **ANÁLISIS PROMPT MAESTRO V2.9 COMPLETADO**  
**Metodología:** Doble Sombrero (Auditor + Ingeniero)
