# T03: ARQUITECTURA CONCEPTUAL - CENTRO DE CONTROL OPERACIONAL (CCO)
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 17/10/2025  
**Sistema:** CCO - Centro de Control Operacional  
**Responsable:** Arquitecto de Sistemas / Ingeniero de Sistemas  
**Versión:** 1.0  

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Documento

Este documento define la **arquitectura conceptual** del Centro de Control Operacional (CCO) para el proyecto APP Puerto Salgar - Barrancabermeja. El CCO es el **HUB CENTRAL** donde confluyen TODOS los sistemas del corredor.

Establece:
- Layout físico del CCO (distribución de espacios)
- Arquitectura de servidores y almacenamiento
- Arquitectura de red del CCO
- Videowall y puestos de operación
- Integración con todos los sistemas del corredor

### 1.2 Alcance

Esta arquitectura cubre el **CCO completo** como centro de mando del corredor de 259.6 km principales + 33.4 km adicionales:

**Ubicación del CCO:** La Lizama PK 4+300 (RN 4513) - Conexión al proyecto principal

**Sistemas integrados en el CCO:**
- ITS (CCTV, PMV, WIM, Meteo, SOS, ETD/RADAR, Gálibos, etc.)
- Peajes (2 estaciones: Zambito, Aguas Negras)
- Sistema de Emergencias (despacho de TAM, grúas)
- Telecomunicaciones (núcleo de red - anillo 283 km)
- Energía (SCADA eléctrico)
- Iluminación (SCADA de iluminación)
- Pesaje (gestión de WIM)
- Interfaces con ANI (SIINCO, ANIscopio)

**Operación:** 24/7/365 durante 25 años

### 1.3 Referencias

- [T01 - Ficha Sistema CCO](26_T01_Ficha_Sistema_CCO_v1.0.md)
- [T02 - Análisis de Requisitos CCO](32_T02_Analisis_Requisitos_CCO_v1.0.md)
- [AT2 - Operación y Mantenimiento](../II.%20Apendices%20Tecnicos/AT2_Operacion_Mantenimiento_v1.0.md) - Sección 3.1.7
- [T03 - Arquitectura ITS](53_T03_Arquitectura_Conceptual_ITS_v1.0.md)

---

## 2. ARQUITECTURA DE ALTO NIVEL

### 2.1 Diagrama de Arquitectura Funcional del CCO

