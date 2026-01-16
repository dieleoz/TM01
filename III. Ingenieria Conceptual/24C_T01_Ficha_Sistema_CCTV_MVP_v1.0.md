# T01: FICHA DE SISTEMA - CCTV (SISTEMA DE CIRCUITO CERRADO DE TELEVISIÓN)
## Proyecto APP Puerto Salgar - Barrancabermeja
## MVP - Metodología Punto 42

**Fecha:** 05/12/2025  
**Sistema:** CCTV - Sistema de Circuito Cerrado de Televisión  
**Responsable:** Administrador Contractual EPC / Ingeniero de Sistemas ITS  
**Versión:** 1.1 MVP  
**Estado:** ✅ Ficha de Sistema Completada y Actualizada (CAPEX Consolidado)

---

## 1. IDENTIFICACIÓN DEL SISTEMA

| Campo | Valor |
|:------|:------|
| **Nombre del sistema** | CCTV - Sistema de Circuito Cerrado de Televisión |
| **Categoría** | ITS - Sistemas Inteligentes de Transporte / Videovigilancia |
| **Prioridad** | 🔴 Alta |
| **Fase contractual** | Construcción y O&M |
| **AT relacionados** | AT2 (Sección 3.3.4.7), AT3 (Cap. IV), AT4 (Indicadores) |

---

## 2. DESCRIPCIÓN GENERAL

### 2.1 Propósito del Sistema

El Sistema de Circuito Cerrado de Televisión (CCTV) tiene como objetivo **proporcionar monitoreo visual continuo 24/7** de puntos críticos del corredor vial Puerto Salgar - Barrancabermeja (259.6 km principales + 33.4 km adicionales), permitiendo:

- **Supervisión en tiempo real** del flujo vehicular y condiciones de tráfico
- **Detección automática** de incidentes, accidentes y condiciones adversas
- **Apoyo a la gestión de emergencias** y coordinación con equipos de auxilio
- **Evidencia documental** para investigaciones y análisis de incidentes
- **Control de seguridad vial** en peajes, áreas de servicio y zonas críticas
- **Integración con sistemas ITS** para análisis de tráfico y planificación

### 2.2 Alcance del Sistema

**Cobertura geográfica:**
- **Longitud Principal:** 259.6 km (RN 4510 + RN 4511)
- **Longitud Total:** ~293 km (incluyendo RN 4513 conexión CCO)
- **Rutas:** RN 4510 (Honda-Río Ermitaño), RN 4511 (Río Ermitaño-La Lizama), RN 4513 (Conexión CCO)
- **Ubicaciones:** Estaciones de peaje, áreas de servicio, intersecciones críticas, puentes, zonas de alta accidentalidad

**Integración con:**
- **CCO (Centro de Control Operacional):** Ubicado en La Lizama PK 4+300 (RN 4513) - Transmisión de video en tiempo real
- **SCADA:** Supervisión y control operacional
- **Sistema ITS:** Detección automática de incidentes (DAI)
- **Telecomunicaciones:** Fibra óptica como backbone (283 km anillo redundante)
- **Sistemas de Emergencia:** Activación de protocolos de atención

---

## 3. REQUISITOS CONTRACTUALES

### 3.1 Obligaciones del Contrato

**Según AT2, Sección 3.3.4.7 - Sistemas de Videovigilancia:**

El Concesionario deberá:

1. **Instalar sistemas de videovigilancia** en puntos críticos del corredor, especialmente en:
   - Estaciones de peaje
   - Áreas de servicio
   - Zonas de alta accidentalidad

2. **Integrar al CCO** para monitoreo en tiempo real de condiciones de tráfico y seguridad vial

3. **Garantizar disponibilidad** de equipos: **≥99% anual mínimo** (AT4)

4. **Transmitir video en tiempo real** al CCO La Lizama PK 4+300

5. **Almacenar grabaciones** con capacidad mínima de 30 días

