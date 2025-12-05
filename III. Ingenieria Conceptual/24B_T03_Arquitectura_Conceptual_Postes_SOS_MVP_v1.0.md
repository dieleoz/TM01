# T03: ARQUITECTURA CONCEPTUAL - POSTES SOS (SISTEMA DE TELEFONÍA DE EMERGENCIA)
## Proyecto APP Puerto Salgar - Barrancabermeja
## MVP - Metodología Punto 42

**Fecha:** 31/10/2025  
**Sistema:** Postes SOS - Sistema de Telefonía de Emergencia  
**Responsable:** Ingeniero de Sistemas ITS / Arquitecto de Redes  
**Versión:** 1.0 MVP  
**Estado:** ✅ Completado

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Documento

Este documento define la **arquitectura conceptual** del Sistema de Postes SOS (Sistema de Telefonía de Emergencia) para el proyecto APP Puerto Salgar - Barrancabermeja, estableciendo:

- Arquitectura de alto nivel del sistema SOS
- Arquitectura de componentes internos del poste
- Topología de red y comunicaciones específica para SOS
- Flujo de datos de llamadas de emergencia
- Integración con CCO y sistema de emergencias
- Redundancia y disponibilidad
- Arquitectura de seguridad
- Despliegue físico

### 1.2 Alcance

Esta arquitectura cubre el **Sistema de Postes SOS** a lo largo de 259.6 km principales + 33.4 km adicionales:

- **Cantidad:** 88 postes SOS
- **Distribución:** Alternados en bermas externas (Sistema "Tres Bolillos")
- **Distancia máxima:** 3 km entre postes (obligatorio contractual)
- **Cobertura geográfica:** 100% del corredor (RN 4510, RN 4511, RN 4513)
- **Integración:** CCO La Lizama PK 4+300 (RN 4513)

### 1.3 Referencias

- **T01:** `24B_T01_Ficha_Sistema_Postes_SOS_MVP_v1.0.md`
- **T02:** `24B_T02_Analisis_Requisitos_Postes_SOS_MVP_v1.0.md`
- **T04:** `01_T04_Especificaciones_Tecnicas_Postes_SOS_v1.0.md`
- **T05:** `04_T05_Ingenieria_Detalle_Postes_SOS_v1.0.md`
- **T03 ITS:** `53_T03_Arquitectura_Conceptual_ITS_v1.0.md` (contexto general)
- **Validación:** `34_VALIDACION_CONTRACTUAL_POSTES_SOS_v1.0.md`
- **AT1:** Apéndice Técnico 1, Capítulo 3 "Sistemas de comunicación y postes SOS"
- **AT2:** Apéndice Técnico 2, Sección 3.3.3.2 y 3.3.5.1

---

## 2. ARQUITECTURA DE ALTO NIVEL

### 2.1 Diagrama de Arquitectura del Sistema SOS

```
┌─────────────────────────────────────────────────────────────────────────┐
│                         CAMPO (259.6 km + 33.4 km)                      │
│                                                                          │
│  ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌──────────┐ │
│  │ SOS #1   │  │ SOS #2   │  │ SOS #3   │  │ SOS #4   │  │   ...    │ │
│  │ RN 4510  │  │ RN 4510  │  │ RN 4510  │  │ RN 4510  │  │          │ │
│  │ Izq      │  │ Der      │  │ Izq      │  │ Der      │  │          │ │
│  └────┬─────┘  └────┬─────┘  └────┬─────┘  └────┬─────┘  └────┬─────┘ │
│       │             │              │              │              │      │
│       └─────────────┴──────────────┴──────────────┴──────────────┘      │
│                          │                                               │
│                    ┌─────▼─────┐                                        │
│                    │  Switches │  Switches de acceso (35-45 unidades)  │
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
│  │  Switches    │  │  Servidores  │  │  PBX/IP      │                 │
│  │   Core       │  │   SCADA      │  │  Telefonía   │                 │
│  │ 10 Gbps      │  │  (Monitoreo) │  │  (VoIP)      │                 │
│  └──────┬───────┘  └──────┬───────┘  └──────┬───────┘                 │
│         └──────────────────┴──────────────────┘                         │
│                            │                                              │
│  ┌─────────────────────────▼───────────────────────┐                    │
│  │        Estaciones de Trabajo Operadores         │                    │
│  │        (6-10 puestos, dobles monitores)         │                    │
│  │        - Recepción de llamadas SOS              │                    │
│  │        - Visualización de ubicación GPS         │                    │
│  │        - Despacho de emergencias                │                    │
│  └─────────────────────────────────────────────────┘                    │
│                            │                                              │
└────────────────────────────┼──────────────────────────────────────────────┘
                             │
                      ┌──────▼──────┐
                      │  Sistema de │  Integración automática
                      │ Emergencias │  Despacho de ambulancias/grúas
                      │             │  Coordinación con Policía
                      └─────────────┘
```

