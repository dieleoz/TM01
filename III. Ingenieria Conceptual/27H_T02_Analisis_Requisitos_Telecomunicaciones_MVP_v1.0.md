# T02: ANÁLISIS DE REQUISITOS - TELECOMUNICACIONES (MVP)
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 05/12/2025  
**Sistema:** Telecomunicaciones (Fibra Óptica, Red de Datos, Radio, VoIP)  
**Responsable:** Ingeniero de Telecomunicaciones  
**Versión:** 1.0 MVP  
**Referencia Base:** 48_T02_Analisis_Requisitos_Telecomunicaciones_v1.0.md  

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Documento

Este documento presenta el **análisis detallado de requisitos** del Sistema de Telecomunicaciones para el proyecto APP Puerto Salgar - Barrancabermeja. Este sistema es el **BACKBONE CRÍTICO** que interconecta TODOS los sistemas del corredor.

### 1.2 Alcance

Este análisis cubre el **sistema completo de telecomunicaciones** a lo largo de 293 km:

**Ubicación del CCO:** La Lizama PK 4+300 (RN 4513)

**Componentes del sistema:**
1. Red Troncal de Fibra Óptica: 322 km (293 km + 10% reserva)
2. Red de Datos Ethernet/IP: Switches, routers, firewalls
3. Sistema de Radio Troncalizado (OPCIONAL)
4. Telefonía IP (VoIP): 88 SOS + 60 internos
5. Enlaces de Respaldo: Microondas, 4G/5G
6. Sistema de Gestión de Red (NMS)
7. Canalizaciones y Ductos: 322 km

### 1.3 Definiciones y Acrónimos

| Término | Definición |
|:--------|:-----------|
| **FO** | Fibra Óptica |
| **ODF** | Optical Distribution Frame |
| **OTDR** | Optical Time-Domain Reflectometer |
| **VoIP** | Voice over IP |
| **VLAN** | Virtual Local Area Network |
| **QoS** | Quality of Service |
| **SNMP** | Simple Network Management Protocol |
| **CCO** | Centro de Control Operacional |
| **Mbps** | Megabits por segundo |
| **Gbps** | Gigabits por segundo |

---

## 2. REQUISITOS FUNCIONALES

### RF-001: Red Troncal de Fibra Óptica

**Descripción:** El sistema debe incluir red troncal de fibra óptica a lo largo del corredor  
**Prioridad:** 🔴 CRÍTICA  
**Fuente:** AT2 (implícito en ITS, Peajes, CCO)  

**Criterios de Aceptación:**
- Longitud total: 322 km (293 km + 10% reserva técnica)
- Tipo: Fibra monomodo (UIT-T G.652.D)
- Cantidad de hilos: 12-24 hilos
- Topología: Anillo redundante con 7 nodos principales
- Canalización: Ductos subterráneos PVC/HDPE
- Cámaras de inspección: Cada 300-500 m
- Atenuación máxima: 0.35 dB/km @ 1550 nm
- Conectores: SC/APC o LC/APC

---

### RF-002: Red de Datos IP (Switches y Routers)

**Descripción:** El sistema debe incluir red de datos Ethernet/IP para interconectar todos los equipos  
**Prioridad:** 🔴 CRÍTICA  
**Fuente:** AT2, Secciones 3.3.5.1, 3.3.4, 3.1.7  

**Criterios de Aceptación:**
- **Switches de Campo:** 40-50 switches (conexión equipos ITS, peajes)
- **Switches de Agregación:** 7 switches (7 nodos del anillo)
- **Switches Core:** 4 switches en CCO La Lizama
- **Routers:** 2 routers (conectividad WAN, Internet, ANI)
- Velocidad: 1 Gbps (acceso), 10 Gbps (agregación y core)
- Redundancia: Enlaces duales en puntos críticos
- VLANs: Segmentación de tráfico (ITS, Peajes, Gestión, ANI)
- QoS: Priorización de tráfico crítico (video, VoIP)

---

### RF-003: Sistema de Radio Troncalizado (OPCIONAL)

**Descripción:** El sistema debe incluir radio troncalizado para comunicaciones de voz en emergencias  
**Prioridad:** 🟡 Alta (OPCIONAL - sujeto a validación cobertura celular)  
**Fuente:** AT2, Sección 3.3.3 (Emergencias)  

**Criterios de Aceptación:**
- 3-4 radio bases (CCO La Lizama + bases de emergencia)
- Frecuencia: Banda asignada por MinTIC
- Cobertura: 100% del corredor (293 km)
- 20-30 radios móviles (vehículos emergencia, patrullas)
- Licencia de operación vigente (MinTIC)
- Encriptación de comunicaciones

