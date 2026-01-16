# T03: ARQUITECTURA CONCEPTUAL - CCTV (SISTEMA DE CIRCUITO CERRADO DE TELEVISIÓN)
## Proyecto APP Puerto Salgar - Barrancabermeja
## MVP - Metodología Punto 42

**Fecha:** 05/12/2025  
**Sistema:** CCTV - Sistema de Circuito Cerrado de Televisión  
**Responsable:** Ingeniero de Sistemas ITS / Arquitecto de Redes  
**Versión:** 1.1 MVP  
**Estado:** ✅ Completado y Actualizado (CAPEX Consolidado)

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Documento

Este documento define la **arquitectura conceptual** del Sistema de Circuito Cerrado de Televisión (CCTV) para el proyecto APP Puerto Salgar - Barrancabermeja, estableciendo:

- Arquitectura de alto nivel del sistema CCTV
- Arquitectura de componentes de cámaras
- Topología de red y comunicaciones específica para CCTV
- Flujo de datos de video
- Integración con CCO, SCADA y sistemas ITS
- Redundancia y disponibilidad
- Arquitectura de seguridad
- Despliegue físico

### 1.2 Alcance

Esta arquitectura cubre el **Sistema de CCTV** a lo largo de 259.6 km principales + 33.4 km adicionales:

- **Cantidad:** 30 cámaras (20 PTZ + 10 fijas)
- **Distribución:** Estratégicamente ubicadas en puntos críticos
- **Cobertura geográfica:** 100% del corredor (RN 4510, RN 4511, RN 4513)
- **Integración:** CCO La Lizama PK 4+300 (RN 4513)

### 1.3 Referencias

- **T01:** `24C_T01_Ficha_Sistema_CCTV_MVP_v1.0.md`
- **T02:** `24C_T02_Analisis_Requisitos_CCTV_MVP_v1.0.md`
- **T04:** `03_T04_Especificaciones_Tecnicas_CCTV_v1.0.md`
- **T05:** `05_T05_Ingenieria_Detalle_CCTV_v1.0.md`
- **T03 ITS:** `53_T03_Arquitectura_Conceptual_ITS_v1.0.md` (contexto general)
- **Validación:** `37_VALIDACION_CONTRACTUAL_CCTV_v1.0.md`
- **AT2:** Apéndice Técnico 2, Sección 3.3.4.7 "Sistemas de Videovigilancia"
- **AT3:** Apéndice Técnico 3, Capítulo IV "Sistemas ITS"

---

## 2. ARQUITECTURA DE ALTO NIVEL

### 2.1 Diagrama de Arquitectura del Sistema CCTV

```
┌─────────────────────────────────────────────────────────────────────────┐
│                         CAMPO (259.6 km + 33.4 km)                      │
│                                                                          │
│  ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌──────────┐ │
│  │ CCTV #1  │  │ CCTV #2  │  │ CCTV #3  │  │ CCTV #4  │  │   ...    │ │
│  │ PTZ      │  │ Fija     │  │ PTZ      │  │ PTZ      │  │          │ │
│  │ Peaje    │  │ Peaje    │  │ Intersección│ Puente  │  │          │ │
│  └────┬─────┘  └────┬─────┘  └────┬─────┘  └────┬─────┘  └────┬─────┘ │
│       │             │              │              │              │      │
│       └─────────────┴──────────────┴──────────────┴──────────────┘      │
│                          │                                               │
│                    ┌─────▼─────┐                                        │
│                    │  Switches │  Switches de acceso (10 unidades)      │
│                    │  Acceso   │  Gigabit PoE, IP66                     │
│                    │  (L2)     │  VLAN dedicada ITS                     │
│                    └─────┬─────┘                                        │
└──────────────────────────┼───────────────────────────────────────────────┘
                           │
                    ┌──────▼──────┐
                    │ Red Troncal │  Fibra Óptica Monomodo 283 km
                    │Fibra Óptica │  Topología: Anillo redundante
                    │  (Backbone) │  Protocolo: Ethernet/IP
                    └──────┬──────┘
                           │
┌──────────────────────────▼───────────────────────────────────────────────┐
│                    CCO (Centro de Control)                               │
│                    Ubicado en La Lizama PK 4+300 (RN 4513)             │
│                                                                          │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐                 │
│  │  Switches    │  │  Servidores  │  │  Servidores  │                 │
│  │   Core       │  │   NVR        │  │   SCADA      │                 │
│  │ 10 Gbps      │  │  (Grabación) │  │  (Monitoreo) │                 │
│  └──────┬───────┘  └──────┬───────┘  └──────┬───────┘                 │
│         └──────────────────┴──────────────────┘                         │
│                            │                                              │
│  ┌─────────────────────────▼───────────────────────┐                    │
│  │        Estaciones de Trabajo Operadores           │                    │
│  │        (6-10 puestos, dobles monitores)           │                    │
│  │        - Visualización de video en tiempo real     │                    │
│  │        - Control PTZ remoto                       │                    │
│  │        - Gestión de incidentes                    │                    │
│  └───────────────────────────────────────────────────┘                    │
│                            │                                              │
│  ┌─────────────────────────▼───────────────────────┐                    │
│  │        Videowall                                │                    │
│  │        (16-32 pantallas LED 55")                │                    │
│  │        - Visualización simultánea múltiples      │                    │
│  │        - Control matricial                      │                    │
│  └───────────────────────────────────────────────────┘                    │
│                                                                           │
└───────────────────────────────────────────────────────────────────────────┘
```