### 2.2 Descripción de Componentes Principales

| Componente | Función | Cantidad | Especificación |
|:-----------|:--------|:---------|:---------------|
| **Postes SOS** | Comunicación de emergencia | **88 unidades** | VoIP, geolocalización GPS, IP66/IK10 |
| **Switches de Acceso** | Conectividad local | 35-45 unidades | Gigabit PoE, IP66, VLAN ITS |
| **Red Troncal FO** | Backbone de comunicaciones | 283 km | Fibra monomodo G.652.D, anillo redundante |
| **Switches Core (CCO)** | Agregación y routing | 4 unidades | 10 Gbps, redundante N+1 |
| **Servidores SCADA** | Monitoreo y gestión | 2-3 unidades | Alta disponibilidad, VM |
| **PBX/IP (CCO)** | Gestión de llamadas VoIP | 1 sistema | SIP/RTP, capacidad ≥10 llamadas simultáneas |
| **Estaciones Operador** | Atención de emergencias | 6-10 puestos | Dobles monitores, software de gestión |

---

## 3. ARQUITECTURA DE COMPONENTES DEL POSTE SOS

### 3.1 Diagrama de Componentes Internos

```
┌─────────────────────────────────────────────────────────────┐
│                    POSTE SOS (Unidad Completa)              │
│                                                             │
│  ┌───────────────────────────────────────────────────────┐ │
│  │  PANEL FRONTAL (IP66/IK10)                            │ │
│  │  ┌──────────┐  ┌──────────┐  ┌──────────┐            │ │
│  │  │  Botón   │  │  LED     │  │ Señal    │            │ │
│  │  │  SOS     │  │ Estado   │  │ "SOS"    │            │ │
│  │  │ Iluminado│  │ Verde/Rojo│  │ Retro-   │            │ │
│  │  └────┬─────┘  └────┬─────┘  │ reflectivo│            │ │
│  │       │             │         └──────────┘            │ │
│  └───────┼─────────────┼─────────────────────────────────┘ │
│          │             │                                   │
│  ┌───────▼─────────────▼─────────────────────────────────┐ │
│  │  GABINETE INTERNO (IP54)                              │ │
│  │                                                       │ │
│  │  ┌───────────────────────────────────────────────┐ │ │
│  │  │  UNIDAD DE CONTROL PRINCIPAL                   │ │ │
│  │  │  - Procesador ARM Cortex-A7 (1 GHz)           │ │ │
│  │  │  - RAM 512 MB                                  │ │ │
│  │  │  - Flash 8 GB (logs, grabaciones)             │ │ │
│  │  │  - Linux embebido                              │ │ │
│  │  │  - Protocolos: TCP/IP, SIP, SNMP v3           │ │ │
│  │  └───────────────────────────────────────────────┘ │ │
│  │                                                       │ │
│  │  ┌───────────────────────────────────────────────┐ │ │
│  │  │  SISTEMA DE COMUNICACIÓN                      │ │ │
│  │  │  - Codec de audio (G.711/G.729)               │ │ │
│  │  │  - Cancelación de eco                         │ │ │
│  │  │  - Supresión de ruido (≥15 dB)                │ │ │
│  │  │  - Altavoz (80-90 dB @ 1m)                    │ │ │
│  │  │  - Micrófono (-45 dB @ 1kHz)                  │ │ │
│  │  └───────────────────────────────────────────────┘ │ │
│  │                                                       │ │
│  │  ┌───────────────────────────────────────────────┐ │ │
│  │  │  CONVERSOR DE MEDIOS (Media Converter)        │ │ │
│  │  │  - FO (SC/APC) ↔ Ethernet (RJ45)              │ │ │
│  │  │  - 100 Mbps full-duplex                        │ │ │
│  │  │  - Longitud: hasta 20 km                      │ │ │
│  │  └───────────────────────────────────────────────┘ │ │
│  │                                                       │ │
│  │  ┌───────────────────────────────────────────────┐ │ │
│  │  │  GPS/GNSS                                     │ │ │
│  │  │  - Geolocalización automática                 │ │ │
│  │  │  - Precisión: ±5 m                            │ │ │
│  │  │  - Transmisión de coordenadas a CCO           │ │ │
│  │  └───────────────────────────────────────────────┘ │ │
│  │                                                       │ │
│  │  ┌───────────────────────────────────────────────┐ │ │
│  │  │  SISTEMA DE ALIMENTACIÓN                      │ │ │
│  │  │  - Fuente AC 120V/60Hz (principal)            │ │ │
│  │  │  - Panel solar 150W (opcional/respaldo)       │ │ │
│  │  │  - Batería 12V 100Ah × 2 (respaldo 2h)        │ │ │
│  │  │  - Controlador MPPT                            │ │ │
│  │  │  - UPS integrado                               │ │ │
│  │  └───────────────────────────────────────────────┘ │ │
│  │                                                       │ │
│  │  ┌───────────────────────────────────────────────┐ │ │
│  │  │  PROTECCIÓN ELÉCTRICA                         │ │ │
│  │  │  - DPS (Supresor de picos) Clase II, 20 kA   │ │ │
│  │  │  - Breaker principal 10A                       │ │ │
│  │  │  - Fusibles secundarios                        │ │ │
│  │  │  - Puesta a tierra <10 Ω                       │ │ │
│  │  └───────────────────────────────────────────────┘ │ │
│  │                                                       │ │
│  └───────────────────────────────────────────────────────┘ │
│                                                             │
│  ┌───────────────────────────────────────────────────────┐ │
│  │  CONEXIÓN EXTERNA                                     │ │
│  │  - Fibra óptica (derivación desde troncal)          │ │
│  │  - Alimentación AC 120V (o solar)                    │ │
│  │  - Puesta a tierra (SPT)                             │ │
│  └───────────────────────────────────────────────────────┘ │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

### 3.2 Flujo de Datos Interno del Poste

```
Usuario presiona botón SOS
         │
         ▼
