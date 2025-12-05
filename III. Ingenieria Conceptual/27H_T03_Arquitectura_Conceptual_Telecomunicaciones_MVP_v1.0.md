# T03: ARQUITECTURA CONCEPTUAL - TELECOMUNICACIONES (MVP)
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 05/12/2025  
**Sistema:** Telecomunicaciones (Fibra Óptica, Red de Datos, Radio, VoIP)  
**Responsable:** Ingeniero de Telecomunicaciones / Arquitecto de Redes  
**Versión:** 1.0 MVP  
**Referencia Base:** 55_T03_Arquitectura_Conceptual_Telecomunicaciones_v1.0.md  

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Documento

Este documento define la **arquitectura conceptual** del Sistema de Telecomunicaciones para el proyecto APP Puerto Salgar - Barrancabermeja. Este sistema es el **BACKBONE CRÍTICO** que interconecta TODOS los sistemas digitales del corredor.

Establece:
- Topología de red de fibra óptica (anillo redundante)
- Arquitectura de red de datos (jerarquía de switches)
- Sistema de radio troncalizado (OPCIONAL)
- Telefonía IP (VoIP)
- Enlaces de respaldo
- Sistema de gestión de red

### 1.2 Alcance

Esta arquitectura cubre el **sistema completo de telecomunicaciones** a lo largo de 293 km:

**Componentes del sistema:**
1. Red Troncal de Fibra Óptica: 322 km (12-24 hilos) en topología de anillo
2. Canalizaciones y Ductos: 322 km subterráneos
3. Red de Datos IP: Arquitectura jerárquica de 3 niveles
   - Core (CCO): 4 switches 10 Gbps
   - Agregación (7 nodos): 7 switches 10 Gbps
   - Acceso (campo): 40-50 switches 1 Gbps PoE
4. Sistema de Radio Troncalizado: 3-4 bases (OPCIONAL)
5. Telefonía IP (VoIP): 88 postes SOS + 60 teléfonos internos
6. Enlaces de Respaldo: Microondas, 4G/5G
7. Sistema de Gestión de Red (NMS): Monitoreo SNMP centralizado en CCO La Lizama

**Ancho de banda total:** 250 Mbps (operación normal), dimensionado para 10 Gbps

### 1.3 Referencias

- [T01 MVP - Ficha Sistema Telecomunicaciones](27H_T01_Ficha_Sistema_Telecomunicaciones_MVP_v1.0.md)
- [T02 MVP - Análisis de Requisitos](27H_T02_Analisis_Requisitos_Telecomunicaciones_MVP_v1.0.md)
- [T03 Base - Arquitectura](55_T03_Arquitectura_Conceptual_Telecomunicaciones_v1.0.md)

---

## 2. ARQUITECTURA DE ALTO NIVEL

### 2.1 Diagrama de Arquitectura del Sistema

```
┌──────────────────────────────────────────────────────────────────────┐
│        TOPOLOGÍA DE ANILLO REDUNDANTE - 322 km Fibra Óptica         │
│                   (7 Nodos Principales del Anillo)                   │
│                                                                      │
│  PK 0 ────► PK 9.2 ────► PK 130 ────► PK 180 ────► PK 259.6        │
│ (Inicio)  (Zambito)    (CCO Núcleo)  (Pto Berrío)    (Fin)         │
│   [SW]      [SW]          [CORE]        [SW]          [SW]          │
│   Agr.1    Agr.2 ⭐       4x10G        Agr.4         Agr.5          │
│     │        │              │            │             │            │
│     └────────┴──────────────┴────────────┴─────────────┘            │
│              ANILLO DE RESPALDO (Sentido Antihorario)               │
│                  Protección ante corte de fibra                     │
│                                                                      │
│  ⭐ Peaje + Área de Servicio INTEGRADOS (comparten switch)          │
│                                                                      │
│  CCO ubicado en La Lizama PK 4+300 (RN 4513)                        │
└──────────────────────────────────────────────────────────────────────┘

EQUIPOS CONECTADOS AL ANILLO:
├─ ITS: CCTV (30), PMV (28), WIM (1), SOS (88), ETD/RADAR (15), Meteo (3), Gálibos (8)
├─ Peajes: 2 estaciones (Zambito PK 9.2, Aguas Negras PK 80)
├─ Áreas de Servicio: 2 - INTEGRADAS a peajes
├─ CCO: Núcleo central (switches core 4× 10 Gbps) - La Lizama PK 4+300
├─ Emergencias: Bases operativas
├─ Radio: OPCIONAL - Sujeto a validación cobertura celular
└─ Gestión: Oficinas administrativas (CCO)

TOTAL SWITCHES:
- Core (CCO): 4 switches 10 Gbps
- Agregación (anillo): 7 switches 10 Gbps
- Acceso (campo ITS): 40-50 switches 1 Gbps PoE
TOTAL: 51-61 switches
```