### 2.2 Descripción de Componentes Principales

| Componente | Función | Cantidad | Especificación |
|:-----------|:--------|:---------|:---------------|
| **Cámaras PTZ IP** | Monitoreo dinámico | **20 unidades** | 1080p, 30× zoom, IP66/IK10, PoE+ |
| **Cámaras Fijas IP** | Monitoreo estático | **10 unidades** | 1080p, IP66/IK10, PoE+ |
| **Switches de Acceso** | Conectividad local | 10 unidades | Gigabit PoE, IP66, VLAN ITS |
| **Red Troncal FO** | Backbone de comunicaciones | 283 km | Fibra monomodo G.652.D, anillo redundante |
| **Switches Core (CCO)** | Agregación y routing | 4 unidades | 10 Gbps, redundante N+1 |
| **Servidores NVR** | Grabación de video | 6 unidades | Alta disponibilidad, RAID 6, 90 TB |
| **Servidores SCADA** | Monitoreo y gestión | 2-3 unidades | Alta disponibilidad, VM |
| **Videowall** | Visualización | 1 sistema | 16-32 pantallas LED 55" |
| **Estaciones Operador** | Control y monitoreo | 6-10 puestos | Dobles monitores, software VMS |

---

## 3. ARQUITECTURA DE COMPONENTES DE CÁMARA

### 3.1 Diagrama de Componentes Internos (Cámara PTZ)

```
┌─────────────────────────────────────────────────────────────┐
│                    CÁMARA PTZ IP (Unidad Completa)         │
│                                                             │
│  ┌───────────────────────────────────────────────────────┐ │
│  │  DOMO ANTIVANDALISMO (IP66/IK10)                     │ │
│  │  ┌──────────┐  ┌──────────┐  ┌──────────┐            │ │
│  │  │  Lente   │  │  Sensor  │  │  IR LED  │            │ │
│  │  │ 30× Zoom│  │  CMOS    │  │  150m    │            │ │
│  │  └────┬─────┘  └────┬─────┘  └────┬─────┘            │ │
│  └───────┼─────────────┼──────────────┼───────────────────┘ │
│          │             │              │                     │
│  ┌───────▼─────────────▼──────────────▼─────────────────┐ │
│  │  GABINETE INTERNO                                     │ │
│  │                                                       │ │
│  │  ┌───────────────────────────────────────────────┐ │ │
│  │  │  PROCESADOR DE VIDEO                          │ │ │
│  │  │  - Compresión H.265/H.264                      │ │ │
│  │  │  - Frame rate: 30 fps @ 1080p                 │ │ │
│  │  │  - Bitrate: hasta 16 Mbps                     │ │ │
│  │  └───────────────────────────────────────────────┘ │ │
│  │                                                       │ │
│  │  ┌───────────────────────────────────────────────┐ │ │
│  │  │  MOTOR PTZ                                     │ │ │
│  │  │  - Pan: 360° continuo                          │ │ │
│  │  │  - Tilt: -15° a +90°                          │ │ │
│  │  │  - Velocidad: 0.1°-120°/s                      │ │ │
│  │  │  - Presets: ≥256 posiciones                    │ │ │
│  │  └───────────────────────────────────────────────┘ │ │
│  │                                                       │ │
│  │  ┌───────────────────────────────────────────────┐ │ │
│  │  │  INTERFAZ DE RED                               │ │ │
│  │  │  - Ethernet 10/100/1000 Mbps                   │ │ │
│  │  │  - PoE+ (IEEE 802.3at) 25.5W                   │ │ │
│  │  │  - Protocolos: ONVIF Profile S/T, RTSP, SNMP  │ │ │
│  │  └───────────────────────────────────────────────┘ │ │
│  │                                                       │ │
│  │  ┌───────────────────────────────────────────────┐ │ │
│  │  │  ALMACENAMIENTO LOCAL                          │ │ │
│  │  │  - MicroSD hasta 256GB (backup)                │ │ │
│  │  └───────────────────────────────────────────────┘ │ │
│  │                                                       │ │
│  └───────────────────────────────────────────────────────┘ │
│                                                             │
│  ┌───────────────────────────────────────────────────────┐ │
│  │  CONEXIÓN EXTERNA                                     │ │
│  │  - Fibra óptica (derivación desde troncal)          │ │
│  │  - Alimentación PoE+ (o AC 120V)                     │ │
│  │  - Puesta a tierra (SPT)                             │ │
│  └───────────────────────────────────────────────────────┘ │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

### 3.2 Flujo de Datos de Video

```
Cámara captura video (1080p, 30 fps)
         │
         ▼
