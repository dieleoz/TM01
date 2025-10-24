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
| **Cantidad** | **2 estaciones** (Zambito, Aguas Negras) |
| **CAPEX** | **USD $2,400,000** |

---

## 2. COMPONENTES PRINCIPALES

### 2.1 Estaciones de Peaje

| Ubicación | PK | Carriles | Tipo |
|:----------|:---|:---------|:------|
| **Peaje Zambito** | RN 4511 PK 9+200 | 4 bidireccionales | Principal |
| **Peaje Aguas Negras** | RN 4511 PK 80+000 | 4 bidireccionales | Principal |

### 2.2 Equipos por Estación

| Equipo | Cantidad/Estación | Función |
|:-------|:------------------|:---------|
| **Antenas TAG** | 8 | Lectura automática |
| **Cámaras ANPR** | 8 | Reconocimiento placas |
| **Barreras automáticas** | 8 | Control acceso |
| **Sensores de presencia** | 16 | Detección vehículos |
| **PMV informativos** | 2 | Mensajes usuarios |
| **CCTV vigilancia** | 10 | Seguridad |

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
| **Tiempo apertura** | ≤3 segundos |
| **Tiempo cierre** | ≤3 segundos |
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
| Antenas TAG | 16 | $8,000 | $128,000 |
| Cámaras ANPR | 16 | $3,000 | $48,000 |
| Barreras automáticas | 16 | $15,000 | $240,000 |
| Sensores presencia | 32 | $500 | $16,000 |
| PMV informativos | 4 | $25,000 | $100,000 |
| CCTV vigilancia | 20 | $2,000 | $40,000 |
| Switch L3 por estación | 2 | $25,000 | $50,000 |
| Software gestión | 2 | $50,000 | $100,000 |
| Instalación | global | - | $1,200,000 |
| Otros | - | - | $478,000 |
| **TOTAL** | - | - | **$2,400,000** |

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
- Ubicaciones: Zambito PK 9+200, Aguas Negras PK 80+000
- CAPEX mantenido: USD $2,400,000
- Metodología PKD lineal aplicada
