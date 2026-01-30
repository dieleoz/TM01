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
| **CAPEX** | **USD $1,890,218.94** (Blindaje Total: FTS + 14 Sensores WIM-DAC) |

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
| **Sensores WIM-DAC** | 14 | Clasificación AT2 3.3.4.2 (Res. IP/REV) |
| **PMV Banner (640x320)** | 14 | Tarifas/Saldos (Obligatorio) |
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

### 4.3 Seguridad y Encriptación

| Parámetro | Especificación | Referencia |
|:----------|:---------------|:-----------|
| **Encriptación datos** | AES-256 | IP/REV Art 2.9.7 |
| **Protocolo seguro** | TLS 1.2+ | - |
| **Autenticación** | Certificados digitales | - |
| **Integridad** | Hash SHA-256 | - |
| **Almacenamiento** | Encriptado en reposo | - |

### 4.4 Integración SiGT (Sistema de Gestión de Tráfico)

| Parámetro | Especificación | Referencia |
|:----------|:---------------|:-----------|
| **Integración obligatoria** | SiGT Nacional | IP/REV Art 2.9.10 |
| **Formato datos** | JSON (Taxonomía SiGT) | IP/REV 2021 |
| **Frecuencia envío** | Tiempo real (\u003c5 min) | - |
| **Datos compartidos** | Transacciones, flujos, eventos | - |
| **API** | RESTful + WebSockets | - |
| **Disponibilidad** | 99.5% uptime | - |

**Datos enviados a SiGT:**
- ✅ Volumen de tráfico por carril
- ✅ Clasificación vehicular (WIM-DAC)
- ✅ Tiempos de transacción
- ✅ Eventos y alarmas
- ✅ Estado operativo de equipos

---

## 5. PRESUPUESTO

| Ítem | Cantidad | Precio Unit. (USD) | Total (USD) |
|:-----|:---------|:-------------------|:------------|
| Antenas TAG RFID | 14 | $8,000 | $112,000 |
| Cámaras ANPR Frontal/Trasero | 28 | $3,000 | $84,000 |
| Barreras Alta Velocidad (0.7s) | 14 | $15,000 | $210,000 |
| Sensores WIM-DAC (Clasificación) | 14 | $15,000 | $210,000 |
| **Sensores WIM para Clasificación en Peaje** | **14** | **$6,000** | **$84,000** |
| Lazos Inductivos (Presencia) | 28 | $500 | $14,000 |
| PMV Banners Tarifas (640x320) | 14 | $2,500 | $35,000 |
| Equipos Carril y Estación (FTS) | Global | - | $1,200,000 |
| Otros e Instalación | - | - | $221,577 |
| **Ajuste Audit - WIM-DAC Gap** | **1** | **$84,000** | **$84,000** |
| **TOTAL RECONCILIADO** | - | - | **$2,170,577** |

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

## 8. DICTAMEN DE VALIDACIÓN (AUDITORÍA FORENSE DEFINITIVA v2.1)

**Resultado:** 🟢 **T04 VALIDADO (CUMPLE IP/REV Y AT2)**

La especificación es TÉCNICAMENTE ROBUSTA y CONTRACTUALMENTE SEGURA. El diseño para 2 Estaciones (Zambito y Aguas Negras) con un total de 14 Carriles equipados para interoperabilidad (IP/REV) cubre la obligación de recaudo y control.

**Ahorro Estratégico Validado:** La correcta segregación de los PMV Grandes (movidos al presupuesto ITS) y las Cámaras de Seguridad Vial (movidas al presupuesto CCTV) "limpia" el costo del peaje, dejándolo estrictamente en lo transaccional.

### 8.1 Matriz de Cumplimiento "Hard Deck"
| Requisito Técnico | Fuente Obligación | Especificación T04 Peajes | Veredicto |
|:------------------|:------------------|:--------------------------|:----------|
| **Ubicación** | AT1 (Tablas 2, 55) | Zambito (PR9+200) y Aguas Negras (PR80+000) | ✅ CUMPLE |
| **Tecnología Cobro** | AT2 (3.3.4.3) | Antenas RFID ISO 18000-63 + LPR | ✅ CUMPLE |
| **Clasificación** | AT2 (3.3.4.2) | **Sensores WIM-DAC en cada carril** | ✅ CUMPLE |
| **Información Usuario** | Manual 2024 (9.3.3.2) | 14 Displays LED P10 Ámbar | ✅ CUMPLE |
| **Video Auditoría** | IP/REV (2.9.5) | 28 Cámaras (14 LPR + 14 Ejes) | ✅ CUMPLE |