**NOTA:** Marcado como OPCIONAL. Si cobertura celular 4G/5G es suficiente, puede eliminarse (-$99,000 USD).

---

### RF-004: Telefonía IP (VoIP)

**Descripción:** El sistema debe incluir telefonía IP para comunicaciones internas y teléfonos SOS  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 3.3.5.1 (Teléfonos SOS)  

**Criterios de Aceptación:**
- Central telefónica IP (PBX) en CCO La Lizama
- Teléfonos SOS de emergencia (88 unidades)
- Teléfonos IP internos (60 unidades en CCO, peajes, bases)
- Conexión directa SOS → CCO en < 30 segundos
- Grabación de llamadas SOS (evidencia)
- Geolocalización automática de teléfono SOS

---

### RF-005: Conectividad con ANI

**Descripción:** El sistema debe proporcionar conectividad con sistemas de la ANI (SIINCO, ANIscopio)  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 3.3.5.1  

**Criterios de Aceptación:**
- Enlace de Internet dedicado (10-20 Mbps)
- VPN segura CCO ↔ ANI
- Transmisión en tiempo real de datos ITS, peajes, pesaje
- Almacenamiento local si hay falla (retransmisión en máximo 3 días)
- Redundancia (enlace primario + respaldo)

---

### RF-006: Enlaces de Respaldo (Redundancia)

**Descripción:** El sistema debe incluir enlaces de respaldo para garantizar disponibilidad ≥99.5%  
**Prioridad:** 🔴 Alta  
**Fuente:** Disponibilidad crítica de sistemas  

**Criterios de Aceptación:**
- Enlaces de microondas en puntos críticos (backup de fibra)
- Enlaces 4G/5G en puntos remotos
- Conmutación automática ante falla de fibra (< 5 segundos)
- Ancho de banda de respaldo: ≥30% del enlace principal

---

### RF-007: Sistema de Gestión de Red

**Descripción:** El sistema debe incluir SCADA/NMS para monitoreo y gestión de la red  
**Prioridad:** 🟡 Alta  
**Fuente:** AT2, Sección 3.1.7  

**Criterios de Aceptación:**
- Monitoreo SNMP de todos los equipos activos
- Visualización de topología de red
- Alarmas automáticas ante caída de enlace, alta utilización, falla de equipo
- Registro de eventos (syslog)
- Interfaz web para gestión

---

### RF-008: Seguridad de Red

**Descripción:** El sistema debe incluir medidas de seguridad de red  
**Prioridad:** 🔴 Alta  
**Fuente:** ISO 27001; Buenas prácticas  

**Criterios de Aceptación:**
- Firewalls en CCO (perimetral)
- Segmentación de red (VLANs)
- Autenticación de usuarios (RADIUS, AAA)
- Cifrado de datos sensibles (VPN, TLS)
- Control de acceso por roles

---

### RF-009: Canalizaciones y Protección Física

**Descripción:** El sistema debe proteger la fibra óptica mediante canalizaciones adecuadas  
**Prioridad:** 🔴 Alta  
**Fuente:** Protección de infraestructura  

**Criterios de Aceptación:**
- Ductos PVC o HDPE (4-6 ductos por tramo)
- Cámaras de inspección cada 300-500 m
- Profundidad mínima: 80 cm (bajo calzada), 60 cm (berma)
- Señalización de presencia de fibra (cinta de advertencia)
- Registro de as-built (ubicación exacta)

---

## 3. REQUISITOS NO FUNCIONALES

### 3.1 Requisitos de Disponibilidad

| ID | Requisito | Valor Mínimo | Fuente |
|:---|:----------|:-------------|:-------|
| **RNF-001** | Disponibilidad de red troncal | ≥ 99.5% anual | Crítico para todos los sistemas |
| **RNF-002** | Disponibilidad de enlaces críticos | ≥ 99.9% (con redundancia) | CCO, Peajes |
| **RNF-003** | MTTR (Tiempo Medio de Reparación) | < 4 horas | Reparación rápida |

---

### 3.2 Requisitos de Performance

| ID | Requisito | Valor | Fuente |
|:---|:----------|:------|:-------|
| **RNF-004** | Ancho de banda troncal | 10 Gbps | Tráfico de video CCTV |
| **RNF-005** | Latencia extremo a extremo | < 50 ms | Tiempo real |
| **RNF-006** | Pérdida de paquetes | < 0.1% | Calidad de servicio |
| **RNF-007** | Jitter (VoIP) | < 30 ms | Calidad de voz |

---