```
┌──────────────────────────────────────────────────────────────────┐
│                    CENTRO DE CONTROL OPERACIONAL                 │
│                         (CCO - 500 m²)                           │
│                    Ubicado en La Lizama PK 4+300 (RN 4513)       │
│                                                                  │
│  ┌────────────────────────────────────────────────────────────┐ │
│  │              SALA DE CONTROL (200 m²)                      │ │
│  │                                                            │ │
│  │  ┌──────────────────────────────────────┐                 │ │
│  │  │         VIDEOWALL                    │  16-32 pantallas│ │
│  │  │    (LED 55", Matriz 4x8 o 4x4)      │  Visualización  │ │
│  │  └──────────────────────────────────────┘  de CCTV/Mapas │ │
│  │                                                            │ │
│  │  ┌────────┐  ┌────────┐  ┌────────┐  ┌────────┐         │ │
│  │  │Operador│  │Operador│  │Operador│  │Operador│         │ │
│  │  │  ITS   │  │ Peajes │  │Emergenc│  │Supervis│         │ │
│  │  │(2 mon) │  │(2 mon) │  │(2 mon) │  │(3 mon) │         │ │
│  │  └────────┘  └────────┘  └────────┘  └────────┘         │ │
│  │     6-10 Puestos de Operación (Turnos 24/7)              │ │
│  └────────────────────────────────────────────────────────────┘ │
│                                                                  │
│  ┌────────────────────────────────────────────────────────────┐ │
│  │       SALA DE SERVIDORES (80 m², Climatizada)            │ │
│  │                                                            │ │
│  │  Rack 1:         Rack 2:         Rack 3:      Rack 4:    │ │
│  │  ┌─────────┐     ┌─────────┐   ┌─────────┐  ┌────────┐  │ │
│  │  │Serv. NVR│     │Serv. NVR│   │SCADA ITS│  │Storage │  │ │
│  │  │(Video 1)│     │(Video 2)│   │Peajes   │  │  SAN   │  │ │
│  │  ├─────────┤     ├─────────┤   ├─────────┤  │100 TB  │  │ │
│  │  │Serv. NVR│     │Serv. NVR│   │SCADA Luz│  ├────────┤  │ │
│  │  │(Video 3)│     │(Backup) │   │SCADA Elé│  │UPS 2x  │  │ │
│  │  └─────────┘     └─────────┘   │BD SQL   │  │100 kVA │  │ │
│  │                                 └─────────┘  └────────┘  │ │
│  │                                                            │ │
│  │  Switches Core: 4x 10 Gbps (stacking redundante)          │ │
│  │  Routers WAN: 2x (redundante)                            │ │
│  │  Firewalls: 2x (activo-pasivo)                           │ │
│  └────────────────────────────────────────────────────────────┘ │
│                                                                  │
│  ┌────────────────────────────────────────────────────────────┐ │
│  │  OFICINAS Y SERVICIOS (220 m²)                           │ │
│  │  - Oficina Gerente de Operaciones (20 m²)                 │ │
│  │  - Sala de Reuniones (30 m²)                              │ │
│  │  - Comedor y Descanso (40 m²)                             │ │
│  │  - Sanitarios y Vestidores (30 m²)                        │ │
│  │  - Bodega de Repuestos (30 m²)                            │ │
│  │  - Cuarto Eléctrico (Subestación 500 kVA) (40 m²)        │ │
│  │  - Cuarto Generador 300 kW (30 m²)                        │ │
│  └────────────────────────────────────────────────────────────┘ │
└──────────────────────────────────────────────────────────────────┘

Área total construida: 500 m² (1 piso)
Conexión al proyecto: RN 4513 PK 4+300 (La Lizama)
```

### 2.2 Descripción de Componentes

| Componente | Función | Especificación Preliminar | Cantidad |
|:-----------|:--------|:--------------------------|:---------|
| **Videowall** | Visualización de video y mapas | LED 55", Matriz 4x8, Control matricial | 1 sistema (16-32 pantallas) |
| **Puestos de Operación** | Control de sistemas | PC workstation, 2-3 monitores, teclado, mouse | 6-10 puestos |
| **Servidores NVR** | Grabación de video CCTV | Dell/HP, 128 GB RAM, almacenamiento SAN | 4-5 (redundante N+1) |
| **Servidores SCADA** | Gestión de ITS, Peajes, Iluminación | Dell/HP, virtualización VMware/Hyper-V | 2-3 (redundante) |
| **Almacenamiento SAN** | Datos de video (30 días) | 100 TB, RAID 6, backup diario | 1 sistema |
| **Switches Core** | Núcleo de red | 10 Gbps, stacking, 48 puertos | 4 (redundante) |
| **Routers WAN** | Conectividad Internet/ANI | Cisco/Huawei, redundante | 2 |
| **Firewalls** | Seguridad perimetral | Fortinet/Cisco, activo-pasivo | 2 |
| **UPS** | Respaldo energía | 2 x 100 kVA, 30 min autonomía | 2 (N+1) |
| **Generador** | Energía de emergencia | 300 kW diésel, 48h autonomía | 1 |

---

## 3. TOPOLOGÍA DEL SISTEMA

### 3.1 Topología de Red del CCO

- **Tipo de topología:** Estrella jerárquica con redundancia
- **Protocolo principal:** TCP/IP (Ethernet 10 Gbps en core)
- **Segmentación:** VLANs por sistema (ITS, Peajes, Gestión, DMZ, ANI)
- **Redundancia:** Switches core en stacking (activo-activo)

### 3.2 Diagrama de Topología de Red