### 2.2 Descripción de Componentes

| Componente | Función | Especificación | Cantidad |
|:-----------|:--------|:---------------|:---------|
| **Fibra Óptica Monomodo** | Backbone comunicaciones | G.652.D, 12-24 hilos | 322 km |
| **Ductos PVC/HDPE** | Protección de fibra | 4-6 ductos Ø110mm | 322 km |
| **Cámaras de Inspección** | Acceso a ductos | Concreto 1x1m | 600-900 |
| **ODF** | Terminación de fibra | 12-48 puertos | 30-50 |
| **Switches de Campo** | Conexión equipos ITS | Gigabit PoE, 24p, L2/L3 | 40-50 |
| **Switches de Agregación** | Agregación de tráfico | 10 Gbps, L3, redundante | 7 |
| **Switches Core (CCO)** | Núcleo de red | 10 Gbps, stacking, 48p | 4 |
| **Routers WAN** | Conectividad Internet/ANI | Gigabit, redundante | 2 |
| **Radio Bases** | Comunicaciones voz | UHF/VHF, troncalizado | 3-4 (OPCIONAL) |
| **Radios Móviles** | Vehículos emergencia | Portátiles, 5W | 20-30 (OPCIONAL) |
| **PBX IP** | Telefonía VoIP | SIP, 150 extensiones | 1 |
| **Teléfonos IP** | Comunicaciones | SIP, PoE | 148 |
| **Enlaces Microondas** | Respaldo de fibra | 1-2 Gbps | 2-4 |

---

## 3. TOPOLOGÍA DEL SISTEMA

### 3.1 Topología de Red de Fibra Óptica

- **Tipo:** Anillo redundante (Ring) con derivaciones en estrella
- **Protocolo:** Ethernet sobre fibra (1000Base-LX, 10GBase-LR)
- **Segmentación:** VLANs por sistema
- **Redundancia:** Anillo bidireccional (horario + antihorario)
- **Protección:** Automatic Protection Switching (APS) en < 50 ms

### 3.2 Diagrama de Topología Detallada

```
                    ANILLO PRINCIPAL FIBRA ÓPTICA
                          (322 km, 24 hilos)
                                  
    PK 0 ────► PK 9.2 ────► PK 130 ────► PK 180 ────► PK 259.6
  (Inicio)   (Zambito)   (CCO Núcleo)  (Pto Berrío)    (Fin)
    │           │             │            │             │
  [SW Agr.1] [SW Agr.2]   [SW CORE]   [SW Agr.4]   [SW Agr.5]
   10 Gbps    10 Gbps      4×10 Gbps    10 Gbps      10 Gbps
    │           │             │            │             │
    └───────────┴─────────────┴────────────┴─────────────┘
               ANILLO DE RESPALDO (Antihorario)
              Conmutación automática < 50 ms

CCO ubicado en La Lizama PK 4+300 (RN 4513)
Conexión al anillo principal mediante derivación
```

### 3.3 Distribución de Switches

| Nivel | Tipo | Cantidad | Ubicación | Función |
|:------|:-----|:---------|:----------|:--------|
| **Core** | 10 Gbps, L3 | 4 | CCO La Lizama | Núcleo de red |
| **Agregación** | 10 Gbps, L3 | 7 | 7 nodos del anillo | Agregación regional |
| **Acceso (campo)** | 1 Gbps PoE, L2/L3 | 40-50 | Distribuidos (ITS) | Conectividad equipos |

**TOTAL SWITCHES:** 51-61

---

## 4. FLUJO DE DATOS E INFORMACIÓN

### 4.1 Flujo Completo de Datos