6. **Cumplir especificaciones técnicas:**
   - Resolución mínima: 320×240 píxeles (AT3)
   - Velocidad de cuadros: 10 fps mínimo (AT3)
   - Tipo de cámara: PTZ (Pan-Tilt-Zoom) con rango de zoom 10× óptico mínimo
   - Visión nocturna: Infrarrojos (IR)
   - Protección ambiental: IP65 mínimo

### 3.2 Requisitos de Apéndices Técnicos

**AT2, Sección 3.3.4.7:**
- CCTV en puntos críticos (peajes, áreas de servicio, zonas de accidentalidad)
- Integración con CCO
- Monitoreo tiempo real
- Almacenamiento de grabaciones

**AT3, Cap. IV:**
- Resolución mínima: 320×240 píxeles
- Velocidad de cuadros: 10 fps mínimo
- Certificación: CE / FCC / ISO TC-204

**AT4 (Indicadores):**
- Disponibilidad: ≥99% anual

---

## 4. COMPONENTES PRINCIPALES

| Componente | Cantidad | Ubicación | Función |
|:-----------|:---------|:----------|:--------|
| **Cámaras PTZ IP** | **20 unidades** | Separador central, postes altos | Monitoreo dinámico, control remoto PTZ |
| **Cámaras Fijas IP** | **10 unidades** | Peajes, áreas de servicio | Monitoreo estático específico |
| **TOTAL CÁMARAS** | **30 unidades** | Distribuidas estratégicamente | Cobertura completa del corredor |
| **Grabadores NVR** | 6 unidades | CCO La Lizama | Almacenamiento de video (30 días) |
| **Switches de red** | 10 unidades | Campo + CCO | Comunicación Ethernet/PoE |
| **Conexión a red FO** | 30 puntos | Integración con red de telecomunicaciones | Comunicación con CCO |

**Distribución por tipo de ubicación:**
- **Estaciones de Peaje:** 4 cámaras (2 PTZ + 2 fijas por peaje)
- **Áreas de Servicio:** 2 cámaras PTZ
- **Intersecciones Críticas:** 8 cámaras PTZ
- **Puentes Principales:** 6 cámaras fijas
- **Puntos Críticos Adicionales:** 2 cámaras PTZ
- **Zonas de Accidentalidad:** 6 cámaras PTZ
- **Puntos de Control:** 2 cámaras fijas

---

## 5. INTERFACES CON OTROS SISTEMAS

| Sistema Relacionado | Tipo de Interface | Protocolo/Medio | Datos Intercambiados |
|:--------------------|:------------------|:----------------|:---------------------|
| **CCO (Centro de Control)** | Red IP / Fibra Óptica | Ethernet / ONVIF | Video en tiempo real, control PTZ, alarmas |
| **Sistema de Telecomunicaciones** | Red FO / L2/L3 | Ethernet | Tráfico de video y datos |
| **SCADA** | Red IP | SNMP / Modbus TCP | Supervisión y control operacional |
| **Sistema ITS (DAI)** | Red IP | API REST | Detección automática de incidentes |
| **Sistema de Emergencias** | Lógica (vía CCO) | Red IP | Notificación de incidentes, activación de protocolos |
| **Sistema de Energía Eléctrica** | Alimentación | PoE+ / AC 120V | Suministro de energía |
| **VMS (Video Management System)** | Red IP | ONVIF Profile S/T | Gestión de video, grabación, reproducción |

**Flujo de comunicación:**
```
Cámaras CCTV → Switches PoE → Red FO → Switch Core CCO → NVR/SCADA → Operadores
         (Video H.265)  (Ethernet)  (Fibra)      (Routing)    (Almacenamiento)  (Visualización)
```

---

## 6. ESTIMACIÓN PRELIMINAR

### 6.1 CAPEX (Inversión Inicial)