┌────────────────┐
│  Botón SOS     │ → Señal eléctrica
│  (Hardware)    │
└────────┬───────┘
         │
         ▼
┌────────────────┐
│  Unidad de     │ → Procesa señal
│  Control       │ → Activa GPS/GNSS
│  Principal     │ → Inicia sesión SIP
└────────┬───────┘
         │
         ▼
┌────────────────┐
│  Sistema de    │ → Establece conexión VoIP
│  Comunicación  │ → Transmite audio bidireccional
│  (Codec)       │ → Transmite coordenadas GPS
└────────┬───────┘
         │
         ▼
┌────────────────┐
│  Conversor     │ → Convierte Ethernet → FO
│  de Medios     │ → Transmite por fibra óptica
└────────┬───────┘
         │
         ▼
    Red Troncal FO
         │
         ▼
      CCO La Lizama
```

---

## 4. ARQUITECTURA DE RED ESPECÍFICA PARA SOS

### 4.1 Topología de Red SOS

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
  │ SOS #1-15 │     │ SOS #16-50│     │ SOS #51-88│
  │ RN 4510   │     │ RN 4511   │     │ RN 4511/13│
  │ (Izq/Der) │     │ (Izq/Der) │     │ (Izq/Der) │
  └───────────┘     └───────────┘     └───────────┘

Zona 1: PK 0-90 (Puerto Salgar - Puerto Boyacá) → ~15 postes
Zona 2: PK 90-180 (Puerto Boyacá - Puerto Berrío) → ~35 postes
Zona 3: PK 180-259.6 (Puerto Berrío - San Roque) → ~38 postes
```

### 4.2 Segmentación de Red (VLAN)

| VLAN | Descripción | ID | Equipos |
|:-----|:------------|:---|:--------|
| **VLAN-ITS** | Red ITS general | 100 | CCTV, PMV, WIM, Meteo, SOS, ETD, etc. |
| **VLAN-SOS** | Red dedicada SOS (opcional) | 110 | 88 postes SOS |
| **VLAN-VOIP** | Tráfico de voz | 120 | SOS, PBX/IP, Operadores CCO |
| **VLAN-MGMT** | Gestión y monitoreo | 200 | Switches, servidores, SCADA |

**Nota:** SOS puede usar VLAN-ITS o VLAN-SOS según diseño de red. VLAN-VOIP se usa para priorización de tráfico de voz.

### 4.3 Ancho de Banda y Dimensionamiento

| Tipo de Tráfico | Ancho de Banda por Poste | Total (88 postes) | Prioridad |
|:----------------|:-------------------------|:------------------|:----------|
| **VoIP (llamada activa)** | 64-128 kbps | 5.6-11.3 Mbps | 🔴 Alta (QoS) |
| **Monitoreo SNMP** | <1 kbps | <88 kbps | 🟡 Media |
| **GPS/GNSS (datos)** | <1 kbps | <88 kbps | 🟡 Media |
| **Diagnóstico remoto** | <10 kbps | <880 kbps | 🟢 Baja |
| **TOTAL (pico)** | ~150 kbps | **~13.2 Mbps** | - |