Procesador comprime video (H.265)
         │
         ▼
Interfaz de red transmite (Ethernet/PoE+)
         │
         ▼
Switch Acceso (L2) → VLAN-VOIP/ITS (prioridad alta)
         │
         ▼
Switch Agregación (L3) → Routing hacia CCO
         │
         ▼
Red Troncal FO (283 km) → Anillo redundante
         │
         ▼
Switch Core CCO (10 Gbps)
         │
         ├──→ Servidor NVR (Grabación)
         │         │
         │         ▼
         │    Almacenamiento RAID 6 (90 TB, 30 días)
         │
         └──→ Servidor SCADA (Monitoreo)
                   │
                   ▼
         Estaciones Operador + Videowall
         (Visualización tiempo real)
```

---

## 4. ARQUITECTURA DE RED ESPECÍFICA PARA CCTV

### 4.1 Topología de Red CCTV

```
                    [CCO - Núcleo]
                    La Lizama PK 4+300
                          │
                    ┌─────┴─────┐
                    │ Switches  │
                    │ Core 10G  │
                    └─────┬─────┘
                          │
        ┌─────────────────┼─────────────────┐
        │                 │                 │
  ┌─────▼─────┐     ┌─────▼─────┐     ┌─────▼─────┐
  │ Switch    │     │ Switch    │     │ Switch    │
  │ Agregación│◄───►│ Agregación│◄───►│ Agregación│
  │ Zona 1    │     │ Zona 2    │     │ Zona 3    │
  │ (PK 0-90) │     │(PK 90-180)│     │(PK 180-260)│
  └─────┬─────┘     └─────┬─────┘     └─────┬─────┘
        │                 │                 │
    ┌───┴───┐         ┌───┴───┐         ┌───┴───┐
    │Switch │         │Switch │         │Switch │
    │Acceso │         │Acceso │         │Acceso │
    │(L2)   │         │(L2)   │         │(L2)   │
    └───┬───┘         └───┬───┘         └───┬───┘
        │                 │                 │
  ┌─────┴─────┐     ┌─────┴─────┐     ┌─────┴─────┐
  │ CCTV #1-10│     │ CCTV #11-20│     │ CCTV #21-30│
  │ RN 4510   │     │ RN 4511   │     │ RN 4511/13│
  │ (PTZ/Fija)│     │ (PTZ/Fija)│     │ (PTZ/Fija)│
  └───────────┘     └───────────┘     └───────────┘

