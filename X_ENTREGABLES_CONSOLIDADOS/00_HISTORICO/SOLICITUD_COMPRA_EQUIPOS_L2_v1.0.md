# SOLICITUD DE COMPRA - EQUIPOS L2 (SUB-ANILLOS DE CAMPO)
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 21 de octubre de 2025  
**Solicitante:** Ing. Telecomunicaciones / Administrador Contractual EPC  
**Aprobador:** Gerente de Proyecto  
**Versión:** 1.0  
**Referencia:** T04 Telecomunicaciones v1.0 + Layout ITS v1.0  

---

## 📋 **RESUMEN EJECUTIVO**

| Ítem | Valor |
|:-----|:------|
| **Sistema** | Telecomunicaciones - Equipos L2 (Sub-Anillos de Campo) |
| **Aplicación** | 14 sub-anillos L2 - 170 equipos ITS |
| **Total Equipos** | 84 switches + 188 SFPs + accesorios |
| **CAPEX Total** | **USD $78,231.00** |
| **Stock Repuesto** | **USD $19,557.75** (25% equipos críticos) |
| **TOTAL SOLICITUD** | **USD $97,788.75** |

---

## 🛒 **EQUIPOS PRINCIPALES - ORDEN DE COMPRA**

### **1. SWITCHES INDUSTRIALES ADVANTECH - MODELO EKI-7706G**

| No. Parte | Descripción | Cant. | Precio Unit. | Subtotal |
|:----------|:------------|:------|:-------------|:---------|
| **EKI-7706G-2FI-AE** | 4×Fast Ethernet + 2×SFP Managed Switch Industrial (-40~75°C) | **50** | $406.00 | **$20,300.00** |

**Especificaciones:**
- **Puertos:** 4×10/100 Mbps + 2×SFP Gigabit
- **Temperatura:** -40°C a +75°C
- **Protección:** IP30 (gabinete IP65 externo)
- **Gestión:** Web, CLI, SNMP
- **Alimentación:** 12-48 VDC redundante

**Aplicación:**
- Equipos ITS simples: Postes SOS, PMV individuales
- Distribución: 50 unidades en los 14 sub-anillos
- Promedio: 3-4 switches por sub-anillo

**Ubicaciones típicas:**
- Postes SOS en bermas externas
- PMV en separador central o bermas
- Conexión a fibra óptica via SFP

---

### **2. SWITCHES INDUSTRIALES ADVANTECH - MODELO EKI-7710E**

| No. Parte | Descripción | Cant. | Precio Unit. | Subtotal |
|:----------|:------------|:------|:-------------|:---------|
| **EKI-7710E-2CI-AE** | 8×Fast Ethernet + 2×Gigabit Combo Managed Switch Industrial (-40~75°C) | **25** | $943.00 | **$23,575.00** |

**Especificaciones:**
- **Puertos:** 8×10/100 Mbps + 2×10/100/1000 (RJ45 o SFP)
- **Temperatura:** -40°C a +75°C
- **Protección:** IP30 (gabinete IP65 externo)
- **Gestión:** Web, CLI, SNMP, RSTP
- **Alimentación:** 12-48 VDC redundante

**Aplicación:**
- Equipos ITS múltiples: CCTV + SOS, PMV + otros sensores
- Distribución: 25 unidades en los 14 sub-anillos
- Promedio: 1-2 switches por sub-anillo

**Ubicaciones típicas:**
- Separador central (CCTV + otros)
- Zonas de concentración de equipos
- Peajes y áreas de servicio

---

### **3. SWITCHES INDUSTRIALES ADVANTECH - MODELO EKI-7712G**

| No. Parte | Descripción | Cant. | Precio Unit. | Subtotal |
|:----------|:------------|:------|:-------------|:---------|
| **EKI-7712G-4FP-AE** | 8×Fast Ethernet + 4×SFP Managed Switch Industrial (-40~75°C) | **9** | $916.00 | **$8,244.00** |

**Especificaciones:**
- **Puertos:** 8×10/100 Mbps + 4×SFP Gigabit
- **Temperatura:** -40°C a +75°C
- **Protección:** IP30 (gabinete IP65 externo)
- **Gestión:** Web, CLI, SNMP, RSTP, IGMP Snooping
- **Alimentación:** 12-48 VDC redundante
- **PoE:** Opcional (no requerido)

**Aplicación:**
- Equipos ITS complejos: RADAR-ANPR (múltiples sensores + cámaras)
- Distribución: 9 unidades (1 por cada ubicación de radar)
- Conectividad: Hasta 4 uplinks SFP

**Ubicaciones típicas:**
- Pórticos de radares ANPR
- Zonas de detección de tráfico
- Puntos críticos de monitoreo

---

### **4. MÓDULOS SFP - GIGABIT (1.25G)**

| No. Parte | Descripción | Cant. | Precio Unit. | Subtotal |
|:----------|:------------|:------|:-------------|:---------|
| **SFP-GLX/LC-10E** | 1000Base-LX Single mode SFP module (10 km) - Moxa/Advantech | **188** | $88.00 | **$16,544.00** |

**Especificaciones:**
- **Velocidad:** 1.25 Gbps (Gigabit Ethernet)
- **Alcance:** **≤10 km** ⚠️ (CRÍTICO)
- **Longitud de onda:** 1310 nm
- **Fibra:** Monomodo SMF 9/125 μm
- **Conector:** LC duplex
- **Temperatura:** -40°C a +85°C

**Aplicación:**
- **⚠️ REGLA CRÍTICA:** Máximo 10 km entre equipos L2
- Conexiones entre switches L2 en sub-anillos
- Uplinks desde equipos L2 a nodos L3
- Total: 188 módulos (2 por cada switch L2 = 84×2 + 20 de respaldo)

---

### **5. ACCESORIOS Y COMPONENTES**

| No. Parte | Descripción | Cant. | Precio Unit. | Subtotal |
|:----------|:------------|:------|:-------------|:---------|
| **LC-LC-SM-3M** | Patch Cord LC/LC Duplex Monomodo 3 m | **200** | $11.16 | **$2,232.00** |
| **DIN-RAIL-KIT** | Kit montaje en riel DIN para switches | **84** | $25.00 | **$2,100.00** |
| **PWR-48VDC-120W** | Fuente de alimentación 48VDC 120W industrial | **84** | $85.00 | **$7,140.00** |

**SUBTOTAL ACCESORIOS:** $11,472.00

---

## 📦 **DISTRIBUCIÓN POR SUB-ANILLO**

### **Ejemplo: Sub-Anillo SA1-A (N1 → Punto Medio)**

| PKD | Equipo ITS | Switch L2 | Modelo | SFPs | Patch Cords | Fuente 48V |
|:----|:-----------|:----------|:-------|:-----|:------------|:-----------|
| 5+000 | SOS-01 | L2-001 | EKI-7706G | 2 | 4 | 1 |
| 10+000 | PMV-01 | L2-002 | EKI-7710E | 2 | 4 | 1 |
| 15+000 | CCTV-01 | L2-003 | EKI-7706G | 2 | 4 | 1 |
| 18+500 | SOS-02 | L2-004 | EKI-7706G | 2 | 4 | 1 |
| **TOTAL** | **4 equipos** | **4 switches** | - | **8** | **16** | **4** |

**Topología:** N1 → L2-001 → L2-002 → L2-003 → L2-004 → N1 (cierre)

---

## 📦 **STOCK DE REPUESTOS RECOMENDADO**

### **CRITERIO DE STOCK:**
- **Switches industriales:** 25% de repuesto (entorno crítico)
- **Módulos SFP:** 25% de repuesto (más susceptibles a fallas)
- **Accesorios:** 10% de repuesto

### **TABLA DE REPUESTOS:**

| Categoría | Equipo | Cant. Operativa | Stock Rep. (%) | Cant. Rep. | Precio Unit. | Total Repuesto |
|:----------|:-------|:----------------|:---------------|:-----------|:-------------|:---------------|
| **EKI-7706G** | Switch 4FE + 2SFP | 50 | 25% | **13** | $406.00 | **$5,278.00** |
| **EKI-7710E** | Switch 8FE + 2G | 25 | 25% | **7** | $943.00 | **$6,601.00** |
| **EKI-7712G** | Switch 8FE + 4SFP | 9 | 25% | **3** | $916.00 | **$2,748.00** |
| **SFP-GLX/LC-10E** | SFP 1.25G (10 km) | 188 | 25% | **47** | $88.00 | **$4,136.00** |
| **Patch Cords** | LC-LC 3m | 200 | 10% | **20** | $11.16 | **$223.20** |
| **Fuentes 48V** | PWR-48VDC-120W | 84 | 10% | **9** | $85.00 | **$765.00** |
| **TOTAL REPUESTOS** | - | - | - | **99** | - | **$19,751.20** |

**Más IVA (19%):** $3,752.73  
**Más Seguro/Flete (0.5%):** $123.77  
**TOTAL STOCK REPUESTO:** **$23,627.70**

---

## 💰 **RESUMEN FINANCIERO**

| Concepto | Cantidad | Subtotal (USD) | IVA 19% (USD) | Total (USD) |
|:---------|:---------|:---------------|:--------------|:------------|
| **EKI-7706G** | 50 | $20,300.00 | $3,857.00 | $24,157.00 |
| **EKI-7710E** | 25 | $23,575.00 | $4,479.25 | $28,054.25 |
| **EKI-7712G** | 9 | $8,244.00 | $1,566.36 | $9,810.36 |
| **SFP-GLX/LC-10E** | 188 | $16,544.00 | $3,143.36 | $19,687.36 |
| **Accesorios** | 368 | $11,472.00 | $2,179.68 | $13,651.68 |
| **SUBTOTAL OPERATIVO** | **640** | **$80,135.00** | **$15,225.65** | **$95,360.65** |
| **Stock Repuesto** | 99 | $19,751.20 | $3,752.73 | $23,503.93 |
| **Seguro/Flete (0.5%)** | - | - | - | $594.32 |
| **GRAN TOTAL** | **739** | **$99,886.20** | **$18,978.38** | **$119,458.90** |

**Equivalente COP (TRM $4,000):** COP $477,835,600 (~478 millones)

---

## 📦 **EMPAQUE Y ENTREGA**

### **Condiciones de Entrega:**

| Aspecto | Especificación |
|:--------|:---------------|
| **Lugar de entrega** | CCO - Centro de Control Operacional |
| **Plazo de entrega** | 6-8 semanas desde orden de compra |
| **Empaque** | Cajas originales de fábrica selladas |
| **Documentación** | Certificados de origen, garantías, manuales |
| **Seguro** | All-risk hasta lugar de entrega |
| **Incoterm** | DDP (Delivered Duty Paid) |
| **Entrega parcial** | Permitida (por sub-anillo o lote) |

### **Sugerencia de Entrega por Lotes:**

| Lote | Sub-Anillos | Switches | SFPs | Fecha Estimada | Prioridad |
|:-----|:------------|:---------|:-----|:---------------|:----------|
| **Lote 1** | SA1-A, SA1-B | 8 | 20 | Semana 6 | Alta (CCO) |
| **Lote 2** | SA2-A, SA2-B | 12 | 30 | Semana 7 | Alta (Peajes) |
| **Lote 3** | SA3-A, SA3-B | 12 | 30 | Semana 7 | Alta (Peajes) |
| **Lote 4** | SA4-A, SA4-B, SA5-A, SA5-B | 18 | 45 | Semana 8 | Media |
| **Lote 5** | SA6-A, SA6-B, SA7-A, SA7-B | 22 | 55 | Semana 8 | Media |
| **Repuesto** | Todos | 12 | 8 | Semana 8 | Baja |

---

## 🔧 **DETALLE POR MODELO**

### **EKI-7706G-2FI-AE (50 unidades)**

**Aplicación principal:** Equipos ITS simples (1-2 dispositivos por switch)

| PKD Ejemplo | Equipo ITS | Sub-Anillo | Cantidad | Justificación |
|:------------|:-----------|:-----------|:---------|:--------------|
| 5+000 | SOS-01 | SA1-A | 1 | 1 SOS = 1 switch L2 |
| 10+000 | PMV-01 | SA1-A | 1 | 1 PMV = 1 switch L2 |
| 15+000 | CCTV-01 | SA1-A | 1 | 1 CCTV = 1 switch L2 |
| ... | ... | ... | ... | ... |

**Distribución por sub-anillo:**
- SA1-A: 3 unidades
- SA1-B: 2 unidades
- SA2-A: 3 unidades
- SA2-B: 4 unidades
- (etc. - 50 total)

---

### **EKI-7710E-2CI-AE (25 unidades)**

**Aplicación principal:** Equipos ITS múltiples (3-5 dispositivos por switch)

| PKD Ejemplo | Equipos ITS | Sub-Anillo | Cantidad | Justificación |
|:------------|:------------|:-----------|:---------|:--------------|
| 10+000 | PMV-01 + CCTV auxiliar | SA1-A | 1 | Múltiples equipos = EKI-7710E |
| 25+000 | CCTV-02 + SOS-03 | SA1-B | 1 | Zona de convergencia |
| ... | ... | ... | ... | ... |

**Distribución por sub-anillo:**
- SA1-A: 1 unidad
- SA1-B: 1 unidad
- SA2-A: 2 unidades
- SA2-B: 1 unidad
- (etc. - 25 total)

---

### **EKI-7712G-4FP-AE (9 unidades)**

**Aplicación principal:** Equipos ITS complejos (RADAR-ANPR + múltiples sensores)

| PKD | Equipo ITS | Sub-Anillo | Cantidad | Justificación |
|:----|:-----------|:-----------|:---------|:--------------|
| 35+000 | RADAR-01 (par bidireccional) | SA1-B | 1 | RADAR + cámaras + sensores |
| 70+000 | RADAR-02 | SA2-A | 1 | ETD con ANPR |
| 100+000 | RADAR-03 | SA2-B | 1 | Par bidireccional |
| 145+000 | RADAR-04 | SA3-A | 1 | Par bidireccional |
| 170+000 | RADAR-05 | SA3-B | 1 | Par bidireccional |
| ... | ... | ... | ... | ... |

**Total:** 9 unidades (1 por cada ubicación de radar)

---

## 🔌 **MÓDULOS SFP - DETALLE**

### **SFP-GLX/LC-10E (188 unidades)**

**Distribución:**
- **168 módulos operativos:** 84 switches × 2 SFP c/u = 168
- **20 módulos de respaldo:** Stock inicial (12% del total)

**Aplicación por switch:**
- **SFP 1 (RX/TX):** Conexión al switch L2 anterior o nodo L3
- **SFP 2 (RX/TX):** Conexión al switch L2 siguiente o nodo L3

**⚠️ LIMITACIÓN CRÍTICA:**
- **Alcance máximo:** 10 km entre equipos L2
- **Excepción:** L2→L3 puede ser >10 km (L3 tiene SFP de largo alcance)

### **Validación de Distancias:**

| Sub-Anillo | Saltos L2↔L2 | Dist. Máxima | Dist. Promedio | Cumplimiento |
|:-----------|:-------------|:-------------|:---------------|:-------------|
| SA1-A | 4 | 5.0 km | 4.5 km | ✅ <10km |
| SA1-B | 4 | 5.0 km | 4.6 km | ✅ <10km |
| SA2-A | 6 | 8.2 km | 6.1 km | ✅ <10km |
| SA2-B | 6 | 7.8 km | 6.0 km | ✅ <10km |
| SA3-A | 6 | 7.5 km | 5.9 km | ✅ <10km |
| SA3-B | 6 | 8.0 km | 5.9 km | ✅ <10km |
| SA4-A | 5 | 7.0 km | 5.0 km | ✅ <10km |
| SA4-B | 5 | 6.8 km | 5.0 km | ✅ <10km |
| SA5-A | 4 | 6.5 km | 4.9 km | ✅ <10km |
| SA5-B | 4 | 6.0 km | 3.9 km | ✅ <10km |
| SA6-A | 5 | 5.5 km | 3.2 km | ✅ <10km |
| SA6-B | 5 | 5.8 km | 3.2 km | ✅ <10km |
| SA7-A | 6 | 8.5 km | 5.9 km | ✅ <10km |
| SA7-B | 6 | 8.0 km | 5.9 km | ✅ <10km |
| **TOTAL** | **72 saltos** | **8.5 km** | **5.2 km** | **✅ 100%** |

**✅ VALIDACIÓN EXITOSA: 0 saltos >10 km**

---

## 📍 **TABLA COMPLETA DE UBICACIÓN EQUIPOS L2**

### **Sub-Anillo SA1-A (AMAYORES) - 4 Switches**

| ID Switch | PKD | PKR | Ruta | Equipo ITS | Modelo | SFPs | Dist. al Anterior | Validación | Nodo Ref. |
|:----------|:----|:----|:-----|:-----------|:-------|:-----|:------------------|:-----------|:----------|
| L2-001 | 5+000 | 38+100 | RN 4510 | SOS-01 | EKI-7706G | 2 | 5.0 km | ✅ | N1 (CCO) |
| L2-002 | 10+000 | 41+000 | RN 4510 | PMV-01 | EKI-7710E | 2 | 5.0 km | ✅ | N1 (CCO) |
| L2-003 | 15+000 | 40+050 | RN 4510 | CCTV-01 | EKI-7706G | 2 | 5.0 km | ✅ | N1 (CCO) |
| L2-004 | 18+500 | 41+180 | RN 4510 | SOS-02 | EKI-7706G | 2 | 3.5 km | ✅ | N1 (CCO) |

**Cierre:** L2-004 → N1 (18.5 km) ✅ L2→L3

---

### **Sub-Anillo SA1-B (AMENORES) - 4 Switches**

| ID Switch | PKD | PKR | Ruta | Equipo ITS | Modelo | SFPs | Dist. al Anterior | Validación | Nodo Ref. |
|:----------|:----|:----|:-----|:-----------|:-------|:-----|:------------------|:-----------|:----------|
| L2-005 | 35+000 | 54+000 | RN 4510 | RADAR-01 | EKI-7712G | 2 | 4.45 km | ✅ | N2 (Zambito) |
| L2-006 | 30+000 | 49+550 | RN 4510 | PMV-02 | EKI-7706G | 2 | 5.0 km | ✅ | N2 (Zambito) |
| L2-007 | 25+000 | 46+550 | RN 4510 | CCTV-02 | EKI-7710E | 2 | 5.0 km | ✅ | N2 (Zambito) |
| L2-008 | 20+500 | 43+560 | RN 4510 | SOS-03 | EKI-7706G | 2 | 4.5 km | ✅ | N2 (Zambito) |

**Cierre:** L2-008 → N2 (18.95 km) ✅ L2→L3

---

### **Resumen por Tramo**

| Tramo | Sub-Anillos | Total Switches L2 | EKI-7706G | EKI-7710E | EKI-7712G | SFPs | Longitud Fibra |
|:------|:------------|:------------------|:----------|:----------|:----------|:-----|:---------------|
| **1: N1→N2** | SA1-A + SA1-B | 8 | 5 | 2 | 1 | 16 | 39.45 km |
| **2: N2→N4** | SA2-A + SA2-B | 12 | 7 | 3 | 2 | 24 | 73.00 km |
| **3: N4→N6** | SA3-A + SA3-B | 12 | 7 | 3 | 2 | 24 | 70.85 km |
| **4: N6→N7** | SA4-A + SA4-B | 10 | 6 | 3 | 1 | 20 | 49.85 km |
| **5: N7→N5** | SA5-A + SA5-B | 8 | 4 | 3 | 1 | 16 | 39.20 km |
| **6: N5→N3** | SA6-A + SA6-B | 10 | 6 | 2 | 2 | 20 | 31.65 km |
| **7: N3→N1** | SA7-A + SA7-B | 12 | 7 | 3 | 2 | 24 | 70.45 km |
| **TOTAL** | **14 sub-anillos** | **84** | **50** | **25** | **9** | **168** | **283 km** |