```
                    ┌──────────────────┐
                    │  Internet / ANI  │
                    └────────┬─────────┘
                             │
                    ┌────────▼─────────┐
                    │   Firewalls 2x   │  Activo-Pasivo
                    │  (Perimetrales)  │  Seguridad
                    └────────┬─────────┘
                             │
        ┌────────────────────┼────────────────────┐
        │                    │                    │
   ┌────▼────┐          ┌───▼────┐          ┌───▼────┐
   │Switch   │◄────────►│Switch  │◄────────►│Switch  │
   │Core 1   │  Stacking│Core 2  │  Stacking│Core 3  │
   │10 Gbps  │          │10 Gbps │          │10 Gbps │
   └────┬────┘          └───┬────┘          └───┬────┘
        │                   │                   │
   ┌────┴───────────────────┴───────────────────┴────┐
   │                                                  │
┌──▼──────┐  ┌────────┐  ┌────────┐  ┌──────────┐  │
│Servidores│  │Videowall│  │ Puestos│  │Telefonía │  │
│NVR/SCADA │  │(Control)│  │Operador│  │VoIP (PBX)│  │
└──────────┘  └────────┘  └────────┘  └──────────┘  │
                                                      │
        ┌─────────────────────────────────────────────┘
        │
   ┌────▼─────┐  VLAN 10: ITS (Video, datos sensores)
   │   Red    │  VLAN 20: Peajes (Recaudos, tráfico)
   │ Troncal  │  VLAN 30: Gestión (Administración)
   │  Fibra   │  VLAN 40: DMZ (Acceso ANI)
   └──────────┘  VLAN 50: VoIP (Telefonía)
```

### 3.3 Distribución Física (Layout CCO)

**Planta del CCO (500 m²):**

```
┌─────────────────────────────────────────────────────────────┐
│                     ACCESO PRINCIPAL                        │
├─────────────────────────────────────────────────────────────┤
│                                                             │
│  ┌──────────────────────────────────────────────┐         │
│  │         SALA DE CONTROL (200 m²)             │         │
│  │                                              │         │
│  │  [VIDEOWALL 4x8 LED]                        │  ┌────┐ │
│  │  ================================            │  │Sala│ │
│  │                                              │  │Reun│ │
│  │  [Op1] [Op2] [Op3] [Op4] [Op5] [Op6]       │  │30m²│ │
│  │                                              │  └────┘ │
│  │  [Supervisor - Puesto Elevado]               │         │
│  └──────────────────────────────────────────────┘         │
│                                                             │
│  ┌──────────┐  ┌──────────────┐  ┌──────────────┐        │
│  │  Sala    │  │   Comedor    │  │   Oficina    │        │
│  │Servidores│  │   Descanso   │  │   Gerente    │        │
│  │  80 m²   │  │    40 m²     │  │    20 m²     │        │
│  │(Clima    │  │              │  │              │        │
│  │control)  │  └──────────────┘  └──────────────┘        │
│  └──────────┘                                              │
│                                                             │
│  ┌──────────┐  ┌──────────────┐  ┌──────────────┐        │
│  │  Cuarto  │  │   Bodega     │  │  Sanitarios  │        │
│  │Eléctrico │  │  Repuestos   │  │  Vestidores  │        │
│  │Subestac. │  │    30 m²     │  │    30 m²     │        │
│  │  40 m²   │  └──────────────┘  └──────────────┘        │
│  └──────────┘                                              │
│  [Generador 300 kW - Exterior 30 m²]                       │
└─────────────────────────────────────────────────────────────┘

Ubicación sugerida: PK 130±5 (punto medio del corredor)
```

---

## 4. FLUJO DE DATOS E INFORMACIÓN

### 4.1 Flujo de Datos Principal

