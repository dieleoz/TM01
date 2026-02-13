# SOLICITUD DE COMPRA - EQUIPOS L3 (TRONCAL)
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 21 de octubre de 2025  
**Solicitante:** Ing. Telecomunicaciones / Administrador Contractual EPC  
**Aprobador:** Gerente de Proyecto  
**Versión:** 1.0  
**Referencia:** T04 Telecomunicaciones v1.0  

---

## 📋 **RESUMEN EJECUTIVO**

| Ítem | Valor |
|:-----|:------|
| **Sistema** | Telecomunicaciones - Equipos L3 (Troncal Principal) |
| **Aplicación** | Anillo redundante 283 km - 7 nodos L3 |
| **Total Equipos** | 11 switches + 2 firewalls + 206 SFPs + accesorios |
| **CAPEX Total** | **USD $166,571.28** |
| **Stock Repuesto** | **USD $42,850.00** (25% equipos críticos) |
| **TOTAL SOLICITUD** | **USD $209,421.28** |

---

## 🛒 **EQUIPOS PRINCIPALES - ORDEN DE COMPRA**

### **1. FIREWALLS - SEGURIDAD PERIMETRAL**

| No. Parte | Descripción | Cant. | Precio Unit. | Subtotal | IVA 19% | Total |
|:----------|:------------|:------|:-------------|:---------|:--------|:------|
| **FG-100F-BDL-950-12** | FortiGate-100F Hardware + 1 Year FortiCare Premium and UTP | **2** | $4,012.03 | $8,024.06 | $1,524.57 | **$9,548.63** |

**Aplicación:** Seguridad perimetral en CCO (2 unidades en alta disponibilidad)

---

### **2. SWITCHES CATALYST 9200 - 24 PUERTOS**

| No. Parte | Descripción | Cant. | Precio Unit. | Subtotal | IVA 19% | Total |
|:----------|:------------|:------|:-------------|:---------|:--------|:------|
| **C9200-24T-A** | Catalyst 9200 24-port data only, Network Advantage | **7** | $1,731.16 | $12,118.12 | $2,302.44 | **$14,420.56** |
| **C9200-NM-4X** | Catalyst 9200 4 x 10G Network Module | **7** | $1,288.70 | $9,020.90 | $1,713.97 | **$10,734.87** |
| **PWR-C6-125WAC/2** | 125W AC Config 6 Power Supply - Secondary | **7** | $507.30 | $3,551.10 | $674.71 | **$4,225.81** |
| **C9200-DNA-A-24-3Y** | C9200 Cisco DNA Advantage, 24-Port, 3 Year Term License | **7** | $1,295.15 | $9,066.05 | $1,722.55 | **$10,788.60** |
| **CON-3SNT-C920024A** | 3YR SNTC 8X5XNBD Catalyst 9200 24-port | **7** | $321.48 | $2,250.36 | $427.57 | **$2,677.93** |

**Aplicación:** 
- N3: BUNKER 01 (1 unidad)
- N5: AS Aguas Negras (1 unidad)
- N6: AS Zambito (1 unidad)
- N7: BUNKER 02 (1 unidad + 3 para STACKS en N1 y N7)

**SUBTOTAL 24-PUERTOS:** $42,847.77

---

### **3. SWITCHES CATALYST 9200 - 48 PUERTOS**

| No. Parte | Descripción | Cant. | Precio Unit. | Subtotal | IVA 19% | Total |
|:----------|:------------|:------|:-------------|:---------|:--------|:------|
| **C9200-48T-A** | Catalyst 9200 48-port data only, Network Advantage | **3** | $2,945.75 | $8,837.24 | $1,679.07 | **$10,516.31** |
| **C9200-NM-4X** | Catalyst 9200 4 x 10G Network Module | **4** | $1,288.70 | $5,154.84 | $979.42 | **$6,134.26** |
| **PWR-C6-125WAC/2** | 125W AC Config 6 Power Supply - Secondary | **4** | $507.30 | $2,029.20 | $385.55 | **$2,414.75** |
| **C9200-DNA-A-48-3Y** | C9200 Cisco DNA Advantage, 48-Port, 3 Year Term License | **3** | $2,429.20 | $7,287.59 | $1,384.64 | **$8,672.23** |
| **CON-3SNT-C920048T** | 3YR SNTC 8X5XNBD Catalyst 9200 48-port | **3** | $546.12 | $1,638.36 | $311.29 | **$1,949.65** |