**Dimensionamiento de red:**
- **Por poste:** 100 Mbps (Ethernet) → Margen 99.85%
- **Agregación:** 1 Gbps → Margen 98.7%
- **Troncal:** 10 Gbps → Margen 99.87%

---

## 5. FLUJO DE DATOS DE LLAMADA DE EMERGENCIA

### 5.1 Diagrama de Flujo Detallado

```
┌─────────────────────────────────────────────────────────────────┐
│ 1. INICIO DE LLAMADA (CAMPO)                                    │
│                                                                 │
│    Usuario presiona botón SOS                                   │
│         │                                                       │
│         ▼                                                       │
│    ┌──────────┐                                                │
│    │ Poste SOS│ → Detecta presión de botón                     │
│    │ #XX      │ → Activa GPS/GNSS (obtiene coordenadas)        │
│    └────┬─────┘ → Inicia sesión SIP (INVITE)                  │
│         │                                                       │
└─────────┼───────────────────────────────────────────────────────┘
          │
          │ SIP INVITE + GPS coordinates
          │ (Lat, Lon, PK, Ruta)
          ▼
┌─────────────────────────────────────────────────────────────────┐
│ 2. TRANSMISIÓN (RED DE TELECOMUNICACIONES)                      │
│                                                                 │
│    Poste SOS → Conversor FO/Ethernet                            │
│         │                                                       │
│         ▼                                                       │
│    Switch Acceso (L2) → VLAN-VOIP (prioridad alta)             │
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
          │ SIP INVITE + GPS
          ▼
┌─────────────────────────────────────────────────────────────────┐
│ 3. PROCESAMIENTO EN CCO                                         │
│                                                                 │
│    ┌──────────────┐                                            │
│    │  PBX/IP      │ → Recibe INVITE SIP                        │
│    │  (VoIP)      │ → Identifica poste SOS #XX                 │
│    └──────┬───────┘ → Obtiene coordenadas GPS                  │
│           │         → Consulta base de datos (PK, ruta)       │
│           ▼                                                     │
│    ┌──────────────┐                                            │
│    │  Servidor    │ → Registra llamada (timestamp, ubicación)  │
│    │  SCADA       │ → Actualiza estado del poste (en llamada)  │
│    └──────┬───────┘ → Genera alarma visual/sonora            │
│           │                                                     │
│           ▼                                                     │
│    ┌──────────────┐                                            │
│    │  Estación    │ → Operador recibe llamada                  │
│    │  Operador    │ → Visualiza ubicación en mapa (GPS)        │
│    │  CCO         │ → Atiende llamada: "Centro de Control..." │
│    └──────┬───────┘                                             │
│           │                                                     │
│           ▼                                                     │
│    ┌──────────────┐                                            │
│    │  Sistema     │ → Usuario explica emergencia               │
│    │  de Voz      │ → Conversación bidireccional               │
│    │  (RTP)       │ → Audio: G.711/G.729 codec                  │
│    └──────┬───────┘                                             │
│           │                                                     │
└───────────┼─────────────────────────────────────────────────────┘
            │
            │ Registro de evento
            ▼
┌─────────────────────────────────────────────────────────────────┐
│ 4. REGISTRO Y DESPACHO                                          │
│                                                                 │
│    ┌──────────────┐                                            │
│    │  Base de     │ → Registra llamada completa:               │
│    │  Datos SICC  │   - Fecha, hora, duración                  │
│    └──────┬───────┘   - Ubicación (PK, coordenadas)           │
│           │           - Motivo de llamada                      │
│           │           - Acción tomada                          │
│           ▼                                                     │
│    ┌──────────────┐                                            │
│    │  Sistema de  │ → Evalúa tipo de emergencia                │
│    │  Emergencias │ → Despacha equipo apropiado:               │
│    └──────┬───────┘   - Ambulancia TAM (médica)               │
│           │           - Grúa (avería mecánica)                 │
│           │           - Patrulla (accidente)                   │
│           ▼                                                     │
│    ┌──────────────┐                                            │
│    │  Coordinación│ → Notifica a Policía de Carreteras         │
│    │  Externa     │ → Registra en SICC                         │
│    └──────────────┘                                             │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

### 5.2 Secuencia Temporal de Llamada

| Tiempo | Evento | Duración Acumulada |
|:-------|:-------|:-------------------|
| **T+0s** | Usuario presiona botón SOS | 0s |
| **T+0.5s** | Poste detecta señal, activa GPS | 0.5s |
| **T+1s** | GPS obtiene coordenadas | 1s |
| **T+1.5s** | Poste inicia sesión SIP (INVITE) | 1.5s |
| **T+2-5s** | Transmisión por red FO a CCO | 3-6s |
| **T+5-8s** | PBX/IP procesa INVITE, consulta BD | 8-11s |
| **T+8-12s** | Llamada llega a estación operador | 12-18s |
| **T+12-18s** | Operador atiende: "Centro de Control..." | 18-24s |
| **T+18-30s** | Usuario explica emergencia | 30-48s |
| **T+30-60s** | Operador registra, despacha equipo | 60-108s |

**Tiempo total hasta atención:** ≤ 30 segundos (requisito contractual)

---

## 6. INTEGRACIÓN CON CCO Y SISTEMA DE EMERGENCIAS

### 6.1 Arquitectura de Integración

```
┌─────────────────────────────────────────────────────────────┐
│                    POSTE SOS #XX                            │
│                    (Campo)                                  │
└──────────────────────┬──────────────────────────────────────┘
                       │
                       │ SIP/RTP (VoIP)
                       │ + GPS coordinates
                       ▼