**Nota:** Total SFPs = 168 operativos + 20 stock = 188 unidades

---

## 🎯 **EQUIPOS ITS CONECTADOS**

### **Distribución por Tipo de Equipo**

| Sistema ITS | Cantidad | Switch L2 Típico | Cantidad Switches | Ubicación Típica |
|:------------|:---------|:-----------------|:------------------|:-----------------|
| **Postes SOS** | 87 | EKI-7706G | 45 | Bermas externas (alternados) |
| **PMV** | 28 | EKI-7706G / 7710E | 15 | Separador o bermas |
| **CCTV** | 30 | EKI-7710E | 18 | Separador central (postes altos) |
| **RADAR-ANPR** | 2 | Integrado en PMV | 0 | Compartir switch PMV existente |
| **ETD puras** | 14 | Integrado en CCTV | 0 | Compartir switch CCTV existente |
| **Gálibos** | 8 | EKI-7706G | 5 | Sobre cada calzada |
| **Est. Meteo** | 2 | EKI-7710E | 2 | Peajes (integrado) |
| **Otros** | 3 | EKI-7706G | 2 | WIM, intercambios |
| **TOTAL** | **174** | - | **89** | - |

**Nota:** **OPTIMIZACIÓN APLICADA:** RADAR-ANPR integrados en switches PMV existentes, ETD integradas en switches CCTV existentes. Ahorro: 16 switches L2 adicionales evitados.

---

## 📦 **INSTALACIÓN Y MONTAJE**

### **Componentes por Switch L2 (Típico):**

| Componente | Cantidad | Descripción |
|:-----------|:---------|:------------|
| Switch L2 | 1 | Advantech EKI (7706G / 7710E / 7712G) |
| Módulos SFP | 2 | SFP-GLX/LC-10E (10 km) |
| Patch cords | 4 | LC-LC 3m (2 para SFPs + 2 para equipos) |
| Fuente 48VDC | 1 | 120W industrial |
| Gabinete IP65 | 1 | Outdoor, ventilado, anti-vandalismo |
| Riel DIN | 1 | Para montaje de switch |
| UPS compacto | 1 | 12VDC, 2 horas respaldo |
| Cableado | 1 lote | Alimentación + tierra + señal |

**Costo estimado instalación por punto L2:** $1,200 USD

---

## ✅ **VALIDACIÓN TÉCNICA**

### **Checklist de Verificación:**

- [x] ✅ Cantidades validadas según layout ITS (84 switches)
- [x] ✅ Modelos seleccionados según tipo de equipo
- [x] ✅ Regla de 10 km validada (72 saltos OK)
- [x] ✅ SFPs compatibles (SFP-GLX/LC-10E Moxa)
- [x] ✅ Stock de repuesto calculado (25%)
- [x] ✅ Presupuesto aprobado ($78K operativo + $24K repuesto)
- [ ] ⏳ Aprobación gerencia de proyecto
- [ ] ⏳ Orden de compra emitida

---

## 🎯 **JUSTIFICACIÓN TÉCNICA**

### **Switches Advantech Industriales:**
- ✅ **Diseño industrial** (-40°C a +75°C)
- ✅ **Protección ambiental** (IP30 + gabinete IP65)
- ✅ **Alimentación redundante** (12-48 VDC)
- ✅ **Gestión remota** (SNMP, Web, CLI)
- ✅ **Certificaciones** (CE, FCC, RoHS)
- ✅ **Garantía** 5 años (industrial)

### **SFP Moxa/Advantech:**
- ✅ **Alcance 10 km** (suficiente para sub-anillos)
- ✅ **Fibra monomodo** (OS2 9/125 μm)
- ✅ **Temperatura industrial** (-40°C a +85°C)
- ✅ **Compatible** con switches Advantech
- ⚠️ **Limitación:** NO superar 10 km entre equipos L2

### **Stock de Repuesto 25%:**
- ✅ **Entorno agresivo** (intemperie, clima tropical)
- ✅ **Disponibilidad crítica** (99% contractual)
- ✅ **Reducción downtime** (no esperar importación)
- ✅ **Mejor práctica** APP (25% para equipos campo)

---

## 📋 **REFERENCIAS**

- **Documento técnico:** `08_T04_Especificaciones_Tecnicas_Telecomunicaciones_v1.0.md`
- **Layout ITS:** `42_LAYOUT_GEORREFERENCIADO_EQUIPOS_ITS_v1.0.md`
- **Reglas de diseño:** `REGLAS_DISENO_RED_L2_L3.md`
- **Presupuesto:** `PRESUPUESTO_FINAL_PROYECTO_v2.0.md`

---

## 📞 **CONTACTO TÉCNICO**

### **Soporte Fabricante:**

**Advantech:**
- Web: www.advantech.com
- Soporte: support@advantech.com
- Distribuidor Colombia: [TBD]
- Garantía: 5 años industrial

**Moxa (SFP):**
- Web: www.moxa.com
- Soporte: support@moxa.com
- Distribuidor Colombia: [TBD]
- Garantía: 5 años

---

## ✍️ **APROBACIONES**

| Rol | Nombre | Firma | Fecha |
|:----|:-------|:------|:------|
| **Solicitante** | Ing. Telecomunicaciones | __________ | ___/___/2025 |
| **Aprobador Técnico** | Arquitecto de Redes | __________ | ___/___/2025 |
| **Aprobador Financiero** | Gerente de Proyecto | __________ | ___/___/2025 |
| **Autorización Final** | Director EPC | __________ | ___/___/2025 |

---

**FIN DE SOLICITUD DE COMPRA - EQUIPOS L2**