```
┌──────────────────────────────────────────────────────────┐
│ 1. GENERACIÓN (EQUIPOS DE CAMPO)                        │
│    - CCTV: Video 1080p H.265 (6 Mbps/cám)               │
│    - Sensores ITS: Datos JSON/Modbus (kb/s)             │
│    - Peajes: Transacciones SQL (kb/s)                    │
│    - VoIP: Llamadas SOS (64 kbps/llamada)               │
└──────────────┬───────────────────────────────────────────┘
               ▼
┌──────────────────────────────────────────────────────────┐
│ 2. AGREGACIÓN LOCAL (SWITCHES DE CAMPO)                 │
│    - Switch PoE alimenta y conecta equipos               │
│    - Uplink a switch de agregación vía fibra (1 Gbps)   │
└──────────────┬───────────────────────────────────────────┘
               ▼
┌──────────────────────────────────────────────────────────┐
│ 3. AGREGACIÓN ZONAL (SWITCHES DE AGREGACIÓN)            │
│    - Consolida tráfico de 5-10 switches de campo        │
│    - Enrutamiento inter-VLAN (L3)                        │
│    - Uplink a CCO vía anillo (10 Gbps)                  │
└──────────────┬───────────────────────────────────────────┘
               ▼
┌──────────────────────────────────────────────────────────┐
│ 4. NÚCLEO (SWITCHES CORE EN CCO)                        │
│    - Recepción de tráfico de todo el corredor           │
│    - Enrutamiento a servidores (NVR, SCADA, BD)         │
│    - Enrutamiento a ANI (firewall, router WAN)          │
│    - QoS: Priorización (video, VoIP, datos)             │
└──────────────┬───────────────────────────────────────────┘
               ▼
┌──────────────────────────────────────────────────────────┐
│ 5. SERVIDORES Y ALMACENAMIENTO (CCO)                    │
│    - NVR graba video                                     │
│    - SCADA procesa datos de sensores                     │
│    - BD almacena eventos, transacciones                  │
└──────────────┬───────────────────────────────────────────┘
               ▼
┌──────────────────────────────────────────────────────────┐
│ 6. TRANSMISIÓN A ANI (INTERNET/VPN)                     │
│    - Router WAN + Firewall                               │
│    - Enlace primario 20 Mbps + Respaldo 4G              │
│    - VPN IPsec a servidores ANI                          │
└──────────────────────────────────────────────────────────┘
```

### 4.2 Ancho de Banda por Sistema

| Sistema | Ancho de Banda | % del Total |
|:--------|:---------------|:------------|
| **Video CCTV** (30 cámaras × 6 Mbps) | 180 Mbps | 72% |
| **Datos ITS** (sensores, PMV, etc.) | 20 Mbps | 8% |
| **Peajes** (transacciones, video) | 20 Mbps | 8% |
| **VoIP** (SOS, telefonía) | 10 Mbps | 4% |
| **Gestión y Administración** | 10 Mbps | 4% |
| **Margen de seguridad** (overhead) | 10 Mbps | 4% |
| **TOTAL** | **250 Mbps** | 100% |

**Dimensionamiento:** Red de 10 Gbps (40x el tráfico pico) para crecimiento futuro

---

## 5. REDUNDANCIA Y DISPONIBILIDAD

### 5.1 Estrategia de Redundancia

| Componente | Tipo de Redundancia | Configuración | Justificación |
|:-----------|:--------------------|:--------------|:--------------|
| **Fibra Óptica** | Anillo bidireccional | Horario + antihorario | Protección ante corte, conmutación < 50 ms |
| **Switches Core** | Stacking | 4 switches activo-activo | Alta disponibilidad núcleo |
| **Switches Agregación** | Dual-homing | 2 uplinks a CCO | Protección ante falla enlace |
| **Enlaces a ANI** | Activo-Pasivo | Fibra + 4G respaldo | Transmisión continua |
| **Radio Bases** | Cobertura superpuesta | 2-4 bases (si aplica) | Sin zonas muertas |
| **Energía** | UPS distribuidos | 30 UPS de 3-5 kVA | Operación ante corte |

### 5.2 SLA (Service Level Agreement)