```
┌────────────────────────────────────────────────────────┐
│ 1. CAPTURA (DESDE CAMPO - 259.6 km)                   │
│    - 120 cámaras CCTV capturan video                  │
│    - Sensores ITS capturan datos (WIM, Meteo, Aforo)  │
│    - Peajes transmiten recaudos y tráfico             │
│    - Llamadas SOS de usuarios                         │
└───────────────────┬────────────────────────────────────┘
                    ▼
┌────────────────────────────────────────────────────────┐
│ 2. TRANSMISIÓN (RED DE FIBRA ÓPTICA - 285 km)         │
│    - Video CCTV: 720 Mbps                             │
│    - Datos ITS: 20 Mbps                               │
│    - Datos Peajes: 30 Mbps                            │
│    - VoIP SOS: 10 Mbps                                │
│    TOTAL: ~1 Gbps (picos 1.5 Gbps)                    │
└───────────────────┬────────────────────────────────────┘
                    ▼
┌────────────────────────────────────────────────────────┐
│ 3. RECEPCIÓN EN CCO (SWITCHES CORE 10 Gbps)           │
│    - Switches Core (4x) reciben tráfico               │
│    - Enrutamiento a servidores según VLAN             │
└───────────────────┬────────────────────────────────────┘
                    ▼
┌────────────────────────────────────────────────────────┐
│ 4. PROCESAMIENTO (SERVIDORES)                         │
│    - NVR (4-5 servidores): Graban video (30 días)     │
│    - SCADA ITS: Procesa datos sensores, genera alarmas│
│    - SCADA Peajes: Consolida recaudos                 │
│    - SCADA Iluminación/Energía: Monitoreo             │
│    - DAI: Analiza video (detección incidentes)        │
│    - Base de Datos: Registra eventos                  │
└───────────────────┬────────────────────────────────────┘
                    ▼
┌────────────────────────────────────────────────────────┐
│ 5. VISUALIZACIÓN (VIDEOWALL + PUESTOS OPERADORES)     │
│    - Videowall muestra video en vivo (32 cámaras)     │
│    - SCADA muestra mapa GIS con estado de equipos     │
│    - Alarmas visuales/sonoras                          │
│    - Operadores controlan PMV, responden a SOS         │
└───────────────────┬────────────────────────────────────┘
                    ▼
┌────────────────────────────────────────────────────────┐
│ 6. TRANSMISIÓN A ANI (INTERNET/VPN)                   │
│    - Datos de tráfico, velocidades, eventos → SIINCO  │
│    - Enlace primario 20 Mbps + Respaldo 4G            │
└────────────────────────────────────────────────────────┘
```

### 4.2 Tipos de Datos Procesados en CCO

| Tipo de Dato | Formato | Volumen/día | Retención | Procesamiento |
|:-------------|:--------|:------------|:----------|:--------------|
| **Video CCTV** | H.265, 1080p | 3 TB | 30 días (90 TB) | Grabación continua + visualización |
| **Datos ITS (WIM, Meteo, Aforo)** | JSON, SQL | 50 MB | 5 años | Almacenamiento en BD, reportes |
| **Recaudos de Peajes** | SQL | 100 MB | 25 años | Consolidación, reportes financieros |
| **Llamadas SOS** | Audio/VoIP | 50 MB | 1 año | Grabación, geolocalización |
| **Eventos/Alarmas** | Syslog, SQL | 200 MB | 5 años | Dashboard SCADA, reportes |
| **Reportes a ANI** | JSON, XML | 10 MB | 5 años | Exportación automática |

---

## 5. REDUNDANCIA Y DISPONIBILIDAD

### 5.1 Estrategia de Redundancia

| Componente | Tipo de Redundancia | Configuración | Justificación |
|:-----------|:--------------------|:--------------|:--------------|
| **Servidores NVR** | N+1 | 4 activos + 1 standby | Pérdida de video inadmisible, disponibilidad 99.5% |
| **Servidores SCADA** | N+1 (Virtualización) | 2 hosts físicos, VMs redundantes | Alta disponibilidad de SCADA |
| **Switches Core** | Stacking (N+1) | 4 switches en stack | Falla de 1 switch no afecta operación |
| **Enlaces WAN (ANI)** | Activo-Pasivo | Fibra primaria + 4G respaldo | Transmisión continua a ANI |
| **UPS** | N+1 | 2 x 100 kVA | Redundancia de respaldo energético |
| **Generador** | N (sin redundancia) | 1 x 300 kW | Autonomía 48h suficiente para reparación red |
| **Almacenamiento SAN** | RAID 6 | Tolerancia a 2 discos fallidos | Protección de datos críticos |

### 5.2 SLA (Service Level Agreement)

- **Disponibilidad del CCO:** ≥ 99.5% mensual (según AT4)
- **MTBF (Servidores):** ≥ 8,000 horas
- **MTTR (Servidores):** ≤ 4 horas (con repuesto en sitio)
- **RTO (Recovery Time Objective):** < 2 horas (recuperación ante desastre)
- **RPO (Recovery Point Objective):** < 15 minutos (pérdida máxima de datos)
- **Tiempo de transferencia red → generador:** < 10 segundos