**Aplicación:**
- N1: CCO + WIM (1 unidad STACK)
- N2: Peaje Zambito (1 unidad)
- N4: Peaje Aguas Negras (1 unidad)
- Módulos adicionales: 4 para uplinks 10G

**SUBTOTAL 48-PUERTOS:** $29,687.20

---

### **4. MÓDULOS DE STACKING**

| No. Parte | Descripción | Cant. | Precio Unit. | Subtotal | IVA 19% | Total |
|:----------|:------------|:------|:-------------|:---------|:--------|:------|
| **C9200-STACK-KIT** | Cisco Catalyst 9200 Stack Module | **4** | $880.73 | $3,522.90 | $669.35 | **$4,192.25** |
| **STACK-T4-50CM** | 50CM Type 4 Stacking Cable | **5** | $161.30 | $806.52 | $153.24 | **$959.76** |

**Aplicación:**
- N1 (CCO): STACK de 2 switches (1 kit + 1 cable)
- N7 (BUNKER 02): STACK de 2 switches (1 kit + 1 cable)
- Stock: 2 kits + 3 cables adicionales

**SUBTOTAL STACKING:** $5,152.01

---

### **5. MÓDULOS SFP - LARGO ALCANCE (10G)**

| No. Parte | Descripción | Cant. | Precio Unit. | Subtotal | IVA 19% | Total |
|:----------|:------------|:------|:-------------|:---------|:--------|:------|
| **SFP-10G-ZR-S=** | 10GBASE-ZR SFP Module, Enterprise-Class (80 km) | **11** | $5,339.48 | $58,734.32 | $11,159.52 | **$69,893.84** |
| **SFP-10G-LR-S=** | 10GBASE-LR SFP Module, Enterprise-Class (10 km) | **5** | $1,020.55 | $5,102.75 | $969.52 | **$6,072.27** |
| **SFP-10G-ER-S=** | 10GBASE-ER SFP Module, Enterprise-Class (40 km) | **2** | $3,869.90 | $7,739.81 | $1,470.56 | **$9,210.37** |

**Aplicación:**
- **SFP-10G-ZR-S (80 km):** Enlaces troncales largos (N2→N4: 73 km, N4→N6: 71 km, N3→N1: 70 km)
- **SFP-10G-LR-S (10 km):** Enlaces cortos (<40 km)
- **SFP-10G-ER-S (40 km):** Enlaces medios (40-60 km)

**SUBTOTAL SFPs 10G:** $85,176.48

---

### **6. ATENUADORES ÓPTICOS**

| No. Parte | Descripción | Cant. | Precio Unit. | Subtotal | IVA 19% | Total |
|:----------|:------------|:------|:-------------|:---------|:--------|:------|
| **15216-ATT-LC-5=** | Bulk Attenuator - LC Connector - 5dB | **16** | $128.24 | $2,051.90 | $389.86 | **$2,441.76** |
| **15216-ATT-LC-10=** | BULK ATTENUATOR LC CONNECTOR 10DB | **3** | $102.42 | $307.26 | $58.38 | **$365.64** |

**Aplicación:** Ajuste de presupuesto óptico en enlaces de larga distancia
- **5dB:** Distancias <60 km
- **10dB:** Distancias 60-80 km

**SUBTOTAL ATENUADORES:** $2,807.40

---

### **7. ACCESORIOS Y CABLES**

| No. Parte | Descripción | Cant. | Precio Unit. | Subtotal | IVA 19% | Total |
|:----------|:------------|:------|:-------------|:---------|:--------|:------|
| **LC-LC SO2** | Lc/lc 3 Mts Duplex Monomodo Fibra Óptica Patch Cord | **20** | $11.16 | $223.26 | $42.42 | **$265.68** |
| **CP-0373** | Power Cable | **20** | $18.00 | $360.00 | $68.40 | **$428.40** |