- **Disponibilidad de red troncal:** ≥ 99.5% anual
- **MTBF (Fibra óptica):** ≥ 50,000 horas
- **MTTR (Reparación de fibra):** < 4 horas
- **RTO (Recovery Time Objective):** < 1 hora
- **RPO (Recovery Point Objective):** 0 minutos
- **Latencia extremo a extremo:** < 50 ms
- **Pérdida de paquetes:** < 0.1%

---

## 6. SEGURIDAD

### 6.1 Seguridad Física

- **Ductos subterráneos:** 80 cm profundidad
- **Cinta de advertencia:** 30 cm sobre ductos
- **Cámaras de inspección:** Tapas con cerradura
- **Gabinetes switches campo:** IP66, cerradura
- **Sala telecomunicaciones (CCO):** Acceso controlado, climatizada

### 6.2 Seguridad Lógica / Ciberseguridad

- **Firewall perimetral:** Protección red interna vs Internet
- **Segmentación (VLANs):** Aislamiento de tráfico por sistema
- **ACLs:** Control de acceso entre VLANs
- **Autenticación 802.1X:** Control de acceso a red
- **Cifrado:** VPN IPsec para enlaces a ANI
- **SNMP v3:** Autenticación y cifrado en monitoreo
- **Logs centralizados:** Syslog server para auditoría

### 6.3 Normativa de Seguridad

| Norma | Aplicación |
|:------|:-----------|
| **ISO 27001** | Gestión de seguridad de la información |
| **UIT-T X.800** | Arquitectura de seguridad para sistemas OSI |
| **IEC 62443** | Ciberseguridad en redes industriales |
| **TIA-942** | Seguridad en Data Centers |

---

## 7. ARQUITECTURA DE RADIO TRONCALIZADO (OPCIONAL)

### 7.1 Topología de Radio

```
┌────────────────────────────────────────────────────────┐
│          SISTEMA DE RADIO TRONCALIZADO (OPCIONAL)      │
│                                                        │
│  Radio Base 1 ────┐                ┌──── Radio Base 3 │
│  (CCO La Lizama)  │                │    (Pto Berrío)  │
│  Cobertura:       │  Central PBX   │    Cobertura:    │
│  PK 80-180        │  (IP/Radio)    │    PK 150-250    │
│                   │  en CCO        │                  │
│  Radio Base 2 ────┘                └──── Radio Base 4 │
│  (Peaje AG,PK 80)                       (San Roque)   │
│  Cobertura:                             PK 230-260    │
│  PK 20-140                                            │
│                                                        │
│  COBERTURA TOTAL: 100% del corredor (293 km)          │
└────────────────────────────────────────────────────────┘

Usuarios de radio:
├─ Vehículos de emergencia (TAM, grúas): 10 radios
├─ Patrullas de inspección: 6 radios
├─ Vehículos de mantenimiento: 8 radios
├─ Personal de bases operativas: 6 radios
└─ TOTAL: 30 radios móviles

NOTA: Sistema marcado como OPCIONAL
Decisión sujeta a validación de cobertura celular 4G/5G
Si cobertura es suficiente: Eliminar radio (-$99,000 USD)
```

### 7.2 Integración Radio - VoIP

- Radio bases conectadas a PBX en CCO (RoIP - Radio over IP)
- Operadores CCO pueden comunicarse con personal de campo
- Grabación de comunicaciones de radio (auditoría)
- Licencia de operación de radio (MinTIC) - si aplica

---

## 8. INTEGRACIÓN CON OTROS SISTEMAS

| Sistema | Interface | Protocolo | Datos | Ancho de Banda |
|:--------|:----------|:----------|:------|:---------------|
| **ITS** | IF-TC-001 | Ethernet/IP, Fibra | Video, datos sensores | 200 Mbps |
| **CCO** | IF-TC-002 | 10 Gbps, Fibra | Todo el tráfico | 250 Mbps |
| **Peajes** | IF-TC-003 | Ethernet/IP, Fibra | Recaudos, video | 20 Mbps |
| **Emergencias** | IF-TC-004 | Radio, VoIP, Fibra | Voz, despacho | 10 Mbps |
| **Energía** | IF-TC-005 | Modbus TCP, Fibra | SCADA, alarmas | 1 Mbps |
| **ANI** | IF-TC-006 | HTTPS, VPN, Internet | Datos SIINCO | 10-20 Mbps |