| Ítem | Cantidad | Costo Unitario (USD) | Costo Total (USD) |
|:-----|:---------|:---------------------|:------------------|
| **Cámaras PTZ IP 1080p** | 20 | $8,000 | $160,000 |
| **Cámaras Fijas IP 1080p** | 10 | $3,000 | $30,000 |
| **Grabadores NVR (Alta capacidad)** | 6 | $25,000 | $150,000 |
| **Almacenamiento RAID 6 (90 TB)** | 6 | $15,000 | $90,000 |
| **Switches de red PoE** | 10 | $2,000 | $20,000 |
| **Infraestructura soporte** | 30 | $5,000 | $150,000 |
| **Videowall (16-32 pantallas)** | 1 | $200,000 | $200,000 |
| **Software VMS (licencias)** | 30 | $2,000 | $60,000 |
| **Instalación y comisionamiento** | 30 | $34,000 | $1,020,000 |
| **Contingencia (5%)** | - | - | $94,500 |
| **TOTAL CAPEX** | **30 cámaras** | **$63,000/cámara** | **$1,890,000** |

**Nota sobre actualización (05/12/2025):** El CAPEX fue ajustado de $390,000 a $1,890,000 USD para reflejar costos reales de integración completa, incluyendo: almacenamiento NVR de alta capacidad (90 TB, 30 días), videowall para CCO, licencias de software VMS, infraestructura de soporte robusta y costos de instalación/comisionamiento detallados. Este ajuste incorpora lecciones aprendidas de proyectos similares y validaciones contractuales finales.

### 6.2 OPEX (Operación y Mantenimiento)

| Ítem | Cantidad | Costo Unitario Anual (USD) | Costo Total Anual (USD) |
|:-----|:---------|:---------------------------|:------------------------|
| **Mantenimiento preventivo** | 30 | $400 | $12,000 |
| **Mantenimiento correctivo** | 30 | $200 | $6,000 |
| **TOTAL OPEX ANUAL** | **30 cámaras** | **$600/cámara/año** | **$18,000** |

**OPEX 20 años:** $18,000 × 20 = **$360,000 USD**

### 6.3 Costo Total del Ciclo de Vida (20 años)

**CAPEX + OPEX:** $1,890,000 + $360,000 = **$2,250,000 USD**

---

## 7. DISTRIBUCIÓN GEOGRÁFICA

### 7.1 Distribución por Unidad Funcional (UF)

| UF | Cantidad | Ubicaciones Principales |
|:---|:---------|:------------------------|
| **UF0D** | 8 | Distribuidas en tramos principales |
| **UF1** | 2 | Peaje Zambito + 1 intersección |
| **UF2** | 2 | 1 puente + 1 zona crítica |
| **UF3** | 2 | 1 intersección + 1 zona crítica |
| **UF4** | 2 | 2 puentes principais |
| **UF5** | 2 | 1 intersección + 1 zona crítica |
| **UF6** | 2 | 1 puente + 1 zona crítica |
| **UF7** | 2 | 1 intersección + 1 zona crítica |
| **UF8** | 2 | 1 puente + 1 zona crítica |
| **UF9** | 2 | 2 puentes principais |
| **UF10** | 2 | 1 intersección + 1 zona crítica |
| **UF11** | 2 | 1 puente + 1 zona crítica |
| **UF12** | 2 | 1 intersección + 1 zona crítica |
| **UF13** | 2 | Peaje Aguas Negras + 1 intersección |
| **TOTAL** | **30** | - |

### 7.2 Ubicaciones Estratégicas Principales

- **PK 0+000** (Puerto Salgar): Inicio del corredor
- **PK 9+200** (Peaje Zambito): 4 cámaras (2 PTZ + 2 fijas)
- **PK 50±5**: Punto medio Zona 1
- **PK 80+000** (Peaje Aguas Negras): 4 cámaras (2 PTZ + 2 fijas)
- **PK 130±5** (CCO La Lizama): Centro de control
- **PK 180±5**: Punto medio Zona 3
- **PK 259+600** (San Roque): Fin del corredor

---