┌─────────────────────────────────────────────────────────────┐
│                    CCO La Lizama                            │
│                    PK 4+300 (RN 4513)                       │
│                                                             │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐     │
│  │  PBX/IP      │  │  Servidor    │  │  Base de     │     │
│  │  (VoIP)      │  │  SCADA       │  │  Datos SICC  │     │
│  │              │  │  (Monitoreo) │  │  (Registro)  │     │
│  └──────┬───────┘  └──────┬───────┘  └──────┬───────┘     │
│         │                 │                 │              │
│         └─────────────────┴─────────────────┘              │
│                            │                                │
│  ┌─────────────────────────▼───────────────────────┐      │
│  │        Estación Operador CCO                     │      │
│  │        - Recepción de llamadas                   │      │
│  │        - Visualización GPS en mapa              │      │
│  │        - Gestión de emergencias                 │      │
│  └─────────────────────────┬───────────────────────┘      │
│                            │                                │
└────────────────────────────┼────────────────────────────────┘
                             │
                             │ API REST / Base de Datos
                             ▼
┌─────────────────────────────────────────────────────────────┐
│                    Sistema de Emergencias                   │
│                                                             │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐     │
│  │  Despacho    │  │  Coordinación│  │  Registro     │     │
│  │  Ambulancias │  │  Policía     │  │  Eventos      │     │
│  │  TAM         │  │  Carreteras  │  │  SICC         │     │
│  └──────────────┘  └──────────────┘  └──────────────┘     │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

### 6.2 Protocolos de Integración

| Interface | Protocolo | Datos Intercambiados | Frecuencia |
|:----------|:----------|:---------------------|:-----------|
| **SOS ↔ PBX/IP** | SIP/RTP (RFC 3261, RFC 3550) | Voz bidireccional, señalización | Por llamada |
| **SOS ↔ SCADA** | SNMP v3 | Estado del poste, diagnóstico | Cada 5 min |
| **PBX/IP ↔ BD SICC** | SQL/API REST | Registro de llamadas, eventos | Por evento |
| **SCADA ↔ Operador** | WebSocket/HTTP | Visualización en tiempo real | Continuo |
| **CCO ↔ Emergencias** | API REST / Base de Datos | Despacho de equipos, coordinación | Por evento |

---

## 7. ARQUITECTURA DE REDUNDANCIA Y DISPONIBILIDAD

### 7.1 Estrategia de Redundancia

| Componente | Tipo de Redundancia | Configuración | Justificación |
|:-----------|:--------------------|:--------------|:--------------|
| **Red Troncal FO** | Anillo redundante | Topología anillo en zonas críticas | Protección ante cortes de fibra |
| **Switches Core (CCO)** | N+1 | 4 switches (stacking o MLAG) | Alta disponibilidad de red |
| **PBX/IP (CCO)** | Activo-Pasivo | 2 servidores (1 activo + 1 respaldo) | Continuidad de servicio VoIP |
| **Servidores SCADA** | N+1 | 2-3 servidores (VM, alta disponibilidad) | Monitoreo continuo |
| **Alimentación Poste** | Principal + Respaldo | AC 120V + Batería 2h + Solar (opcional) | Operación continua |
| **Enlaces a CCO** | Redundancia de ruta | Múltiples rutas en anillo FO | Sin punto único de falla |

### 7.2 Disponibilidad del Sistema

**Disponibilidad objetivo:** ≥ 99% anual (requisito contractual AT4)