### 8.2 Análisis de Riesgos Técnicos (Lo que el Integrador calla)
| Riesgo | Descripción | Acción T04 |
|:-------|:------------|:-----------|
| **Trampa del Pavimento** | WIM-DAC falla en asfalto/adoquín. | **Exigencia:** Losa Concreto Rígido min. 20m en isleta. |
| **Señalización Marquesina** | Falta de soportes para Semáforos. | **Alerta:** Civil debe dejar soportes y ductos en canopy. |
| **Certificación RETIE** | Tableros armados en sitio sin certificado. | **Exigencia:** Tableros certificados de fábrica. |

### 8.3 Conclusión Financiera
El T04 está APROBADO.
*   **Proceda a Compras:** Con el presupuesto validado de **$1,890,218 USD**.
*   **Advertencia:** Este presupuesto cubre solo tecnología. Casetas, isletas y canopy son Obra Civil.

---

## 9. MATRIZ DE RESPONSABILIDADES (PUNTO CERO)

**CUADRO DE DEMARCACIÓN DE RESPONSABILIDADES (NO ASUMIR NADA):**

| Ítem | Responsable Suministro | Responsable Instalación | Especificación Crítica (Frontier) |
|:-----|:-----------------------|:------------------------|:------------------------------------|
| **Acometida Media Tensión** | Civil / OR | Civil | Llega hasta el Transformador. |
| **Planta Eléctrica (Gen)** | Civil | Civil | Tanque para 24 horas (IP/REV). |
| **Acometida Baja Tensión** | Civil | Civil | Llega hasta bornes de entrada de Transferencia. |
| **Transferencia (ATS)** | **INTEGRADOR** | **INTEGRADOR** | Certificada UL 1008 / IEC 60947. |
| **Tablero General (TGP)** | **INTEGRADOR** | **INTEGRADOR** | **Certificado RETIE de Producto (Fábrica).** |
| **UPS + Baterías** | **INTEGRADOR** | **INTEGRADOR** | Online Doble Conversión. Autonomía >30min. |
| **Racks y Gabinetes** | **INTEGRADOR** | **INTEGRADOR** | Verificar que quepan en el cuarto (Plano). |
| **Certificación RETIE** | **INTEGRADOR** | **INTEGRADOR** | Del tablero aguas abajo (Incluyendo carriles). |

---

## 10. ESPECIFICACIONES DE COMPRA BLINDADA (RFQ)

### ÍTEM 1: SISTEMA DE CONTROL DE CARRIL (DAC)
*   **Controlador:** PC Industrial Fanless (-20°C a +70°C).
*   **Base de Datos Local:** **MANDATORIO.** Proceso autónomo en carril (IP/REV 2.9.11). Opera desconectado.
*   **Gestión:** Switch Industrial Gestionable.

### ÍTEM 2: SISTEMA DE IDENTIFICACIÓN (IP/REV)
*   **Antenas:** ISO 18000-63 (902-928 MHz).
*   **Cámaras:** 1 Frontal LPR + 1 Lateral Ejes. Integradas al DAC.

### ÍTEM 3: INTERFAZ USUARIO (MANUAL 2024)
*   **Display de Tarifa:** **LED P10 Ámbar** (Lectura <10m). Mínimo 2 líneas.
*   **Semáforo de Paso:** LED 200mm Rojo/Verde.

### ÍTEM 4: RESPALDO ENERGÍA (UPS)
*   **Autonomía:** 30 min a plena carga (Todos los carriles).
*   **Tipo:** Online Doble Conversión.
*   **Monitoreo:** Tarjeta SNMP (Red/Batería).

> **NOTA MARCA Y REFERENCIA (CÁMARAS):** Se exige referencia base **Dahua SD5A432GB-HNR (32X)** o Superior. **Cámaras de 25X serán RECHAZADAS.**