### 3.3 Requisitos de Seguridad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-008** | Cifrado de datos | TLS 1.2 mínimo, VPN IPsec | ISO 27001 |
| **RNF-009** | Autenticación | RADIUS, control de acceso por roles | Seguridad |
| **RNF-010** | Firewall | Perimetral en CCO | Protección |
| **RNF-011** | Segmentación (VLANs) | Tráfico separado por sistema | Seguridad |

---

### 3.4 Requisitos de Escalabilidad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-012** | Capacidad de crecimiento | +50% ancho de banda sin cambios | Buenas prácticas |
| **RNF-013** | Puertos disponibles | 30% libres en switches | Expansión |

---

## 4. REQUISITOS DE INTERFACES

### 4.1 Interface Telecomunicaciones ↔ Todos los Sistemas

**ID:** RI-001  
**Sistemas:** Telecomunicaciones ↔ ITS, Peajes, CCO, Emergencias, etc.  
**Tipo:** Backbone (Fibra Óptica + Ethernet)  
**Protocolo:** Ethernet, IP  
**Datos Intercambiados:** TODOS los datos del corredor  
**Frecuencia:** Continuo 24/7  

**Ancho de banda total estimado:**
- Video CCTV: 180 Mbps (30 cámaras × 6 Mbps)
- Datos ITS: 10-20 Mbps
- Peajes: 20-30 Mbps
- VoIP: 5-10 Mbps
- **Total:** ~250 Mbps (operación normal), 10 Gbps dimensionado

---

## 5. MATRIZ DE TRAZABILIDAD

| Requisito ID | Tipo | Descripción Resumida | Fuente | Prioridad |
|:-------------|:-----|:---------------------|:-------|:----------|
| **RF-001** | Funcional | Red de fibra óptica 322 km | AT2 (implícito) | 🔴 CRÍTICA |
| **RF-002** | Funcional | Red de datos IP | AT2 | 🔴 CRÍTICA |
| **RF-003** | Funcional | Radio troncalizado (OPCIONAL) | AT2, 3.3.3 | 🟡 Alta |
| **RF-004** | Funcional | Telefonía IP (VoIP) | AT2, 3.3.5.1 | 🔴 Alta |
| **RF-005** | Funcional | Conectividad con ANI | AT2, 3.3.5.1 | 🔴 Alta |
| **RF-006** | Funcional | Enlaces de respaldo | Disponibilidad | 🔴 Alta |
| **RF-007** | Funcional | Sistema gestión de red | AT2, 3.1.7 | 🟡 Alta |
| **RF-008** | Funcional | Seguridad de red | ISO 27001 | 🔴 Alta |
| **RF-009** | Funcional | Canalizaciones | Protección | 🔴 Alta |
| **RNF-001** | Disponibilidad | ≥ 99.5% anual | Crítico | 🔴 CRÍTICA |
| **RNF-004** | Performance | 10 Gbps ancho de banda | Video CCTV | 🔴 Alta |
| **RNF-008** | Seguridad | Cifrado TLS/VPN | ISO 27001 | 🔴 Alta |

**Total requisitos identificados:** 22 (9 funcionales + 13 no funcionales)

---

## 6. CASOS DE USO

### 6.1 CU-001: Transmisión de Video CCTV a CCO

**Actor:** Sistema CCTV + Red de Telecomunicaciones  
**Descripción:** Transmisión continua de video desde cámaras al CCO  

**Flujo Normal:**
1. Cámara CCTV captura video (1080p, 25 fps, H.265)
2. Video se transmite por fibra óptica (6 Mbps por cámara)
3. Switches transportan tráfico hasta CCO
4. Video llega a servidores NVR en CCO
5. Operador visualiza video en videowall (latencia < 500 ms)

**Postcondiciones:** Video disponible en tiempo real

---

### 6.2 CU-002: Llamada de Emergencia desde Teléfono SOS

**Actor:** Usuario + Sistema VoIP  
**Descripción:** Usuario llama desde SOS y se conecta con CCO  

**Flujo Normal:**
1. Usuario presiona botón SOS
2. Teléfono VoIP establece conexión con PBX en CCO
3. PBX identifica ubicación (PK) del teléfono
4. PBX conecta con operador de turno (< 30 segundos)
5. Llamada transmitida por fibra óptica
6. Operador atiende emergencia

**Postcondiciones:** Usuario conectado con CCO, emergencia atendida

---

### 6.3 CU-003: Conmutación Automática ante Corte de Fibra

**Actor:** Sistema de Telecomunicaciones  
**Descripción:** Red se recupera automáticamente ante corte de fibra  

**Flujo Normal:**
1. Corte de fibra detectado en PK 100
2. Protocolo de anillo detecta falla (< 50 ms)
3. Tráfico se redirige por sentido antihorario del anillo
4. Servicios continúan sin interrupción
5. Alarma enviada a NMS en CCO
6. Equipo técnico despachado para reparación