**SUBTOTAL ACCESORIOS:** $694.08

---

### **8. CONFIGURACIÓN Y PUESTA EN MARCHA**

| No. Parte | Descripción | Cant. | Precio Unit. | Subtotal | IVA 19% | Total |
|:----------|:------------|:------|:-------------|:---------|:--------|:------|
| **CCFF-AVZ** | Configuración Avanzada (VLANS, agregación, stacking, seguridad) | **1** | $6,750.00 | $6,750.00 | $1,282.50 | **$8,032.50** |

**Incluye:**
- Configuración de VLANs (6 VLANs: Gestión, ITS, CCTV, Peajes, VoIP, SCADA)
- Configuración de stacking (N1 y N7)
- Configuración de seguridad (ACLs, firewalls)
- Pruebas de conectividad end-to-end
- Documentación as-built

**SUBTOTAL CONFIGURACIÓN:** $8,032.50

---

## 📦 **STOCK DE REPUESTOS RECOMENDADO**

### **CRITERIO DE STOCK:**
- **Equipos críticos (switches):** 15% de repuesto
- **Módulos SFP:** 20% de repuesto
- **Accesorios (cables, atenuadores):** 25% de repuesto

### **TABLA DE REPUESTOS:**

| Categoría | Equipo | Cant. Operativa | Stock Rep. (%) | Cant. Rep. | Precio Unit. | Total Repuesto |
|:----------|:-------|:----------------|:---------------|:-----------|:-------------|:---------------|
| **Switches 24p** | C9200-24T-A | 7 | 15% | **1** | $1,731.16 | **$1,731.16** |
| **Switches 48p** | C9200-48T-A | 3 | 15% | **1** | $2,945.75 | **$2,945.75** |
| **Módulos 10G** | C9200-NM-4X | 11 | 15% | **2** | $1,288.70 | **$2,577.40** |
| **SFP-10G-ZR-S** | 10GBASE-ZR (80 km) | 11 | 20% | **3** | $5,339.48 | **$16,018.44** |
| **SFP-10G-LR-S** | 10GBASE-LR (10 km) | 5 | 20% | **2** | $1,020.55 | **$2,041.10** |
| **SFP-10G-ER-S** | 10GBASE-ER (40 km) | 2 | 20% | **1** | $3,869.90 | **$3,869.90** |
| **Atenuadores 5dB** | 15216-ATT-LC-5 | 16 | 25% | **4** | $128.24 | **$512.96** |
| **Atenuadores 10dB** | 15216-ATT-LC-10 | 3 | 25% | **2** | $102.42 | **$204.84** |
| **Patch Cords** | LC-LC SO2 3m | 20 | 25% | **5** | $11.16 | **$55.80** |
| **Cables Poder** | CP-0373 | 20 | 25% | **5** | $18.00 | **$90.00** |
| **Stack Cables** | STACK-T4-50CM | 5 | 25% | **2** | $161.30 | **$322.60** |
| **TOTAL REPUESTOS** | - | - | - | **28** | - | **$30,369.95** |

**Más IVA (19%):** $5,770.29  
**Más Seguro/Flete (0.5%):** $180.35  
**TOTAL STOCK REPUESTO:** **$36,320.59**

---

## 💰 **RESUMEN FINANCIERO**

| Concepto | Subtotal (USD) | IVA 19% (USD) | Seguro/Flete | Total (USD) |
|:---------|:---------------|:--------------|:-------------|:------------|
| **Equipos Operativos** | $139,326.39 | $26,472.01 | $772.88 | **$166,571.28** |
| **Stock Repuesto** | $30,369.95 | $5,770.29 | $180.35 | **$36,320.59** |
| **GRAN TOTAL** | **$169,696.34** | **$32,242.30** | **$953.23** | **$202,891.87** |

**Equivalente COP (TRM $4,000):** COP $811,567,480 (~812 millones)

---

## 📦 **EMPAQUE Y ENTREGA**

### **Condiciones de Entrega:**