Zona 1: PK 0-90 (Puerto Salgar - Puerto Boyacá) → ~10 cámaras
Zona 2: PK 90-180 (Puerto Boyacá - Puerto Berrío) → ~10 cámaras
Zona 3: PK 180-259.6 (Puerto Berrío - San Roque) → ~10 cámaras
```

### 4.2 Segmentación de Red (VLAN)

| VLAN | Descripción | ID | Equipos |
|:-----|:------------|:---|:--------|
| **VLAN-ITS** | Red ITS general | 100 | CCTV, PMV, WIM, Meteo, SOS, ETD, etc. |
| **VLAN-CCTV** | Red dedicada CCTV (opcional) | 110 | 30 cámaras CCTV |
| **VLAN-VIDEO** | Tráfico de video | 120 | CCTV, NVR, VMS |
| **VLAN-MGMT** | Gestión y monitoreo | 200 | Switches, servidores, SCADA |

**Nota:** CCTV puede usar VLAN-ITS o VLAN-CCTV según diseño de red. VLAN-VIDEO se usa para priorización de tráfico de video.

### 4.3 Ancho de Banda y Dimensionamiento

| Tipo de Tráfico | Ancho de Banda por Cámara | Total (30 cámaras) | Prioridad |
|:----------------|:-------------------------|:-------------------|:----------|
| **Video tiempo real (H.265)** | 4-8 Mbps | 120-240 Mbps | 🔴 Alta (QoS) |
| **Control PTZ** | <1 kbps | <30 kbps | 🟡 Media |
| **Monitoreo SNMP** | <1 kbps | <30 kbps | 🟡 Media |
| **Grabación (streaming)** | 4-8 Mbps | 120-240 Mbps | 🔴 Alta |
| **TOTAL (pico)** | ~16 Mbps | **~480 Mbps** | - |

**Dimensionamiento de red:**
- **Por cámara:** 100 Mbps (Ethernet) → Margen 84-96%
- **Agregación:** 1 Gbps → Margen 52-88%
- **Troncal:** 10 Gbps → Margen 95.2%

---

## 5. FLUJO DE DATOS DE VIDEO

### 5.1 Diagrama de Flujo Detallado

```
┌─────────────────────────────────────────────────────────────────┐
│ 1. CAPTURA DE VIDEO (CAMPO)                                     │
│                                                                 │
│    Cámara CCTV captura video                                    │
│         │                                                       │
│         ▼                                                       │
│    Sensor CMOS (1080p, 30 fps)                                 │
│         │                                                       │
│         ▼                                                       │
│    Procesador comprime (H.265)                                  │
│         │                                                       │
└─────────┼───────────────────────────────────────────────────────┘
          │
          │ Video comprimido (4-8 Mbps)
          ▼
┌─────────────────────────────────────────────────────────────────┐
│ 2. TRANSMISIÓN (RED DE TELECOMUNICACIONES)                      │
│                                                                 │
│    Cámara → Switch Acceso (L2) → VLAN-VIDEO (prioridad alta)  │
│         │                                                       │
│         ▼                                                       │
│    Switch Agregación (L3) → Routing hacia CCO                  │
│         │                                                       │
│         ▼                                                       │
│    Red Troncal FO (283 km) → Anillo redundante                 │
│         │                                                       │
│         ▼                                                       │
│    Switch Core CCO (10 Gbps)                                   │
│         │                                                       │
└─────────┼───────────────────────────────────────────────────────┘
          │
          │ Video en tiempo real
          ▼