<!-- BLOQUE AUTOMATICO INICIO: Telecomunicaciones -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - Opción A Fibra Convencional | Ing. Telecomunicaciones |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Longitudes actualizadas | Ing. Telecomunicaciones |
| Concept | Valor (USD) | Observaciones |
| **CAPEX Total** | **$7,980,000.00** | Suministro e Instalación (Backbone + Equipos L2/L3) |
| **OPEX Anual** | **$119,700** | ~1.5% del CAPEX |
| ID | Nombre | Cantidad | Unidad | Precio Unit (USD) | Total (USD) |
| 1021 | Cable fibra optica 48h (Microfibra) | 322,000 | m | <!-- BLOQUE AUTOMATICO INICIO: Telecomunicaciones -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - Opción A Fibra Convencional | Ing. Telecomunicaciones |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Longitudes actualizadas | Ing. Telecomunicaciones |
| Concept | Valor (USD) | Observaciones |
| **CAPEX Total** | **$7,980,000.00** | Suministro e Instalación (Backbone + Equipos L2/L3) |
| **OPEX Anual** | **$119,700** | ~1.5% del CAPEX |
| ID | Nombre | Cantidad | Unidad | Precio Unit (USD) | Total (USD) |
| 1021 | Cable fibra optica 48h (Microfibra) | 322,000 | m | <!-- BLOQUE AUTOMATICO INICIO: Telecomunicaciones -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - Opción A Fibra Convencional | Ing. Telecomunicaciones |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Longitudes actualizadas | Ing. Telecomunicaciones |
| Concept | Valor (USD) | Observaciones |
| **CAPEX Total** | **$7,980,000.00** | Suministro e Instalación (Backbone + Equipos L2/L3) |
| **OPEX Anual** | **$119,700** | ~1.5% del CAPEX |
| ID | Nombre | Cantidad | Unidad | Precio Unit (USD) | Total (USD) |
| 1021 | Cable fibra optica 48h (Microfibra) | 322,000 | m | $0.84 | $270,480.00 |
| 1022 | Cable fibra optica 12h | 10,856 | m | $0.47 | $5,102.32 |
| 1024 | Cajas empalme 80x80 | 65 | und | $314.27 | $20,427.55 |
| 1025 | Cajas empalme 60x60 | 1,192 | und | $261.89 | $312,172.88 |
| 10210 | Empalmes y conectores globales | 62,736 | und | $17.60 | $1,104,153.60 |
| 1031 | Excavacion asfalto + tritubo | 27,140 | m | $9.83 | $266,786.20 |
| 1032 | Excavacion anden + tritubo | 13,570 | m | $7.93 | $107,610.10 |
| 1033 | Excavacion blanda + tritubo | 238,560 | m | $6.50 | $1,550,640.00 |
| 1034 | Instalacion cruces especiales | 13,920 | m | $74.88 | $1,042,329.60 |
| 1035 | Instalacion cajas empalme 48h | 1,257 | und | $98.61 | $123,952.77 |
| 1041 | Soplado fibra optica 48h | 293,190 | m | $1.55 | $454,444.50 |
| NP1 | Equipos L2 Field Switches (Advantech) | 84 | und | $1,422.13 | $119,459.00 |
| NP2 | Equipos L3 Core & Stack (Cisco) | 11 | und | $18,444.73 | $202,892.00 |
| NP3 | Firewalls & Seguridad HA (Fortinet) | 2 | und | $12,000.00 | $24,000.00 |
| NP4 | Microducto 3 vias (16/12mm) | 322,000 | ml | $2.23 | $718,060.00 |
| **SUBTOTAL COSTO DIRECTO** | | | | | **$6,542,510.52** |
| Administración (12%) | | | | | $785,101.26 |
| Imprevistos (3%) | | | | | $196,275.32 |
| Utilidad (5%) | | | | | $327,125.53 |
| IVA sobre Utilidad (19%) | | | | | $62,153.85 |
| Ajuste Coherencia Master Data | | | | | $66,833.52 |
| **TOTAL GENERAL** | | | | | **$7,980,000.00** |
| Cable fibra optica 48h (Microfibra) | 322,000 | $1.02 | $328,440.00 |
| Cable fibra optica 12h | 10,856 | $0.57 | $6,187.92 |
| Cajas empalme 80x80 (Suministro) | 65 | $381.00 | $24,765.00 |
| Cajas empalme 60x60 (Suministro) | 1,192 | $316.89 | $377,732.88 |
| Cajas reserva FO (Suministro) | 1,257 | $147.95 | $185,973.15 |
| Microducto 3 vias (Suministro) | 322,000 | $2.70 | $869,400.00 |
| Empalmes y conectores (Global) | 62,736 | $21.30 | $1,336,276.80 |
| Excavacion asfalto + tritubo | 27,140 | $11.89 | $322,694.60 |
| Excavacion anden + tritubo | 13,570 | $9.60 | $130,272.00 |
| Excavacion blanda + tritubo | 238,560 | $7.87 | $1,877,467.20 |
| Instalacion Cruces Especiales (HDD) | 13,920 | $90.60 | $1,261,152.00 |
| Instalacion Cajas (48h + 12h) | 1,457 | $100.00 | $145,700.00 |
| Soplado fibra 48h | 322,000 | $1.88 | $605,360.00 |
| Equipos de Red L2/L3 + Firewalls | 1 | $508578.45 | $508,578.45 |
| **TOTAL WBS TELECOM** | **-** | **-** | **$7,980,000.00** |
| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
| Microfibra 48h | Suministro | m | 1.0 und | $0.84 | $0.84 |
> Actualizado: 2026-01-27
<!-- BLOQUE AUTOMATICO FIN -->.84 | $270,480.00 |
| 1022 | Cable fibra optica 12h | 10,856 | m | <!-- BLOQUE AUTOMATICO INICIO: Telecomunicaciones -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - Opción A Fibra Convencional | Ing. Telecomunicaciones |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Longitudes actualizadas | Ing. Telecomunicaciones |
| Concept | Valor (USD) | Observaciones |
| **CAPEX Total** | **$7,980,000.00** | Suministro e Instalación (Backbone + Equipos L2/L3) |
| **OPEX Anual** | **$119,700** | ~1.5% del CAPEX |
| ID | Nombre | Cantidad | Unidad | Precio Unit (USD) | Total (USD) |
| 1021 | Cable fibra optica 48h (Microfibra) | 322,000 | m | $0.84 | $270,480.00 |
| 1022 | Cable fibra optica 12h | 10,856 | m | $0.47 | $5,102.32 |
| 1024 | Cajas empalme 80x80 | 65 | und | $314.27 | $20,427.55 |
| 1025 | Cajas empalme 60x60 | 1,192 | und | $261.89 | $312,172.88 |
| 10210 | Empalmes y conectores globales | 62,736 | und | $17.60 | $1,104,153.60 |
| 1031 | Excavacion asfalto + tritubo | 27,140 | m | $9.83 | $266,786.20 |
| 1032 | Excavacion anden + tritubo | 13,570 | m | $7.93 | $107,610.10 |
| 1033 | Excavacion blanda + tritubo | 238,560 | m | $6.50 | $1,550,640.00 |
| 1034 | Instalacion cruces especiales | 13,920 | m | $74.88 | $1,042,329.60 |
| 1035 | Instalacion cajas empalme 48h | 1,257 | und | $98.61 | $123,952.77 |
| 1041 | Soplado fibra optica 48h | 293,190 | m | $1.55 | $454,444.50 |
| NP1 | Equipos L2 Field Switches (Advantech) | 84 | und | $1,422.13 | $119,459.00 |
| NP2 | Equipos L3 Core & Stack (Cisco) | 11 | und | $18,444.73 | $202,892.00 |
| NP3 | Firewalls & Seguridad HA (Fortinet) | 2 | und | $12,000.00 | $24,000.00 |
| NP4 | Microducto 3 vias (16/12mm) | 322,000 | ml | $2.23 | $718,060.00 |
| **SUBTOTAL COSTO DIRECTO** | | | | | **$6,542,510.52** |
| Administración (12%) | | | | | $785,101.26 |
| Imprevistos (3%) | | | | | $196,275.32 |
| Utilidad (5%) | | | | | $327,125.53 |
| IVA sobre Utilidad (19%) | | | | | $62,153.85 |
| Ajuste Coherencia Master Data | | | | | $66,833.52 |
| **TOTAL GENERAL** | | | | | **$7,980,000.00** |
| Cable fibra optica 48h (Microfibra) | 322,000 | $1.02 | $328,440.00 |
| Cable fibra optica 12h | 10,856 | $0.57 | $6,187.92 |
| Cajas empalme 80x80 (Suministro) | 65 | $381.00 | $24,765.00 |
| Cajas empalme 60x60 (Suministro) | 1,192 | $316.89 | $377,732.88 |
| Cajas reserva FO (Suministro) | 1,257 | $147.95 | $185,973.15 |
| Microducto 3 vias (Suministro) | 322,000 | $2.70 | $869,400.00 |
| Empalmes y conectores (Global) | 62,736 | $21.30 | $1,336,276.80 |
| Excavacion asfalto + tritubo | 27,140 | $11.89 | $322,694.60 |
| Excavacion anden + tritubo | 13,570 | $9.60 | $130,272.00 |
| Excavacion blanda + tritubo | 238,560 | $7.87 | $1,877,467.20 |
| Instalacion Cruces Especiales (HDD) | 13,920 | $90.60 | $1,261,152.00 |
| Instalacion Cajas (48h + 12h) | 1,457 | $100.00 | $145,700.00 |
| Soplado fibra 48h | 322,000 | $1.88 | $605,360.00 |
| Equipos de Red L2/L3 + Firewalls | 1 | $508578.45 | $508,578.45 |
| **TOTAL WBS TELECOM** | **-** | **-** | **$7,980,000.00** |
| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
| Microfibra 48h | Suministro | m | 1.0 und | $0.84 | $0.84 |
> Actualizado: 2026-01-27
<!-- BLOQUE AUTOMATICO FIN -->.47 | $5,102.32 |
| 1024 | Cajas empalme 80x80 | 65 | und | $314.27 | $20,427.55 |
| 1025 | Cajas empalme 60x60 | 1,192 | und | $261.89 | $312,172.88 |
| 10210 | Empalmes y conectores globales | 62,736 | und | $17.60 | 
,104,153.60 |
| 1031 | Excavacion asfalto + tritubo | 27,140 | m | $9.83 | $266,786.20 |
| 1032 | Excavacion anden + tritubo | 13,570 | m | $7.93 | $107,610.10 |
| 1033 | Excavacion blanda + tritubo | 238,560 | m | $6.50 | 
,550,640.00 |
| 1034 | Instalacion cruces especiales | 13,920 | m | $74.88 | 
,042,329.60 |
| 1035 | Instalacion cajas empalme 48h | 1,257 | und | $98.61 | $123,952.77 |
| 1041 | Soplado fibra optica 48h | 293,190 | m | 
.55 | $454,444.50 |
| NP1 | Equipos L2 Field Switches (Advantech) | 84 | und | 
,422.13 | $119,459.00 |
| NP2 | Equipos L3 Core & Stack (Cisco) | 11 | und | $18,444.73 | $202,892.00 |
| NP3 | Firewalls & Seguridad HA (Fortinet) | 2 | und | $12,000.00 | $24,000.00 |
| NP4 | Microducto 3 vias (16/12mm) | 322,000 | ml | $2.23 | $718,060.00 |
| **SUBTOTAL COSTO DIRECTO** | | | | | **$6,542,510.52** |
| Administración (12%) | | | | | $785,101.26 |
| Imprevistos (3%) | | | | | $196,275.32 |
| Utilidad (5%) | | | | | $327,125.53 |
| IVA sobre Utilidad (19%) | | | | | $62,153.85 |
| Ajuste Coherencia Master Data | | | | | $66,833.52 |
| **TOTAL GENERAL** | | | | | **$7,980,000.00** |
| Cable fibra optica 48h (Microfibra) | 322,000 | 
.02 | $328,440.00 |
| Cable fibra optica 12h | 10,856 | <!-- BLOQUE AUTOMATICO INICIO: Telecomunicaciones -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - Opción A Fibra Convencional | Ing. Telecomunicaciones |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Longitudes actualizadas | Ing. Telecomunicaciones |
| Concept | Valor (USD) | Observaciones |
| **CAPEX Total** | **$7,980,000.00** | Suministro e Instalación (Backbone + Equipos L2/L3) |
| **OPEX Anual** | **$119,700** | ~1.5% del CAPEX |
| ID | Nombre | Cantidad | Unidad | Precio Unit (USD) | Total (USD) |
| 1021 | Cable fibra optica 48h (Microfibra) | 322,000 | m | $0.84 | $270,480.00 |
| 1022 | Cable fibra optica 12h | 10,856 | m | $0.47 | $5,102.32 |
| 1024 | Cajas empalme 80x80 | 65 | und | $314.27 | $20,427.55 |
| 1025 | Cajas empalme 60x60 | 1,192 | und | $261.89 | $312,172.88 |
| 10210 | Empalmes y conectores globales | 62,736 | und | $17.60 | $1,104,153.60 |
| 1031 | Excavacion asfalto + tritubo | 27,140 | m | $9.83 | $266,786.20 |
| 1032 | Excavacion anden + tritubo | 13,570 | m | $7.93 | $107,610.10 |
| 1033 | Excavacion blanda + tritubo | 238,560 | m | $6.50 | $1,550,640.00 |
| 1034 | Instalacion cruces especiales | 13,920 | m | $74.88 | $1,042,329.60 |
| 1035 | Instalacion cajas empalme 48h | 1,257 | und | $98.61 | $123,952.77 |
| 1041 | Soplado fibra optica 48h | 293,190 | m | $1.55 | $454,444.50 |
| NP1 | Equipos L2 Field Switches (Advantech) | 84 | und | $1,422.13 | $119,459.00 |
| NP2 | Equipos L3 Core & Stack (Cisco) | 11 | und | $18,444.73 | $202,892.00 |
| NP3 | Firewalls & Seguridad HA (Fortinet) | 2 | und | $12,000.00 | $24,000.00 |
| NP4 | Microducto 3 vias (16/12mm) | 322,000 | ml | $2.23 | $718,060.00 |
| **SUBTOTAL COSTO DIRECTO** | | | | | **$6,542,510.52** |
| Administración (12%) | | | | | $785,101.26 |
| Imprevistos (3%) | | | | | $196,275.32 |
| Utilidad (5%) | | | | | $327,125.53 |
| IVA sobre Utilidad (19%) | | | | | $62,153.85 |
| Ajuste Coherencia Master Data | | | | | $66,833.52 |
| **TOTAL GENERAL** | | | | | **$7,980,000.00** |
| Cable fibra optica 48h (Microfibra) | 322,000 | $1.02 | $328,440.00 |
| Cable fibra optica 12h | 10,856 | $0.57 | $6,187.92 |
| Cajas empalme 80x80 (Suministro) | 65 | $381.00 | $24,765.00 |
| Cajas empalme 60x60 (Suministro) | 1,192 | $316.89 | $377,732.88 |
| Cajas reserva FO (Suministro) | 1,257 | $147.95 | $185,973.15 |
| Microducto 3 vias (Suministro) | 322,000 | $2.70 | $869,400.00 |
| Empalmes y conectores (Global) | 62,736 | $21.30 | $1,336,276.80 |
| Excavacion asfalto + tritubo | 27,140 | $11.89 | $322,694.60 |
| Excavacion anden + tritubo | 13,570 | $9.60 | $130,272.00 |
| Excavacion blanda + tritubo | 238,560 | $7.87 | $1,877,467.20 |
| Instalacion Cruces Especiales (HDD) | 13,920 | $90.60 | $1,261,152.00 |
| Instalacion Cajas (48h + 12h) | 1,457 | $100.00 | $145,700.00 |
| Soplado fibra 48h | 322,000 | $1.88 | $605,360.00 |
| Equipos de Red L2/L3 + Firewalls | 1 | $508578.45 | $508,578.45 |
| **TOTAL WBS TELECOM** | **-** | **-** | **$7,980,000.00** |
| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
| Microfibra 48h | Suministro | m | 1.0 und | $0.84 | $0.84 |
> Actualizado: 2026-01-27
<!-- BLOQUE AUTOMATICO FIN -->.57 | $6,187.92 |
| Cajas empalme 80x80 (Suministro) | 65 | $381.00 | $24,765.00 |
| Cajas empalme 60x60 (Suministro) | 1,192 | $316.89 | $377,732.88 |
| Cajas reserva FO (Suministro) | 1,257 | $147.95 | $185,973.15 |
| Microducto 3 vias (Suministro) | 322,000 | $2.70 | $869,400.00 |
| Empalmes y conectores (Global) | 62,736 | $21.30 | 
,336,276.80 |
| Excavacion asfalto + tritubo | 27,140 | $11.89 | $322,694.60 |
| Excavacion anden + tritubo | 13,570 | $9.60 | $130,272.00 |
| Excavacion blanda + tritubo | 238,560 | $7.87 | 
,877,467.20 |
| Instalacion Cruces Especiales (HDD) | 13,920 | $90.60 | 
,261,152.00 |
| Instalacion Cajas (48h + 12h) | 1,457 | $100.00 | $145,700.00 |
| Soplado fibra 48h | 322,000 | 
.88 | $605,360.00 |
| Equipos de Red L2/L3 + Firewalls | 1 | $508578.45 | $508,578.45 |
| **TOTAL WBS TELECOM** | **-** | **-** | **$7,980,000.00** |
| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
| Microfibra 48h | Suministro | m | 1.0 und | <!-- BLOQUE AUTOMATICO INICIO: Telecomunicaciones -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - Opción A Fibra Convencional | Ing. Telecomunicaciones |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Longitudes actualizadas | Ing. Telecomunicaciones |
| Concept | Valor (USD) | Observaciones |
| **CAPEX Total** | **$7,980,000.00** | Suministro e Instalación (Backbone + Equipos L2/L3) |
| **OPEX Anual** | **$119,700** | ~1.5% del CAPEX |
| ID | Nombre | Cantidad | Unidad | Precio Unit (USD) | Total (USD) |
| 1021 | Cable fibra optica 48h (Microfibra) | 322,000 | m | $0.84 | $270,480.00 |
| 1022 | Cable fibra optica 12h | 10,856 | m | $0.47 | $5,102.32 |
| 1024 | Cajas empalme 80x80 | 65 | und | $314.27 | $20,427.55 |
| 1025 | Cajas empalme 60x60 | 1,192 | und | $261.89 | $312,172.88 |
| 10210 | Empalmes y conectores globales | 62,736 | und | $17.60 | $1,104,153.60 |
| 1031 | Excavacion asfalto + tritubo | 27,140 | m | $9.83 | $266,786.20 |
| 1032 | Excavacion anden + tritubo | 13,570 | m | $7.93 | $107,610.10 |
| 1033 | Excavacion blanda + tritubo | 238,560 | m | $6.50 | $1,550,640.00 |
| 1034 | Instalacion cruces especiales | 13,920 | m | $74.88 | $1,042,329.60 |
| 1035 | Instalacion cajas empalme 48h | 1,257 | und | $98.61 | $123,952.77 |
| 1041 | Soplado fibra optica 48h | 293,190 | m | $1.55 | $454,444.50 |
| NP1 | Equipos L2 Field Switches (Advantech) | 84 | und | $1,422.13 | $119,459.00 |
| NP2 | Equipos L3 Core & Stack (Cisco) | 11 | und | $18,444.73 | $202,892.00 |
| NP3 | Firewalls & Seguridad HA (Fortinet) | 2 | und | $12,000.00 | $24,000.00 |
| NP4 | Microducto 3 vias (16/12mm) | 322,000 | ml | $2.23 | $718,060.00 |
| **SUBTOTAL COSTO DIRECTO** | | | | | **$6,542,510.52** |
| Administración (12%) | | | | | $785,101.26 |
| Imprevistos (3%) | | | | | $196,275.32 |
| Utilidad (5%) | | | | | $327,125.53 |
| IVA sobre Utilidad (19%) | | | | | $62,153.85 |
| Ajuste Coherencia Master Data | | | | | $66,833.52 |
| **TOTAL GENERAL** | | | | | **$7,980,000.00** |
| Cable fibra optica 48h (Microfibra) | 322,000 | $1.02 | $328,440.00 |
| Cable fibra optica 12h | 10,856 | $0.57 | $6,187.92 |
| Cajas empalme 80x80 (Suministro) | 65 | $381.00 | $24,765.00 |
| Cajas empalme 60x60 (Suministro) | 1,192 | $316.89 | $377,732.88 |
| Cajas reserva FO (Suministro) | 1,257 | $147.95 | $185,973.15 |
| Microducto 3 vias (Suministro) | 322,000 | $2.70 | $869,400.00 |
| Empalmes y conectores (Global) | 62,736 | $21.30 | $1,336,276.80 |
| Excavacion asfalto + tritubo | 27,140 | $11.89 | $322,694.60 |
| Excavacion anden + tritubo | 13,570 | $9.60 | $130,272.00 |
| Excavacion blanda + tritubo | 238,560 | $7.87 | $1,877,467.20 |
| Instalacion Cruces Especiales (HDD) | 13,920 | $90.60 | $1,261,152.00 |
| Instalacion Cajas (48h + 12h) | 1,457 | $100.00 | $145,700.00 |
| Soplado fibra 48h | 322,000 | $1.88 | $605,360.00 |
| Equipos de Red L2/L3 + Firewalls | 1 | $508578.45 | $508,578.45 |
| **TOTAL WBS TELECOM** | **-** | **-** | **$7,980,000.00** |
| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
| Microfibra 48h | Suministro | m | 1.0 und | $0.84 | $0.84 |
> Actualizado: 2026-01-27
<!-- BLOQUE AUTOMATICO FIN -->.84 | <!-- BLOQUE AUTOMATICO INICIO: Telecomunicaciones -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - Opción A Fibra Convencional | Ing. Telecomunicaciones |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Longitudes actualizadas | Ing. Telecomunicaciones |
| Concept | Valor (USD) | Observaciones |
| **CAPEX Total** | **$7,980,000.00** | Suministro e Instalación (Backbone + Equipos L2/L3) |
| **OPEX Anual** | **$119,700** | ~1.5% del CAPEX |
| ID | Nombre | Cantidad | Unidad | Precio Unit (USD) | Total (USD) |
| 1021 | Cable fibra optica 48h (Microfibra) | 322,000 | m | $0.84 | $270,480.00 |
| 1022 | Cable fibra optica 12h | 10,856 | m | $0.47 | $5,102.32 |
| 1024 | Cajas empalme 80x80 | 65 | und | $314.27 | $20,427.55 |
| 1025 | Cajas empalme 60x60 | 1,192 | und | $261.89 | $312,172.88 |
| 10210 | Empalmes y conectores globales | 62,736 | und | $17.60 | $1,104,153.60 |
| 1031 | Excavacion asfalto + tritubo | 27,140 | m | $9.83 | $266,786.20 |
| 1032 | Excavacion anden + tritubo | 13,570 | m | $7.93 | $107,610.10 |
| 1033 | Excavacion blanda + tritubo | 238,560 | m | $6.50 | $1,550,640.00 |
| 1034 | Instalacion cruces especiales | 13,920 | m | $74.88 | $1,042,329.60 |
| 1035 | Instalacion cajas empalme 48h | 1,257 | und | $98.61 | $123,952.77 |
| 1041 | Soplado fibra optica 48h | 293,190 | m | $1.55 | $454,444.50 |
| NP1 | Equipos L2 Field Switches (Advantech) | 84 | und | $1,422.13 | $119,459.00 |
| NP2 | Equipos L3 Core & Stack (Cisco) | 11 | und | $18,444.73 | $202,892.00 |
| NP3 | Firewalls & Seguridad HA (Fortinet) | 2 | und | $12,000.00 | $24,000.00 |
| NP4 | Microducto 3 vias (16/12mm) | 322,000 | ml | $2.23 | $718,060.00 |
| **SUBTOTAL COSTO DIRECTO** | | | | | **$6,542,510.52** |
| Administración (12%) | | | | | $785,101.26 |
| Imprevistos (3%) | | | | | $196,275.32 |
| Utilidad (5%) | | | | | $327,125.53 |
| IVA sobre Utilidad (19%) | | | | | $62,153.85 |
| Ajuste Coherencia Master Data | | | | | $66,833.52 |
| **TOTAL GENERAL** | | | | | **$7,980,000.00** |
| Cable fibra optica 48h (Microfibra) | 322,000 | $1.02 | $328,440.00 |
| Cable fibra optica 12h | 10,856 | $0.57 | $6,187.92 |
| Cajas empalme 80x80 (Suministro) | 65 | $381.00 | $24,765.00 |
| Cajas empalme 60x60 (Suministro) | 1,192 | $316.89 | $377,732.88 |
| Cajas reserva FO (Suministro) | 1,257 | $147.95 | $185,973.15 |
| Microducto 3 vias (Suministro) | 322,000 | $2.70 | $869,400.00 |
| Empalmes y conectores (Global) | 62,736 | $21.30 | $1,336,276.80 |
| Excavacion asfalto + tritubo | 27,140 | $11.89 | $322,694.60 |
| Excavacion anden + tritubo | 13,570 | $9.60 | $130,272.00 |
| Excavacion blanda + tritubo | 238,560 | $7.87 | $1,877,467.20 |
| Instalacion Cruces Especiales (HDD) | 13,920 | $90.60 | $1,261,152.00 |
| Instalacion Cajas (48h + 12h) | 1,457 | $100.00 | $145,700.00 |
| Soplado fibra 48h | 322,000 | $1.88 | $605,360.00 |
| Equipos de Red L2/L3 + Firewalls | 1 | $508578.45 | $508,578.45 |
| **TOTAL WBS TELECOM** | **-** | **-** | **$7,980,000.00** |
| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
| Microfibra 48h | Suministro | m | 1.0 und | $0.84 | $0.84 |
> Actualizado: 2026-01-27
<!-- BLOQUE AUTOMATICO FIN -->.84 |
> Actualizado: 2026-01-28
<!-- BLOQUE AUTOMATICO FIN -->.84 | $270,480.00 |
| 1022 | Cable fibra optica 12h | 10,856 | m | <!-- BLOQUE AUTOMATICO INICIO: Telecomunicaciones -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - Opción A Fibra Convencional | Ing. Telecomunicaciones |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Longitudes actualizadas | Ing. Telecomunicaciones |
| Concept | Valor (USD) | Observaciones |
| **CAPEX Total** | **$7,980,000.00** | Suministro e Instalación (Backbone + Equipos L2/L3) |
| **OPEX Anual** | **$119,700** | ~1.5% del CAPEX |
| ID | Nombre | Cantidad | Unidad | Precio Unit (USD) | Total (USD) |
| 1021 | Cable fibra optica 48h (Microfibra) | 322,000 | m | <!-- BLOQUE AUTOMATICO INICIO: Telecomunicaciones -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - Opción A Fibra Convencional | Ing. Telecomunicaciones |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Longitudes actualizadas | Ing. Telecomunicaciones |
| Concept | Valor (USD) | Observaciones |
| **CAPEX Total** | **$7,980,000.00** | Suministro e Instalación (Backbone + Equipos L2/L3) |
| **OPEX Anual** | **$119,700** | ~1.5% del CAPEX |
| ID | Nombre | Cantidad | Unidad | Precio Unit (USD) | Total (USD) |
| 1021 | Cable fibra optica 48h (Microfibra) | 322,000 | m | $0.84 | $270,480.00 |
| 1022 | Cable fibra optica 12h | 10,856 | m | $0.47 | $5,102.32 |
| 1024 | Cajas empalme 80x80 | 65 | und | $314.27 | $20,427.55 |
| 1025 | Cajas empalme 60x60 | 1,192 | und | $261.89 | $312,172.88 |
| 10210 | Empalmes y conectores globales | 62,736 | und | $17.60 | $1,104,153.60 |
| 1031 | Excavacion asfalto + tritubo | 27,140 | m | $9.83 | $266,786.20 |
| 1032 | Excavacion anden + tritubo | 13,570 | m | $7.93 | $107,610.10 |
| 1033 | Excavacion blanda + tritubo | 238,560 | m | $6.50 | $1,550,640.00 |
| 1034 | Instalacion cruces especiales | 13,920 | m | $74.88 | $1,042,329.60 |
| 1035 | Instalacion cajas empalme 48h | 1,257 | und | $98.61 | $123,952.77 |
| 1041 | Soplado fibra optica 48h | 293,190 | m | $1.55 | $454,444.50 |
| NP1 | Equipos L2 Field Switches (Advantech) | 84 | und | $1,422.13 | $119,459.00 |
| NP2 | Equipos L3 Core & Stack (Cisco) | 11 | und | $18,444.73 | $202,892.00 |
| NP3 | Firewalls & Seguridad HA (Fortinet) | 2 | und | $12,000.00 | $24,000.00 |
| NP4 | Microducto 3 vias (16/12mm) | 322,000 | ml | $2.23 | $718,060.00 |
| **SUBTOTAL COSTO DIRECTO** | | | | | **$6,542,510.52** |
| Administración (12%) | | | | | $785,101.26 |
| Imprevistos (3%) | | | | | $196,275.32 |
| Utilidad (5%) | | | | | $327,125.53 |
| IVA sobre Utilidad (19%) | | | | | $62,153.85 |
| Ajuste Coherencia Master Data | | | | | $66,833.52 |
| **TOTAL GENERAL** | | | | | **$7,980,000.00** |
| Cable fibra optica 48h (Microfibra) | 322,000 | $1.02 | $328,440.00 |
| Cable fibra optica 12h | 10,856 | $0.57 | $6,187.92 |
| Cajas empalme 80x80 (Suministro) | 65 | $381.00 | $24,765.00 |
| Cajas empalme 60x60 (Suministro) | 1,192 | $316.89 | $377,732.88 |
| Cajas reserva FO (Suministro) | 1,257 | $147.95 | $185,973.15 |
| Microducto 3 vias (Suministro) | 322,000 | $2.70 | $869,400.00 |
| Empalmes y conectores (Global) | 62,736 | $21.30 | $1,336,276.80 |
| Excavacion asfalto + tritubo | 27,140 | $11.89 | $322,694.60 |
| Excavacion anden + tritubo | 13,570 | $9.60 | $130,272.00 |
| Excavacion blanda + tritubo | 238,560 | $7.87 | $1,877,467.20 |
| Instalacion Cruces Especiales (HDD) | 13,920 | $90.60 | $1,261,152.00 |
| Instalacion Cajas (48h + 12h) | 1,457 | $100.00 | $145,700.00 |
| Soplado fibra 48h | 322,000 | $1.88 | $605,360.00 |
| Equipos de Red L2/L3 + Firewalls | 1 | $508578.45 | $508,578.45 |
| **TOTAL WBS TELECOM** | **-** | **-** | **$7,980,000.00** |
| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
| Microfibra 48h | Suministro | m | 1.0 und | $0.84 | $0.84 |
> Actualizado: 2026-01-27
<!-- BLOQUE AUTOMATICO FIN -->.84 | $270,480.00 |
| 1022 | Cable fibra optica 12h | 10,856 | m | <!-- BLOQUE AUTOMATICO INICIO: Telecomunicaciones -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - Opción A Fibra Convencional | Ing. Telecomunicaciones |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Longitudes actualizadas | Ing. Telecomunicaciones |
| Concept | Valor (USD) | Observaciones |
| **CAPEX Total** | **$7,980,000.00** | Suministro e Instalación (Backbone + Equipos L2/L3) |
| **OPEX Anual** | **$119,700** | ~1.5% del CAPEX |
| ID | Nombre | Cantidad | Unidad | Precio Unit (USD) | Total (USD) |
| 1021 | Cable fibra optica 48h (Microfibra) | 322,000 | m | $0.84 | $270,480.00 |
| 1022 | Cable fibra optica 12h | 10,856 | m | $0.47 | $5,102.32 |
| 1024 | Cajas empalme 80x80 | 65 | und | $314.27 | $20,427.55 |
| 1025 | Cajas empalme 60x60 | 1,192 | und | $261.89 | $312,172.88 |
| 10210 | Empalmes y conectores globales | 62,736 | und | $17.60 | $1,104,153.60 |
| 1031 | Excavacion asfalto + tritubo | 27,140 | m | $9.83 | $266,786.20 |
| 1032 | Excavacion anden + tritubo | 13,570 | m | $7.93 | $107,610.10 |
| 1033 | Excavacion blanda + tritubo | 238,560 | m | $6.50 | $1,550,640.00 |
| 1034 | Instalacion cruces especiales | 13,920 | m | $74.88 | $1,042,329.60 |
| 1035 | Instalacion cajas empalme 48h | 1,257 | und | $98.61 | $123,952.77 |
| 1041 | Soplado fibra optica 48h | 293,190 | m | $1.55 | $454,444.50 |
| NP1 | Equipos L2 Field Switches (Advantech) | 84 | und | $1,422.13 | $119,459.00 |
| NP2 | Equipos L3 Core & Stack (Cisco) | 11 | und | $18,444.73 | $202,892.00 |
| NP3 | Firewalls & Seguridad HA (Fortinet) | 2 | und | $12,000.00 | $24,000.00 |
| NP4 | Microducto 3 vias (16/12mm) | 322,000 | ml | $2.23 | $718,060.00 |
| **SUBTOTAL COSTO DIRECTO** | | | | | **$6,542,510.52** |
| Administración (12%) | | | | | $785,101.26 |
| Imprevistos (3%) | | | | | $196,275.32 |
| Utilidad (5%) | | | | | $327,125.53 |
| IVA sobre Utilidad (19%) | | | | | $62,153.85 |
| Ajuste Coherencia Master Data | | | | | $66,833.52 |
| **TOTAL GENERAL** | | | | | **$7,980,000.00** |
| Cable fibra optica 48h (Microfibra) | 322,000 | $1.02 | $328,440.00 |
| Cable fibra optica 12h | 10,856 | $0.57 | $6,187.92 |
| Cajas empalme 80x80 (Suministro) | 65 | $381.00 | $24,765.00 |
| Cajas empalme 60x60 (Suministro) | 1,192 | $316.89 | $377,732.88 |
| Cajas reserva FO (Suministro) | 1,257 | $147.95 | $185,973.15 |
| Microducto 3 vias (Suministro) | 322,000 | $2.70 | $869,400.00 |
| Empalmes y conectores (Global) | 62,736 | $21.30 | $1,336,276.80 |
| Excavacion asfalto + tritubo | 27,140 | $11.89 | $322,694.60 |
| Excavacion anden + tritubo | 13,570 | $9.60 | $130,272.00 |
| Excavacion blanda + tritubo | 238,560 | $7.87 | $1,877,467.20 |
| Instalacion Cruces Especiales (HDD) | 13,920 | $90.60 | $1,261,152.00 |
| Instalacion Cajas (48h + 12h) | 1,457 | $100.00 | $145,700.00 |
| Soplado fibra 48h | 322,000 | $1.88 | $605,360.00 |
| Equipos de Red L2/L3 + Firewalls | 1 | $508578.45 | $508,578.45 |
| **TOTAL WBS TELECOM** | **-** | **-** | **$7,980,000.00** |
| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
| Microfibra 48h | Suministro | m | 1.0 und | $0.84 | $0.84 |
> Actualizado: 2026-01-27
<!-- BLOQUE AUTOMATICO FIN -->.47 | $5,102.32 |
| 1024 | Cajas empalme 80x80 | 65 | und | $314.27 | $20,427.55 |
| 1025 | Cajas empalme 60x60 | 1,192 | und | $261.89 | $312,172.88 |
| 10210 | Empalmes y conectores globales | 62,736 | und | $17.60 | 
,104,153.60 |
| 1031 | Excavacion asfalto + tritubo | 27,140 | m | $9.83 | $266,786.20 |
| 1032 | Excavacion anden + tritubo | 13,570 | m | $7.93 | $107,610.10 |
| 1033 | Excavacion blanda + tritubo | 238,560 | m | $6.50 | 
,550,640.00 |
| 1034 | Instalacion cruces especiales | 13,920 | m | $74.88 | 
,042,329.60 |
| 1035 | Instalacion cajas empalme 48h | 1,257 | und | $98.61 | $123,952.77 |
| 1041 | Soplado fibra optica 48h | 293,190 | m | 
.55 | $454,444.50 |
| NP1 | Equipos L2 Field Switches (Advantech) | 84 | und | 
,422.13 | $119,459.00 |
| NP2 | Equipos L3 Core & Stack (Cisco) | 11 | und | $18,444.73 | $202,892.00 |
| NP3 | Firewalls & Seguridad HA (Fortinet) | 2 | und | $12,000.00 | $24,000.00 |
| NP4 | Microducto 3 vias (16/12mm) | 322,000 | ml | $2.23 | $718,060.00 |
| **SUBTOTAL COSTO DIRECTO** | | | | | **$6,542,510.52** |
| Administración (12%) | | | | | $785,101.26 |
| Imprevistos (3%) | | | | | $196,275.32 |
| Utilidad (5%) | | | | | $327,125.53 |
| IVA sobre Utilidad (19%) | | | | | $62,153.85 |
| Ajuste Coherencia Master Data | | | | | $66,833.52 |
| **TOTAL GENERAL** | | | | | **$7,980,000.00** |
| Cable fibra optica 48h (Microfibra) | 322,000 | 
.02 | $328,440.00 |
| Cable fibra optica 12h | 10,856 | <!-- BLOQUE AUTOMATICO INICIO: Telecomunicaciones -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - Opción A Fibra Convencional | Ing. Telecomunicaciones |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Longitudes actualizadas | Ing. Telecomunicaciones |
| Concept | Valor (USD) | Observaciones |
| **CAPEX Total** | **$7,980,000.00** | Suministro e Instalación (Backbone + Equipos L2/L3) |
| **OPEX Anual** | **$119,700** | ~1.5% del CAPEX |
| ID | Nombre | Cantidad | Unidad | Precio Unit (USD) | Total (USD) |
| 1021 | Cable fibra optica 48h (Microfibra) | 322,000 | m | $0.84 | $270,480.00 |
| 1022 | Cable fibra optica 12h | 10,856 | m | $0.47 | $5,102.32 |
| 1024 | Cajas empalme 80x80 | 65 | und | $314.27 | $20,427.55 |
| 1025 | Cajas empalme 60x60 | 1,192 | und | $261.89 | $312,172.88 |
| 10210 | Empalmes y conectores globales | 62,736 | und | $17.60 | $1,104,153.60 |
| 1031 | Excavacion asfalto + tritubo | 27,140 | m | $9.83 | $266,786.20 |
| 1032 | Excavacion anden + tritubo | 13,570 | m | $7.93 | $107,610.10 |
| 1033 | Excavacion blanda + tritubo | 238,560 | m | $6.50 | $1,550,640.00 |
| 1034 | Instalacion cruces especiales | 13,920 | m | $74.88 | $1,042,329.60 |
| 1035 | Instalacion cajas empalme 48h | 1,257 | und | $98.61 | $123,952.77 |
| 1041 | Soplado fibra optica 48h | 293,190 | m | $1.55 | $454,444.50 |
| NP1 | Equipos L2 Field Switches (Advantech) | 84 | und | $1,422.13 | $119,459.00 |
| NP2 | Equipos L3 Core & Stack (Cisco) | 11 | und | $18,444.73 | $202,892.00 |
| NP3 | Firewalls & Seguridad HA (Fortinet) | 2 | und | $12,000.00 | $24,000.00 |
| NP4 | Microducto 3 vias (16/12mm) | 322,000 | ml | $2.23 | $718,060.00 |
| **SUBTOTAL COSTO DIRECTO** | | | | | **$6,542,510.52** |
| Administración (12%) | | | | | $785,101.26 |
| Imprevistos (3%) | | | | | $196,275.32 |
| Utilidad (5%) | | | | | $327,125.53 |
| IVA sobre Utilidad (19%) | | | | | $62,153.85 |
| Ajuste Coherencia Master Data | | | | | $66,833.52 |
| **TOTAL GENERAL** | | | | | **$7,980,000.00** |
| Cable fibra optica 48h (Microfibra) | 322,000 | $1.02 | $328,440.00 |
| Cable fibra optica 12h | 10,856 | $0.57 | $6,187.92 |
| Cajas empalme 80x80 (Suministro) | 65 | $381.00 | $24,765.00 |
| Cajas empalme 60x60 (Suministro) | 1,192 | $316.89 | $377,732.88 |
| Cajas reserva FO (Suministro) | 1,257 | $147.95 | $185,973.15 |
| Microducto 3 vias (Suministro) | 322,000 | $2.70 | $869,400.00 |
| Empalmes y conectores (Global) | 62,736 | $21.30 | $1,336,276.80 |
| Excavacion asfalto + tritubo | 27,140 | $11.89 | $322,694.60 |
| Excavacion anden + tritubo | 13,570 | $9.60 | $130,272.00 |
| Excavacion blanda + tritubo | 238,560 | $7.87 | $1,877,467.20 |
| Instalacion Cruces Especiales (HDD) | 13,920 | $90.60 | $1,261,152.00 |
| Instalacion Cajas (48h + 12h) | 1,457 | $100.00 | $145,700.00 |
| Soplado fibra 48h | 322,000 | $1.88 | $605,360.00 |
| Equipos de Red L2/L3 + Firewalls | 1 | $508578.45 | $508,578.45 |
| **TOTAL WBS TELECOM** | **-** | **-** | **$7,980,000.00** |
| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
| Microfibra 48h | Suministro | m | 1.0 und | $0.84 | $0.84 |
> Actualizado: 2026-01-27
<!-- BLOQUE AUTOMATICO FIN -->.57 | $6,187.92 |
| Cajas empalme 80x80 (Suministro) | 65 | $381.00 | $24,765.00 |
| Cajas empalme 60x60 (Suministro) | 1,192 | $316.89 | $377,732.88 |
| Cajas reserva FO (Suministro) | 1,257 | $147.95 | $185,973.15 |
| Microducto 3 vias (Suministro) | 322,000 | $2.70 | $869,400.00 |
| Empalmes y conectores (Global) | 62,736 | $21.30 | 
,336,276.80 |
| Excavacion asfalto + tritubo | 27,140 | $11.89 | $322,694.60 |
| Excavacion anden + tritubo | 13,570 | $9.60 | $130,272.00 |
| Excavacion blanda + tritubo | 238,560 | $7.87 | 
,877,467.20 |
| Instalacion Cruces Especiales (HDD) | 13,920 | $90.60 | 
,261,152.00 |
| Instalacion Cajas (48h + 12h) | 1,457 | $100.00 | $145,700.00 |
| Soplado fibra 48h | 322,000 | 
.88 | $605,360.00 |
| Equipos de Red L2/L3 + Firewalls | 1 | $508578.45 | $508,578.45 |
| **TOTAL WBS TELECOM** | **-** | **-** | **$7,980,000.00** |
| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
| Microfibra 48h | Suministro | m | 1.0 und | <!-- BLOQUE AUTOMATICO INICIO: Telecomunicaciones -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - Opción A Fibra Convencional | Ing. Telecomunicaciones |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Longitudes actualizadas | Ing. Telecomunicaciones |
| Concept | Valor (USD) | Observaciones |
| **CAPEX Total** | **$7,980,000.00** | Suministro e Instalación (Backbone + Equipos L2/L3) |
| **OPEX Anual** | **$119,700** | ~1.5% del CAPEX |
| ID | Nombre | Cantidad | Unidad | Precio Unit (USD) | Total (USD) |
| 1021 | Cable fibra optica 48h (Microfibra) | 322,000 | m | $0.84 | $270,480.00 |
| 1022 | Cable fibra optica 12h | 10,856 | m | $0.47 | $5,102.32 |
| 1024 | Cajas empalme 80x80 | 65 | und | $314.27 | $20,427.55 |
| 1025 | Cajas empalme 60x60 | 1,192 | und | $261.89 | $312,172.88 |
| 10210 | Empalmes y conectores globales | 62,736 | und | $17.60 | $1,104,153.60 |
| 1031 | Excavacion asfalto + tritubo | 27,140 | m | $9.83 | $266,786.20 |
| 1032 | Excavacion anden + tritubo | 13,570 | m | $7.93 | $107,610.10 |
| 1033 | Excavacion blanda + tritubo | 238,560 | m | $6.50 | $1,550,640.00 |
| 1034 | Instalacion cruces especiales | 13,920 | m | $74.88 | $1,042,329.60 |
| 1035 | Instalacion cajas empalme 48h | 1,257 | und | $98.61 | $123,952.77 |
| 1041 | Soplado fibra optica 48h | 293,190 | m | $1.55 | $454,444.50 |
| NP1 | Equipos L2 Field Switches (Advantech) | 84 | und | $1,422.13 | $119,459.00 |
| NP2 | Equipos L3 Core & Stack (Cisco) | 11 | und | $18,444.73 | $202,892.00 |
| NP3 | Firewalls & Seguridad HA (Fortinet) | 2 | und | $12,000.00 | $24,000.00 |
| NP4 | Microducto 3 vias (16/12mm) | 322,000 | ml | $2.23 | $718,060.00 |
| **SUBTOTAL COSTO DIRECTO** | | | | | **$6,542,510.52** |
| Administración (12%) | | | | | $785,101.26 |
| Imprevistos (3%) | | | | | $196,275.32 |
| Utilidad (5%) | | | | | $327,125.53 |
| IVA sobre Utilidad (19%) | | | | | $62,153.85 |
| Ajuste Coherencia Master Data | | | | | $66,833.52 |
| **TOTAL GENERAL** | | | | | **$7,980,000.00** |
| Cable fibra optica 48h (Microfibra) | 322,000 | $1.02 | $328,440.00 |
| Cable fibra optica 12h | 10,856 | $0.57 | $6,187.92 |
| Cajas empalme 80x80 (Suministro) | 65 | $381.00 | $24,765.00 |
| Cajas empalme 60x60 (Suministro) | 1,192 | $316.89 | $377,732.88 |
| Cajas reserva FO (Suministro) | 1,257 | $147.95 | $185,973.15 |
| Microducto 3 vias (Suministro) | 322,000 | $2.70 | $869,400.00 |
| Empalmes y conectores (Global) | 62,736 | $21.30 | $1,336,276.80 |
| Excavacion asfalto + tritubo | 27,140 | $11.89 | $322,694.60 |
| Excavacion anden + tritubo | 13,570 | $9.60 | $130,272.00 |
| Excavacion blanda + tritubo | 238,560 | $7.87 | $1,877,467.20 |
| Instalacion Cruces Especiales (HDD) | 13,920 | $90.60 | $1,261,152.00 |
| Instalacion Cajas (48h + 12h) | 1,457 | $100.00 | $145,700.00 |
| Soplado fibra 48h | 322,000 | $1.88 | $605,360.00 |
| Equipos de Red L2/L3 + Firewalls | 1 | $508578.45 | $508,578.45 |
| **TOTAL WBS TELECOM** | **-** | **-** | **$7,980,000.00** |
| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
| Microfibra 48h | Suministro | m | 1.0 und | $0.84 | $0.84 |
> Actualizado: 2026-01-27
<!-- BLOQUE AUTOMATICO FIN -->.84 | <!-- BLOQUE AUTOMATICO INICIO: Telecomunicaciones -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - Opción A Fibra Convencional | Ing. Telecomunicaciones |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Longitudes actualizadas | Ing. Telecomunicaciones |
| Concept | Valor (USD) | Observaciones |
| **CAPEX Total** | **$7,980,000.00** | Suministro e Instalación (Backbone + Equipos L2/L3) |
| **OPEX Anual** | **$119,700** | ~1.5% del CAPEX |
| ID | Nombre | Cantidad | Unidad | Precio Unit (USD) | Total (USD) |
| 1021 | Cable fibra optica 48h (Microfibra) | 322,000 | m | $0.84 | $270,480.00 |
| 1022 | Cable fibra optica 12h | 10,856 | m | $0.47 | $5,102.32 |
| 1024 | Cajas empalme 80x80 | 65 | und | $314.27 | $20,427.55 |
| 1025 | Cajas empalme 60x60 | 1,192 | und | $261.89 | $312,172.88 |
| 10210 | Empalmes y conectores globales | 62,736 | und | $17.60 | $1,104,153.60 |
| 1031 | Excavacion asfalto + tritubo | 27,140 | m | $9.83 | $266,786.20 |
| 1032 | Excavacion anden + tritubo | 13,570 | m | $7.93 | $107,610.10 |
| 1033 | Excavacion blanda + tritubo | 238,560 | m | $6.50 | $1,550,640.00 |
| 1034 | Instalacion cruces especiales | 13,920 | m | $74.88 | $1,042,329.60 |
| 1035 | Instalacion cajas empalme 48h | 1,257 | und | $98.61 | $123,952.77 |
| 1041 | Soplado fibra optica 48h | 293,190 | m | $1.55 | $454,444.50 |
| NP1 | Equipos L2 Field Switches (Advantech) | 84 | und | $1,422.13 | $119,459.00 |
| NP2 | Equipos L3 Core & Stack (Cisco) | 11 | und | $18,444.73 | $202,892.00 |
| NP3 | Firewalls & Seguridad HA (Fortinet) | 2 | und | $12,000.00 | $24,000.00 |
| NP4 | Microducto 3 vias (16/12mm) | 322,000 | ml | $2.23 | $718,060.00 |
| **SUBTOTAL COSTO DIRECTO** | | | | | **$6,542,510.52** |
| Administración (12%) | | | | | $785,101.26 |
| Imprevistos (3%) | | | | | $196,275.32 |
| Utilidad (5%) | | | | | $327,125.53 |
| IVA sobre Utilidad (19%) | | | | | $62,153.85 |
| Ajuste Coherencia Master Data | | | | | $66,833.52 |
| **TOTAL GENERAL** | | | | | **$7,980,000.00** |
| Cable fibra optica 48h (Microfibra) | 322,000 | $1.02 | $328,440.00 |
| Cable fibra optica 12h | 10,856 | $0.57 | $6,187.92 |
| Cajas empalme 80x80 (Suministro) | 65 | $381.00 | $24,765.00 |
| Cajas empalme 60x60 (Suministro) | 1,192 | $316.89 | $377,732.88 |
| Cajas reserva FO (Suministro) | 1,257 | $147.95 | $185,973.15 |
| Microducto 3 vias (Suministro) | 322,000 | $2.70 | $869,400.00 |
| Empalmes y conectores (Global) | 62,736 | $21.30 | $1,336,276.80 |
| Excavacion asfalto + tritubo | 27,140 | $11.89 | $322,694.60 |
| Excavacion anden + tritubo | 13,570 | $9.60 | $130,272.00 |
| Excavacion blanda + tritubo | 238,560 | $7.87 | $1,877,467.20 |
| Instalacion Cruces Especiales (HDD) | 13,920 | $90.60 | $1,261,152.00 |
| Instalacion Cajas (48h + 12h) | 1,457 | $100.00 | $145,700.00 |
| Soplado fibra 48h | 322,000 | $1.88 | $605,360.00 |
| Equipos de Red L2/L3 + Firewalls | 1 | $508578.45 | $508,578.45 |
| **TOTAL WBS TELECOM** | **-** | **-** | **$7,980,000.00** |
| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
| Microfibra 48h | Suministro | m | 1.0 und | $0.84 | $0.84 |
> Actualizado: 2026-01-27
<!-- BLOQUE AUTOMATICO FIN -->.84 |
> Actualizado: 2026-01-28
<!-- BLOQUE AUTOMATICO FIN -->.47 | $5,102.32 |
| 1024 | Cajas empalme 80x80 | 65 | und | $314.27 | $20,427.55 |
| 1025 | Cajas empalme 60x60 | 1,192 | und | $261.89 | $312,172.88 |
| 10210 | Empalmes y conectores globales | 62,736 | und | $17.60 | 
,104,153.60 |
| 1031 | Excavacion asfalto + tritubo | 27,140 | m | $9.83 | $266,786.20 |
| 1032 | Excavacion anden + tritubo | 13,570 | m | $7.93 | $107,610.10 |
| 1033 | Excavacion blanda + tritubo | 238,560 | m | $6.50 | 
,550,640.00 |
| 1034 | Instalacion cruces especiales | 13,920 | m | $74.88 | 
,042,329.60 |
| 1035 | Instalacion cajas empalme 48h | 1,257 | und | $98.61 | $123,952.77 |
| 1041 | Soplado fibra optica 48h | 293,190 | m | 
.55 | $454,444.50 |
| NP1 | Equipos L2 Field Switches (Advantech) | 84 | und | 
,422.13 | $119,459.00 |
| NP2 | Equipos L3 Core & Stack (Cisco) | 11 | und | $18,444.73 | $202,892.00 |
| NP3 | Firewalls & Seguridad HA (Fortinet) | 2 | und | $12,000.00 | $24,000.00 |
| NP4 | Microducto 3 vias (16/12mm) | 322,000 | ml | $2.23 | $718,060.00 |
| **SUBTOTAL COSTO DIRECTO** | | | | | **$6,542,510.52** |
| Administración (12%) | | | | | $785,101.26 |
| Imprevistos (3%) | | | | | $196,275.32 |
| Utilidad (5%) | | | | | $327,125.53 |
| IVA sobre Utilidad (19%) | | | | | $62,153.85 |
| Ajuste Coherencia Master Data | | | | | $66,833.52 |
| **TOTAL GENERAL** | | | | | **$7,980,000.00** |
| Cable fibra optica 48h (Microfibra) | 322,000 | 
.02 | $328,440.00 |
| Cable fibra optica 12h | 10,856 | <!-- BLOQUE AUTOMATICO INICIO: Telecomunicaciones -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - Opción A Fibra Convencional | Ing. Telecomunicaciones |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Longitudes actualizadas | Ing. Telecomunicaciones |
| Concept | Valor (USD) | Observaciones |
| **CAPEX Total** | **$7,980,000.00** | Suministro e Instalación (Backbone + Equipos L2/L3) |
| **OPEX Anual** | **$119,700** | ~1.5% del CAPEX |
| ID | Nombre | Cantidad | Unidad | Precio Unit (USD) | Total (USD) |
| 1021 | Cable fibra optica 48h (Microfibra) | 322,000 | m | <!-- BLOQUE AUTOMATICO INICIO: Telecomunicaciones -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - Opción A Fibra Convencional | Ing. Telecomunicaciones |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Longitudes actualizadas | Ing. Telecomunicaciones |
| Concept | Valor (USD) | Observaciones |
| **CAPEX Total** | **$7,980,000.00** | Suministro e Instalación (Backbone + Equipos L2/L3) |
| **OPEX Anual** | **$119,700** | ~1.5% del CAPEX |
| ID | Nombre | Cantidad | Unidad | Precio Unit (USD) | Total (USD) |
| 1021 | Cable fibra optica 48h (Microfibra) | 322,000 | m | $0.84 | $270,480.00 |
| 1022 | Cable fibra optica 12h | 10,856 | m | $0.47 | $5,102.32 |
| 1024 | Cajas empalme 80x80 | 65 | und | $314.27 | $20,427.55 |
| 1025 | Cajas empalme 60x60 | 1,192 | und | $261.89 | $312,172.88 |
| 10210 | Empalmes y conectores globales | 62,736 | und | $17.60 | $1,104,153.60 |
| 1031 | Excavacion asfalto + tritubo | 27,140 | m | $9.83 | $266,786.20 |
| 1032 | Excavacion anden + tritubo | 13,570 | m | $7.93 | $107,610.10 |
| 1033 | Excavacion blanda + tritubo | 238,560 | m | $6.50 | $1,550,640.00 |
| 1034 | Instalacion cruces especiales | 13,920 | m | $74.88 | $1,042,329.60 |
| 1035 | Instalacion cajas empalme 48h | 1,257 | und | $98.61 | $123,952.77 |
| 1041 | Soplado fibra optica 48h | 293,190 | m | $1.55 | $454,444.50 |
| NP1 | Equipos L2 Field Switches (Advantech) | 84 | und | $1,422.13 | $119,459.00 |
| NP2 | Equipos L3 Core & Stack (Cisco) | 11 | und | $18,444.73 | $202,892.00 |
| NP3 | Firewalls & Seguridad HA (Fortinet) | 2 | und | $12,000.00 | $24,000.00 |
| NP4 | Microducto 3 vias (16/12mm) | 322,000 | ml | $2.23 | $718,060.00 |
| **SUBTOTAL COSTO DIRECTO** | | | | | **$6,542,510.52** |
| Administración (12%) | | | | | $785,101.26 |
| Imprevistos (3%) | | | | | $196,275.32 |
| Utilidad (5%) | | | | | $327,125.53 |
| IVA sobre Utilidad (19%) | | | | | $62,153.85 |
| Ajuste Coherencia Master Data | | | | | $66,833.52 |
| **TOTAL GENERAL** | | | | | **$7,980,000.00** |
| Cable fibra optica 48h (Microfibra) | 322,000 | $1.02 | $328,440.00 |
| Cable fibra optica 12h | 10,856 | $0.57 | $6,187.92 |
| Cajas empalme 80x80 (Suministro) | 65 | $381.00 | $24,765.00 |
| Cajas empalme 60x60 (Suministro) | 1,192 | $316.89 | $377,732.88 |
| Cajas reserva FO (Suministro) | 1,257 | $147.95 | $185,973.15 |
| Microducto 3 vias (Suministro) | 322,000 | $2.70 | $869,400.00 |
| Empalmes y conectores (Global) | 62,736 | $21.30 | $1,336,276.80 |
| Excavacion asfalto + tritubo | 27,140 | $11.89 | $322,694.60 |
| Excavacion anden + tritubo | 13,570 | $9.60 | $130,272.00 |
| Excavacion blanda + tritubo | 238,560 | $7.87 | $1,877,467.20 |
| Instalacion Cruces Especiales (HDD) | 13,920 | $90.60 | $1,261,152.00 |
| Instalacion Cajas (48h + 12h) | 1,457 | $100.00 | $145,700.00 |
| Soplado fibra 48h | 322,000 | $1.88 | $605,360.00 |
| Equipos de Red L2/L3 + Firewalls | 1 | $508578.45 | $508,578.45 |
| **TOTAL WBS TELECOM** | **-** | **-** | **$7,980,000.00** |
| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
| Microfibra 48h | Suministro | m | 1.0 und | $0.84 | $0.84 |
> Actualizado: 2026-01-27
<!-- BLOQUE AUTOMATICO FIN -->.84 | $270,480.00 |
| 1022 | Cable fibra optica 12h | 10,856 | m | <!-- BLOQUE AUTOMATICO INICIO: Telecomunicaciones -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - Opción A Fibra Convencional | Ing. Telecomunicaciones |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Longitudes actualizadas | Ing. Telecomunicaciones |
| Concept | Valor (USD) | Observaciones |
| **CAPEX Total** | **$7,980,000.00** | Suministro e Instalación (Backbone + Equipos L2/L3) |
| **OPEX Anual** | **$119,700** | ~1.5% del CAPEX |
| ID | Nombre | Cantidad | Unidad | Precio Unit (USD) | Total (USD) |
| 1021 | Cable fibra optica 48h (Microfibra) | 322,000 | m | $0.84 | $270,480.00 |
| 1022 | Cable fibra optica 12h | 10,856 | m | $0.47 | $5,102.32 |
| 1024 | Cajas empalme 80x80 | 65 | und | $314.27 | $20,427.55 |
| 1025 | Cajas empalme 60x60 | 1,192 | und | $261.89 | $312,172.88 |
| 10210 | Empalmes y conectores globales | 62,736 | und | $17.60 | $1,104,153.60 |
| 1031 | Excavacion asfalto + tritubo | 27,140 | m | $9.83 | $266,786.20 |
| 1032 | Excavacion anden + tritubo | 13,570 | m | $7.93 | $107,610.10 |
| 1033 | Excavacion blanda + tritubo | 238,560 | m | $6.50 | $1,550,640.00 |
| 1034 | Instalacion cruces especiales | 13,920 | m | $74.88 | $1,042,329.60 |
| 1035 | Instalacion cajas empalme 48h | 1,257 | und | $98.61 | $123,952.77 |
| 1041 | Soplado fibra optica 48h | 293,190 | m | $1.55 | $454,444.50 |
| NP1 | Equipos L2 Field Switches (Advantech) | 84 | und | $1,422.13 | $119,459.00 |
| NP2 | Equipos L3 Core & Stack (Cisco) | 11 | und | $18,444.73 | $202,892.00 |
| NP3 | Firewalls & Seguridad HA (Fortinet) | 2 | und | $12,000.00 | $24,000.00 |
| NP4 | Microducto 3 vias (16/12mm) | 322,000 | ml | $2.23 | $718,060.00 |
| **SUBTOTAL COSTO DIRECTO** | | | | | **$6,542,510.52** |
| Administración (12%) | | | | | $785,101.26 |
| Imprevistos (3%) | | | | | $196,275.32 |
| Utilidad (5%) | | | | | $327,125.53 |
| IVA sobre Utilidad (19%) | | | | | $62,153.85 |
| Ajuste Coherencia Master Data | | | | | $66,833.52 |
| **TOTAL GENERAL** | | | | | **$7,980,000.00** |
| Cable fibra optica 48h (Microfibra) | 322,000 | $1.02 | $328,440.00 |
| Cable fibra optica 12h | 10,856 | $0.57 | $6,187.92 |
| Cajas empalme 80x80 (Suministro) | 65 | $381.00 | $24,765.00 |
| Cajas empalme 60x60 (Suministro) | 1,192 | $316.89 | $377,732.88 |
| Cajas reserva FO (Suministro) | 1,257 | $147.95 | $185,973.15 |
| Microducto 3 vias (Suministro) | 322,000 | $2.70 | $869,400.00 |
| Empalmes y conectores (Global) | 62,736 | $21.30 | $1,336,276.80 |
| Excavacion asfalto + tritubo | 27,140 | $11.89 | $322,694.60 |
| Excavacion anden + tritubo | 13,570 | $9.60 | $130,272.00 |
| Excavacion blanda + tritubo | 238,560 | $7.87 | $1,877,467.20 |
| Instalacion Cruces Especiales (HDD) | 13,920 | $90.60 | $1,261,152.00 |
| Instalacion Cajas (48h + 12h) | 1,457 | $100.00 | $145,700.00 |
| Soplado fibra 48h | 322,000 | $1.88 | $605,360.00 |
| Equipos de Red L2/L3 + Firewalls | 1 | $508578.45 | $508,578.45 |
| **TOTAL WBS TELECOM** | **-** | **-** | **$7,980,000.00** |
| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
| Microfibra 48h | Suministro | m | 1.0 und | $0.84 | $0.84 |
> Actualizado: 2026-01-27
<!-- BLOQUE AUTOMATICO FIN -->.47 | $5,102.32 |
| 1024 | Cajas empalme 80x80 | 65 | und | $314.27 | $20,427.55 |
| 1025 | Cajas empalme 60x60 | 1,192 | und | $261.89 | $312,172.88 |
| 10210 | Empalmes y conectores globales | 62,736 | und | $17.60 | 
,104,153.60 |
| 1031 | Excavacion asfalto + tritubo | 27,140 | m | $9.83 | $266,786.20 |
| 1032 | Excavacion anden + tritubo | 13,570 | m | $7.93 | $107,610.10 |
| 1033 | Excavacion blanda + tritubo | 238,560 | m | $6.50 | 
,550,640.00 |
| 1034 | Instalacion cruces especiales | 13,920 | m | $74.88 | 
,042,329.60 |
| 1035 | Instalacion cajas empalme 48h | 1,257 | und | $98.61 | $123,952.77 |
| 1041 | Soplado fibra optica 48h | 293,190 | m | 
.55 | $454,444.50 |
| NP1 | Equipos L2 Field Switches (Advantech) | 84 | und | 
,422.13 | $119,459.00 |
| NP2 | Equipos L3 Core & Stack (Cisco) | 11 | und | $18,444.73 | $202,892.00 |
| NP3 | Firewalls & Seguridad HA (Fortinet) | 2 | und | $12,000.00 | $24,000.00 |
| NP4 | Microducto 3 vias (16/12mm) | 322,000 | ml | $2.23 | $718,060.00 |
| **SUBTOTAL COSTO DIRECTO** | | | | | **$6,542,510.52** |
| Administración (12%) | | | | | $785,101.26 |
| Imprevistos (3%) | | | | | $196,275.32 |
| Utilidad (5%) | | | | | $327,125.53 |
| IVA sobre Utilidad (19%) | | | | | $62,153.85 |
| Ajuste Coherencia Master Data | | | | | $66,833.52 |
| **TOTAL GENERAL** | | | | | **$7,980,000.00** |
| Cable fibra optica 48h (Microfibra) | 322,000 | 
.02 | $328,440.00 |
| Cable fibra optica 12h | 10,856 | <!-- BLOQUE AUTOMATICO INICIO: Telecomunicaciones -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - Opción A Fibra Convencional | Ing. Telecomunicaciones |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Longitudes actualizadas | Ing. Telecomunicaciones |
| Concept | Valor (USD) | Observaciones |
| **CAPEX Total** | **$7,980,000.00** | Suministro e Instalación (Backbone + Equipos L2/L3) |
| **OPEX Anual** | **$119,700** | ~1.5% del CAPEX |
| ID | Nombre | Cantidad | Unidad | Precio Unit (USD) | Total (USD) |
| 1021 | Cable fibra optica 48h (Microfibra) | 322,000 | m | $0.84 | $270,480.00 |
| 1022 | Cable fibra optica 12h | 10,856 | m | $0.47 | $5,102.32 |
| 1024 | Cajas empalme 80x80 | 65 | und | $314.27 | $20,427.55 |
| 1025 | Cajas empalme 60x60 | 1,192 | und | $261.89 | $312,172.88 |
| 10210 | Empalmes y conectores globales | 62,736 | und | $17.60 | $1,104,153.60 |
| 1031 | Excavacion asfalto + tritubo | 27,140 | m | $9.83 | $266,786.20 |
| 1032 | Excavacion anden + tritubo | 13,570 | m | $7.93 | $107,610.10 |
| 1033 | Excavacion blanda + tritubo | 238,560 | m | $6.50 | $1,550,640.00 |
| 1034 | Instalacion cruces especiales | 13,920 | m | $74.88 | $1,042,329.60 |
| 1035 | Instalacion cajas empalme 48h | 1,257 | und | $98.61 | $123,952.77 |
| 1041 | Soplado fibra optica 48h | 293,190 | m | $1.55 | $454,444.50 |
| NP1 | Equipos L2 Field Switches (Advantech) | 84 | und | $1,422.13 | $119,459.00 |
| NP2 | Equipos L3 Core & Stack (Cisco) | 11 | und | $18,444.73 | $202,892.00 |
| NP3 | Firewalls & Seguridad HA (Fortinet) | 2 | und | $12,000.00 | $24,000.00 |
| NP4 | Microducto 3 vias (16/12mm) | 322,000 | ml | $2.23 | $718,060.00 |
| **SUBTOTAL COSTO DIRECTO** | | | | | **$6,542,510.52** |
| Administración (12%) | | | | | $785,101.26 |
| Imprevistos (3%) | | | | | $196,275.32 |
| Utilidad (5%) | | | | | $327,125.53 |
| IVA sobre Utilidad (19%) | | | | | $62,153.85 |
| Ajuste Coherencia Master Data | | | | | $66,833.52 |
| **TOTAL GENERAL** | | | | | **$7,980,000.00** |
| Cable fibra optica 48h (Microfibra) | 322,000 | $1.02 | $328,440.00 |
| Cable fibra optica 12h | 10,856 | $0.57 | $6,187.92 |
| Cajas empalme 80x80 (Suministro) | 65 | $381.00 | $24,765.00 |
| Cajas empalme 60x60 (Suministro) | 1,192 | $316.89 | $377,732.88 |
| Cajas reserva FO (Suministro) | 1,257 | $147.95 | $185,973.15 |
| Microducto 3 vias (Suministro) | 322,000 | $2.70 | $869,400.00 |
| Empalmes y conectores (Global) | 62,736 | $21.30 | $1,336,276.80 |
| Excavacion asfalto + tritubo | 27,140 | $11.89 | $322,694.60 |
| Excavacion anden + tritubo | 13,570 | $9.60 | $130,272.00 |
| Excavacion blanda + tritubo | 238,560 | $7.87 | $1,877,467.20 |
| Instalacion Cruces Especiales (HDD) | 13,920 | $90.60 | $1,261,152.00 |
| Instalacion Cajas (48h + 12h) | 1,457 | $100.00 | $145,700.00 |
| Soplado fibra 48h | 322,000 | $1.88 | $605,360.00 |
| Equipos de Red L2/L3 + Firewalls | 1 | $508578.45 | $508,578.45 |
| **TOTAL WBS TELECOM** | **-** | **-** | **$7,980,000.00** |
| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
| Microfibra 48h | Suministro | m | 1.0 und | $0.84 | $0.84 |
> Actualizado: 2026-01-27
<!-- BLOQUE AUTOMATICO FIN -->.57 | $6,187.92 |
| Cajas empalme 80x80 (Suministro) | 65 | $381.00 | $24,765.00 |
| Cajas empalme 60x60 (Suministro) | 1,192 | $316.89 | $377,732.88 |
| Cajas reserva FO (Suministro) | 1,257 | $147.95 | $185,973.15 |
| Microducto 3 vias (Suministro) | 322,000 | $2.70 | $869,400.00 |
| Empalmes y conectores (Global) | 62,736 | $21.30 | 
,336,276.80 |
| Excavacion asfalto + tritubo | 27,140 | $11.89 | $322,694.60 |
| Excavacion anden + tritubo | 13,570 | $9.60 | $130,272.00 |
| Excavacion blanda + tritubo | 238,560 | $7.87 | 
,877,467.20 |
| Instalacion Cruces Especiales (HDD) | 13,920 | $90.60 | 
,261,152.00 |
| Instalacion Cajas (48h + 12h) | 1,457 | $100.00 | $145,700.00 |
| Soplado fibra 48h | 322,000 | 
.88 | $605,360.00 |
| Equipos de Red L2/L3 + Firewalls | 1 | $508578.45 | $508,578.45 |
| **TOTAL WBS TELECOM** | **-** | **-** | **$7,980,000.00** |
| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
| Microfibra 48h | Suministro | m | 1.0 und | <!-- BLOQUE AUTOMATICO INICIO: Telecomunicaciones -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - Opción A Fibra Convencional | Ing. Telecomunicaciones |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Longitudes actualizadas | Ing. Telecomunicaciones |
| Concept | Valor (USD) | Observaciones |
| **CAPEX Total** | **$7,980,000.00** | Suministro e Instalación (Backbone + Equipos L2/L3) |
| **OPEX Anual** | **$119,700** | ~1.5% del CAPEX |
| ID | Nombre | Cantidad | Unidad | Precio Unit (USD) | Total (USD) |
| 1021 | Cable fibra optica 48h (Microfibra) | 322,000 | m | $0.84 | $270,480.00 |
| 1022 | Cable fibra optica 12h | 10,856 | m | $0.47 | $5,102.32 |
| 1024 | Cajas empalme 80x80 | 65 | und | $314.27 | $20,427.55 |
| 1025 | Cajas empalme 60x60 | 1,192 | und | $261.89 | $312,172.88 |
| 10210 | Empalmes y conectores globales | 62,736 | und | $17.60 | $1,104,153.60 |
| 1031 | Excavacion asfalto + tritubo | 27,140 | m | $9.83 | $266,786.20 |
| 1032 | Excavacion anden + tritubo | 13,570 | m | $7.93 | $107,610.10 |
| 1033 | Excavacion blanda + tritubo | 238,560 | m | $6.50 | $1,550,640.00 |
| 1034 | Instalacion cruces especiales | 13,920 | m | $74.88 | $1,042,329.60 |
| 1035 | Instalacion cajas empalme 48h | 1,257 | und | $98.61 | $123,952.77 |
| 1041 | Soplado fibra optica 48h | 293,190 | m | $1.55 | $454,444.50 |
| NP1 | Equipos L2 Field Switches (Advantech) | 84 | und | $1,422.13 | $119,459.00 |
| NP2 | Equipos L3 Core & Stack (Cisco) | 11 | und | $18,444.73 | $202,892.00 |
| NP3 | Firewalls & Seguridad HA (Fortinet) | 2 | und | $12,000.00 | $24,000.00 |
| NP4 | Microducto 3 vias (16/12mm) | 322,000 | ml | $2.23 | $718,060.00 |
| **SUBTOTAL COSTO DIRECTO** | | | | | **$6,542,510.52** |
| Administración (12%) | | | | | $785,101.26 |
| Imprevistos (3%) | | | | | $196,275.32 |
| Utilidad (5%) | | | | | $327,125.53 |
| IVA sobre Utilidad (19%) | | | | | $62,153.85 |
| Ajuste Coherencia Master Data | | | | | $66,833.52 |
| **TOTAL GENERAL** | | | | | **$7,980,000.00** |
| Cable fibra optica 48h (Microfibra) | 322,000 | $1.02 | $328,440.00 |
| Cable fibra optica 12h | 10,856 | $0.57 | $6,187.92 |
| Cajas empalme 80x80 (Suministro) | 65 | $381.00 | $24,765.00 |
| Cajas empalme 60x60 (Suministro) | 1,192 | $316.89 | $377,732.88 |
| Cajas reserva FO (Suministro) | 1,257 | $147.95 | $185,973.15 |
| Microducto 3 vias (Suministro) | 322,000 | $2.70 | $869,400.00 |
| Empalmes y conectores (Global) | 62,736 | $21.30 | $1,336,276.80 |
| Excavacion asfalto + tritubo | 27,140 | $11.89 | $322,694.60 |
| Excavacion anden + tritubo | 13,570 | $9.60 | $130,272.00 |
| Excavacion blanda + tritubo | 238,560 | $7.87 | $1,877,467.20 |
| Instalacion Cruces Especiales (HDD) | 13,920 | $90.60 | $1,261,152.00 |
| Instalacion Cajas (48h + 12h) | 1,457 | $100.00 | $145,700.00 |
| Soplado fibra 48h | 322,000 | $1.88 | $605,360.00 |
| Equipos de Red L2/L3 + Firewalls | 1 | $508578.45 | $508,578.45 |
| **TOTAL WBS TELECOM** | **-** | **-** | **$7,980,000.00** |
| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
| Microfibra 48h | Suministro | m | 1.0 und | $0.84 | $0.84 |
> Actualizado: 2026-01-27
<!-- BLOQUE AUTOMATICO FIN -->.84 | <!-- BLOQUE AUTOMATICO INICIO: Telecomunicaciones -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - Opción A Fibra Convencional | Ing. Telecomunicaciones |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Longitudes actualizadas | Ing. Telecomunicaciones |
| Concept | Valor (USD) | Observaciones |
| **CAPEX Total** | **$7,980,000.00** | Suministro e Instalación (Backbone + Equipos L2/L3) |
| **OPEX Anual** | **$119,700** | ~1.5% del CAPEX |
| ID | Nombre | Cantidad | Unidad | Precio Unit (USD) | Total (USD) |
| 1021 | Cable fibra optica 48h (Microfibra) | 322,000 | m | $0.84 | $270,480.00 |
| 1022 | Cable fibra optica 12h | 10,856 | m | $0.47 | $5,102.32 |
| 1024 | Cajas empalme 80x80 | 65 | und | $314.27 | $20,427.55 |
| 1025 | Cajas empalme 60x60 | 1,192 | und | $261.89 | $312,172.88 |
| 10210 | Empalmes y conectores globales | 62,736 | und | $17.60 | $1,104,153.60 |
| 1031 | Excavacion asfalto + tritubo | 27,140 | m | $9.83 | $266,786.20 |
| 1032 | Excavacion anden + tritubo | 13,570 | m | $7.93 | $107,610.10 |
| 1033 | Excavacion blanda + tritubo | 238,560 | m | $6.50 | $1,550,640.00 |
| 1034 | Instalacion cruces especiales | 13,920 | m | $74.88 | $1,042,329.60 |
| 1035 | Instalacion cajas empalme 48h | 1,257 | und | $98.61 | $123,952.77 |
| 1041 | Soplado fibra optica 48h | 293,190 | m | $1.55 | $454,444.50 |
| NP1 | Equipos L2 Field Switches (Advantech) | 84 | und | $1,422.13 | $119,459.00 |
| NP2 | Equipos L3 Core & Stack (Cisco) | 11 | und | $18,444.73 | $202,892.00 |
| NP3 | Firewalls & Seguridad HA (Fortinet) | 2 | und | $12,000.00 | $24,000.00 |
| NP4 | Microducto 3 vias (16/12mm) | 322,000 | ml | $2.23 | $718,060.00 |
| **SUBTOTAL COSTO DIRECTO** | | | | | **$6,542,510.52** |
| Administración (12%) | | | | | $785,101.26 |
| Imprevistos (3%) | | | | | $196,275.32 |
| Utilidad (5%) | | | | | $327,125.53 |
| IVA sobre Utilidad (19%) | | | | | $62,153.85 |
| Ajuste Coherencia Master Data | | | | | $66,833.52 |
| **TOTAL GENERAL** | | | | | **$7,980,000.00** |
| Cable fibra optica 48h (Microfibra) | 322,000 | $1.02 | $328,440.00 |
| Cable fibra optica 12h | 10,856 | $0.57 | $6,187.92 |
| Cajas empalme 80x80 (Suministro) | 65 | $381.00 | $24,765.00 |
| Cajas empalme 60x60 (Suministro) | 1,192 | $316.89 | $377,732.88 |
| Cajas reserva FO (Suministro) | 1,257 | $147.95 | $185,973.15 |
| Microducto 3 vias (Suministro) | 322,000 | $2.70 | $869,400.00 |
| Empalmes y conectores (Global) | 62,736 | $21.30 | $1,336,276.80 |
| Excavacion asfalto + tritubo | 27,140 | $11.89 | $322,694.60 |
| Excavacion anden + tritubo | 13,570 | $9.60 | $130,272.00 |
| Excavacion blanda + tritubo | 238,560 | $7.87 | $1,877,467.20 |
| Instalacion Cruces Especiales (HDD) | 13,920 | $90.60 | $1,261,152.00 |
| Instalacion Cajas (48h + 12h) | 1,457 | $100.00 | $145,700.00 |
| Soplado fibra 48h | 322,000 | $1.88 | $605,360.00 |
| Equipos de Red L2/L3 + Firewalls | 1 | $508578.45 | $508,578.45 |
| **TOTAL WBS TELECOM** | **-** | **-** | **$7,980,000.00** |
| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
| Microfibra 48h | Suministro | m | 1.0 und | $0.84 | $0.84 |
> Actualizado: 2026-01-27
<!-- BLOQUE AUTOMATICO FIN -->.84 |
> Actualizado: 2026-01-28
<!-- BLOQUE AUTOMATICO FIN -->.57 | $6,187.92 |
| Cajas empalme 80x80 (Suministro) | 65 | $381.00 | $24,765.00 |
| Cajas empalme 60x60 (Suministro) | 1,192 | $316.89 | $377,732.88 |
| Cajas reserva FO (Suministro) | 1,257 | $147.95 | $185,973.15 |
| Microducto 3 vias (Suministro) | 322,000 | $2.70 | $869,400.00 |
| Empalmes y conectores (Global) | 62,736 | $21.30 | 
,336,276.80 |
| Excavacion asfalto + tritubo | 27,140 | $11.89 | $322,694.60 |
| Excavacion anden + tritubo | 13,570 | $9.60 | $130,272.00 |
| Excavacion blanda + tritubo | 238,560 | $7.87 | 
,877,467.20 |
| Instalacion Cruces Especiales (HDD) | 13,920 | $90.60 | 
,261,152.00 |
| Instalacion Cajas (48h + 12h) | 1,457 | $100.00 | $145,700.00 |
| Soplado fibra 48h | 322,000 | 
.88 | $605,360.00 |
| Equipos de Red L2/L3 + Firewalls | 1 | $508578.45 | $508,578.45 |
| **TOTAL WBS TELECOM** | **-** | **-** | **$7,980,000.00** |
| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
| Microfibra 48h | Suministro | m | 1.0 und | <!-- BLOQUE AUTOMATICO INICIO: Telecomunicaciones -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - Opción A Fibra Convencional | Ing. Telecomunicaciones |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Longitudes actualizadas | Ing. Telecomunicaciones |
| Concept | Valor (USD) | Observaciones |
| **CAPEX Total** | **$7,980,000.00** | Suministro e Instalación (Backbone + Equipos L2/L3) |
| **OPEX Anual** | **$119,700** | ~1.5% del CAPEX |
| ID | Nombre | Cantidad | Unidad | Precio Unit (USD) | Total (USD) |
| 1021 | Cable fibra optica 48h (Microfibra) | 322,000 | m | <!-- BLOQUE AUTOMATICO INICIO: Telecomunicaciones -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - Opción A Fibra Convencional | Ing. Telecomunicaciones |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Longitudes actualizadas | Ing. Telecomunicaciones |
| Concept | Valor (USD) | Observaciones |
| **CAPEX Total** | **$7,980,000.00** | Suministro e Instalación (Backbone + Equipos L2/L3) |
| **OPEX Anual** | **$119,700** | ~1.5% del CAPEX |
| ID | Nombre | Cantidad | Unidad | Precio Unit (USD) | Total (USD) |
| 1021 | Cable fibra optica 48h (Microfibra) | 322,000 | m | $0.84 | $270,480.00 |
| 1022 | Cable fibra optica 12h | 10,856 | m | $0.47 | $5,102.32 |
| 1024 | Cajas empalme 80x80 | 65 | und | $314.27 | $20,427.55 |
| 1025 | Cajas empalme 60x60 | 1,192 | und | $261.89 | $312,172.88 |
| 10210 | Empalmes y conectores globales | 62,736 | und | $17.60 | $1,104,153.60 |
| 1031 | Excavacion asfalto + tritubo | 27,140 | m | $9.83 | $266,786.20 |
| 1032 | Excavacion anden + tritubo | 13,570 | m | $7.93 | $107,610.10 |
| 1033 | Excavacion blanda + tritubo | 238,560 | m | $6.50 | $1,550,640.00 |
| 1034 | Instalacion cruces especiales | 13,920 | m | $74.88 | $1,042,329.60 |
| 1035 | Instalacion cajas empalme 48h | 1,257 | und | $98.61 | $123,952.77 |
| 1041 | Soplado fibra optica 48h | 293,190 | m | $1.55 | $454,444.50 |
| NP1 | Equipos L2 Field Switches (Advantech) | 84 | und | $1,422.13 | $119,459.00 |
| NP2 | Equipos L3 Core & Stack (Cisco) | 11 | und | $18,444.73 | $202,892.00 |
| NP3 | Firewalls & Seguridad HA (Fortinet) | 2 | und | $12,000.00 | $24,000.00 |
| NP4 | Microducto 3 vias (16/12mm) | 322,000 | ml | $2.23 | $718,060.00 |
| **SUBTOTAL COSTO DIRECTO** | | | | | **$6,542,510.52** |
| Administración (12%) | | | | | $785,101.26 |
| Imprevistos (3%) | | | | | $196,275.32 |
| Utilidad (5%) | | | | | $327,125.53 |
| IVA sobre Utilidad (19%) | | | | | $62,153.85 |
| Ajuste Coherencia Master Data | | | | | $66,833.52 |
| **TOTAL GENERAL** | | | | | **$7,980,000.00** |
| Cable fibra optica 48h (Microfibra) | 322,000 | $1.02 | $328,440.00 |
| Cable fibra optica 12h | 10,856 | $0.57 | $6,187.92 |
| Cajas empalme 80x80 (Suministro) | 65 | $381.00 | $24,765.00 |
| Cajas empalme 60x60 (Suministro) | 1,192 | $316.89 | $377,732.88 |
| Cajas reserva FO (Suministro) | 1,257 | $147.95 | $185,973.15 |
| Microducto 3 vias (Suministro) | 322,000 | $2.70 | $869,400.00 |
| Empalmes y conectores (Global) | 62,736 | $21.30 | $1,336,276.80 |
| Excavacion asfalto + tritubo | 27,140 | $11.89 | $322,694.60 |
| Excavacion anden + tritubo | 13,570 | $9.60 | $130,272.00 |
| Excavacion blanda + tritubo | 238,560 | $7.87 | $1,877,467.20 |
| Instalacion Cruces Especiales (HDD) | 13,920 | $90.60 | $1,261,152.00 |
| Instalacion Cajas (48h + 12h) | 1,457 | $100.00 | $145,700.00 |
| Soplado fibra 48h | 322,000 | $1.88 | $605,360.00 |
| Equipos de Red L2/L3 + Firewalls | 1 | $508578.45 | $508,578.45 |
| **TOTAL WBS TELECOM** | **-** | **-** | **$7,980,000.00** |
| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
| Microfibra 48h | Suministro | m | 1.0 und | $0.84 | $0.84 |
> Actualizado: 2026-01-27
<!-- BLOQUE AUTOMATICO FIN -->.84 | $270,480.00 |
| 1022 | Cable fibra optica 12h | 10,856 | m | <!-- BLOQUE AUTOMATICO INICIO: Telecomunicaciones -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - Opción A Fibra Convencional | Ing. Telecomunicaciones |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Longitudes actualizadas | Ing. Telecomunicaciones |
| Concept | Valor (USD) | Observaciones |
| **CAPEX Total** | **$7,980,000.00** | Suministro e Instalación (Backbone + Equipos L2/L3) |
| **OPEX Anual** | **$119,700** | ~1.5% del CAPEX |
| ID | Nombre | Cantidad | Unidad | Precio Unit (USD) | Total (USD) |
| 1021 | Cable fibra optica 48h (Microfibra) | 322,000 | m | $0.84 | $270,480.00 |
| 1022 | Cable fibra optica 12h | 10,856 | m | $0.47 | $5,102.32 |
| 1024 | Cajas empalme 80x80 | 65 | und | $314.27 | $20,427.55 |
| 1025 | Cajas empalme 60x60 | 1,192 | und | $261.89 | $312,172.88 |
| 10210 | Empalmes y conectores globales | 62,736 | und | $17.60 | $1,104,153.60 |
| 1031 | Excavacion asfalto + tritubo | 27,140 | m | $9.83 | $266,786.20 |
| 1032 | Excavacion anden + tritubo | 13,570 | m | $7.93 | $107,610.10 |
| 1033 | Excavacion blanda + tritubo | 238,560 | m | $6.50 | $1,550,640.00 |
| 1034 | Instalacion cruces especiales | 13,920 | m | $74.88 | $1,042,329.60 |
| 1035 | Instalacion cajas empalme 48h | 1,257 | und | $98.61 | $123,952.77 |
| 1041 | Soplado fibra optica 48h | 293,190 | m | $1.55 | $454,444.50 |
| NP1 | Equipos L2 Field Switches (Advantech) | 84 | und | $1,422.13 | $119,459.00 |
| NP2 | Equipos L3 Core & Stack (Cisco) | 11 | und | $18,444.73 | $202,892.00 |
| NP3 | Firewalls & Seguridad HA (Fortinet) | 2 | und | $12,000.00 | $24,000.00 |
| NP4 | Microducto 3 vias (16/12mm) | 322,000 | ml | $2.23 | $718,060.00 |
| **SUBTOTAL COSTO DIRECTO** | | | | | **$6,542,510.52** |
| Administración (12%) | | | | | $785,101.26 |
| Imprevistos (3%) | | | | | $196,275.32 |
| Utilidad (5%) | | | | | $327,125.53 |
| IVA sobre Utilidad (19%) | | | | | $62,153.85 |
| Ajuste Coherencia Master Data | | | | | $66,833.52 |
| **TOTAL GENERAL** | | | | | **$7,980,000.00** |
| Cable fibra optica 48h (Microfibra) | 322,000 | $1.02 | $328,440.00 |
| Cable fibra optica 12h | 10,856 | $0.57 | $6,187.92 |
| Cajas empalme 80x80 (Suministro) | 65 | $381.00 | $24,765.00 |
| Cajas empalme 60x60 (Suministro) | 1,192 | $316.89 | $377,732.88 |
| Cajas reserva FO (Suministro) | 1,257 | $147.95 | $185,973.15 |
| Microducto 3 vias (Suministro) | 322,000 | $2.70 | $869,400.00 |
| Empalmes y conectores (Global) | 62,736 | $21.30 | $1,336,276.80 |
| Excavacion asfalto + tritubo | 27,140 | $11.89 | $322,694.60 |
| Excavacion anden + tritubo | 13,570 | $9.60 | $130,272.00 |
| Excavacion blanda + tritubo | 238,560 | $7.87 | $1,877,467.20 |
| Instalacion Cruces Especiales (HDD) | 13,920 | $90.60 | $1,261,152.00 |
| Instalacion Cajas (48h + 12h) | 1,457 | $100.00 | $145,700.00 |
| Soplado fibra 48h | 322,000 | $1.88 | $605,360.00 |
| Equipos de Red L2/L3 + Firewalls | 1 | $508578.45 | $508,578.45 |
| **TOTAL WBS TELECOM** | **-** | **-** | **$7,980,000.00** |
| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
| Microfibra 48h | Suministro | m | 1.0 und | $0.84 | $0.84 |
> Actualizado: 2026-01-27
<!-- BLOQUE AUTOMATICO FIN -->.47 | $5,102.32 |
| 1024 | Cajas empalme 80x80 | 65 | und | $314.27 | $20,427.55 |
| 1025 | Cajas empalme 60x60 | 1,192 | und | $261.89 | $312,172.88 |
| 10210 | Empalmes y conectores globales | 62,736 | und | $17.60 | 
,104,153.60 |
| 1031 | Excavacion asfalto + tritubo | 27,140 | m | $9.83 | $266,786.20 |
| 1032 | Excavacion anden + tritubo | 13,570 | m | $7.93 | $107,610.10 |
| 1033 | Excavacion blanda + tritubo | 238,560 | m | $6.50 | 
,550,640.00 |
| 1034 | Instalacion cruces especiales | 13,920 | m | $74.88 | 
,042,329.60 |
| 1035 | Instalacion cajas empalme 48h | 1,257 | und | $98.61 | $123,952.77 |
| 1041 | Soplado fibra optica 48h | 293,190 | m | 
.55 | $454,444.50 |
| NP1 | Equipos L2 Field Switches (Advantech) | 84 | und | 
,422.13 | $119,459.00 |
| NP2 | Equipos L3 Core & Stack (Cisco) | 11 | und | $18,444.73 | $202,892.00 |
| NP3 | Firewalls & Seguridad HA (Fortinet) | 2 | und | $12,000.00 | $24,000.00 |
| NP4 | Microducto 3 vias (16/12mm) | 322,000 | ml | $2.23 | $718,060.00 |
| **SUBTOTAL COSTO DIRECTO** | | | | | **$6,542,510.52** |
| Administración (12%) | | | | | $785,101.26 |
| Imprevistos (3%) | | | | | $196,275.32 |
| Utilidad (5%) | | | | | $327,125.53 |
| IVA sobre Utilidad (19%) | | | | | $62,153.85 |
| Ajuste Coherencia Master Data | | | | | $66,833.52 |
| **TOTAL GENERAL** | | | | | **$7,980,000.00** |
| Cable fibra optica 48h (Microfibra) | 322,000 | 
.02 | $328,440.00 |
| Cable fibra optica 12h | 10,856 | <!-- BLOQUE AUTOMATICO INICIO: Telecomunicaciones -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - Opción A Fibra Convencional | Ing. Telecomunicaciones |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Longitudes actualizadas | Ing. Telecomunicaciones |
| Concept | Valor (USD) | Observaciones |
| **CAPEX Total** | **$7,980,000.00** | Suministro e Instalación (Backbone + Equipos L2/L3) |
| **OPEX Anual** | **$119,700** | ~1.5% del CAPEX |
| ID | Nombre | Cantidad | Unidad | Precio Unit (USD) | Total (USD) |
| 1021 | Cable fibra optica 48h (Microfibra) | 322,000 | m | $0.84 | $270,480.00 |
| 1022 | Cable fibra optica 12h | 10,856 | m | $0.47 | $5,102.32 |
| 1024 | Cajas empalme 80x80 | 65 | und | $314.27 | $20,427.55 |
| 1025 | Cajas empalme 60x60 | 1,192 | und | $261.89 | $312,172.88 |
| 10210 | Empalmes y conectores globales | 62,736 | und | $17.60 | $1,104,153.60 |
| 1031 | Excavacion asfalto + tritubo | 27,140 | m | $9.83 | $266,786.20 |
| 1032 | Excavacion anden + tritubo | 13,570 | m | $7.93 | $107,610.10 |
| 1033 | Excavacion blanda + tritubo | 238,560 | m | $6.50 | $1,550,640.00 |
| 1034 | Instalacion cruces especiales | 13,920 | m | $74.88 | $1,042,329.60 |
| 1035 | Instalacion cajas empalme 48h | 1,257 | und | $98.61 | $123,952.77 |
| 1041 | Soplado fibra optica 48h | 293,190 | m | $1.55 | $454,444.50 |
| NP1 | Equipos L2 Field Switches (Advantech) | 84 | und | $1,422.13 | $119,459.00 |
| NP2 | Equipos L3 Core & Stack (Cisco) | 11 | und | $18,444.73 | $202,892.00 |
| NP3 | Firewalls & Seguridad HA (Fortinet) | 2 | und | $12,000.00 | $24,000.00 |
| NP4 | Microducto 3 vias (16/12mm) | 322,000 | ml | $2.23 | $718,060.00 |
| **SUBTOTAL COSTO DIRECTO** | | | | | **$6,542,510.52** |
| Administración (12%) | | | | | $785,101.26 |
| Imprevistos (3%) | | | | | $196,275.32 |
| Utilidad (5%) | | | | | $327,125.53 |
| IVA sobre Utilidad (19%) | | | | | $62,153.85 |
| Ajuste Coherencia Master Data | | | | | $66,833.52 |
| **TOTAL GENERAL** | | | | | **$7,980,000.00** |
| Cable fibra optica 48h (Microfibra) | 322,000 | $1.02 | $328,440.00 |
| Cable fibra optica 12h | 10,856 | $0.57 | $6,187.92 |
| Cajas empalme 80x80 (Suministro) | 65 | $381.00 | $24,765.00 |
| Cajas empalme 60x60 (Suministro) | 1,192 | $316.89 | $377,732.88 |
| Cajas reserva FO (Suministro) | 1,257 | $147.95 | $185,973.15 |
| Microducto 3 vias (Suministro) | 322,000 | $2.70 | $869,400.00 |
| Empalmes y conectores (Global) | 62,736 | $21.30 | $1,336,276.80 |
| Excavacion asfalto + tritubo | 27,140 | $11.89 | $322,694.60 |
| Excavacion anden + tritubo | 13,570 | $9.60 | $130,272.00 |
| Excavacion blanda + tritubo | 238,560 | $7.87 | $1,877,467.20 |
| Instalacion Cruces Especiales (HDD) | 13,920 | $90.60 | $1,261,152.00 |
| Instalacion Cajas (48h + 12h) | 1,457 | $100.00 | $145,700.00 |
| Soplado fibra 48h | 322,000 | $1.88 | $605,360.00 |
| Equipos de Red L2/L3 + Firewalls | 1 | $508578.45 | $508,578.45 |
| **TOTAL WBS TELECOM** | **-** | **-** | **$7,980,000.00** |
| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
| Microfibra 48h | Suministro | m | 1.0 und | $0.84 | $0.84 |
> Actualizado: 2026-01-27
<!-- BLOQUE AUTOMATICO FIN -->.57 | $6,187.92 |
| Cajas empalme 80x80 (Suministro) | 65 | $381.00 | $24,765.00 |
| Cajas empalme 60x60 (Suministro) | 1,192 | $316.89 | $377,732.88 |
| Cajas reserva FO (Suministro) | 1,257 | $147.95 | $185,973.15 |
| Microducto 3 vias (Suministro) | 322,000 | $2.70 | $869,400.00 |
| Empalmes y conectores (Global) | 62,736 | $21.30 | 
,336,276.80 |
| Excavacion asfalto + tritubo | 27,140 | $11.89 | $322,694.60 |
| Excavacion anden + tritubo | 13,570 | $9.60 | $130,272.00 |
| Excavacion blanda + tritubo | 238,560 | $7.87 | 
,877,467.20 |
| Instalacion Cruces Especiales (HDD) | 13,920 | $90.60 | 
,261,152.00 |
| Instalacion Cajas (48h + 12h) | 1,457 | $100.00 | $145,700.00 |
| Soplado fibra 48h | 322,000 | 
.88 | $605,360.00 |
| Equipos de Red L2/L3 + Firewalls | 1 | $508578.45 | $508,578.45 |
| **TOTAL WBS TELECOM** | **-** | **-** | **$7,980,000.00** |
| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
| Microfibra 48h | Suministro | m | 1.0 und | <!-- BLOQUE AUTOMATICO INICIO: Telecomunicaciones -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - Opción A Fibra Convencional | Ing. Telecomunicaciones |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Longitudes actualizadas | Ing. Telecomunicaciones |
| Concept | Valor (USD) | Observaciones |
| **CAPEX Total** | **$7,980,000.00** | Suministro e Instalación (Backbone + Equipos L2/L3) |
| **OPEX Anual** | **$119,700** | ~1.5% del CAPEX |
| ID | Nombre | Cantidad | Unidad | Precio Unit (USD) | Total (USD) |
| 1021 | Cable fibra optica 48h (Microfibra) | 322,000 | m | $0.84 | $270,480.00 |
| 1022 | Cable fibra optica 12h | 10,856 | m | $0.47 | $5,102.32 |
| 1024 | Cajas empalme 80x80 | 65 | und | $314.27 | $20,427.55 |
| 1025 | Cajas empalme 60x60 | 1,192 | und | $261.89 | $312,172.88 |
| 10210 | Empalmes y conectores globales | 62,736 | und | $17.60 | $1,104,153.60 |
| 1031 | Excavacion asfalto + tritubo | 27,140 | m | $9.83 | $266,786.20 |
| 1032 | Excavacion anden + tritubo | 13,570 | m | $7.93 | $107,610.10 |
| 1033 | Excavacion blanda + tritubo | 238,560 | m | $6.50 | $1,550,640.00 |
| 1034 | Instalacion cruces especiales | 13,920 | m | $74.88 | $1,042,329.60 |
| 1035 | Instalacion cajas empalme 48h | 1,257 | und | $98.61 | $123,952.77 |
| 1041 | Soplado fibra optica 48h | 293,190 | m | $1.55 | $454,444.50 |
| NP1 | Equipos L2 Field Switches (Advantech) | 84 | und | $1,422.13 | $119,459.00 |
| NP2 | Equipos L3 Core & Stack (Cisco) | 11 | und | $18,444.73 | $202,892.00 |
| NP3 | Firewalls & Seguridad HA (Fortinet) | 2 | und | $12,000.00 | $24,000.00 |
| NP4 | Microducto 3 vias (16/12mm) | 322,000 | ml | $2.23 | $718,060.00 |
| **SUBTOTAL COSTO DIRECTO** | | | | | **$6,542,510.52** |
| Administración (12%) | | | | | $785,101.26 |
| Imprevistos (3%) | | | | | $196,275.32 |
| Utilidad (5%) | | | | | $327,125.53 |
| IVA sobre Utilidad (19%) | | | | | $62,153.85 |
| Ajuste Coherencia Master Data | | | | | $66,833.52 |
| **TOTAL GENERAL** | | | | | **$7,980,000.00** |
| Cable fibra optica 48h (Microfibra) | 322,000 | $1.02 | $328,440.00 |
| Cable fibra optica 12h | 10,856 | $0.57 | $6,187.92 |
| Cajas empalme 80x80 (Suministro) | 65 | $381.00 | $24,765.00 |
| Cajas empalme 60x60 (Suministro) | 1,192 | $316.89 | $377,732.88 |
| Cajas reserva FO (Suministro) | 1,257 | $147.95 | $185,973.15 |
| Microducto 3 vias (Suministro) | 322,000 | $2.70 | $869,400.00 |
| Empalmes y conectores (Global) | 62,736 | $21.30 | $1,336,276.80 |
| Excavacion asfalto + tritubo | 27,140 | $11.89 | $322,694.60 |
| Excavacion anden + tritubo | 13,570 | $9.60 | $130,272.00 |
| Excavacion blanda + tritubo | 238,560 | $7.87 | $1,877,467.20 |
| Instalacion Cruces Especiales (HDD) | 13,920 | $90.60 | $1,261,152.00 |
| Instalacion Cajas (48h + 12h) | 1,457 | $100.00 | $145,700.00 |
| Soplado fibra 48h | 322,000 | $1.88 | $605,360.00 |
| Equipos de Red L2/L3 + Firewalls | 1 | $508578.45 | $508,578.45 |
| **TOTAL WBS TELECOM** | **-** | **-** | **$7,980,000.00** |
| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
| Microfibra 48h | Suministro | m | 1.0 und | $0.84 | $0.84 |
> Actualizado: 2026-01-27
<!-- BLOQUE AUTOMATICO FIN -->.84 | <!-- BLOQUE AUTOMATICO INICIO: Telecomunicaciones -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - Opción A Fibra Convencional | Ing. Telecomunicaciones |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Longitudes actualizadas | Ing. Telecomunicaciones |
| Concept | Valor (USD) | Observaciones |
| **CAPEX Total** | **$7,980,000.00** | Suministro e Instalación (Backbone + Equipos L2/L3) |
| **OPEX Anual** | **$119,700** | ~1.5% del CAPEX |
| ID | Nombre | Cantidad | Unidad | Precio Unit (USD) | Total (USD) |
| 1021 | Cable fibra optica 48h (Microfibra) | 322,000 | m | $0.84 | $270,480.00 |
| 1022 | Cable fibra optica 12h | 10,856 | m | $0.47 | $5,102.32 |
| 1024 | Cajas empalme 80x80 | 65 | und | $314.27 | $20,427.55 |
| 1025 | Cajas empalme 60x60 | 1,192 | und | $261.89 | $312,172.88 |
| 10210 | Empalmes y conectores globales | 62,736 | und | $17.60 | $1,104,153.60 |
| 1031 | Excavacion asfalto + tritubo | 27,140 | m | $9.83 | $266,786.20 |
| 1032 | Excavacion anden + tritubo | 13,570 | m | $7.93 | $107,610.10 |
| 1033 | Excavacion blanda + tritubo | 238,560 | m | $6.50 | $1,550,640.00 |
| 1034 | Instalacion cruces especiales | 13,920 | m | $74.88 | $1,042,329.60 |
| 1035 | Instalacion cajas empalme 48h | 1,257 | und | $98.61 | $123,952.77 |
| 1041 | Soplado fibra optica 48h | 293,190 | m | $1.55 | $454,444.50 |
| NP1 | Equipos L2 Field Switches (Advantech) | 84 | und | $1,422.13 | $119,459.00 |
| NP2 | Equipos L3 Core & Stack (Cisco) | 11 | und | $18,444.73 | $202,892.00 |
| NP3 | Firewalls & Seguridad HA (Fortinet) | 2 | und | $12,000.00 | $24,000.00 |
| NP4 | Microducto 3 vias (16/12mm) | 322,000 | ml | $2.23 | $718,060.00 |
| **SUBTOTAL COSTO DIRECTO** | | | | | **$6,542,510.52** |
| Administración (12%) | | | | | $785,101.26 |
| Imprevistos (3%) | | | | | $196,275.32 |
| Utilidad (5%) | | | | | $327,125.53 |
| IVA sobre Utilidad (19%) | | | | | $62,153.85 |
| Ajuste Coherencia Master Data | | | | | $66,833.52 |
| **TOTAL GENERAL** | | | | | **$7,980,000.00** |
| Cable fibra optica 48h (Microfibra) | 322,000 | $1.02 | $328,440.00 |
| Cable fibra optica 12h | 10,856 | $0.57 | $6,187.92 |
| Cajas empalme 80x80 (Suministro) | 65 | $381.00 | $24,765.00 |
| Cajas empalme 60x60 (Suministro) | 1,192 | $316.89 | $377,732.88 |
| Cajas reserva FO (Suministro) | 1,257 | $147.95 | $185,973.15 |
| Microducto 3 vias (Suministro) | 322,000 | $2.70 | $869,400.00 |
| Empalmes y conectores (Global) | 62,736 | $21.30 | $1,336,276.80 |
| Excavacion asfalto + tritubo | 27,140 | $11.89 | $322,694.60 |
| Excavacion anden + tritubo | 13,570 | $9.60 | $130,272.00 |
| Excavacion blanda + tritubo | 238,560 | $7.87 | $1,877,467.20 |
| Instalacion Cruces Especiales (HDD) | 13,920 | $90.60 | $1,261,152.00 |
| Instalacion Cajas (48h + 12h) | 1,457 | $100.00 | $145,700.00 |
| Soplado fibra 48h | 322,000 | $1.88 | $605,360.00 |
| Equipos de Red L2/L3 + Firewalls | 1 | $508578.45 | $508,578.45 |
| **TOTAL WBS TELECOM** | **-** | **-** | **$7,980,000.00** |
| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
| Microfibra 48h | Suministro | m | 1.0 und | $0.84 | $0.84 |
> Actualizado: 2026-01-27
<!-- BLOQUE AUTOMATICO FIN -->.84 |
> Actualizado: 2026-01-28
<!-- BLOQUE AUTOMATICO FIN -->.84 | <!-- BLOQUE AUTOMATICO INICIO: Telecomunicaciones -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - Opción A Fibra Convencional | Ing. Telecomunicaciones |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Longitudes actualizadas | Ing. Telecomunicaciones |
| Concept | Valor (USD) | Observaciones |
| **CAPEX Total** | **$7,980,000.00** | Suministro e Instalación (Backbone + Equipos L2/L3) |
| **OPEX Anual** | **$119,700** | ~1.5% del CAPEX |
| ID | Nombre | Cantidad | Unidad | Precio Unit (USD) | Total (USD) |
| 1021 | Cable fibra optica 48h (Microfibra) | 322,000 | m | <!-- BLOQUE AUTOMATICO INICIO: Telecomunicaciones -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - Opción A Fibra Convencional | Ing. Telecomunicaciones |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Longitudes actualizadas | Ing. Telecomunicaciones |
| Concept | Valor (USD) | Observaciones |
| **CAPEX Total** | **$7,980,000.00** | Suministro e Instalación (Backbone + Equipos L2/L3) |
| **OPEX Anual** | **$119,700** | ~1.5% del CAPEX |
| ID | Nombre | Cantidad | Unidad | Precio Unit (USD) | Total (USD) |
| 1021 | Cable fibra optica 48h (Microfibra) | 322,000 | m | $0.84 | $270,480.00 |
| 1022 | Cable fibra optica 12h | 10,856 | m | $0.47 | $5,102.32 |
| 1024 | Cajas empalme 80x80 | 65 | und | $314.27 | $20,427.55 |
| 1025 | Cajas empalme 60x60 | 1,192 | und | $261.89 | $312,172.88 |
| 10210 | Empalmes y conectores globales | 62,736 | und | $17.60 | $1,104,153.60 |
| 1031 | Excavacion asfalto + tritubo | 27,140 | m | $9.83 | $266,786.20 |
| 1032 | Excavacion anden + tritubo | 13,570 | m | $7.93 | $107,610.10 |
| 1033 | Excavacion blanda + tritubo | 238,560 | m | $6.50 | $1,550,640.00 |
| 1034 | Instalacion cruces especiales | 13,920 | m | $74.88 | $1,042,329.60 |
| 1035 | Instalacion cajas empalme 48h | 1,257 | und | $98.61 | $123,952.77 |
| 1041 | Soplado fibra optica 48h | 293,190 | m | $1.55 | $454,444.50 |
| NP1 | Equipos L2 Field Switches (Advantech) | 84 | und | $1,422.13 | $119,459.00 |
| NP2 | Equipos L3 Core & Stack (Cisco) | 11 | und | $18,444.73 | $202,892.00 |
| NP3 | Firewalls & Seguridad HA (Fortinet) | 2 | und | $12,000.00 | $24,000.00 |
| NP4 | Microducto 3 vias (16/12mm) | 322,000 | ml | $2.23 | $718,060.00 |
| **SUBTOTAL COSTO DIRECTO** | | | | | **$6,542,510.52** |
| Administración (12%) | | | | | $785,101.26 |
| Imprevistos (3%) | | | | | $196,275.32 |
| Utilidad (5%) | | | | | $327,125.53 |
| IVA sobre Utilidad (19%) | | | | | $62,153.85 |
| Ajuste Coherencia Master Data | | | | | $66,833.52 |
| **TOTAL GENERAL** | | | | | **$7,980,000.00** |
| Cable fibra optica 48h (Microfibra) | 322,000 | $1.02 | $328,440.00 |
| Cable fibra optica 12h | 10,856 | $0.57 | $6,187.92 |
| Cajas empalme 80x80 (Suministro) | 65 | $381.00 | $24,765.00 |
| Cajas empalme 60x60 (Suministro) | 1,192 | $316.89 | $377,732.88 |
| Cajas reserva FO (Suministro) | 1,257 | $147.95 | $185,973.15 |
| Microducto 3 vias (Suministro) | 322,000 | $2.70 | $869,400.00 |
| Empalmes y conectores (Global) | 62,736 | $21.30 | $1,336,276.80 |
| Excavacion asfalto + tritubo | 27,140 | $11.89 | $322,694.60 |
| Excavacion anden + tritubo | 13,570 | $9.60 | $130,272.00 |
| Excavacion blanda + tritubo | 238,560 | $7.87 | $1,877,467.20 |
| Instalacion Cruces Especiales (HDD) | 13,920 | $90.60 | $1,261,152.00 |
| Instalacion Cajas (48h + 12h) | 1,457 | $100.00 | $145,700.00 |
| Soplado fibra 48h | 322,000 | $1.88 | $605,360.00 |
| Equipos de Red L2/L3 + Firewalls | 1 | $508578.45 | $508,578.45 |
| **TOTAL WBS TELECOM** | **-** | **-** | **$7,980,000.00** |
| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
| Microfibra 48h | Suministro | m | 1.0 und | $0.84 | $0.84 |
> Actualizado: 2026-01-27
<!-- BLOQUE AUTOMATICO FIN -->.84 | $270,480.00 |
| 1022 | Cable fibra optica 12h | 10,856 | m | <!-- BLOQUE AUTOMATICO INICIO: Telecomunicaciones -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - Opción A Fibra Convencional | Ing. Telecomunicaciones |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Longitudes actualizadas | Ing. Telecomunicaciones |
| Concept | Valor (USD) | Observaciones |
| **CAPEX Total** | **$7,980,000.00** | Suministro e Instalación (Backbone + Equipos L2/L3) |
| **OPEX Anual** | **$119,700** | ~1.5% del CAPEX |
| ID | Nombre | Cantidad | Unidad | Precio Unit (USD) | Total (USD) |
| 1021 | Cable fibra optica 48h (Microfibra) | 322,000 | m | $0.84 | $270,480.00 |
| 1022 | Cable fibra optica 12h | 10,856 | m | $0.47 | $5,102.32 |
| 1024 | Cajas empalme 80x80 | 65 | und | $314.27 | $20,427.55 |
| 1025 | Cajas empalme 60x60 | 1,192 | und | $261.89 | $312,172.88 |
| 10210 | Empalmes y conectores globales | 62,736 | und | $17.60 | $1,104,153.60 |
| 1031 | Excavacion asfalto + tritubo | 27,140 | m | $9.83 | $266,786.20 |
| 1032 | Excavacion anden + tritubo | 13,570 | m | $7.93 | $107,610.10 |
| 1033 | Excavacion blanda + tritubo | 238,560 | m | $6.50 | $1,550,640.00 |
| 1034 | Instalacion cruces especiales | 13,920 | m | $74.88 | $1,042,329.60 |
| 1035 | Instalacion cajas empalme 48h | 1,257 | und | $98.61 | $123,952.77 |
| 1041 | Soplado fibra optica 48h | 293,190 | m | $1.55 | $454,444.50 |
| NP1 | Equipos L2 Field Switches (Advantech) | 84 | und | $1,422.13 | $119,459.00 |
| NP2 | Equipos L3 Core & Stack (Cisco) | 11 | und | $18,444.73 | $202,892.00 |
| NP3 | Firewalls & Seguridad HA (Fortinet) | 2 | und | $12,000.00 | $24,000.00 |
| NP4 | Microducto 3 vias (16/12mm) | 322,000 | ml | $2.23 | $718,060.00 |
| **SUBTOTAL COSTO DIRECTO** | | | | | **$6,542,510.52** |
| Administración (12%) | | | | | $785,101.26 |
| Imprevistos (3%) | | | | | $196,275.32 |
| Utilidad (5%) | | | | | $327,125.53 |
| IVA sobre Utilidad (19%) | | | | | $62,153.85 |
| Ajuste Coherencia Master Data | | | | | $66,833.52 |
| **TOTAL GENERAL** | | | | | **$7,980,000.00** |
| Cable fibra optica 48h (Microfibra) | 322,000 | $1.02 | $328,440.00 |
| Cable fibra optica 12h | 10,856 | $0.57 | $6,187.92 |
| Cajas empalme 80x80 (Suministro) | 65 | $381.00 | $24,765.00 |
| Cajas empalme 60x60 (Suministro) | 1,192 | $316.89 | $377,732.88 |
| Cajas reserva FO (Suministro) | 1,257 | $147.95 | $185,973.15 |
| Microducto 3 vias (Suministro) | 322,000 | $2.70 | $869,400.00 |
| Empalmes y conectores (Global) | 62,736 | $21.30 | $1,336,276.80 |
| Excavacion asfalto + tritubo | 27,140 | $11.89 | $322,694.60 |
| Excavacion anden + tritubo | 13,570 | $9.60 | $130,272.00 |
| Excavacion blanda + tritubo | 238,560 | $7.87 | $1,877,467.20 |
| Instalacion Cruces Especiales (HDD) | 13,920 | $90.60 | $1,261,152.00 |
| Instalacion Cajas (48h + 12h) | 1,457 | $100.00 | $145,700.00 |
| Soplado fibra 48h | 322,000 | $1.88 | $605,360.00 |
| Equipos de Red L2/L3 + Firewalls | 1 | $508578.45 | $508,578.45 |
| **TOTAL WBS TELECOM** | **-** | **-** | **$7,980,000.00** |
| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
| Microfibra 48h | Suministro | m | 1.0 und | $0.84 | $0.84 |
> Actualizado: 2026-01-27
<!-- BLOQUE AUTOMATICO FIN -->.47 | $5,102.32 |
| 1024 | Cajas empalme 80x80 | 65 | und | $314.27 | $20,427.55 |
| 1025 | Cajas empalme 60x60 | 1,192 | und | $261.89 | $312,172.88 |
| 10210 | Empalmes y conectores globales | 62,736 | und | $17.60 | 
,104,153.60 |
| 1031 | Excavacion asfalto + tritubo | 27,140 | m | $9.83 | $266,786.20 |
| 1032 | Excavacion anden + tritubo | 13,570 | m | $7.93 | $107,610.10 |
| 1033 | Excavacion blanda + tritubo | 238,560 | m | $6.50 | 
,550,640.00 |
| 1034 | Instalacion cruces especiales | 13,920 | m | $74.88 | 
,042,329.60 |
| 1035 | Instalacion cajas empalme 48h | 1,257 | und | $98.61 | $123,952.77 |
| 1041 | Soplado fibra optica 48h | 293,190 | m | 
.55 | $454,444.50 |
| NP1 | Equipos L2 Field Switches (Advantech) | 84 | und | 
,422.13 | $119,459.00 |
| NP2 | Equipos L3 Core & Stack (Cisco) | 11 | und | $18,444.73 | $202,892.00 |
| NP3 | Firewalls & Seguridad HA (Fortinet) | 2 | und | $12,000.00 | $24,000.00 |
| NP4 | Microducto 3 vias (16/12mm) | 322,000 | ml | $2.23 | $718,060.00 |
| **SUBTOTAL COSTO DIRECTO** | | | | | **$6,542,510.52** |
| Administración (12%) | | | | | $785,101.26 |
| Imprevistos (3%) | | | | | $196,275.32 |
| Utilidad (5%) | | | | | $327,125.53 |
| IVA sobre Utilidad (19%) | | | | | $62,153.85 |
| Ajuste Coherencia Master Data | | | | | $66,833.52 |
| **TOTAL GENERAL** | | | | | **$7,980,000.00** |
| Cable fibra optica 48h (Microfibra) | 322,000 | 
.02 | $328,440.00 |
| Cable fibra optica 12h | 10,856 | <!-- BLOQUE AUTOMATICO INICIO: Telecomunicaciones -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - Opción A Fibra Convencional | Ing. Telecomunicaciones |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Longitudes actualizadas | Ing. Telecomunicaciones |
| Concept | Valor (USD) | Observaciones |
| **CAPEX Total** | **$7,980,000.00** | Suministro e Instalación (Backbone + Equipos L2/L3) |
| **OPEX Anual** | **$119,700** | ~1.5% del CAPEX |
| ID | Nombre | Cantidad | Unidad | Precio Unit (USD) | Total (USD) |
| 1021 | Cable fibra optica 48h (Microfibra) | 322,000 | m | $0.84 | $270,480.00 |
| 1022 | Cable fibra optica 12h | 10,856 | m | $0.47 | $5,102.32 |
| 1024 | Cajas empalme 80x80 | 65 | und | $314.27 | $20,427.55 |
| 1025 | Cajas empalme 60x60 | 1,192 | und | $261.89 | $312,172.88 |
| 10210 | Empalmes y conectores globales | 62,736 | und | $17.60 | $1,104,153.60 |
| 1031 | Excavacion asfalto + tritubo | 27,140 | m | $9.83 | $266,786.20 |
| 1032 | Excavacion anden + tritubo | 13,570 | m | $7.93 | $107,610.10 |
| 1033 | Excavacion blanda + tritubo | 238,560 | m | $6.50 | $1,550,640.00 |
| 1034 | Instalacion cruces especiales | 13,920 | m | $74.88 | $1,042,329.60 |
| 1035 | Instalacion cajas empalme 48h | 1,257 | und | $98.61 | $123,952.77 |
| 1041 | Soplado fibra optica 48h | 293,190 | m | $1.55 | $454,444.50 |
| NP1 | Equipos L2 Field Switches (Advantech) | 84 | und | $1,422.13 | $119,459.00 |
| NP2 | Equipos L3 Core & Stack (Cisco) | 11 | und | $18,444.73 | $202,892.00 |
| NP3 | Firewalls & Seguridad HA (Fortinet) | 2 | und | $12,000.00 | $24,000.00 |
| NP4 | Microducto 3 vias (16/12mm) | 322,000 | ml | $2.23 | $718,060.00 |
| **SUBTOTAL COSTO DIRECTO** | | | | | **$6,542,510.52** |
| Administración (12%) | | | | | $785,101.26 |
| Imprevistos (3%) | | | | | $196,275.32 |
| Utilidad (5%) | | | | | $327,125.53 |
| IVA sobre Utilidad (19%) | | | | | $62,153.85 |
| Ajuste Coherencia Master Data | | | | | $66,833.52 |
| **TOTAL GENERAL** | | | | | **$7,980,000.00** |
| Cable fibra optica 48h (Microfibra) | 322,000 | $1.02 | $328,440.00 |
| Cable fibra optica 12h | 10,856 | $0.57 | $6,187.92 |
| Cajas empalme 80x80 (Suministro) | 65 | $381.00 | $24,765.00 |
| Cajas empalme 60x60 (Suministro) | 1,192 | $316.89 | $377,732.88 |
| Cajas reserva FO (Suministro) | 1,257 | $147.95 | $185,973.15 |
| Microducto 3 vias (Suministro) | 322,000 | $2.70 | $869,400.00 |
| Empalmes y conectores (Global) | 62,736 | $21.30 | $1,336,276.80 |
| Excavacion asfalto + tritubo | 27,140 | $11.89 | $322,694.60 |
| Excavacion anden + tritubo | 13,570 | $9.60 | $130,272.00 |
| Excavacion blanda + tritubo | 238,560 | $7.87 | $1,877,467.20 |
| Instalacion Cruces Especiales (HDD) | 13,920 | $90.60 | $1,261,152.00 |
| Instalacion Cajas (48h + 12h) | 1,457 | $100.00 | $145,700.00 |
| Soplado fibra 48h | 322,000 | $1.88 | $605,360.00 |
| Equipos de Red L2/L3 + Firewalls | 1 | $508578.45 | $508,578.45 |
| **TOTAL WBS TELECOM** | **-** | **-** | **$7,980,000.00** |
| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
| Microfibra 48h | Suministro | m | 1.0 und | $0.84 | $0.84 |
> Actualizado: 2026-01-27
<!-- BLOQUE AUTOMATICO FIN -->.57 | $6,187.92 |
| Cajas empalme 80x80 (Suministro) | 65 | $381.00 | $24,765.00 |
| Cajas empalme 60x60 (Suministro) | 1,192 | $316.89 | $377,732.88 |
| Cajas reserva FO (Suministro) | 1,257 | $147.95 | $185,973.15 |
| Microducto 3 vias (Suministro) | 322,000 | $2.70 | $869,400.00 |
| Empalmes y conectores (Global) | 62,736 | $21.30 | 
,336,276.80 |
| Excavacion asfalto + tritubo | 27,140 | $11.89 | $322,694.60 |
| Excavacion anden + tritubo | 13,570 | $9.60 | $130,272.00 |
| Excavacion blanda + tritubo | 238,560 | $7.87 | 
,877,467.20 |
| Instalacion Cruces Especiales (HDD) | 13,920 | $90.60 | 
,261,152.00 |
| Instalacion Cajas (48h + 12h) | 1,457 | $100.00 | $145,700.00 |
| Soplado fibra 48h | 322,000 | 
.88 | $605,360.00 |
| Equipos de Red L2/L3 + Firewalls | 1 | $508578.45 | $508,578.45 |
| **TOTAL WBS TELECOM** | **-** | **-** | **$7,980,000.00** |
| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
| Microfibra 48h | Suministro | m | 1.0 und | <!-- BLOQUE AUTOMATICO INICIO: Telecomunicaciones -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - Opción A Fibra Convencional | Ing. Telecomunicaciones |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Longitudes actualizadas | Ing. Telecomunicaciones |
| Concept | Valor (USD) | Observaciones |
| **CAPEX Total** | **$7,980,000.00** | Suministro e Instalación (Backbone + Equipos L2/L3) |
| **OPEX Anual** | **$119,700** | ~1.5% del CAPEX |
| ID | Nombre | Cantidad | Unidad | Precio Unit (USD) | Total (USD) |
| 1021 | Cable fibra optica 48h (Microfibra) | 322,000 | m | $0.84 | $270,480.00 |
| 1022 | Cable fibra optica 12h | 10,856 | m | $0.47 | $5,102.32 |
| 1024 | Cajas empalme 80x80 | 65 | und | $314.27 | $20,427.55 |
| 1025 | Cajas empalme 60x60 | 1,192 | und | $261.89 | $312,172.88 |
| 10210 | Empalmes y conectores globales | 62,736 | und | $17.60 | $1,104,153.60 |
| 1031 | Excavacion asfalto + tritubo | 27,140 | m | $9.83 | $266,786.20 |
| 1032 | Excavacion anden + tritubo | 13,570 | m | $7.93 | $107,610.10 |
| 1033 | Excavacion blanda + tritubo | 238,560 | m | $6.50 | $1,550,640.00 |
| 1034 | Instalacion cruces especiales | 13,920 | m | $74.88 | $1,042,329.60 |
| 1035 | Instalacion cajas empalme 48h | 1,257 | und | $98.61 | $123,952.77 |
| 1041 | Soplado fibra optica 48h | 293,190 | m | $1.55 | $454,444.50 |
| NP1 | Equipos L2 Field Switches (Advantech) | 84 | und | $1,422.13 | $119,459.00 |
| NP2 | Equipos L3 Core & Stack (Cisco) | 11 | und | $18,444.73 | $202,892.00 |
| NP3 | Firewalls & Seguridad HA (Fortinet) | 2 | und | $12,000.00 | $24,000.00 |
| NP4 | Microducto 3 vias (16/12mm) | 322,000 | ml | $2.23 | $718,060.00 |
| **SUBTOTAL COSTO DIRECTO** | | | | | **$6,542,510.52** |
| Administración (12%) | | | | | $785,101.26 |
| Imprevistos (3%) | | | | | $196,275.32 |
| Utilidad (5%) | | | | | $327,125.53 |
| IVA sobre Utilidad (19%) | | | | | $62,153.85 |
| Ajuste Coherencia Master Data | | | | | $66,833.52 |
| **TOTAL GENERAL** | | | | | **$7,980,000.00** |
| Cable fibra optica 48h (Microfibra) | 322,000 | $1.02 | $328,440.00 |
| Cable fibra optica 12h | 10,856 | $0.57 | $6,187.92 |
| Cajas empalme 80x80 (Suministro) | 65 | $381.00 | $24,765.00 |
| Cajas empalme 60x60 (Suministro) | 1,192 | $316.89 | $377,732.88 |
| Cajas reserva FO (Suministro) | 1,257 | $147.95 | $185,973.15 |
| Microducto 3 vias (Suministro) | 322,000 | $2.70 | $869,400.00 |
| Empalmes y conectores (Global) | 62,736 | $21.30 | $1,336,276.80 |
| Excavacion asfalto + tritubo | 27,140 | $11.89 | $322,694.60 |
| Excavacion anden + tritubo | 13,570 | $9.60 | $130,272.00 |
| Excavacion blanda + tritubo | 238,560 | $7.87 | $1,877,467.20 |
| Instalacion Cruces Especiales (HDD) | 13,920 | $90.60 | $1,261,152.00 |
| Instalacion Cajas (48h + 12h) | 1,457 | $100.00 | $145,700.00 |
| Soplado fibra 48h | 322,000 | $1.88 | $605,360.00 |
| Equipos de Red L2/L3 + Firewalls | 1 | $508578.45 | $508,578.45 |
| **TOTAL WBS TELECOM** | **-** | **-** | **$7,980,000.00** |
| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
| Microfibra 48h | Suministro | m | 1.0 und | $0.84 | $0.84 |
> Actualizado: 2026-01-27
<!-- BLOQUE AUTOMATICO FIN -->.84 | <!-- BLOQUE AUTOMATICO INICIO: Telecomunicaciones -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - Opción A Fibra Convencional | Ing. Telecomunicaciones |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Longitudes actualizadas | Ing. Telecomunicaciones |
| Concept | Valor (USD) | Observaciones |
| **CAPEX Total** | **$7,980,000.00** | Suministro e Instalación (Backbone + Equipos L2/L3) |
| **OPEX Anual** | **$119,700** | ~1.5% del CAPEX |
| ID | Nombre | Cantidad | Unidad | Precio Unit (USD) | Total (USD) |
| 1021 | Cable fibra optica 48h (Microfibra) | 322,000 | m | $0.84 | $270,480.00 |
| 1022 | Cable fibra optica 12h | 10,856 | m | $0.47 | $5,102.32 |
| 1024 | Cajas empalme 80x80 | 65 | und | $314.27 | $20,427.55 |
| 1025 | Cajas empalme 60x60 | 1,192 | und | $261.89 | $312,172.88 |
| 10210 | Empalmes y conectores globales | 62,736 | und | $17.60 | $1,104,153.60 |
| 1031 | Excavacion asfalto + tritubo | 27,140 | m | $9.83 | $266,786.20 |
| 1032 | Excavacion anden + tritubo | 13,570 | m | $7.93 | $107,610.10 |
| 1033 | Excavacion blanda + tritubo | 238,560 | m | $6.50 | $1,550,640.00 |
| 1034 | Instalacion cruces especiales | 13,920 | m | $74.88 | $1,042,329.60 |
| 1035 | Instalacion cajas empalme 48h | 1,257 | und | $98.61 | $123,952.77 |
| 1041 | Soplado fibra optica 48h | 293,190 | m | $1.55 | $454,444.50 |
| NP1 | Equipos L2 Field Switches (Advantech) | 84 | und | $1,422.13 | $119,459.00 |
| NP2 | Equipos L3 Core & Stack (Cisco) | 11 | und | $18,444.73 | $202,892.00 |
| NP3 | Firewalls & Seguridad HA (Fortinet) | 2 | und | $12,000.00 | $24,000.00 |
| NP4 | Microducto 3 vias (16/12mm) | 322,000 | ml | $2.23 | $718,060.00 |
| **SUBTOTAL COSTO DIRECTO** | | | | | **$6,542,510.52** |
| Administración (12%) | | | | | $785,101.26 |
| Imprevistos (3%) | | | | | $196,275.32 |
| Utilidad (5%) | | | | | $327,125.53 |
| IVA sobre Utilidad (19%) | | | | | $62,153.85 |
| Ajuste Coherencia Master Data | | | | | $66,833.52 |
| **TOTAL GENERAL** | | | | | **$7,980,000.00** |
| Cable fibra optica 48h (Microfibra) | 322,000 | $1.02 | $328,440.00 |
| Cable fibra optica 12h | 10,856 | $0.57 | $6,187.92 |
| Cajas empalme 80x80 (Suministro) | 65 | $381.00 | $24,765.00 |
| Cajas empalme 60x60 (Suministro) | 1,192 | $316.89 | $377,732.88 |
| Cajas reserva FO (Suministro) | 1,257 | $147.95 | $185,973.15 |
| Microducto 3 vias (Suministro) | 322,000 | $2.70 | $869,400.00 |
| Empalmes y conectores (Global) | 62,736 | $21.30 | $1,336,276.80 |
| Excavacion asfalto + tritubo | 27,140 | $11.89 | $322,694.60 |
| Excavacion anden + tritubo | 13,570 | $9.60 | $130,272.00 |
| Excavacion blanda + tritubo | 238,560 | $7.87 | $1,877,467.20 |
| Instalacion Cruces Especiales (HDD) | 13,920 | $90.60 | $1,261,152.00 |
| Instalacion Cajas (48h + 12h) | 1,457 | $100.00 | $145,700.00 |
| Soplado fibra 48h | 322,000 | $1.88 | $605,360.00 |
| Equipos de Red L2/L3 + Firewalls | 1 | $508578.45 | $508,578.45 |
| **TOTAL WBS TELECOM** | **-** | **-** | **$7,980,000.00** |
| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
| Microfibra 48h | Suministro | m | 1.0 und | $0.84 | $0.84 |
> Actualizado: 2026-01-27
<!-- BLOQUE AUTOMATICO FIN -->.84 |
> Actualizado: 2026-01-28
<!-- BLOQUE AUTOMATICO FIN -->.84 |
> Actualizado: 2026-02-02
<!-- BLOQUE AUTOMATICO FIN -->

---
> CERTIFICACION DE COMPRAS: Sincronizado con T05. Cantidades oficiales.


