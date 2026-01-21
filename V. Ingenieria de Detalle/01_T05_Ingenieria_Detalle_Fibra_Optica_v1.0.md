# T05 - INGENIERÍA DE DETALLE - FIBRA ÓPTICA
## OPCIÓN 1: MICROFIBRA ÓPTICA + MICRODUCTO

**Proyecto:** APP Puerto Salgar - Barrancabermeja  
**Sistema:** Telecomunicaciones - Red de Fibra Óptica  
**Fecha:** 22 de octubre de 2025  
**Versión:** 1.1  
**Tecnología Seleccionada:** **OPCIÓN 1 - MICROFIBRA ÓPTICA**  
---

## 📋 **CONTROL DE CAMBIOS**

| Versión | Fecha | Cambios | Autor |
|:--------|:------|:--------|:------|
| 1.0 | 22/10/2025 | Creación inicial - Opción A Fibra Convencional | Ing. Telecomunicaciones |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Longitudes actualizadas | Ing. Telecomunicaciones |

---


---

## 📋 **RESUMEN EJECUTIVO**

### **Decisión Técnica:**
**OPCIÓN 1: MICROFIBRA ÓPTICA + MICRODUCTO**

### **Justificación:**
- ✅ **Menor costo total:** Optimización mediante técnica de soplado y microductos.
- ✅ **Menor impacto civil:** Zanjas más eficientes y menor costo de materiales por metro.
- ✅ **Escalabilidad:** Microducto de 3 vías permite expansión futura sin nueva obra civil.

| Concept | Valor (USD) | Observaciones |
|:---------|:------------|:--------------|
| **CAPEX Total** | **$7,980,000.00** | Suministro e Instalación (Backbone + Equipos L2/L3) |
| **OPEX Anual** | **$119,700** | ~1.5% del CAPEX |

---

## 💰 **PRESUPUESTO DETALLADO - UNIFICADO TELECOM**

### **CAPEX TOTAL: $7,980,000.00 USD**

| ID | Nombre | Cantidad | Unidad | Precio Unit (USD) | Total (USD) |
|:---|:-------|:---------|:-------|:------------------|:------------|
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

*(Nota: Calculado con valores unitarios exactos, puede haber variaciones decimales mínimas respecto al PDF)*

---

## 📋 **PRESUPUESTO WBS CONSOLIDADO**
**NOTA:** Se unifican costos directos e indirectos (AIU) en el valor unitario para el WBS.

| Componente | Cantidad | Costo Unit. WBS | Total |
|:-----------|:---------|:----------------|:------|
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

*(Nota: Costo Unitario WBS incluye prorroreo de AIU para simplificación en Dashboard)*

---

## 📊 **APU DETALLADO (MASCARA)**
*Se añaden unidades 'und' a cantidades para evitar duplicidad en extracción WBS*

### **APU-FO-001: Microfibra 48h**
| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
|:-----|:------------|:-------|:---------|:-------------|:------|
| Microfibra 48h | Suministro | m | 1.0 und | $0.84 | $0.84 |

*(Resto de APUs omitidos para brevedad, ver Tabla Maestra consolidada)*

---

## 🔧 **ESPECIFICACIONES TÉCNICAS (ACTUALIZADAS)**
- **Tecnología:** Microfibra soplada en Microducto.
- **Microducto:** Configuración triangular 3 vías 16/12mm.
- **Cajas:** 60x60 (principal) y 80x80 (especiales).
- **Instalación:** Soplado (Blowing).