## 8. ESPECIFICACIONES TÉCNICAS BÁSICAS

### 8.1 Cámaras PTZ IP

| Parámetro | Especificación Mínima |
|:----------|:---------------------|
| **Resolución** | 1920×1080 (1080p Full HD) |
| **Sensor** | 1/2.8" Progressive Scan CMOS |
| **Zoom óptico** | 30× mínimo |
| **Zoom digital** | 16× |
| **Rango IR** | 150 metros |
| **Rotación Pan** | 360° continuo |
| **Rotación Tilt** | -15° a +90° |
| **FPS** | 30 fps @ 1080p |
| **Compresión** | H.265/H.264 |
| **Protección** | IP66, IK10 |
| **Alimentación** | PoE+ (IEEE 802.3at) 25.5W |

### 8.2 Cámaras Fijas IP

| Parámetro | Especificación Mínima |
|:----------|:---------------------|
| **Resolución** | 1920×1080 (1080p Full HD) |
| **Sensor** | 1/2.8" Progressive Scan CMOS |
| **Rango IR** | 50 metros |
| **FPS** | 30 fps @ 1080p |
| **Compresión** | H.265/H.264 |
| **Protección** | IP66, IK10 |
| **Alimentación** | PoE+ (IEEE 802.3at) 15.4W |

---

## 9. PRÓXIMOS PASOS

- [x] ✅ Ficha de Sistema completada (T01)
- [x] ✅ Análisis de Requisitos completado (T02)
- [x] ✅ Arquitectura Conceptual completada (T03)
- [x] ✅ Especificaciones Técnicas (T04) - Ya existe, validar coherencia
- [x] ✅ Ingeniería de Detalle (T05) - Ya existe, validar coherencia
- [x] ✅ Validación Contractual - Ya existe (`37_VALIDACION_CONTRACTUAL_CCTV_v1.0.md`)

---

## 10. REFERENCIAS

### 10.1 Documentos del Proyecto

- **T02:** `24C_T02_Analisis_Requisitos_CCTV_MVP_v1.0.md` (Pendiente)
- **T03:** `24C_T03_Arquitectura_Conceptual_CCTV_MVP_v1.0.md` (Pendiente)
- **T04:** `IV. Ingenieria Basica/03_T04_Especificaciones_Tecnicas_CCTV_v1.0.md`
- **T05:** `V. Ingenieria de Detalle/05_T05_Ingenieria_Detalle_CCTV_v1.0.md`
- **Validación:** `VII. Documentos Transversales/37_VALIDACION_CONTRACTUAL_CCTV_v1.0.md`
- **T01 ITS General:** `24_T01_Ficha_Sistema_ITS_v1.0.md` (Referencia para contexto)

### 10.2 Documentos Contractuales

- **AT2:** Apéndice Técnico 2, Sección 3.3.4.7 "Sistemas de Videovigilancia"
- **AT3:** Apéndice Técnico 3, Capítulo IV "Sistemas ITS"
- **AT4:** Apéndice Técnico 4 (Indicadores de desempeño)

### 10.3 Normativa Aplicable

- **ONVIF Profile S/T:** Interoperabilidad de cámaras IP
- **IEC 60529:** Grado de protección IP66
- **IEC 62262:** Grado de protección IK10
- **IEEE 802.3at:** Power over Ethernet Plus (PoE+)
- **H.265/H.264:** Compresión de video
- **ISO TC-204:** Intelligent Transport Systems

---

**Versión:** 1.0 MVP  
**Estado:** ✅ Ficha de Sistema Completada  
**Fecha:** 31/10/2025  
**Responsable:** Administrador Contractual EPC  
**Próximo paso:** Validación de arquitectura con stakeholders  
**T02 disponible:** `24C_T02_Analisis_Requisitos_CCTV_MVP_v1.0.md`  
**T03 disponible:** `24C_T03_Arquitectura_Conceptual_CCTV_MVP_v1.0.md`