**Sistema de Telecomunicaciones es CRÍTICO:** Sin telecomunicaciones, ningún sistema digital opera.

---

## 9. ESCALABILIDAD

### 9.1 Dimensionamiento Actual vs Futuro

| Parámetro | Año 1 | Año 10 | Año 25 | Capacidad Diseñada |
|:----------|:------|:-------|:-------|:-------------------|
| **Ancho de banda troncal** | 250 Mbps | 500 Mbps | 1 Gbps | 10 Gbps (+900%) |
| **Equipos conectados** | 200 | 250 | 300 | 400 (+33%) |
| **Puertos utilizados** | 70% | 85% | 95% | Ampliación año 20 |
| **Hilos de fibra utilizados** | 8/24 | 12/24 | 18/24 | 24 hilos (33% reserva) |

### 9.2 Estrategia de Crecimiento

**Sin cambios en arquitectura (hasta año 20):**
- Utilizar hilos de fibra de reserva (16 hilos disponibles)
- Agregar switches de campo (hasta 100 total)
- Ampliar switches core (agregando módulos)

**Con cambios menores (año 20-25):**
- Reemplazo de switches por modelos 25/40 Gbps
- Actualización de tecnología de fibra (si disponible)

---

## 10. TECNOLOGÍA Y ESTÁNDARES

### 10.1 Tecnologías Seleccionadas

| Categoría | Tecnología | Estándar | Justificación |
|:----------|:-----------|:---------|:--------------|
| **Fibra Óptica** | Monomodo G.652.D | UIT-T G.652 | Estándar universal, baja atenuación |
| **Conectores Fibra** | SC/APC o LC/APC | IEC 61754 | Baja pérdida de retorno |
| **Ethernet** | Gigabit/10 Gigabit | IEEE 802.3 | Estándar universal |
| **VLANs** | 802.1Q | IEEE 802.1Q | Segmentación estándar |
| **VoIP** | SIP/RTP | RFC 3261 | Estándar abierto |
| **Radio** | UHF/VHF Troncalizado | P.25 o TETRA | Estándar profesional (si aplica) |
| **Gestión** | SNMP v3 | RFC 3411-3418 | Monitoreo estándar |

### 10.2 Interoperabilidad

- **Multi-vendor:** Arquitectura basada en estándares abiertos
- **Con ANI:** Compatible con requisitos de SIINCO
- **Futuro:** Preparado para tecnologías emergentes (400G, 5G, IoT)

---

## 11. ESTIMACIÓN DE RECURSOS

### 11.1 CAPEX Total

| Categoría | Costo (USD) |
|:----------|:------------|
| Infraestructura Pasiva (ductos, fibra) | $4,517,500 |
| Equipos Activos (switches, radio, VoIP) | $711,500 |
| Instalación e Integración | $880,000 |
| Contingencias (10%) | $610,900 |
| **TOTAL CAPEX** | **$6,719,900** |

**Conversión COP (TRM 4,000):** ~$26,880 millones COP

**NOTA:** Sistema de Radio marcado como OPCIONAL (-$99,000 USD si se elimina)

---

## 12. PRÓXIMOS PASOS

- [ ] Validar arquitectura con ANI e Interventoría
- [ ] Realizar estudio de ruta de fibra óptica
- [ ] Validar cobertura celular (decisión sobre radio)
- [ ] Solicitar licencia de radio a MinTIC (si aplica)
- [ ] Validar T04 (Especificaciones Técnicas) existente
- [ ] Validar T05 (Ingeniería de Detalle) existente
- [ ] Solicitar cotizaciones (Fibra, Switches, Radio)
- [ ] Coordinar con construcción vial (ductos)
- [ ] Definir puntos exactos de switches de agregación

---

## 13. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0 MVP** | 05/12/2025 | Administrador Contractual EPC | Arquitectura conceptual MVP siguiendo metodología validada |

---

**Versión:** 1.0 MVP ✅  
**Estado:** ✅ Arquitectura Conceptual MVP Completada  
**Fecha:** 05/12/2025  
**Metodología:** Punto 42 MVP v2.0  
**Próximo paso:** Validar T04 y T05 existentes  

---

**Fin del documento - T03 MVP Arquitectura Conceptual Telecomunicaciones**  
*Metodología Punto 42 MVP v2.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*