**Disponibilidad 99.5% = Máximo 3.6 horas indisponibilidad/mes**

### 5.3 Puntos Únicos de Falla

| Componente | Es SPOF? | Mitigación |
|:-----------|:---------|:-----------|
| **Sala de Control (edificio)** | Sí | Diseño sismoresistente NSR-10, protección contra incendios |
| **Videowall** | Sí | Puestos de operador pueden funcionar sin videowall (degradado) |
| **Fibra óptica (llegada a CCO)** | Sí | Topología anillo (entrada por 2 rutas diferentes) |
| **Servidores NVR** | No | Configuración N+1 |
| **Switches Core** | No | Stacking (4 switches) |
| **Personal de turno** | Sí | Turnos 24/7 (mínimo 3 operadores siempre) |

---

## 6. SEGURIDAD

### 6.1 Seguridad Física

- **Perímetro:** Muro de 2.5 m con concertina
- **Control de acceso:** Biométrico + tarjeta RFID
- **CCTV de seguridad:** 12 cámaras perimetrales + interiores
- **Alarma de intrusión:** Sensores en puertas/ventanas
- **Sala de servidores:** Acceso restringido, registro de ingreso
- **Extintores:** Clase C (eléctricos) en sala de servidores
- **Personal de vigilancia:** 24/7

### 6.2 Seguridad Lógica / Ciberseguridad

- **Firewall perimetral:** Activo-Pasivo (Fortinet/Cisco)
- **Autenticación:** Active Directory, control de acceso por roles
- **Segregación (VLANs):** Tráfico separado por sistema
- **IDS/IPS:** Detección de intrusiones (opcional, recomendado)
- **Logs de auditoría:** Registro de acceso de usuarios, acciones críticas
- **Backup offline:** Copias semanales desconectadas de red (ransomware protection)
- **Actualización de seguridad:** Parches mensuales programados

### 6.3 Normativa de Seguridad Aplicable

| Norma | Aplicación |
|:------|:-----------|
| **ISO 27001** | Sistema de Gestión de Seguridad de la Información |
| **IEC 62443** | Ciberseguridad en sistemas de automatización industrial (SCADA) |
| **NIST Cybersecurity Framework** | Buenas prácticas de ciberseguridad (referencia) |
| **RETIE** | Seguridad eléctrica (puesta a tierra, protecciones) |
| **NSR-10** | Diseño sismoresistente del edificio |
| **NFPA 72** | Sistema de alarma contra incendios |

---

## 7. ARQUITECTURA DE SOFTWARE (SCADA)

### 7.1 Capas de la Aplicación SCADA

```
┌─────────────────────────────────────────────────────────┐
│   CAPA DE PRESENTACIÓN (HMI - Human Machine Interface) │
│   - Dashboard principal (mapa GIS del corredor)         │
│   - Visualización de eventos en tiempo real             │
│   - Control de PMV (publicación de mensajes)            │
│   - Reportes y gráficos (TPDA, incidentes, velocidad)  │
│   - Tecnología: Web HTML5 + JavaScript                 │
├─────────────────────────────────────────────────────────┤
│   CAPA DE LÓGICA DE NEGOCIO                            │
│   - Motor de reglas (generación automática de alarmas) │
│   - Procesamiento de datos de sensores                 │
│   - Gestión de eventos (SICC - registro)               │
│   - Generación de reportes automáticos                 │
│   - API REST para integración externa (ANI)            │
│   - Tecnología: Java/C#/.NET                           │
├─────────────────────────────────────────────────────────┤
│   CAPA DE COMUNICACIONES                               │
│   - Drivers ONVIF (CCTV)                               │
│   - Modbus TCP / OPC UA (sensores ITS)                 │
│   - SNMP (switches, routers)                           │
│   - API SQL (peajes, base de datos)                    │
├─────────────────────────────────────────────────────────┤
│   CAPA DE DATOS                                        │
│   - PostgreSQL/SQL Server (eventos, configuración)     │
│   - Time-series DB (datos de sensores históricos)      │
│   - File system (NVR para video, 90 TB)               │
│   - Backup diario a SAN secundario                     │
└─────────────────────────────────────────────────────────┘
```

