# T05 - INGENIERÍA DE DETALLE - RADAR / ETD
## Sistemas de Detección de Tráfico y Reconocimiento de Placas

**Proyecto:** APP Puerto Salgar - Barrancabermeja  
**Sistema:** ETD (Estaciones Toma de Datos) + Radares Sancionatorios  
**Fecha:** 31 de octubre de 2025  
**Versión:** 1.1  
**Basado en:** T01 ETD/RADAR MVP v1.0, T04 ETD/Radares v1.2 + Validación Contractual v1.0  

---

## 📋 **RESUMEN EJECUTIVO**

### **Sistema RADAR-ANPR / ETD:**

| Parámetro | Valor | Referencia |
|:----------|:------|:-----------|
| **Cantidad ETD (Monitoreo)** | **13 equipos** | Una por cada UF (UF1-UF13) |
| **Cantidad Radares Sancionatorios** | **2 equipos** | Sitios críticos (según estudio técnico) |
| **Total equipos** | **15** | Validación contractual |
| **Cobertura** | 13/13 UFs | 100% unidades funcionales |
| **CAPEX Total** | **$615,000 USD** | $41,000/equipo instalado |
| **OPEX Anual** | **$29,500 USD** | $1,967/equipo/año |
| **OPEX 20 años** | **$590,000 USD** | Mantenimiento + licencias + calibración ONAC |

---

## 💰 **PRESUPUESTO DETALLADO**

## 💰 **PRESUPUESTO DETALLADO**

### **1. ETD - AFORO VEHICULAR (DEEPBLUE VIA)**
**Fuente: Cotización Deviteck (Valor: $426,610,212 COP IVA Inc)**
*Tasa de cambio ref: 4,000 COP/USD*

| Componente | Cantidad | Costo Unit. (USD) | Total (USD) |
|:-----------|:---------|:------------------|:------------|
| **SUMINISTROS Y LICENCIAS** | | | **$62,157.01** |
| Cámara Analítica DeepBlue (Bullet 5M + Accesorios) | 13 und | $2,736.84 | $35,578.94 |
| Licencia Integración DeepBlue VIA | 13 und | $2,044.47 | $26,578.07 |
| **INSTALACIÓN Y SERVICIOS** | | | **$24,545.16** |
| Servicio Instalación y Puesta en Marcha (Global) | 1 und | $24,545.16 | $24,545.16 |
| **SISTEMA DE ENERGÍA** | | | **$2,921.82** |
| Kit Solar Fotovoltaico (Panel, Baterías, Gabinete) | 1 und | $2,921.82 | $2,921.82 |
| **TOTAL AFORO (13 Uds)** | - | - | **$89,623.99** |

---

### **2. RADARES SANCIONATORIOS (VIDAR SPEED)**
**Fuente: Cotización Vidar (Base €12,507 + Estimados)**
*Tasa cambio: 1.08 USD/EUR*

| Componente | Cantidad | Costo Unit. (USD) | Total (USD) |
|:-----------|:---------|:------------------|:------------|
| **SUMINISTROS (Vidar Quote)** | | | **$27,015.12** |
| Vidar Speed 5MpHDx LT (Cámara + Radar) | 2 und | $12,298.00 | $24,596.00 |
| Licencia GDS (Globessey Data Server) | 2 und | $1,209.60 | $2,419.20 |
| **COMPLEMENTOS (Estimados)** | | | **$36,000.00** |
| Gabinete Electrónico + UPS + Solar/Red | 2 und | $5,500.00 | $11,000.00 |
| Pórtico Estructural (Sancionatorio) | 2 und | $8,000.00 | $16,000.00 |
| Instalación y Certificación ONAC | 2 und | $4,500.00 | $9,000.00 |
| **TOTAL RADARES (2 Uds)** | - | - | **$63,015.12** |

---

## 💰 **PRESUPUESTO DETALLADO CONSOLIDADO**
**Tabla fuente para extracción WBS (Mascara APUs anteriores)**

| Componente | Cantidad | Costo Unit. WBS | Total |
|:-----------|:---------|:----------------|:------|
| **SISTEMA ETD (AFORO DEEPBLUE)** | | | |
| Cámara Analítica DeepBlue (Kit) | 13 | $2,736.84 | $35,578.92 |
| Licencia DeepBlue VIA | 13 | $2,044.47 | $26,578.11 |
| Kit Solar Fotovoltaico (Punto Aislado) | 1 | $2,921.82 | $2,921.82 |
| Instalación y Configuración ETD (Global) | 1 | $24,545.16 | $24,545.16 |
| **SISTEMA RADAR (VIDAR SPEED)** | | | |
| Vidar Speed 5MpHDx (Radar+Cámara) | 2 | $12,298.00 | $24,596.00 |
| Licencia GDS Vidar | 2 | $1,209.60 | $2,419.20 |
| Estructura, Solar e Instalación Radar | 2 | $18,000.00 | $36,000.00 |
| **TOTAL WBS RADAR/ETD** | **-** | **-** | **$152,639.21** |