| Aspecto | Especificación |
|:--------|:---------------|
| **Lugar de entrega** | CCO - Centro de Control Operacional (a definir) |
| **Plazo de entrega** | 8-12 semanas desde orden de compra |
| **Empaque** | Cajas originales de fábrica selladas |
| **Documentación** | Certificados de origen, garantías, manuales |
| **Seguro** | All-risk hasta lugar de entrega |
| **Incoterm** | DDP (Delivered Duty Paid) |

### **Documentación Requerida:**

- ✅ Facturas comerciales
- ✅ Certificados de origen
- ✅ Fichas técnicas (datasheets)
- ✅ Manuales de instalación y operación
- ✅ Certificados de garantía (24 meses mínimo)
- ✅ Licencias de software (Cisco DNA, FortiCare)
- ✅ Lista de empaque detallada

---

## 🔧 **SERVICIOS ADICIONALES REQUERIDOS**

### **Soporte Técnico:**

| Servicio | Descripción | Duración | Costo Estimado |
|:---------|:------------|:---------|:---------------|
| **Puesta en marcha** | Ingeniero certificado Cisco on-site | 2 semanas | $12,000 |
| **Capacitación** | Training para 4 técnicos (básico + avanzado) | 40 horas | $8,000 |
| **Soporte 24/7** | TAC (Technical Assistance Center) primer año | 12 meses | Incluido en licencia |

**TOTAL SERVICIOS:** $20,000 USD (no incluido en esta solicitud)

---

## ✅ **VERIFICACIÓN PREVIA A LA COMPRA**

### **Checklist de Validación:**

- [x] ✅ Cantidades validadas según diseño de red (7 nodos L3)
- [x] ✅ Modelos compatibles (Catalyst 9200 series)
- [x] ✅ Licencias incluidas (Cisco DNA 3 años)
- [x] ✅ Soporte incluido (SmartNet 3 años)
- [x] ✅ Módulos SFP correctos (ZR, LR, ER)
- [x] ✅ Stock de repuesto calculado (15-25%)
- [x] ✅ Presupuesto aprobado ($166K operativo + $36K repuesto)
- [ ] ⏳ Aprobación gerencia de proyecto
- [ ] ⏳ Orden de compra emitida

---

## 🎯 **JUSTIFICACIÓN TÉCNICA**

### **Switches Catalyst 9200:**
- ✅ **Estándar de la industria** (Cisco líder mundial)
- ✅ **Compatibilidad** con equipos existentes
- ✅ **Soporte 24/7** vía TAC (Technical Assistance Center)
- ✅ **Actualizaciones** de firmware por 3 años
- ✅ **Escalabilidad** (stacking hasta 8 unidades)

### **SFP-10G-ZR-S (80 km):**
- ✅ **Alcance máximo** para enlaces de larga distancia
- ✅ **Diseño validado** (tramo más largo: 73 km)
- ✅ **Estándar IEEE 802.3ae** (10GBASE-ZR)
- ✅ **Compatible** con fibra monomodo OS2

### **Stock de Repuesto:**
- ✅ **Continuidad operativa** ante fallas
- ✅ **Cumplimiento contractual** (disponibilidad 99%)
- ✅ **Reducción de downtime** (no esperar importación)
- ✅ **Mejor práctica** de la industria (15-25% críticos)

---

## 📋 **REFERENCIAS**

- **Documento técnico:** `08_T04_Especificaciones_Tecnicas_Telecomunicaciones_v1.0.md`
- **Presupuesto:** `PRESUPUESTO_FINAL_PROYECTO_v2.0.md`
- **Arquitectura:** `55_T03_Arquitectura_Conceptual_Telecomunicaciones_v1.1.md`
- **Reglas de diseño:** `REGLAS_DISENO_RED_L2_L3.md`

---

## ✍️ **APROBACIONES**

| Rol | Nombre | Firma | Fecha |
|:----|:-------|:------|:------|
| **Solicitante** | Ing. Telecomunicaciones | __________ | ___/___/2025 |
| **Aprobador Técnico** | Arquitecto de Redes | __________ | ___/___/2025 |
| **Aprobador Financiero** | Gerente de Proyecto | __________ | ___/___/2025 |
| **Autorización Final** | Director EPC | __________ | ___/___/2025 |

---

**FIN DE SOLICITUD DE COMPRA - EQUIPOS L3**



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


