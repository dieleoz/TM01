# T04: ESPECIFICACIONES TÉCNICAS - ESTACIONES METEOROLÓGICAS
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 20/01/2026  
**Sistema:** Estaciones Meteorológicas Industriales  
**Responsable:** Ing. Ambiental / Ing. ITS  
**Versión:** 2.0  
---

## 📋 **CONTROL DE CAMBIOS**

| Versión | Fecha | Cambios | Autor |
|:--------|:------|:--------|:------|
| 1.0 | 21/10/2025 | Creación inicial - 2 estaciones en peajes | Ing. Ambiental |
| 1.1 | 22/10/2025 | Revisión con información oficial: 3 estaciones (2 peajes + 1 CCO) | Ing. Ambiental |
| 2.0 | 20/01/2026 | RECONCILIACIÓN AUDIT .42: Cambio a Estaciones Industriales Compactas con Sensor de Visibilidad (Neblina) Obligatorio. | Ing. ITS |
| **2.1** | **20/01/2026** | **CRITICAL FIX:** Aclaración técnica Mandatoria sobre Visibilidad (M.O.R.) vs Radiación Solar. Rechazo de Sensor Davis 6450 para seguridad vial. | Ing. ITS |

---

## 1. IDENTIFICACIÓN

| Campo | Valor |
|:------|:------|
| **Sistema** | Estaciones Meteorológicas de Grado Industrial |
| **Cantidad** | **3 Unidades** (Peaje Zambito, Peaje Aguas Negras, CCO La Lizama) |
| **CAPEX** | **USD $75,000** |
| **Función** | Monitoreo climático y detección de neblina para seguridad vial |

---

## 2. NORMATIVA

### Nacional
- **Apéndice Técnico 2 (§3.3.5.1):** Obligación de equipos de monitoreo en peajes.
- **Resolución 20213040035125 (IP/REV):** Requisitos técnicos de sensores (incluye neblina).
- **Manual de Señalización Vial 2024:** Gestión de alertas por visibilidad (niebla).

### Internacional
- **WMO (World Meteorological Organization):** Guía de instrumentos No. 8.
- **NEMA 4X / IP66:** Protección ambiental industrial.

---

## 3. ESPECIFICACIONES TÉCNICAS

### 3.1 Estación Industrial Compacta (All-in-One)
*Modelo de Referencia: Lufft WS600, Vaisala WXT530 o equivalente industrial.*

| Parámetro | Especificación Industrial |
|:----------|:--------------------------|
| **Variables Base** | Temperatura, Humedad, Presión, Precipitación (Radar/Impacto), Viento |
| **Variable Mandatoria** | **Visibilidad Óptica (Neblina/Niebla)** mediante sensor de dispersión frontal |
| **Viento** | Sensor ultrasónico (sin partes móviles) para 0-75 m/s |
| **Precipitación** | Sensor Doppler o balancín profesional (Resolución 0.01 mm) |
| **Visibilidad** | Rango 10m - 2000m (mínimo). **Dato MOR (Meteorological Optical Range) en metros.** |
| **Radiación Solar** | Piranómetro (silicio o termopila) para cálculo de ETo (OBLIGATORIA AT2) |
| **Interfaces** | **RS-485 (Modbus RTU), Ethernet (TCP/IP), NTCIP** |
| **Protección** | Grado IP66 / Carcasa resistente a corrosión |
| **MTBF** | > 3 años |

### 3.2 Diferenciación Técnica Crítica (Hard Deck)

> [!CAUTION]
> **RECHAZO DE SUBSTITUTE TÉCNICO:** El sensor CMOS de Radiación Solar (ej. Davis 6450) mide irradiancia en W/m², lo cual solo es válido para el cálculo de Evapotranspiración (ETo). **BAJO NINGUNA CIRCUNSTANCIA** se aceptará este sensor como sustituto del hardware de medición de Visibilidad/Neblina. La seguridad vial exige hardware óptico de dispersión frontal.

### 3.3 Integración con SCADA/CCO
- ✅ Protocolo abierto **Modbus TCP** nativo (sin gateways prosumidores).
- ✅ Transmisión al SCADA cada 5 minutos (configuración auditada).
- ✅ Campo **VISIBILIDAD_METROS** obligatorio en la trama JSON/API.
- ✅ Almacenamiento histórico redundante en CCO.
- ✅ Activación automática de mensajes en PMV ante niebla registrada (Señal SP-77).


---

## 4. UBICACIONES

| Ubicación | PK (RN 4511) | Función |
|:----------|:-------------|:--------|
| **Peaje Zambito** | PK 9+200 | Monitoreo ambiental + Seguridad vial |
| **Peaje Aguas Negras** | PK 81+800 | Monitoreo ambiental + Seguridad vial |
| **CCO La Lizama** | RN 4513 PK 4+300 | Estación de referencia Central |

---

## 5. PRESUPUESTO RECONCILIADO (AUDIT .42)

| Ítem | Cantidad | Precio Unit. (USD) | Total (USD) |
|:-----|:---------|:-------------------|:------------|
| Estación Industrial All-in-One + Visibilímetro | 3 | $15,000 | $45,000 |
| Torre meteorológica 10m + Obras Civiles | 3 | $6,000 | $18,000 |
| Integración CCO, Licencias y Comisionamiento | 3 | $4,000 | $12,000 |
| **TOTAL CAPEX METEO** | - | - | **$75,000** |

---

**✅ RECONCILIADO BAJO METODOLOGÍA AUDIT .42**
- Cumplimiento 100% de la Resolución IP/REV (Neblina obligatorio).
- Blindaje técnico ante Interventoría mediante equipos de grado industrial.
- Integración nativa Modbus al SCADA del CCO.