### 7.2 Tecnologías Propuestas

| Capa | Tecnología | Justificación |
|:-----|:-----------|:--------------|
| **HMI (Frontend)** | HTML5 + JavaScript (React) | Interfaz moderna, accesible desde navegador |
| **SCADA** | Siemens WinCC / Schneider Vijeo Citect | Probado en ITS, robusto, integración ONVIF/Modbus |
| **VMS (Video)** | Milestone XProtect Corporate | Líder en gestión de video, ONVIF, escalable |
| **Base de Datos** | SQL Server Standard | Alta disponibilidad, soporte geo-datos |
| **Virtualización** | VMware vSphere | Consolidación de servidores, alta disponibilidad |
| **Backup** | Veeam Backup & Replication | Backup de VMs, replicación |
| **API ANI** | REST (JSON) | Integración con SIINCO según especificaciones ANI |

---

## 8. INTEGRACIÓN CON OTROS SISTEMAS

| Sistema Externo | Interface | Protocolo | Criticidad | Datos Intercambiados |
|:----------------|:----------|:----------|:-----------|:---------------------|
| **ITS (CCTV, PMV, etc.)** | IF-CCO-001 | ONVIF, Modbus TCP, Fibra | 🔴 CRÍTICA | Video (720 Mbps), datos sensores, comandos PMV |
| **Peajes (2 estaciones)** | IF-CCO-002 | TCP/IP, SQL, Fibra | 🔴 CRÍTICA | Recaudos, tráfico, video, alarmas |
| **Emergencias (TAM, Grúas)** | IF-CCO-003 | VoIP, Radio, API | 🔴 CRÍTICA | Despacho de unidades, SOS, coordinación |
| **Telecomunicaciones** | IF-CCO-004 | Ethernet/IP, Fibra | 🔴 CRÍTICA | Backbone de todas las comunicaciones |
| **Energía Eléctrica** | IF-CCO-005 | Modbus TCP, SNMP | 🔴 Alta | Monitoreo SCADA eléctrico, alarmas |
| **Iluminación** | IF-CCO-006 | Modbus TCP | 🟡 Media | Control on/off, estado luminarias |
| **ANI (SIINCO, ANIscopio)** | IF-CCO-007 | HTTPS, API REST, VPN | 🔴 Alta | Datos de tráfico, eventos, reportes |
| **Interventoría** | IF-CCO-008 | Web, VPN | 🟡 Media | Acceso de lectura a dashboards |

---

## 9. ESCALABILIDAD

### 9.1 Dimensionamiento Actual vs Futuro

| Parámetro | Año 1 | Año 10 | Año 25 | Capacidad Diseñada |
|:----------|:------|:-------|:-------|:-------------------|
| **Puestos de operación** | 6 | 8 | 10 | 12 (+20% espacio) |
| **Servidores NVR** | 4 | 5 | 6 | Racks con espacio para 8 |
| **Almacenamiento video** | 90 TB | 120 TB | 150 TB | SAN escalable a 200 TB |
| **Pantallas videowall** | 16 | 24 | 32 | Matriz dimensionada para 32 |
| **Puertos de switch core** | 70% uso | 85% uso | 95% uso | Planificar reemplazo año 20 |

### 9.2 Estrategia de Crecimiento

**Sin cambios en arquitectura (hasta año 15):**
- Agregar puestos de operación (hasta 10 total)
- Ampliar videowall (hasta 32 pantallas)
- Agregar servidores NVR (hasta 6)
- Expandir almacenamiento SAN

**Con cambios menores (año 15-25):**
- Reemplazo de switches core por modelos superiores (25/40 Gbps)
- Ampliación de sala de servidores (si necesario)

**Diseño modular permite crecimiento sin rediseño.**

---

## 10. TECNOLOGÍA Y ESTÁNDARES

### 10.1 Tecnologías Seleccionadas (Proveedores Sugeridos)

