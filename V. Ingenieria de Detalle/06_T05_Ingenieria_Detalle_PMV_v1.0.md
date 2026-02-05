# T05 - INGENIERÍA DE DETALLE - PMV
## Paneles de Mensaje Variable

**Proyecto:** APP Puerto Salgar - Barrancabermeja  
**Sistema:** PMV - Paneles de Mensaje Variable  
**Fecha:** 29 de Enero 2026  
**Versión:** 2.2 (FORENSIC VALIDATION 43 UNITS)  
**Basado en:** Manual de Señalización 2024 + Resolución IP/REV + AT1/AT2  
---

## 📋 **CONTROL DE CAMBIOS**

| Versión | Fecha | Cambios | Autor |
|:--------|:------|:--------|:------|
| 1.0 | 22/10/2025 | Creación inicial - 28 PMV | Ing. ITS |
| 2.0 | 22/10/2025 | Optimización Manual 2024 | Ing. ITS |
| 2.1 | 21/01/2026 | Forensic Update: 39 Unds (Incorrecto) | Ing. Forensic |
| **2.2** | **29/01/2026** | **CORRECCIÓN FINAL:** Total 43 Unidades. Segregación ITS (29) vs Peajes (14). Segregación de Presupuestos. Cumplimiento RETIE 2024. | **Agente Validación** |

---

## 📋 **RESUMEN EJECUTIVO**

### **Sistema PMV (Total 43 Unidades):**

| Parámetro | Valor | Referencia |
|:----------|:------|:-----------|
| **1. PMV Vía (ITS)** | **29 unidades** | WBS 3.01 (Gestión Tráfico) |
| *-- Troncal (Mainline)* | 25 und | AT1 3.8 (Mínimo 25, max 20km) |
| *-- Aproximación Peaje* | 4 und | AT2 3.3.5.1 (2 por estación) |
| **2. PMV Peaje (IP/REV)** | **14 unidades** | WBS 5.01 (Recaudo) |
| *-- Tarifarios Carril* | 14 und | Res. IP/REV (1 por carril) |
| **TOTAL PROYECTO** | **43 unidades** | **Suma de Obligaciones** |

---

## 💰 **PRESUPUESTO DETALLADO Y SEGREGADO**

### **A. SUBSISTEMA ITS (WBS 3.01) - $2,290,000 USD**

| Componente | Cantidad | Costo Unit. (USD) | Total (USD) |
|:-----------|:---------|:------------------|:------------|
| **1. PMV GRAN FORMATO (Vía)** | **29** | **$45,000** | **$1,305,000** |
| Matriz Full RGB P20 (UNE-EN 12966) | 29 | $45,000 | $1,305,000 |
| **2. ESTRUCTURA PÓRTICO** | **29** | **$33,965.52** | **$985,000** |
| Diseño Sismo-Resistente (CCP-14) | 29 | $33,965.52 | $985,000 |
| **TOTAL ITS** | **29** | | **$2,290,000** |

### **B. SUBSISTEMA PEAJES (WBS 5.01) - $70,000 USD**

| Componente | Cantidad | Costo Unit. (USD) | Total (USD) |
|:-----------|:---------|:------------------|:------------|
| **1. PMV TARIFARIO (Carril)** | **14** | **$5,000** | **$70,000** |
| Panel P10 Ámbar/RGB (IP/REV) | 14 | $5,000 | $70,000 |
| **TOTAL PEAJES** | **14** | | **$70,000** |

### **GRAN TOTAL CAPEX: $2,360,000 USD**

---

## 📐 **ESPECIFICACIONES TÉCNICAS (HARD DECK)**

### **1. PMV ITS (Tipo 1 - Gran Formato)**
- **Norma:** UNE-EN 12966 (Certificado Obligatorio)
- **Matriz:** Full Matrix RGB
- **Altura Carácter:** Mínimo 400 mm (>90 km/h)
- **Luminancia:** Clase L3
- **Protocolo:** NTCIP 1203 v3 / DATEX II
- **Energía:** Red AC + RETIE 2024 (Tableros Certificados, DPS, Puesta a Tierra)

### **2. PMV PEAJE (Tipo 4 - Tarifario)**
- **Ubicación:** Isleta de cobro (bajo semáforo)
- **Función:** Tarifas, Saldo, Categoría (Transaccional)
- **Resolución:** P10 mm
- **Integración:** DAC (Controlador de Carril)

---

## ⚖️ **ESTRATEGIA LEGAL (SECCIÓN 4.12)**

**Línea Base (25 Unidades):**
- El contrato exige "mínimo 25".
- Se instalan 25 en Troncal + 4 en Peajes para cumplimiento operativo.
- Total Base: 29 Unidades ITS.

**Riesgo Manual 2024 (Variantes):**
- Si la ANI exige cobertura en variantes (manual 2024), se requieren ~6 unidades adicionales.
- **Acción:** Se reclamarán como **Mayor Valor** por Cambio de Ley (Sección 4.11/4.12), ya que exceden el alcance cuantitativo original.

---