**Postcondiciones:** Servicios operativos, reparación programada

---

## 7. CRITERIOS DE ACEPTACIÓN

### 7.1 Criterios Funcionales

- [ ] Red de fibra óptica de 322 km instalada
- [ ] 100% de equipos ITS, peajes, CCO conectados
- [ ] Sistema de radio operativo (si aplica) con cobertura 100%
- [ ] Telefonía VoIP funcional (88 SOS + 60 internos)
- [ ] Conectividad con ANI operativa
- [ ] Enlaces de respaldo configurados

### 7.2 Criterios de Performance

- [ ] Disponibilidad ≥ 99.5% anual
- [ ] Ancho de banda troncal: 10 Gbps
- [ ] Latencia < 50 ms
- [ ] Pérdida de paquetes < 0.1%

### 7.3 Criterios de Calidad

- [ ] Fibra óptica cumple UIT-T G.652.D
- [ ] Switches cumplen IEEE 802.3
- [ ] Pruebas OTDR de fibra aprobadas
- [ ] Certificación de cableado estructurado (TIA-568)

---

## 8. RESTRICCIONES Y SUPUESTOS

### 8.1 Restricciones

| ID | Restricción | Impacto | Origen |
|:---|:------------|:--------|:-------|
| **REST-001** | Sin telecomunicaciones, NINGÚN sistema digital opera | Crítico | Lógica |
| **REST-002** | Disponibilidad ≥99.5% obligatoria | Alto | AT2, AT4 |
| **REST-003** | Transmisión en tiempo real obligatoria | Alto | AT2 |

---

### 8.2 Supuestos

| ID | Supuesto | Riesgo | Validación |
|:---|:---------|:-------|:-----------|
| **SUP-001** | Permisos de instalación de fibra otorgados | Alto | Gestionar con INVIAS/ANI |
| **SUP-002** | Frecuencias de radio asignadas por MinTIC (si aplica) | Medio | Solicitar licencia |
| **SUP-003** | Cobertura celular 4G/5G suficiente (alternativa a radio) | Medio | Estudio de cobertura |

---

## 9. DEPENDENCIAS

| Sistema | Criticidad | Estado |
|:--------|:-----------|:-------|
| **Todos los sistemas digitales** | 🔴 CRÍTICA | Dependen de telecomunicaciones |
| **Energía Eléctrica** | 🔴 CRÍTICA | Para alimentar equipos |
| **Gestión Predial** | 🔴 Alta | Para servidumbres |
| **Obras Civiles** | 🔴 Alta | Para canalización |

---

## 10. PRÓXIMOS PASOS

- [ ] Desarrollar arquitectura de red (T03 MVP)
- [ ] Validar T04 (Especificaciones Técnicas) existente
- [ ] Validar T05 (Ingeniería de Detalle) existente
- [ ] Realizar estudio de ruta de fibra óptica
- [ ] Validar cobertura celular (decisión sobre radio)
- [ ] Solicitar licencia de radio a MinTIC (si aplica)
- [ ] Solicitar cotizaciones (Fibra, Switches, Radio)

---

## 11. REFERENCIAS

### Documentos Contractuales:
- [AT2 - Operación y Mantenimiento](../II.%20Apendices%20Tecnicos/AT2_Operacion_Mantenimiento_v1.0.md)

### Documentos del Proyecto:
- [T01 MVP - Ficha Sistema Telecomunicaciones](27H_T01_Ficha_Sistema_Telecomunicaciones_MVP_v1.0.md)
- [T02 Base - Análisis Requisitos](48_T02_Analisis_Requisitos_Telecomunicaciones_v1.0.md)
- [T03 Base - Arquitectura](55_T03_Arquitectura_Conceptual_Telecomunicaciones_v1.0.md)

### Normativa:
- UIT-T G.652 - Fibra Óptica Monomodo
- TIA-568 - Cableado Estructurado
- IEEE 802.3 - Ethernet
- ISO 27001 - Seguridad de la Información

---

## 12. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0 MVP** | 05/12/2025 | Administrador Contractual EPC | Análisis de requisitos MVP siguiendo metodología validada |

---

**Versión:** 1.0 MVP ✅  
**Estado:** ✅ Análisis de Requisitos MVP Completado  
**Fecha:** 05/12/2025  
**Metodología:** Punto 42 MVP v2.0  
**Próximo documento:** T03 MVP - Arquitectura Conceptual Telecomunicaciones  

---

**Fin del documento - T02 MVP Análisis de Requisitos Telecomunicaciones**  
*Metodología Punto 42 MVP v2.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*