| Categoría | Tecnología | Fabricantes Sugeridos | Justificación |
|:----------|:-----------|:----------------------|:--------------|
| **Servidores** | x86 rackmount | Dell PowerEdge, HP ProLiant | Estándar de industria, soporte local |
| **Almacenamiento** | SAN iSCSI/FC | Dell EMC, NetApp, HP | Escalable, alta disponibilidad |
| **Switches Core** | 10 Gbps L3 | Cisco Catalyst, Huawei, HP/Aruba | Stacking, alta disponibilidad |
| **VMS (Video)** | Milestone XProtect | Milestone Systems | Líder en VMS, ONVIF, escalable 1,000+ cámaras |
| **SCADA** | WinCC / Vijeo | Siemens, Schneider Electric | Probado en ITS, integración ONVIF/Modbus |
| **Videowall** | LED 55" | Samsung, LG, Sony | Operación continua 24/7, bajo consumo |
| **UPS** | 100 kVA | APC, Eaton, Vertiv | Alta disponibilidad, N+1 |
| **Generador** | 300 kW diésel | Caterpillar, Cummins | Robusto, autonomía 48h |

### 10.2 Interoperabilidad

- **Con ANI:** Compatible con SIINCO (API REST, JSON según especificaciones ANI)
- **Con Interventoría:** Acceso web de solo lectura a dashboards
- **Entre subsistemas:** Protocolos estándar (ONVIF, Modbus, SNMP, API REST)

---

## 11. ANÁLISIS DE ALTERNATIVAS

### 11.1 Alternativa 1: CCO Modular Prefabricado (Contenedores)

**Descripción:** CCO construido con contenedores modulares prefabricados (Tipo Data Center Modular)

**Ventajas:**
- Instalación rápida (3-6 meses)
- Costo inicial menor
- Relocatable (si necesario)

**Desventajas:**
- Menor espacio para crecimiento
- Percepción de "provisional"
- Menor confort para personal (25 años)

**Costo estimado:** $800,000 - $1,000,000 USD

---

### 11.2 Alternativa 2: CCO de Obra Civil Tradicional ⭐ **RECOMENDADA**

**Descripción:** Edificio de obra civil tradicional diseñado específicamente para CCO

**Ventajas:**
- ✅ **Diseño a medida** (optimizado para operación 24/7)
- ✅ **Confort de personal** (25 años de operación)
- ✅ **Expansibilidad** (fácil ampliar en futuro)
- ✅ **Mejor aislamiento** térmico y acústico
- ✅ **Reversión a ANI** en mejores condiciones

**Desventajas:**
- Mayor tiempo de construcción (12-18 meses)
- Costo inicial mayor

**Costo estimado:** $1,200,000 - $1,500,000 USD

**Justificación de selección:**
- Operación de 25 años justifica inversión inicial mayor
- Mejor condiciones laborales para personal
- Edificio puede tener usos adicionales (oficinas administrativas)
- Reversión en mejores condiciones a ANI

---

## 12. PLAN DE IMPLEMENTACIÓN

### 12.1 Fases de Implementación

| Fase | Actividad | Duración | Dependencias | Entregable |
|:-----|:----------|:---------|:-------------|:-----------|
| **Fase 1** | Diseño Arquitectónico y Estructural | 3 meses | T03 aprobado, predio disponible | Planos arquitectónicos, T04 |
| **Fase 2** | Construcción del Edificio | 12 meses | Diseño aprobado, licencia construcción | Edificio terminado |
| **Fase 3** | Adquisición de Equipos (IT/SCADA) | 6 meses | T04 completado, licitación | Equipos en sitio |
| **Fase 4** | Instalación de Equipos | 3 meses | Edificio terminado, equipos disponibles | CCO equipado |
| **Fase 5** | Integración de Sistemas | 2 meses | Instalación completa, fibra operativa | Sistemas integrados |
| **Fase 6** | Pruebas y Comisionamiento | 2 meses | Integración completa | Pruebas FAT/SAT aprobadas |
| **Fase 7** | Capacitación y Puesta en Marcha | 1 mes | Pruebas aprobadas | CCO operativo |

**Duración total:** 23 meses (con overlapping)

**Ruta crítica:** Construcción del edificio (12 meses)

### 12.2 Hitos Críticos

