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

### **CAPEX POR COMPONENTE:**

| Componente | Cantidad | Costo Unit. (USD) | Total (USD) | % del Total |
|:-----------|:---------|:------------------|:------------|:------------|
| **1. ETD (Monitoreo) - 13 unidades** | **13** | **$25,000** | **$325,000** | **52.8%** |
| Sensor radar/microondas | 13 | $8,000 | $104,000 | 16.9% |
| Controlador ETD | 13 | $4,500 | $58,500 | 9.5% |
| Software analítica tráfico | 13 | $3,500 | $45,500 | 7.4% |
| Gabinete control IP65 | 13 | $600 | $7,800 | 1.3% |
| Accesorios y conectores | 13 | $150 | $1,950 | 0.3% |
| **2. RADARES SANCIONATORIOS - 2 unidades** | **2** | **$55,000** | **$110,000** | **17.9%** |
| Sensor radar Doppler | 2 | $8,000 | $16,000 | 2.6% |
| Cámara ANPR (reconocimiento placas) | 2 | $6,500 | $13,000 | 2.1% |
| Controlador radar | 2 | $4,500 | $9,000 | 1.5% |
| Cámara contextual (evidencia) | 2 | $3,200 | $6,400 | 1.0% |
| Software ANPR (licencia) | 2 | $2,000 | $4,000 | 0.7% |
| Certificación ONAC | 2 | $15,000 | $30,000 | 4.9% |
| Gabinete control IP65 | 2 | $600 | $1,200 | 0.2% |
| Accesorios y conectores | 2 | $150 | $300 | 0.0% |
| **3. INSTALACIÓN** | **15** | **$12,000** | **$180,000** | **29.3%** |
| Mano de obra | 15 | $6,500 | $97,500 | 15.9% |
| Obras civiles | 15 | $2,800 | $42,000 | 6.8% |
| Pórtico/soporte (si requerido) | 15 | $2,500 | $37,500 | 6.1% |
| Certificación SIMIT (opcional) | 2 | $1,500 | $3,000 | 0.5% |
| **TOTAL CAPEX** | - | - | **$615,000** | **100%** |

**CAPEX/equipo:** $615,000 / 15 = **$41,000 USD/equipo**

---

## 📐 **ESPECIFICACIONES TÉCNICAS - RADAR-ANPR**

### **1. RADAR DOPPLER**

| Parámetro | Especificación |
|:----------|:--------------|
| **Tecnología** | Doppler K-band (24 GHz) |
| **Rango medición velocidad** | 20-250 km/h |
| **Precisión** | ±2 km/h |
| **Alcance** | 100-150 metros |
| **Carriles simultáneos** | Hasta 4 carriles por sensor |
| **Clasificación vehículos** | 10 categorías (FHWA) |
| **Dirección** | Bidireccional (acercamiento/alejamiento) |
| **Comunicación** | Ethernet 10/100 Mbps |
| **Alimentación** | 12-24 VDC |
| **Consumo** | ≤15W |
| **Protección** | IP66/IK08 |
| **Certificación** | CE, FCC, Resolución 718/2018 (MinTransporte Colombia) |

**Marcas aceptadas:** Jenoptik, Vitronic, Swarco, Kapsch, Gatso

---

### **2. CÁMARA ANPR (RECONOCIMIENTO DE PLACAS)**

| Parámetro | Especificación |
|:----------|:--------------|
| **Resolución** | ≥2 MP (1920×1080) |
| **FPS** | ≥30 fps |
| **Shutter** | Alta velocidad (1/10,000s) |
| **Iluminación IR** | 850 nm, alcance 30m |
| **Ángulo captura** | 30-45° óptimo |
| **Software OCR** | ≥95% tasa reconocimiento |
| **Placas soportadas** | Colombia + Mercosur |
| **Velocidad lectura** | Hasta 250 km/h |
| **Carriles** | Hasta 4 por cámara |
| **Almacenamiento local** | MicroSD 128GB |
| **Comunicación** | Ethernet PoE+ |

---

### **3. CONTROLADOR ETD**

| Parámetro | Especificación |
|:----------|:--------------|
| **Procesador** | Intel Core i5 o superior |
| **RAM** | ≥8 GB |
| **Almacenamiento** | SSD 256 GB mínimo |
| **OS** | Linux o Windows embedded |
| **Interfaces** | 4×Ethernet Gigabit mínimo |
| **Video inputs** | ≥4 canales IP |
| **Protocolos** | NTCIP, SNMP, API REST |
| **Integración SIMIT** | ✅ Obligatoria (Res. 718/2018) |
| **Alimentación** | 12-48 VDC redundante |
| **Temperatura** | -10°C a +60°C |

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

**Para 10 RADAR-ANPR (pórticos nuevos):** 10 × $57,750 = **$577,500 USD**

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

**Para 2 RADAR-ANPR (PMV existente):** 2 × $33,600 = **$67,200 USD**

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