**Cálculo de disponibilidad:**
- **Poste individual:** MTBF = 8,760 horas (1 año), MTTR = 4 horas
  - Disponibilidad = MTBF / (MTBF + MTTR) = 8,760 / 8,764 = **99.95%**
- **Sistema completo (88 postes):**
  - Disponibilidad sistema = (Disponibilidad poste)^88 = 99.95%^88 = **95.6%**
  - **Con redundancia de red:** ≥ **99%** ✅

**Estrategias para cumplir 99%:**
- ✅ Redundancia de red troncal (anillo)
- ✅ Monitoreo proactivo (SCADA)
- ✅ Mantenimiento preventivo trimestral
- ✅ Stock de repuestos críticos
- ✅ Tiempo de respuesta de mantenimiento ≤ 4 horas

---

## 8. ARQUITECTURA DE SEGURIDAD

### 8.1 Seguridad de Comunicaciones

| Aspecto | Implementación | Estándar |
|:--------|:---------------|:---------|
| **Cifrado de voz** | SRTP (Secure RTP) | RFC 3711 |
| **Autenticación SIP** | Digest authentication | RFC 3261 |
| **Certificados digitales** | TLS 1.2 mínimo | RFC 5246 |
| **Segmentación de red** | VLAN dedicada (VLAN-SOS/VLAN-VOIP) | IEEE 802.1Q |
| **Control de acceso** | Firewall en switches L3 | - |
| **Monitoreo de seguridad** | IDS/IPS en red troncal | - |

### 8.2 Seguridad Física

| Componente | Protección | Especificación |
|:-----------|:-----------|:---------------|
| **Carcasa poste** | Antivandalismo | IK10 (resistencia a impactos) |
| **Gabinete interno** | Protección ambiental | IP65 exterior, IP54 interior |
| **Cerraduras** | Control de acceso | Acero inoxidable, llave única |
| **Señalización** | Disuasión | Visible, retroreflectiva |

### 8.3 Seguridad de Datos

- **Registro inviolable:** Base de datos con auditoría, no modificable
- **Backup automático:** Diario, retención 90 días
- **Control de acceso:** Solo personal autorizado (roles: operador, supervisor, admin)

---

## 9. ARQUITECTURA DE MONITOREO Y GESTIÓN

### 9.1 Sistema SCADA para SOS

```
┌─────────────────────────────────────────────────────────────┐
│                    POSTES SOS (88 unidades)                 │
│                    (Campo)                                  │
└──────────────────────┬──────────────────────────────────────┘
                       │
                       │ SNMP v3 (cada 5 minutos)
                       │ - Estado operativo
                       │ - Nivel de batería
                       │ - Señal GPS
                       │ - Estado de comunicación
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
│  │        - Mapa con estado de postes               │       │
│  │        - Alertas de falla                        │       │
│  │        - Reportes de disponibilidad              │       │
│  └───────────────────────────────────────────────────┘       │
│                                                               │
└───────────────────────────────────────────────────────────────┘
```

### 9.2 Métricas Monitoreadas

| Métrica | Frecuencia | Umbral de Alerta | Acción |
|:--------|:-----------|:-----------------|:-------|
| **Estado operativo** | Cada 5 min | No responde | Alerta a CCO, programar mantenimiento |
| **Nivel de batería** | Cada 5 min | < 20% | Alerta preventiva |
| **Señal GPS** | Cada 5 min | Sin señal > 5 min | Alerta de falla GPS |
| **Estado de comunicación** | Cada 5 min | Sin comunicación > 10 min | Alerta crítica, verificar red |
| **Intentos de llamada fallidos** | Por evento | > 3 fallos consecutivos | Alerta de falla del poste |
| **Disponibilidad mensual** | Mensual | < 95% | Reporte a gerencia |

---

## 10. DESPLIEGUE FÍSICO

### 10.1 Distribución Geográfica

| Ruta | UF Principal | Cantidad | PKR Inicio | PKR Fin | Distribución |
|:-----|:-------------|:---------|:-----------|:--------|:--------------|
| **RN 4510** | 0D, 1, 5.1, 5.2 | 33 | 41+180 | 131+700 | Sistema tres bolillos |
| **RN 4511** | 0D-12 | 51 | 0+650 | 147+385 | Sistema tres bolillos |
| **RN 4513** | 11, 13 | 3 | 1+240 | 6+050 | Acceso CCO/Báscula |
| **TOTAL** | - | **87** | - | - | **259.6 km cubiertos** |