┌─────────────────────────────────────────────────────────────────┐
│ 3. PROCESAMIENTO EN CCO                                         │
│                                                                 │
│    ┌──────────────┐                                            │
│    │  Servidor     │ → Recibe video streaming                   │
│    │  NVR/VMS      │ → Distribuye a estaciones operador        │
│    └──────┬───────┘ → Graba en almacenamiento RAID 6          │
│           │                                                     │
│           ├──→ Almacenamiento (90 TB, 30 días)                 │
│           │                                                     │
│           └──→ Estaciones Operador + Videowall                  │
│                     │                                           │
│                     ▼                                           │
│    ┌──────────────┐                                            │
│    │  Estación     │ → Operador visualiza video tiempo real    │
│    │  Operador     │ → Control PTZ remoto                      │
│    │  CCO          │ → Gestión de incidentes                   │
│    └──────┬───────┘                                             │
│           │                                                     │
│           ▼                                                     │
│    ┌──────────────┐                                            │
│    │  Videowall    │ → Visualización simultánea 16-32 cámaras  │
│    │  (LED 55")    │ → Control matricial                       │
│    └──────────────┘                                             │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

### 5.2 Secuencia Temporal de Transmisión

| Tiempo | Evento | Duración Acumulada |
|:-------|:-------|:-------------------|
| **T+0ms** | Cámara captura frame | 0ms |
| **T+33ms** | Procesador comprime frame (H.265) | 33ms |
| **T+50ms** | Frame transmitido por Ethernet | 50ms |
| **T+100ms** | Frame en switch acceso | 100ms |
| **T+200ms** | Frame en red troncal FO | 200ms |
| **T+300ms** | Frame en switch core CCO | 300ms |
| **T+400ms** | Frame procesado por NVR/VMS | 400ms |
| **T+500ms** | Frame visualizado en estación operador | 500ms |

**Latencia total:** ≤ 500 ms (requisito contractual)

---

## 6. INTEGRACIÓN CON CCO Y SISTEMAS ITS

### 6.1 Arquitectura de Integración

```
┌─────────────────────────────────────────────────────────────┐
│                    CÁMARAS CCTV (30 unidades)              │
│                    (Campo)                                  │
└──────────────────────┬──────────────────────────────────────┘
                       │
                       │ Video H.265 (4-8 Mbps/cámara)
                       │ Control PTZ (ONVIF)
                       │ Estado SNMP
                       ▼
┌─────────────────────────────────────────────────────────────┐
│                    CCO La Lizama                            │
│                    PK 4+300 (RN 4513)                       │
│                                                             │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐     │
│  │  Servidor    │  │  Servidor    │  │  Servidor    │     │
│  │  NVR         │  │  SCADA       │  │  VMS         │     │
│  │  (Grabación) │  │  (Monitoreo) │  │  (Gestión)   │     │
│  └──────┬───────┘  └──────┬───────┘  └──────┬───────┘     │
│         │                 │                 │              │
│         └─────────────────┴─────────────────┘              │
│                            │                                │
│  ┌─────────────────────────▼───────────────────────┐      │
│  │        Estación Operador CCO                     │      │
│  │        - Visualización de video                   │      │
│  │        - Control PTZ remoto                       │      │
│  │        - Gestión de incidentes                   │      │
│  └─────────────────────────┬───────────────────────┘      │
│                            │                                │
└────────────────────────────┼────────────────────────────────┘
                             │
                             │ Alertas, eventos
                             ▼
┌─────────────────────────────────────────────────────────────┐
│                    Sistemas ITS Integrados                 │
│                                                             │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐     │
│  │  DAI         │  │  Sistema     │  │  PMV         │     │
│  │  (Detección) │  │  Emergencias │  │  (Señalización)│   │
│  └──────────────┘  └──────────────┘  └──────────────┘     │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

### 6.2 Protocolos de Integración

| Interface | Protocolo | Datos Intercambiados | Frecuencia |
|:----------|:----------|:---------------------|:-----------|
| **CCTV ↔ NVR/VMS** | ONVIF Profile S/T, RTSP | Video streaming, control PTZ | Continuo |
| **CCTV ↔ SCADA** | SNMP v3 | Estado de cámaras, alarmas | Cada 5 min |
| **CCTV ↔ DAI** | ONVIF Analytics, API REST | Video para análisis, alertas | Continuo |
| **NVR ↔ Estaciones** | RTSP, HTTP | Video streaming, reproducción | Continuo |
| **VMS ↔ Videowall** | HD-SDI / IP | Video para visualización | Continuo |

---

## 7. ARQUITECTURA DE REDUNDANCIA Y DISPONIBILIDAD

### 7.1 Estrategia de Redundancia

| Componente | Tipo de Redundancia | Configuración | Justificación |
|:-----------|:--------------------|:--------------|:--------------|
| **Red Troncal FO** | Anillo redundante | Topología anillo en zonas críticas | Protección ante cortes de fibra |
| **Switches Core (CCO)** | N+1 | 4 switches (stacking o MLAG) | Alta disponibilidad de red |
| **Servidores NVR** | N+1, RAID 6 | 6 servidores (2 activos + 4 respaldo) | Continuidad de grabación |
| **Servidores SCADA** | N+1 | 2-3 servidores (VM, alta disponibilidad) | Monitoreo continuo |
| **Alimentación Cámaras** | Principal + Respaldo | PoE+ + AC 120V (opcional) | Operación continua |
| **Enlaces a CCO** | Redundancia de ruta | Múltiples rutas en anillo FO | Sin punto único de falla |

### 7.2 Disponibilidad del Sistema

**Disponibilidad objetivo:** ≥ 99% anual (requisito contractual AT4)

**Cálculo de disponibilidad:**
- **Cámara individual:** MTBF = 5,000 horas, MTTR = 24 horas
  - Disponibilidad = MTBF / (MTBF + MTTR) = 5,000 / 5,024 = **99.52%**
- **Sistema completo (30 cámaras):**
  - Disponibilidad sistema = (Disponibilidad cámara)^30 = 99.52%^30 = **86.2%**
  - **Con redundancia de red y NVR:** ≥ **99%** ✅

**Estrategias para cumplir 99%:**
- ✅ Redundancia de red troncal (anillo)
- ✅ Monitoreo proactivo (SCADA)
- ✅ Mantenimiento preventivo trimestral
- ✅ Stock de repuestos críticos
- ✅ Tiempo de respuesta de mantenimiento ≤ 24 horas

---

## 8. ARQUITECTURA DE SEGURIDAD

### 8.1 Seguridad de Comunicaciones

| Aspecto | Implementación | Estándar |
|:--------|:---------------|:---------|
| **Cifrado de video** | TLS 1.2 mínimo | RFC 5246 |
| **Autenticación de acceso** | Credenciales robustas, roles | ISO 27001 |
| **Segmentación de red** | VLAN dedicada (VLAN-CCTV/VLAN-VIDEO) | IEEE 802.1Q |
| **Control de acceso** | Firewall en switches L3 | - |
| **Monitoreo de seguridad** | IDS/IPS en red troncal | - |

### 8.2 Seguridad Física

| Componente | Protección | Especificación |
|:-----------|:-----------|:---------------|
| **Cámaras** | Antivandalismo | IK10 (resistencia a impactos) |
| **Domo** | Protección ambiental | IP66 (estanco a polvo y agua) |
| **Cableado** | Protección | Conduit, protección física |

### 8.3 Seguridad de Datos

- **Grabaciones inviolables:** Base de datos con auditoría, no modificable
- **Backup automático:** Diario, retención 30 días (contractual)
- **Control de acceso:** Solo personal autorizado (roles: operador, supervisor, admin)
- **Protección de datos personales:** Cumplimiento Ley 1581/2012

---

## 9. ARQUITECTURA DE MONITOREO Y GESTIÓN

### 9.1 Sistema SCADA para CCTV

```
┌─────────────────────────────────────────────────────────────┐
│                    CÁMARAS CCTV (30 unidades)               │
│                    (Campo)                                  │
└──────────────────────┬──────────────────────────────────────┘
                       │
                       │ SNMP v3 (cada 5 minutos)
                       │ - Estado operativo
                       │ - Nivel de señal
                       │ - Temperatura interna
                       │ - Estado de alimentación
                       ▼
┌─────────────────────────────────────────────────────────────┐
│                    CCO - Servidor SCADA                     │
│                                                             │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐      │
│  │  Recolección │  │  Procesamiento│  │  Almacenamiento│   │
│  │  de Datos    │  │  y Análisis  │  │  (BD)        │      │
│  │  (SNMP)      │  │  (Alertas)   │  │  (Histórico) │      │
│  └──────┬───────┘  └──────┬───────┘  └──────┬───────┘      │
│         │                 │                 │               │
│         └─────────────────┴─────────────────┘               │
│                            │                                 │
│  ┌─────────────────────────▼───────────────────────┐       │
│  │        Dashboard Operador                        │       │
│  │        - Mapa con estado de cámaras               │       │
│  │        - Alertas de falla                         │       │
│  │        - Reportes de disponibilidad               │       │
│  └───────────────────────────────────────────────────┘       │
│                                                               │
└───────────────────────────────────────────────────────────────┘
```

### 9.2 Métricas Monitoreadas

| Métrica | Frecuencia | Umbral de Alerta | Acción |
|:--------|:-----------|:-----------------|:-------|
| **Estado operativo** | Cada 5 min | No responde | Alerta a CCO, programar mantenimiento |
| **Nivel de señal** | Cada 5 min | < -70 dBm | Alerta preventiva |
| **Temperatura interna** | Cada 5 min | > 60°C o < -30°C | Alerta de falla |
| **Estado de alimentación** | Cada 5 min | Sin alimentación > 5 min | Alerta crítica |
| **Calidad de video** | Continuo | Pérdida de paquetes > 5% | Alerta de degradación |
| **Disponibilidad mensual** | Mensual | < 99% | Reporte a gerencia |

---

## 10. DESPLIEGUE FÍSICO

### 10.1 Distribución Geográfica

| Ubicación | Cantidad | Tipo | Justificación |
|:----------|:---------|:-----|:-------------|
| **Estaciones de Peaje** | 8 | 4 PTZ + 4 fijas | Seguridad y control |
| **Áreas de Servicio** | 2 | 2 PTZ | Seguridad |
| **Intersecciones Críticas** | 8 | 8 PTZ | Monitoreo de tráfico |
| **Puentes Principales** | 6 | 6 fijas | Seguridad estructural |
| **Zonas de Accidentalidad** | 6 | 6 PTZ | Análisis de incidentes |
| **Puntos de Control** | 2 | 2 fijas | Seguridad |
| **TOTAL** | **30** | **20 PTZ + 10 fijas** | - |

### 10.2 Ubicaciones Específicas Principales

- **PK 0+000** (Puerto Salgar): Inicio del corredor
- **PK 9+200** (Peaje Zambito): 4 cámaras (2 PTZ + 2 fijas)
- **PK 50±5**: Punto medio Zona 1
- **PK 80+000** (Peaje Aguas Negras): 4 cámaras (2 PTZ + 2 fijas)
- **PK 130±5** (CCO La Lizama): Centro de control
- **PK 180±5**: Punto medio Zona 3
- **PK 259+600** (San Roque): Fin del corredor

---

## 11. TECNOLOGÍAS Y ESTÁNDARES

### 11.1 Tecnologías Seleccionadas

| Categoría | Tecnología | Estándar/Versión | Justificación |
|:----------|:-----------|:-----------------|:--------------|
| **Video IP** | ONVIF Profile S/T | ONVIF 2.0+ | Interoperabilidad, estándar de industria |
| **Compresión video** | H.265 (HEVC) | ITU-T H.265 | Reducción 50% ancho de banda vs H.264 |
| **Red de datos** | Ethernet | IEEE 802.3 | Estándar universal |
| **Fibra óptica** | Monomodo G.652.D | ITU-T G.652 | Larga distancia, baja atenuación |
| **Alimentación** | PoE+ | IEEE 802.3at | Simplifica instalación |
| **Monitoreo** | SNMP v3 | RFC 3410-3418 | Gestión de red estándar |
| **Protección IP** | IP66/IK10 | IEC 60529, IEC 62262 | Resistencia ambiental y vandalismo |

### 11.2 Interoperabilidad

- **Con sistemas CCO:** Protocolo ONVIF estándar (compatible con cualquier VMS)
- **Con sistemas ITS:** VLAN dedicada, protocolo IP estándar
- **Entre fabricantes:** Estándares abiertos (ONVIF, SNMP, IP) permiten multi-vendor

---

## 12. ANÁLISIS DE ALTERNATIVAS

### 12.1 Alternativa 1: Solución Propietaria Integrada

**Descripción:** Sistema CCTV completo de un solo fabricante (ej: Axis, Hikvision, Dahua)

**Ventajas:**
- Integración garantizada
- Soporte unificado
- Interfaz única

**Desventajas:**
- Vendor lock-in (dependencia de un proveedor)
- Costo alto (falta de competencia)
- Difícil escalabilidad con terceros

**Costo estimado:** $450,000-$550,000 USD

---

### 12.2 Alternativa 2: Solución Basada en Estándares Abiertos ⭐ **RECOMENDADA**

**Descripción:** Arquitectura modular basada en protocolos estándar (ONVIF, IP, SNMP), permitiendo integración de múltiples fabricantes best-of-breed

**Ventajas:**
- ✅ **Competencia entre proveedores** (menor costo, mejor calidad)
- ✅ **Interoperabilidad** (ONVIF, estándares abiertos)
- ✅ **Escalabilidad** (fácil agregar cámaras de diferentes marcas)
- ✅ **Reducción de riesgo** (no dependencia de un solo proveedor)
- ✅ **Flexibilidad** (actualizaciones y mejoras independientes)

**Desventajas:**
- Requiere integración entre componentes
- Gestión de múltiples proveedores

**Costo estimado:** $1,890,000 USD (incluye integración completa, NVR, videowall, VMS)

**Justificación de selección:**
- ✅ Cumple con todos los requisitos contractuales (AT2, AT3, AT4)
- ✅ Reduce costos mediante competencia
- ✅ Garantiza sostenibilidad a largo plazo (25 años)
- ✅ Facilita reemplazo por obsolescencia tecnológica
- ✅ **Modelo probado en proyectos APP colombianos exitosos**

---

## 13. PLAN DE IMPLEMENTACIÓN

### 13.1 Fases de Implementación

| Fase | Actividad | Duración | Hito |
|:-----|:----------|:---------|:-----|
| **Fase 1** | Diseño detallado y especificaciones | 2 meses | H1: Especificaciones aprobadas |
| **Fase 2** | Adquisición de equipos | 3 meses | H2: Equipos recibidos |
| **Fase 3** | Instalación de cámaras (por zonas) | 6 meses | H3: 100% cámaras instaladas |
| **Fase 4** | Integración con CCO | 1 mes | H4: Sistema integrado |
| **Fase 5** | Pruebas y comisionamiento | 1 mes | H5: Sistema operativo |
| **Fase 6** | Puesta en servicio | 1 mes | H6: Sistema en operación |

**Duración total:** 14 meses

### 13.2 Cronograma por Zona

- **Zona 1 (PK 0-90):** Meses 3-5 (10 cámaras)
- **Zona 2 (PK 90-180):** Meses 4-7 (10 cámaras)
- **Zona 3 (PK 180-260):** Meses 6-9 (10 cámaras)
- **Integración CCO:** Mes 10
- **Pruebas:** Mes 11
- **Puesta en servicio:** Mes 12

---

## 14. ESCALABILIDAD

### 14.1 Capacidad de Crecimiento

| Parámetro | Año 1 | Año 10 | Año 25 | Capacidad Diseñada |
|:----------|:------|:-------|:-------|:-------------------|
| **Cámaras CCTV** | 30 | 35 | 40 | 50 (+67% margen) |
| **Ancho de banda troncal** | 480 Mbps | 600 Mbps | 800 Mbps | 10 Gbps (+1,900%) |
| **Almacenamiento video** | 90 TB | 120 TB | 150 TB | 200 TB (+122%) |
| **Capacidad NVR** | 30 cámaras | 35 cámaras | 40 cámaras | 100 cámaras (+233%) |

### 14.2 Estrategia de Crecimiento

**Sin cambios en arquitectura (hasta año 20):**
- Agregar hasta 20 cámaras adicionales (total 50)
- Ampliar almacenamiento (módulos adicionales)
- Aumentar capacidad de visualización

**Con cambios menores (año 20-25):**
- Actualización de NVR a mayor capacidad
- Reemplazo de cámaras por modelos más modernos

**Arquitectura modular permite crecimiento orgánico sin rediseño completo.**

---

## 15. PRÓXIMOS PASOS

- [x] ✅ Arquitectura Conceptual completada (T03)
- [ ] 🔄 Validar arquitectura con stakeholders (ANI, Interventoría, Policía)
- [ ] ⏳ Validar especificaciones técnicas detalladas (T04 - ya existe, revisar coherencia)
- [ ] ⏳ Validar ingeniería de detalle (T05 - ya existe, revisar coherencia)
- [ ] ⏳ Solicitar cotizaciones a fabricantes preseleccionados
- [ ] ⏳ Diseñar diagramas de red detallados (Visio, AutoCAD)
- [ ] ⏳ Definir ubicaciones exactas de cámaras (coordenadas, PKs)
- [ ] ⏳ Crear plan de pruebas de integración (FAT/SAT)
- [ ] ⏳ Elaborar plan de capacitación de operadores

---

## 16. REFERENCIAS

### 16.1 Documentos del Proyecto

- [T01 - Ficha Sistema CCTV](24C_T01_Ficha_Sistema_CCTV_MVP_v1.0.md)
- [T02 - Análisis de Requisitos CCTV](24C_T02_Analisis_Requisitos_CCTV_MVP_v1.0.md)
- [T04 - Especificaciones Técnicas CCTV](IV.%20Ingenieria%20Basica/03_T04_Especificaciones_Tecnicas_CCTV_v1.0.md)
- [T05 - Ingeniería de Detalle CCTV](V.%20Ingenieria%20de%20Detalle/05_T05_Ingenieria_Detalle_CCTV_v1.0.md)
- [T03 - Arquitectura Conceptual ITS](53_T03_Arquitectura_Conceptual_ITS_v1.0.md) (contexto general)
- [Validación Contractual CCTV](VII.%20Documentos%20Transversales/37_VALIDACION_CONTRACTUAL_CCTV_v1.0.md)

### 16.2 Documentos Contractuales

- **AT2:** Apéndice Técnico 2, Sección 3.3.4.7 "Sistemas de Videovigilancia"
- **AT3:** Apéndice Técnico 3, Capítulo IV "Sistemas ITS"
- **AT4:** Apéndice Técnico 4 (Indicadores de desempeño)

### 16.3 Normativa y Estándares

- **ONVIF Profile S/T:** Interoperabilidad de cámaras IP
- **ITU-T H.265:** Compresión de video HEVC
- **IEEE 802.3at:** Power over Ethernet Plus (PoE+)
- **IEC 60529:** Grado de protección IP
- **IEC 62262:** Grado de protección IK
- **RFC 3410-3418:** SNMP v3

---

**Versión:** 1.0 MVP  
**Estado:** ✅ Arquitectura Conceptual Completada  
**Fecha:** 31/10/2025  
**Responsable:** Ingeniero de Sistemas ITS / Arquitecto de Redes  
**Próximo paso:** Validación de arquitectura con stakeholders