- **H1:** Predio adquirido y diseño aprobado - Mes 3
- **H2:** Inicio de construcción del edificio - Mes 4
- **H3:** Licitación de equipos adjudicada - Mes 9
- **H4:** Edificio terminado (shell & core) - Mes 16
- **H5:** Equipos instalados y energizados - Mes 19
- **H6:** Sistemas integrados y probados - Mes 21
- **H7:** CCO en operación - Mes 23

---

## 13. ESTIMACIÓN DE RECURSOS

### 13.1 Infraestructura Civil

| Ítem | Costo (USD) |
|:-----|:------------|
| Edificio CCO (500 m², obra civil) | $600,000 |
| Climatización (sala control + servidores) | $80,000 |
| Sistema contra incendios | $40,000 |
| Perímetro y seguridad física | $60,000 |
| Mobiliario (puestos operador, oficinas) | $70,000 |
| **SUBTOTAL CIVIL** | **$850,000** |

### 13.2 Equipos IT y SCADA

| Ítem | Costo (USD) |
|:-----|:------------|
| Servidores (5 NVR + 2 SCADA) | $175,000 |
| Almacenamiento SAN (100 TB) | $120,000 |
| Switches Core (4x 10 Gbps) | $80,000 |
| Routers WAN (2x) | $20,000 |
| Firewalls (2x) | $30,000 |
| VMS Milestone XProtect (120 cámaras) | $150,000 |
| SCADA (WinCC o similar) | $120,000 |
| Videowall (16-32 pantallas LED 55") | $180,000 |
| Puestos de operación (6-10) | $80,000 |
| UPS (2 x 100 kVA) | $140,000 |
| Generador 300 kW | $120,000 |
| Red interna, cableado estructurado | $50,000 |
| **SUBTOTAL IT/SCADA** | **$1,265,000** |

### 13.3 Instalación e Integración

| Ítem | Costo (USD) |
|:-----|:------------|
| Instalación de equipos IT | $120,000 |
| Integración de sistemas | $150,000 |
| Cableado y conectividad | $60,000 |
| Pruebas y comisionamiento | $80,000 |
| Capacitación de operadores | $50,000 |
| Gestión de proyecto | $100,000 |
| **SUBTOTAL INSTALACIÓN** | **$560,000** |

### 13.4 CAPEX Total CCO

**TOTAL CAPEX CCO:** $850,000 + $1,265,000 + $560,000 = **$2,675,000 USD**

**Conversión COP (TRM 4,000):** COP 10,700,000,000 (~10.7 mil millones)

---

## 14. PRÓXIMOS PASOS

- [ ] Validar arquitectura con ANI e Interventoría
- [ ] Definir ubicación exacta del CCO (PK, municipio)
- [ ] Adquirir predio para CCO (5,000-8,000 m²)
- [ ] Desarrollar diseño arquitectónico detallado (T04 - Arquitectura)
- [ ] Solicitar cotizaciones a proveedores:
  - VMS: Milestone, Genetec
  - SCADA: Siemens, Schneider Electric
  - Servidores: Dell, HP
  - Videowall: Samsung, LG
- [ ] Elaborar especificaciones técnicas detalladas (T04 - Equipos)
- [ ] Estimar costos con cotizaciones reales (T05)
- [ ] Obtener licencia de construcción
- [ ] Iniciar diseño eléctrico y HVAC

---

## 15. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 17/10/2025 | Administrador Contractual EPC | Arquitectura conceptual inicial del CCO |
| **v1.1** | 22/10/2025 | Administrador Contractual EPC | **Revisión con información oficial:** Ubicación La Lizama PK 4+300, conexión RN 4513, sistemas actualizados |

---

**Versión:** 1.1 ✅ **REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**  
**Estado:** ✅ Arquitectura Conceptual Definida + Ubicación Oficial  
**Fecha:** 22/10/2025  
**Responsable:** Arquitecto de Sistemas / Ingeniero de Sistemas  
**Próximo documento:** T04 - Especificaciones Técnicas del CCO  

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- Ubicación confirmada: La Lizama PK 4+300 (RN 4513)
- Conexión al proyecto principal documentada
- Longitudes actualizadas: 259.6 km principal + 33.4 km adicionales
- Sistemas integrados actualizados con información oficial
- Metodología PKD lineal aplicada  

---

**Fin del documento - T03 Arquitectura Conceptual CCO**  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*