---

## 📋 **ESPECIFICACIONES TÉCNICAS ACTUALIZADAS**

### **1. CÁMARA ANALÍTICA (DEEPBLUE - VIVOTEK)**
*   **Modelo:** IB9387-EHTV-V3 (o superior)
*   **Resolución:** 5 Megapíxeles, 30 fps
*   **Lente:** Motorizado 2.7-13.5mm P-iris
*   **Funciones:** WDR Pro, SNV, Smart Stream III, Analítica VCA embebida
*   **Protección:** IP66/IP67, IK10 (Antivandálico), NEMA 4X
*   **Accesorios:** Iluminador IR 120-200m (48W), Inyector PoE 30W

### **2. SOFTWARE DEEPBLUE VIA**
*   **Capacidad:** Conteo, clasificación y aforo vehicular.
*   **Licencia:** Vitalicia con soporte anual opcional.
*   **Nube:** Virtual Control Center (1 año incluido).

---

## 🗺️ **UBICACIONES RADAR-ANPR (12 equipos)**

### **Distribución por UF:**

| # | PKR | Ruta | UF | Instalación | Observación |
|:--|:----|:-----|:---|:------------|:------------|
| 1-2 | 54+000 | 4510 | 0D | Pórtico PMV | Par bidireccional |
| 3 | 38+100 | 4510 | 5.2 | Domo CCTV | Zona visibilidad 4 carriles |
| 4-5 | 46+900 | 4511 | 2 | Pórtico | Par bidireccional - Peatonal 46+143 |
| 6-7 | 54+200 | 4511 | 3 | Pórtico PMV | Par bidireccional |
| 8 | 65+900 | 4511 | 5.1 | Pórtico | Zona recta |
| 9 | 69+300 | 4511 | 4 | Pórtico | Peatonal 68+228 |
| 10 | 81+800 | 4511 | 6 | Peaje Aguas Negras | Integrado infraestructura |
| 11 | 95+800 | 4511 | 7 | Pórtico | Control velocidad |
| 12 | 113+300 | 4511 | 9 | Domo CCTV AS | AS Aguas Negras |
| 13-14 | 143+900 | 4511 | 12 | Pórtico | Par bidireccional - SAST candidato |
| 15 | 37+400 | 4511 | 0D | Pórtico | Compartido con radar #3 |

**13 UFs cubiertas** ✅ (falta UF-0D validar en campo)

---

## 📊 **APU - INSTALACIÓN RADAR-ANPR**

### **APU-RADAR-001: Instalación RADAR-ANPR en Pórtico**

| Ítem | Total (USD) |
|:-----|:------------|
| **Equipo RADAR-ANPR** | $25,000 |
| **Pórtico (si nuevo)** | $15,000 |
| **Obras civiles** | $4,500 |
| **Instalación** | $6,500 |
| **Certificación SIMIT** | $1,000 |
| **Equipos** | $3,000 |
| **SUBTOTAL** | $55,000 |
| **AIU (5%)** | $2,750 |
| **TOTAL** | **$57,750/equipo** |

**Para 10 RADAR-ANPR (pórticos nuevos):** 10 und × $57,750 = **$577,500 USD**

---

### **APU-RADAR-002: RADAR-ANPR en Infraestructura Existente**

| Ítem | Total (USD) |
|:-----|:------------|
| **Equipo RADAR-ANPR** | $25,000 |
| **Soporte en pórtico PMV** | $2,000 |
| **Instalación** | $4,000 |
| **Certificación SIMIT** | $1,000 |
| **SUBTOTAL** | $32,000 |
| **AIU (5%)** | $1,600 |
| **TOTAL** | **$33,600/equipo** |

**Para 2 RADAR-ANPR (PMV existente):** 2 und × $33,600 = **$67,200 USD**

---

## 📋 **CERTIFICACIÓN SIMIT**

### **Requisitos Resolución 718/2018:**

| Requisito | Cumplimiento | Observaciones |
|:----------|:------------|:--------------|
| **Registro SIMIT** | ✅ Obligatorio | Cada equipo con ID único |
| **Protocolo de comunicación** | ✅ API SIMIT | Envío automático infracciones |
| **Evidencia fotográfica** | ✅ 3 fotos mínimo | Antes, durante, después |
| **Datos requeridos** | ✅ Placa, velocidad, fecha, hora, ubicación | Completo |
| **Metrología** | ✅ Calibración anual | Instituto certificado |
| **Homologación** | ✅ MinTransporte | Equipo aprobado |

**Costo certificación:** $1,000 USD/equipo (incluido en APU)

---

**Última actualización:** 22 de octubre de 2025 - 19:15  
**Responsable:** Ingeniero ITS / Especialista Tráfico  
**Estado:** ✅ **T05 RADAR/ETD COMPLETADO**  
**Archivo:** `07_T05_Ingenieria_Detalle_RADAR_ETD_v1.0.md`

