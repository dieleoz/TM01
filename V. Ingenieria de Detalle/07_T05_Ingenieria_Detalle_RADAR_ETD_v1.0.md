# T05 - INGENIERÍA DE DETALLE - RADAR / ETD
## Sistemas de Detección de Tráfico y Reconocimiento de Placas

**Proyecto:** APP Puerto Salgar - Barrancabermeja  
**Sistema:** ETD (Estaciones Toma de Datos) + Radares Sancionatorios + Pedagógicos  
**Fecha:** 20 de enero de 2026  
**Versión:** 1.5  
**Basado en:** T01 ETD/RADAR MVP v1.2, T04 ETD/Radares v1.5 + Validación Contractual v2.0  

---

## 📋 **CONTROL DE CAMBIOS**

| Versión | Fecha | Cambios | Autor |
|:--------|:------|:--------|:------|
| 1.0 | 22/10/2025 | Creación inicial - 16 equipos base | Ing. ITS |
| 1.1 | 31/10/2025 | Revisión con información oficial: 15 equipos (13 ETD + 2 SAST) | Ing. ITS |
| 1.2 | 15/01/2026 | Inclusión de Radares Pedagógicos (2) según AT2. Total: 17 operativos. | Adm. Contractual EPC |
| 1.3 | 20/01/2026 | Blindaje Técnico .42: Reconciliación CAPEX $1.7M. | Adm. Contractual EPC |
| **1.5** | **20/01/2026** | **RECONCILIACIÓN FINAL:** 18 unidades (13 ETD + 1 Spare + 2 SAST + 2 Pedagógicos) y $1.7M CAPEX. | **Adm. Contractual EPC** |

---

## 📋 **RESUMEN EJECUTIVO**

### **Sistema RADAR-ANPR / ETD / PED (Consolidado):**

| Parámetro | Valor | Referencia |
|:----------|:------|:-----------|
| **Cantidad ETD (Monitoreo)** | **14 equipos** | 13 UF + 1 Spare (solo datos ANI) |
| **Cantidad SAST (Sancionatorios)** | **2 equipos** | RFQ-007 L1 (Control Policial) |
| **Cantidad Pedagógicos (Preventivos)**| **2 equipos** | RFQ-007 L2 (Preventivos Toll) |
| **Total equipos Proyecto** | **18** | Reconciliación Final .42 |
| **CAPEX Total Reconciliado** | **$1,700,000 USD** | Master Data Baseline |

---

## 💰 **PRESUPUESTO DETALLADO RECONCILIADO**

### **1. ETD - AFORO VEHICULAR (DEEPBLUE VIA)**
| Componente | Cantidad | Costo Unit. (USD) | Total (USD) |
|:-----------|:---------|:------------------|:------------|
| Suministro (Radar + Cámara LPR) | 14 | $25,000 | $350,000 |
| Instalación y Estructura Poste | 14 | $10,000 | $140,000 |
| **TOTAL AFORO (14 Uds)** | - | - | **$490,000** |

---

### **2. RADARES SANCIONATORIOS (VIDAR SPEED)**
| Componente | Cantidad | Costo Unit. (USD) | Total (USD) |
|:-----------|:---------|:------------------|:------------|
| Hardware (Cámara + Radar Doppler) | 2 | $21,507 | $43,014 |
| Estructura, Solar e Instalación | 2 | $10,000 | $20,000 |
| **TOTAL RADARES SAST (2 Uds)** | - | - | **$63,014** |

---

### **3. RADARES PEDAGÓGICOS (SI-27B)**
| Componente | Cantidad | Costo Unit. (USD) | Total (USD) |
|:-----------|:---------|:------------------|:------------|
| Monitor de Velocidad LED SI-27B | 2 | $20,000 | $40,000 |
| Poste y Montaje | 2 | $5,000 | $10,000 |
| **TOTAL PEDAGÓGICOS (2 Uds)** | - | - | **$50,000** |

---

### **4. SISTEMA CENTRAL & INTEGRACIÓN**
| Componente | Cantidad | Costo (USD) |
|:-----------|:---------|:------------|
| Software Central Tráfico (ANPR + Analíticos) | 1 | $650,000 |
| Infraestructura & Integración CCO/SICC (Remanente) | 1 | $446,986 |
| **TOTAL SISTEMA CENTRAL** | - | **$1,096,986** |

---

### **💰 RESUMEN CAPEX COMPLETO**
| Capitulo | Total (USD) |
|:---------|:------------|
| 1. ETD Monitoreo (14) | $490,000 |
| 2. SAST Sancionatorio (2) | $63,014 |
| 3. Radares Pedagógicos (2) | $50,000 |
| 4. Sistema Central & Otros | $1,096,986 |
| **TOTAL CAPEX ETD/RADAR** | **$1,700,000** |

---

## 🗺️ **UBICACIONES Y DISTRIBUCIÓN (17 Operativos)**

| # | PKR | Ruta | UF | Tipo | Observación |
|:--|:----|:-----|:---|:-----|:------------|
| 1 | 54+000 | 4510 | 0D | ETD | Bidireccional |
| 2 | 38+100 | 4510 | 5.2 | ETD | Monitoreo |
| 3 | 46+900 | 4511 | 2 | ETD | Monitoreo |
| 4 | 54+200 | 4511 | 3 | ETD | Monitoreo |
| 5 | 65+900 | 4511 | 5.1 | ETD | Monitoreo |
| 6 | 69+300 | 4511 | 4 | ETD | Monitoreo |
| 7 | 81+800 | 4511 | 6 | ETD | Peaje Aguas Negras |
| 8 | 95+800 | 4511 | 7 | ETD | Monitoreo |
| 9 | 113+300 | 4511 | 9 | ETD | Monitoreo |
| 10 | 143+900 | 4511 | 12 | SAST | Sancionatorio #1 |
| 11 | 37+400 | 4511 | 0D | SAST | Sancionatorio #2 |
| 12-13 | - | - | - | ETD | Distribución pendiente UF restantes |
| 14-15 | - | - | - | ETD | Distribución pendiente UF restantes |
| 16 | 9+150 | 4511 | 1 | PED | Peaje Zambito |
| 17 | 81+800 | 4511 | 6 | PED | Peaje Aguas Negras |

---

**Última actualización:** 20 de enero de 2026  
**Responsable:** Administrador Contractual EPC  
**Estado:** ✅ **T05 ETD/RADAR RECONCILIADO ($1.7M)**  