**Nota:** Validación contractual indica 88 postes (incluyendo SOS #88 en RN 4513).

### 10.2 Sistema "Tres Bolillos"

**Distribución alternada:**
- **SOS impares (1, 3, 5...):** Berma externa izquierda
- **SOS pares (2, 4, 6...):** Berma externa derecha
- **Cobertura efectiva:** ~1.5 km por calzada (cumple requisito de 3 km máximo)

**Ventajas:**
- ✅ Cobertura uniforme en ambas calzadas
- ✅ Reducción de costos (menos postes que distribución lineal)
- ✅ Cumple requisito contractual de 3 km máximo

### 10.3 Ubicaciones Específicas

**Puntos de referencia principales:**
- **PK 0+000** (Puerto Salgar): SOS #1 (inicio corredor)
- **PK 50±5** (Zona 1): SOS intermedio
- **PK 80+000** (Peaje Aguas Negras): SOS cercano
- **PK 130±5** (CCO La Lizama): SOS #88 (conexión CCO)
- **PK 180±5** (Zona 3): SOS intermedio
- **PK 259+600** (San Roque): SOS final (fin corredor)

---

## 11. TECNOLOGÍAS Y ESTÁNDARES

### 11.1 Tecnologías Seleccionadas

| Categoría | Tecnología | Estándar/Versión | Justificación |
|:----------|:-----------|:-----------------|:--------------|
| **VoIP** | SIP/RTP | RFC 3261, RFC 3550 | Estándar abierto de telefonía IP |
| **Cifrado VoIP** | SRTP | RFC 3711 | Seguridad de comunicaciones |
| **Codec de audio** | G.711 / G.729 | ITU-T G.711, G.729 | Calidad telefónica, bajo ancho de banda |
| **Red de datos** | Ethernet | IEEE 802.3 | Estándar universal |
| **Fibra óptica** | Monomodo G.652.D | ITU-T G.652 | Larga distancia, baja atenuación |
| **GPS/GNSS** | GPS, GLONASS, Galileo | - | Geolocalización precisa |
| **Monitoreo** | SNMP v3 | RFC 3410-3418 | Gestión de red estándar |
| **Protección IP** | IP66/IK10 | IEC 60529, IEC 62262 | Resistencia ambiental y vandalismo |

### 11.2 Interoperabilidad

- **Con sistemas CCO:** Protocolo SIP estándar (compatible con cualquier PBX/IP)
- **Con sistemas de emergencias:** API REST / Base de Datos (integración flexible)
- **Con red ITS:** VLAN dedicada, protocolo IP estándar
- **Entre fabricantes:** Estándares abiertos (SIP, SNMP, IP) permiten multi-vendor

---

## 12. ANÁLISIS DE ALTERNATIVAS

### 12.1 Alternativa 1: Solución Propietaria Integrada

**Descripción:** Sistema SOS completo de un solo fabricante (ej: SWARCO, COMARK, Siemens)

**Ventajas:**
- Integración garantizada
- Soporte unificado
- Interfaz única

**Desventajas:**
- Vendor lock-in (dependencia de un proveedor)
- Costo alto (falta de competencia)
- Difícil escalabilidad con terceros

**Costo estimado:** $2.5M-$3.5M USD

---

### 12.2 Alternativa 2: Solución Basada en Estándares Abiertos ⭐ **RECOMENDADA**

**Descripción:** Arquitectura modular basada en protocolos estándar (SIP, IP, SNMP), permitiendo integración de múltiples fabricantes best-of-breed

**Ventajas:**
- ✅ **Competencia entre proveedores** (menor costo, mejor calidad)
- ✅ **Interoperabilidad** (SIP, estándares abiertos)
- ✅ **Escalabilidad** (fácil agregar equipos de diferentes marcas)
- ✅ **Reducción de riesgo** (no dependencia de un solo proveedor)
- ✅ **Flexibilidad** (actualizaciones y mejoras independientes)

**Desventajas:**
- Requiere integración entre componentes
- Gestión de múltiples proveedores

**Costo estimado:** $1.6M-$2.3M USD (ahorro 20-30% vs Alternativa 1)

**Justificación de selección:**
- ✅ Cumple con todos los requisitos contractuales (AT1, AT2, AT4)
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
| **Fase 3** | Instalación de postes (por zonas) | 6 meses | H3: 100% postes instalados |
| **Fase 4** | Integración con CCO | 1 mes | H4: Sistema integrado |
| **Fase 5** | Pruebas y comisionamiento | 1 mes | H5: Sistema operativo |
| **Fase 6** | Puesta en servicio | 1 mes | H6: Sistema en operación |

**Duración total:** 14 meses

### 13.2 Cronograma por Zona

- **Zona 1 (PK 0-90):** Meses 3-5 (15 postes)
- **Zona 2 (PK 90-180):** Meses 4-7 (35 postes)
- **Zona 3 (PK 180-260):** Meses 6-9 (38 postes)
- **Integración CCO:** Mes 10
- **Pruebas:** Mes 11
- **Puesta en servicio:** Mes 12

---

## 14. ESCALABILIDAD

### 14.1 Capacidad de Crecimiento

| Parámetro | Año 1 | Año 10 | Año 25 | Capacidad Diseñada |
|:----------|:------|:-------|:-------|:-------------------|
| **Postes SOS** | 88 | 90 | 95 | 100 (+14% margen) |
| **Llamadas simultáneas** | 10 | 15 | 20 | 30 (+200%) |
| **Ancho de banda troncal** | 13.2 Mbps | 20 Mbps | 30 Mbps | 1 Gbps (+7,500%) |
| **Capacidad PBX/IP** | 10 llamadas | 15 llamadas | 20 llamadas | 50 llamadas (+400%) |

### 14.2 Estrategia de Crecimiento

**Sin cambios en arquitectura (hasta año 20):**
- Agregar hasta 12 postes adicionales (total 100)
- Aumentar capacidad de llamadas simultáneas
- Ampliar almacenamiento de grabaciones

**Con cambios menores (año 20-25):**
- Actualización de PBX/IP a mayor capacidad
- Reemplazo de postes por modelos más modernos

**Arquitectura modular permite crecimiento orgánico sin rediseño completo.**

---

## 15. PRÓXIMOS PASOS

- [x] ✅ Arquitectura Conceptual completada (T03)
- [ ] 🔄 Validar arquitectura con stakeholders (ANI, Interventoría, Policía)
- [ ] ⏳ Desarrollar especificaciones técnicas detalladas (T04 - ya existe, revisar)
- [ ] ⏳ Solicitar cotizaciones a fabricantes preseleccionados
- [ ] ⏳ Diseñar diagramas de red detallados (Visio, AutoCAD)
- [ ] ⏳ Definir ubicaciones exactas de postes (coordenadas, PKs)
- [ ] ⏳ Estimar costos detallados con cotizaciones reales (T05 - ya existe, revisar)
- [ ] ⏳ Crear plan de pruebas de integración (FAT/SAT)
- [ ] ⏳ Elaborar plan de capacitación de operadores

---

## 16. REFERENCIAS

### 16.1 Documentos del Proyecto

- [T01 - Ficha Sistema SOS](24B_T01_Ficha_Sistema_Postes_SOS_MVP_v1.0.md)
- [T02 - Análisis de Requisitos SOS](24B_T02_Analisis_Requisitos_Postes_SOS_MVP_v1.0.md)
- [T04 - Especificaciones Técnicas SOS](IV.%20Ingenieria%20Basica/01_T04_Especificaciones_Tecnicas_Postes_SOS_v1.0.md)
- [T05 - Ingeniería de Detalle SOS](V.%20Ingenieria%20de%20Detalle/04_T05_Ingenieria_Detalle_Postes_SOS_v1.0.md)
- [T03 - Arquitectura Conceptual ITS](53_T03_Arquitectura_Conceptual_ITS_v1.0.md) (contexto general)
- [Validación Contractual SOS](VII.%20Documentos%20Transversales/34_VALIDACION_CONTRACTUAL_POSTES_SOS_v1.0.md)

### 16.2 Documentos Contractuales

- **AT1:** Apéndice Técnico 1, Capítulo 3 "Sistemas de comunicación y postes SOS"
- **AT2:** Apéndice Técnico 2, Sección 3.3.3.2 (Operación y Mantenimiento)
- **AT2:** Apéndice Técnico 2, Sección 3.3.5.1 (Sistema de Control de Tráfico)
- **AT4:** Apéndice Técnico 4 (Indicadores de desempeño)

### 16.3 Normativa y Estándares

- **RFC 3261:** SIP (Session Initiation Protocol)
- **RFC 3550:** RTP (Real-time Transport Protocol)
- **RFC 3711:** SRTP (Secure Real-time Transport Protocol)
- **ITU-T G.711:** Codec de audio PCM
- **ITU-T G.729:** Codec de audio comprimido
- **IEEE 802.3:** Ethernet
- **ITU-T G.652:** Fibra óptica monomodo
- **IEC 60529:** Grado de protección IP
- **IEC 62262:** Grado de protección IK

---

**Versión:** 1.0 MVP  
**Estado:** ✅ Arquitectura Conceptual Completada  
**Fecha:** 31/10/2025  
**Responsable:** Ingeniero de Sistemas ITS / Arquitecto de Redes  
**Próximo paso:** Validación de arquitectura con stakeholders

