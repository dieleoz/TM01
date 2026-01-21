# T04: ESPECIFICACIONES TÉCNICAS - SISTEMA DE PEAJES
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 21/10/2025  
**Sistema:** Sistema de Peajes Electrónicos  
**Responsable:** Ing. ITS / Ing. Electrónico  
**Versión:** 1.1  
---

## 📋 **CONTROL DE CAMBIOS**

| Versión | Fecha | Cambios | Autor |
|:--------|:------|:--------|:------|
| 1.0 | 21/10/2025 | Creación inicial - 2 estaciones de peaje | Ing. ITS |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** PK Aguas Negras corregido | Ing. ITS |

---

## 1. IDENTIFICACIÓN

| Campo | Valor |
|:------|:------|
| **Sistema** | Sistema de Peajes Electrónicos |
| **Cantidad** | **14 carriles** (2 estaciones) |
| **CAPEX** | **USD $2,086,577.24** (Consolidado) |

---

## 2. COMPONENTES PRINCIPALES

### 2.1 Estaciones de Peaje

| Ubicación | PK | Carriles | Tipo |
|:----------|:---|:---------|:------|
| **Peaje Zambito** | RN 4511 PK 9+200 | 7 (3+1+3) | Principal |
| **Peaje Aguas Negras** | RN 4511 PK 80+000 | 7 (3+1+3) | Principal |

### 2.2 Equipos por Estación

| Equipo | Cantidad/Estación | Función |
|:-------|:------------------|:---------|
| **Antenas TAG** | 14 | Lectura automática |
| **Cámaras ANPR** | 28 | Reconocimiento frontal/trasero |
| **Barreras automáticas** | 14 | Control acceso (0.7s) |
| **Sensores de presencia** | 28 | Detección vehículos |
| **Sensores WIM-DAC** | 14 | Clasificación AT2 3.3.4.2 |
| **PMV Banner (640x320)** | 14 | Tarifas/Saldos |
| **CCTV Vigilancia** | 10 | Seguridad estación |

---

## 3. ESPECIFICACIONES TÉCNICAS

### 3.1 Sistema TAG (Telepeaje)

| Parámetro | Especificación | Norma |
|:----------|:---------------|:------|
| **Tecnología** | RFID 5.8 GHz | ISO 18000-6C |
| **Rango lectura** | 0-15 m | - |
| **Velocidad máxima** | 200 km/h | - |
| **Precisión** | ≥99.5% | - |
| **Integración** | NTCIP 1202 | - |

### 3.2 Sistema ANPR (Reconocimiento Placas)

| Parámetro | Especificación | Norma |
|:----------|:---------------|:------|
| **Resolución** | ≥1920×1080 px | - |
| **Velocidad** | 0-200 km/h | - |
| **Precisión** | ≥95% | - |
| **Iluminación** | LED IR 850 nm | - |
| **Almacenamiento** | 30 días mínimo | - |

### 3.3 Barreras Automáticas

| Parámetro | Especificación |
|:----------|:---------------|
| **Tiempo apertura** | ≤0.7 segundos |
| **Tiempo cierre** | ≤0.7 segundos |
| **Resistencia viento** | 120 km/h |
| **Protección** | IP65 |
| **Control** | Automático + manual |

---

## 4. INTEGRACIÓN

### 4.1 Conectividad

- ✅ Fibra óptica al anillo L3
- ✅ Switch L3 por estación
- ✅ Redundancia de comunicaciones
- ✅ Integración SCADA/CCO

### 4.2 Protocolos

| Sistema | Protocolo |
|:--------|:----------|
| TAG | NTCIP 1202 |
| ANPR | ONVIF |
| Barreras | Modbus TCP |
| CCTV | RTSP |

---

## 5. PRESUPUESTO

| Ítem | Cantidad | Precio Unit. (USD) | Total (USD) |
|:-----|:---------|:-------------------|:------------|
| Antenas TAG RFID | 14 | $8,000 | $112,000 |
| Cámaras ANPR Frontal/Trasero | 28 | $3,000 | $84,000 |
| Barreras Alta Velocidad (0.7s) | 14 | $15,000 | $210,000 |
| Sensores WIM-DAC (Clasificación) | 14 | $15,000 | $210,000 |
| Lazos Inductivos (Presencia) | 28 | $500 | $14,000 |
| PMV Banners Tarifas (640x320) | 14 | $2,500 | $35,000 |
| Equipos Carril y Estación (FTS) | Global | - | $1,200,000 |
| Otros e Instalación | - | - | $221,577 |
| **TOTAL RECONCILIADO** | - | - | **$2,086,577** |

> [!WARNING]
> **NOTA DE VALIDACIÓN (2025-12-12)**: Este presupuesto es una **estimación preliminar**. El presupuesto oficial validado se encuentra en el documento **T05 - Ingeniería de Detalle**, con un valor optimizado de **$1,806,218.94 USD** y una cantidad ajustada de **14 carriles**. Ver DT-TM01-PEAJES-019.

---

## 6. PRUEBAS

### FAT
- Lectura TAG: ≥99.5% precisión
- ANPR: ≥95% reconocimiento
- Barreras: <3 seg apertura/cierre

### SAT
- Prueba integración SCADA
- Prueba redundancia comunicaciones
- Prueba velocidad 200 km/h

---

## 7. FABRICANTES

- **TAG:** Kapsch, TransCore
- **ANPR:** Genetec, Milestone
- **Barreras:** FAAC, CAME

---

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- Cantidad confirmada: 2 estaciones de peaje
- CAPEX reconciliado: USD $2,086,577.24 (FTS + WIM-DAC)
- Configuración: 14 carriles (7 por estación)
- Equipamiento: 28 ANPR + 14 WIM-DAC + 14 Banners
