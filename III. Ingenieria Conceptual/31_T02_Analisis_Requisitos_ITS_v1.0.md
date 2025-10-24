# T02: ANÁLISIS DE REQUISITOS - SISTEMA ITS
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 16/10/2025  
**Sistema:** ITS - Intelligent Transportation Systems  
**Responsable:** Ingeniero de Sistemas ITS  
**Versión:** 1.0  

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Documento

Este documento presenta el **análisis detallado de requisitos** del Sistema ITS (Intelligent Transportation Systems) para el proyecto APP Puerto Salgar - Barrancabermeja, cubriendo:

- Requisitos funcionales (qué debe hacer el sistema)
- Requisitos no funcionales (cómo debe hacerlo)
- Requisitos de interfaces con otros sistemas
- Criterios de aceptación
- Casos de uso principales
- Matriz de trazabilidad contractual

### 1.2 Alcance

Este análisis cubre los **10 subsistemas del ITS** a lo largo de 259.6 km principales + 33.4 km adicionales:

**Ubicación del CCO:** La Lizama PK 4+300 (RN 4513) - Centro de control del corredor

1. Paneles de Mensaje Variable (PMV) - 28 unidades
2. CCTV (Circuito Cerrado de TV) - 30 cámaras
3. Estaciones de Pesaje en Movimiento (WIM) - 1 estación bidireccional
4. Estaciones Meteorológicas - 3 estaciones
5. Teléfonos de Emergencia (SOS) - 88 postes
6. ETD/RADAR (Estaciones de Detección de Tráfico/Radares) - 16 unidades
7. Estaciones de Aforo Vehicular - 10-15 estaciones
8. Radares de Velocidad - 11 unidades
9. Detectores de Altura (Gálibos) - 8 unidades
10. Sensores de Pista/Carril - Por definir

### 1.3 Definiciones y Acrónimos

| Término | Definición |
|:--------|:-----------|
| **ITS** | Intelligent Transportation Systems (Sistemas Inteligentes de Transporte) |
| **PMV** | Paneles de Mensaje Variable |
| **CCTV** | Closed-Circuit Television (Circuito Cerrado de Televisión) |
| **WIM** | Weigh In Motion (Pesaje en Movimiento) |
| **DAI** | Detector Automático de Incidentes |
| **SOS** | Teléfonos de Emergencia |
| **CCO** | Centro de Control Operacional |
| **SCADA** | Supervisory Control and Data Acquisition |
| **ONVIF** | Open Network Video Interface Forum (protocolo de interoperabilidad de video) |
| **SIINCO** | Sistema de Información de la ANI |
| **TPDA** | Tráfico Promedio Diario Anual |
| **UF** | Unidad Funcional |
| **MTBF** | Mean Time Between Failures (Tiempo Medio Entre Fallas) |
| **MTTR** | Mean Time To Repair (Tiempo Medio de Reparación) |

---

## 2. REQUISITOS FUNCIONALES

### 2.1 Supervisión y Monitoreo de Tráfico

**ID:** RF-001  
**Descripción:** El sistema ITS debe permitir la supervisión en tiempo real del flujo vehicular en todo el corredor (259.6 km principales + 33.4 km adicionales)  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 3.3.5.1  

**Criterios de Aceptación:**
- Video en vivo de 30 cámaras CCTV disponible en CCO La Lizama PK 4+300
- Latencia de video < 500 ms
- Visualización simultánea de al menos 16-32 cámaras en videowall
- Grabación continua 24/7/365
- Retención de video: 30 días mínimo

---

### 2.2 Información Variable a Usuarios

**ID:** RF-002  
**Descripción:** El sistema debe proporcionar información dinámica a los usuarios mediante PMV  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 3.3.5.1; Resolución 546/2018  

**Criterios de Aceptación:**
- PMV alfanuméricos y gráficos
- 28 PMV distribuidos cada 10-20 km + peajes (AT1)
- Control remoto desde CCO La Lizama PK 4+300
- Tiempo de actualización de mensaje < 5 segundos
- Visibilidad de mensajes: >300 metros
- Disponibilidad: 99% anual

**Tipos de mensajes:**
- Condiciones climáticas adversas
- Incidentes/accidentes en la vía
- Tiempos estimados de viaje
- Desvíos y rutas alternas
- Información de peajes
- Mensajes de emergencia

---

### 2.3 Detección de Incidentes y Accidentes

**ID:** RF-003  
**Descripción:** El sistema debe detectar automáticamente incidentes, accidentes y condiciones anormales  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 3.3.5.1  

**Criterios de Aceptación:**
- Detección automática mediante ETD/RADAR (16 unidades)
- Detección de vehículos detenidos
- Detección de tráfico en contraflujo
- Detección de objetos en la vía
- Alarma automática al CCO La Lizama PK 4+300
- Registro inmediato en SICC
- Tasa de detección efectiva ≥ 90%
- Falsos positivos < 10%

---

### 2.4 Control de Velocidad

**ID:** RF-004  
**Descripción:** El sistema debe monitorear la velocidad de vehículos y proporcionar datos a Policía de Carreteras y ANI  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 3.3.5.1  

**Criterios de Aceptación:**
- Medición de velocidad mediante radar (11 unidades)
- Captura fotográfica de matrícula
- Precisión de medición: ±2 km/h
- Registro de fecha, hora, velocidad, foto
- Transmisión a CCO La Lizama PK 4+300 en tiempo real
- Información disponible para Policía y ANI
- Generación de reportes de velocidades promedio

---

### 2.5 Pesaje en Movimiento (WIM)

**ID:** RF-005  
**Descripción:** El sistema debe pesar vehículos en movimiento sin detenerlos  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 3.3.5.1; ASTM E2213  

**Criterios de Aceptación:**
- Pesaje sin detención del vehículo
- Precisión: ±5% para vehículos a velocidad < 80 km/h
- Detección de ejes
- Clasificación vehicular automática
- Alarma si excede peso máximo permitido
- Registro en base de datos
- Transmisión a CCO en tiempo real

---

### 2.6 Monitoreo Meteorológico

**ID:** RF-006  
**Descripción:** El sistema debe monitorear condiciones climáticas en tiempo real  
**Prioridad:** 🟡 Media  
**Fuente:** AT2, Sección 3.3.5.1; Especificaciones IDEAM; Resolución 546/2018  

**Criterios de Aceptación:**
- Medición de precipitación (mm)
- Medición de temperatura (°C)
- Medición de horas de sol
- Medición de evapotranspiración potencial
- Medición de viento (velocidad y dirección)
- Medición de visibilidad
- Frecuencia de medición: cada 5-10 minutos
- Transmisión a CCO en tiempo real
- Activación automática de PMV si condiciones adversas

---

### 2.7 Comunicación de Emergencias (SOS)

**ID:** RF-007  
**Descripción:** El sistema debe permitir a usuarios comunicarse con CCO en caso de emergencia  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 3.3.5.1  

**Criterios de Aceptación:**
- Comunicación bidireccional (voz)
- Conexión directa con CCO (automática)
- Geolocalización automática del teléfono
- Operación 24/7/365
- Tiempo de atención < 30 segundos
- Registro de todas las llamadas (fecha, hora, duración, motivo)
- Disponibilidad: 99% anual

---

### 2.8 Detección de Altura de Vehículos

**ID:** RF-008  
**Descripción:** El sistema debe detectar vehículos con altura excesiva antes de peajes, puentes y túneles  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 3.3.5.1  

**Criterios de Aceptación:**
- Tecnología láser obligatoria
- Ubicación antes de: peajes (ambos sentidos), puentes con restricción, túneles, intercambios a desnivel
- Precisión de medición: ±5 cm
- Alarma visual y sonora si excede altura permitida
- Activación automática de PMV (mensaje de advertencia)
- Notificación a CCO
- Registro del evento

---

### 2.9 Aforo y Clasificación Vehicular

**ID:** RF-009  
**Descripción:** El sistema debe contabilizar y clasificar vehículos según categorías  
**Prioridad:** 🟡 Media  
**Fuente:** AT2, Sección 3.3.5.1  

**Criterios de Aceptación:**
- Conteo continuo 24/7
- Clasificación según categorías oficiales (I a VI)
- Precisión de conteo: ≥ 98%
- Precisión de clasificación: ≥ 95%
- Generación de TPDA
- Reportes horarios, diarios, mensuales
- Comparación con recaudo de peajes

---

### 2.10 Transmisión de Información a ANI

**ID:** RF-010  
**Descripción:** El sistema debe transmitir información a la ANI según sus requerimientos  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 3.3.5.1  

**Criterios de Aceptación:**
- Compatibilidad con SIINCO
- Compatibilidad con ANIscopio
- Transmisión en tiempo real
- Almacenamiento local si hay pérdida de comunicación
- Retransmisión en máximo 3 días
- Formato de datos según especificaciones ANI
- Acceso de ANI en cualquier momento

---

## 3. REQUISITOS NO FUNCIONALES

### 3.1 Requisitos de Disponibilidad

| ID | Requisito | Valor Mínimo | Fuente |
|:---|:----------|:-------------|:-------|
| **RNF-001** | Disponibilidad del sistema ITS completo | ≥ 99% anual | AT2, Sección 3.3.5.1 |
| **RNF-002** | MTBF (Tiempo Medio Entre Fallas) | ≥ 2,000 horas | Buenas prácticas |
| **RNF-003** | MTTR (Tiempo Medio de Reparación) | ≤ 24 horas (equipos críticos) | AT2 (implícito) |
| **RNF-004** | Disponibilidad de PMV | ≥ 99% anual | AT2 |
| **RNF-005** | Disponibilidad de CCTV | ≥ 99% anual | AT2 |
| **RNF-006** | Disponibilidad de comunicación CCO | ≥ 99.5% | Crítico |

**Cálculo de disponibilidad:**
- 99% anual = máximo 87.6 horas de indisponibilidad/año
- 99% mensual = máximo 7.3 horas de indisponibilidad/mes

---

### 3.2 Requisitos de Performance

| ID | Requisito | Valor Mínimo | Fuente |
|:---|:----------|:-------------|:-------|
| **RNF-007** | Latencia de video (CCTV → CCO) | ≤ 500 ms | Operación en tiempo real |
| **RNF-008** | Frame rate de video | ≥ 25 fps @ 1080p | Calidad de video |
| **RNF-009** | Tiempo de respuesta PMV (cambio de mensaje) | ≤ 5 segundos | Información oportuna |
| **RNF-010** | Frecuencia de medición WIM | Continua (cada vehículo) | ASTM E2213 |
| **RNF-011** | Frecuencia de datos meteorológicos | Cada 5-10 minutos | IDEAM |
| **RNF-012** | Ancho de banda por cámara CCTV | 4-8 Mbps (H.265) | Transmisión de video |
| **RNF-013** | Tiempo de conexión SOS → CCO | ≤ 30 segundos | Emergencias |

---

### 3.3 Requisitos de Seguridad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-014** | Autenticación de usuarios CCO | Control de acceso con roles (operador, supervisor, admin) | AT2, Sección 3.1.7 |
| **RNF-015** | Cifrado de transmisión de video | TLS 1.2 mínimo o protocolo seguro | ISO 27001 |
| **RNF-016** | Registro inviolable de datos | Todas las acciones registradas, no modificables | AT2, Sección 3.3.5.1 |
| **RNF-017** | Segmentación de red | VLAN dedicada para ITS | Buenas prácticas |
| **RNF-018** | Backup de datos | Diario, retención 90 días para incidentes | AT2 (implícito) |
| **RNF-019** | Protección física de equipos | Carcasas antivandalismo IK10 | Campo (exposición pública) |
| **RNF-020** | Control de acceso a datos | Solo personal autorizado | ISO 27001 |

---

### 3.4 Requisitos de Usabilidad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-021** | Interfaz de usuario intuitiva | Operadores capacitados en < 8 horas | AT2 (implícito) |
| **RNF-022** | Visualización de eventos | Alertas visuales y sonoras en CCO | Operación efectiva |
| **RNF-023** | Idioma | Español (interfaz y manuales) | Colombia |
| **RNF-024** | Accesibilidad web (SICC) | Cumplir normativa colombiana accesibilidad web | AT2 |

---

### 3.5 Requisitos de Mantenibilidad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-025** | Actualización de firmware remota | Sin necesidad de visita al campo | Operación eficiente |
| **RNF-026** | Diagnóstico remoto | Monitoreo SNMP de estado de equipos | Gestión proactiva |
| **RNF-027** | Disponibilidad de repuestos | Durante toda la concesión (25 años) | AT2 (garantía) |
| **RNF-028** | Modularidad de componentes | Reemplazo de módulos sin afectar sistema completo | Mantenimiento ágil |
| **RNF-029** | Documentación técnica | Manuales en español, actualizados | AT2 |

---

### 3.6 Requisitos de Escalabilidad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-030** | Capacidad de crecimiento | +30% de equipos sin cambios en arquitectura | Buenas prácticas |
| **RNF-031** | Ancho de banda dimensionado | Con margen de 50% | Crecimiento futuro |
| **RNF-032** | Puertos de switch disponibles | 30% de puertos libres | Expansión |

---

### 3.7 Requisitos Ambientales y de Protección

| ID | Requisito | Valor Mínimo | Fuente |
|:---|:----------|:-------------|:-------|
| **RNF-033** | Grado de protección IP | IP66 mínimo (equipos exteriores) | Clima colombiano |
| **RNF-034** | Grado de protección IK | IK10 (antivandalismo) | Seguridad |
| **RNF-035** | Rango de temperatura operación | -30°C a +60°C | Condiciones extremas |
| **RNF-036** | Humedad relativa | 0% a 95% RH (sin condensación) | Clima tropical |
| **RNF-037** | Protección contra rayos | Supresores de transitorios, puesta a tierra | Zona de tormentas |

---

### 3.8 Requisitos de Ciberseguridad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-038** | Plan de Respuesta a Incidentes de Ciberseguridad | El sistema debe contar con un plan documentado para detectar, responder y recuperarse de ciberataques. | ISO 27001 |
| **RNF-039** | Evaluaciones de Vulnerabilidad | Se deben realizar escaneos de vulnerabilidad y pruebas de penetración trimestrales a la red ITS. | Buenas Prácticas |
| **RNF-040** | Sistema de Detección de Intrusiones (IDS) | La red ITS debe contar con un IDS para monitorear el tráfico en busca de actividad maliciosa. | Seguridad de Red |
| **RNF-041** | Hardening de Equipos | Todos los equipos de campo (cámaras, sensores) deben tener sus puertos no utilizados deshabilitados y contraseñas por defecto cambiadas. | Seguridad de Dispositivos |
| **RNF-042** | Actualizaciones de Seguridad | Se debe implementar un proceso para aplicar parches de seguridad a todos los componentes del sistema de forma mensual. | Mantenibilidad |
| **RNF-043** | Acceso Remoto Seguro | Todo acceso remoto para mantenimiento debe realizarse a través de una VPN con autenticación de dos factores. | ISO 27001 |

---

## 4. REQUISITOS DE INTERFACES

### 4.1 Interface ITS ↔ CCO

**ID:** RI-001  
**Sistemas:** ITS (CCTV, PMV, WIM, Meteo, DAI, SOS, Aforo, Radares) ↔ CCO  
**Tipo:** Red de Datos IP  
**Protocolo:** 
- ONVIF Profile S (video)
- RTSP (streaming)
- SNMP (monitoreo)
- API REST (datos de sensores)
**Datos Intercambiados:**
- Video en vivo (100-130 cámaras × 6 Mbps = 600-780 Mbps)
- Datos de WIM (peso, ejes, clasificación)
- Datos meteorológicos (cada 5-10 min)
- Alarmas de DAI
- Llamadas SOS (VoIP)
- Datos de aforo (conteo continuo)
- Datos de radares (velocidad, foto matrícula)
**Frecuencia:** Tiempo real continuo  
**Ancho de banda total:** ~1 Gbps (considerar 10 Gbps en enlaces críticos)

---

### 4.2 Interface ITS ↔ Telecomunicaciones

**ID:** RI-002  
**Sistemas:** ITS ↔ Red de Fibra Óptica  
**Tipo:** Física  
**Protocolo:** Ethernet (capa física), 1000Base-LX (fibra monomodo)  
**Datos Intercambiados:** Todos los datos ITS viajan por fibra óptica  
**Frecuencia:** Continuo  
**Ancho de banda:** Ver RI-001

---

### 4.3 Interface ITS ↔ Peajes

**ID:** RI-003  
**Sistemas:** ITS (Aforo, WIM) ↔ Sistema de Peajes  
**Tipo:** Lógica (Base de Datos)  
**Protocolo:** SQL, API REST  
**Datos Intercambiados:**
- Aforo vehicular (comparación con recaudo)
- Datos de WIM (correlación con categorías de peaje)
- Eventos de evasión
**Frecuencia:** Tiempo real + reportes horarios/diarios

---

### 4.4 Interface ITS ↔ Emergencias

**ID:** RI-004  
**Sistemas:** ITS (CCTV, SOS, DAI) ↔ Sistema de Emergencias  
**Tipo:** Lógica  
**Protocolo:** VoIP (SOS), API (DAI/CCTV)  
**Datos Intercambiados:**
- Llamadas SOS → Despacho de ambulancias/grúas
- Detección de incidentes → Activación de protocolos
- Video de CCTV → Evaluación de gravedad
**Frecuencia:** Por evento

---

### 4.5 Interface ITS ↔ ANI

**ID:** RI-005  
**Sistemas:** ITS → SIINCO, ANIscopio (ANI)  
**Tipo:** Red de Datos (Internet/VPN)  
**Protocolo:** HTTPS, Web Services, API REST  
**Datos Intercambiados:**
- Información de tráfico (TPDA, clasificación)
- Datos de velocidad
- Información meteorológica
- Registro de incidentes
- Videos de eventos críticos
**Frecuencia:** Tiempo real + reportes mensuales

---

## 5. MATRIZ DE TRAZABILIDAD

| Requisito ID | Tipo | Descripción Resumida | Fuente Contractual | Componente Afectado | Prioridad |
|:-------------|:-----|:---------------------|:-------------------|:--------------------|:----------|
| **RF-001** | Funcional | Supervisión en tiempo real | AT2, 3.3.5.1 | CCTV, CCO | 🔴 Alta |
| **RF-002** | Funcional | Información variable PMV | AT2, 3.3.5.1; Res. 546/2018 | PMV | 🔴 Alta |
| **RF-003** | Funcional | Detección de incidentes | AT2, 3.3.5.1 | DAI, CCTV | 🔴 Alta |
| **RF-004** | Funcional | Control de velocidad | AT2, 3.3.5.1 | Radares | 🔴 Alta |
| **RF-005** | Funcional | Pesaje en movimiento | AT2, 3.3.5.1; ASTM E2213 | WIM | 🔴 Alta |
| **RF-006** | Funcional | Monitoreo meteorológico | AT2; IDEAM; Res. 546/2018 | Estaciones Meteo | 🟡 Media |
| **RF-007** | Funcional | Comunicación emergencias | AT2, 3.3.5.1 | SOS | 🔴 Alta |
| **RF-008** | Funcional | Detección de altura | AT2, 3.3.5.1 | Detectores Altura | 🔴 Alta |
| **RF-009** | Funcional | Aforo vehicular | AT2, 3.3.5.1 | Estaciones Aforo | 🟡 Media |
| **RF-010** | Funcional | Transmisión a ANI | AT2, 3.3.5.1 | CCO, Interface ANI | 🔴 Alta |
| **RNF-001** | Disponibilidad | 99% anual | AT2, 3.3.5.1 | Todo el sistema ITS | 🔴 Alta |
| **RNF-007** | Performance | Latencia video ≤500ms | Operación tiempo real | CCTV, Red | 🔴 Alta |
| **RNF-014** | Seguridad | Autenticación usuarios | AT2, 3.1.7 | CCO, Software | 🔴 Alta |
| **RNF-016** | Seguridad | Registro inviolable | AT2, 3.3.5.1 | CCO, BD | 🔴 Alta |
| **RNF-033** | Ambiental | Protección IP66 | Clima | Equipos exteriores | 🔴 Alta |

**Total requisitos identificados:** 43 (10 funcionales + 33 no funcionales)

---

## 6. RESTRICCIONES Y SUPUESTOS

### 6.1 Restricciones

| ID | Restricción | Impacto | Origen |
|:---|:------------|:--------|:-------|
| **REST-001** | Disponibilidad ≥ 99% anual (penalizable) | Crítico - Deducciones en Retribución si no se cumple | AT2, AT4 |
| **REST-002** | PMV deben cumplir Resolución 546/2018 | Alto - Especificaciones obligatorias | Resolución 546/2018 |
| **REST-003** | Detectores de altura: tecnología láser | Medio - Limita proveedores | AT2, 3.3.5.1 |
| **REST-004** | Transmisión en tiempo real obligatoria | Alto - Arquitectura de red robusta requerida | AT2, 3.3.5.1 |
| **REST-005** | Compatibilidad con SIINCO (ANI) | Alto - Desarrollo de interfaces específicas | AT2, 3.3.5.1 |
| **REST-006** | Registro inviolable e integral | Alto - BD con auditoría, no se puede borrar | AT2, 3.3.5.1 |
| **REST-007** | Equipos meteorológicos según IDEAM | Medio - Especificaciones técnicas específicas | AT2, IDEAM |
| **REST-008** | CCTV en 100% de peajes y Áreas Servicio | Alto - Cobertura obligatoria | AT2, 3.3.5.1 |

---

### 6.2 Supuestos

| ID | Supuesto | Riesgo si no se cumple | Validación |
|:---|:---------|:-----------------------|:-----------|
| **SUP-001** | Fibra óptica estará disponible en todo el corredor | Crítico - Sin comunicaciones no hay ITS | Validar con Ing. Telecom (T01 Telecom) |
| **SUP-002** | CCO estará operativo antes de instalación masiva de ITS | Alto - Equipos sin destino de datos | Coordinar cronogramas |
| **SUP-003** | Protocolo ONVIF será aceptable para ANI | Medio - Podría requerir protocolo propietario | Validar con ANI en Fase Preoperativa |
| **SUP-004** | Ubicaciones de CCTV definidas con Policía/Interventoría | Medio - Posible reubicación posterior | Coordinación temprana |
| **SUP-005** | Proveedores garantizan repuestos 25 años | Alto - Obsolescencia tecnológica | Incluir en contratos de suministro |
| **SUP-006** | Energía (PoE o 110V) disponible en puntos de instalación | Alto - Requiere obra eléctrica adicional | Validar con Ing. Eléctrico |

---

## 7. CASOS DE USO

### 7.1 CU-001: Supervisión de Tráfico en Tiempo Real

**Actor:** Operador de CCO  
**Descripción:** El operador supervisa el flujo vehicular mediante cámaras CCTV  
**Precondiciones:**
- CCO operativo
- CCTV instalado y funcionando
- Red de comunicaciones activa

**Flujo Normal:**
1. Operador accede al sistema SCADA ITS en CCO
2. Selecciona zona del corredor a supervisar
3. Visualiza cámaras CCTV de esa zona en videowall
4. Monitorea flujo vehicular (densidad, velocidad aparente)
5. Si detecta anomalía, registra evento en SICC

**Postcondiciones:**
- Operador tiene visibilidad del corredor
- Eventos registrados en base de datos

**Flujos Alternativos:**
- Si cámara no responde → Alarma automática, operador notifica a mantenimiento
- Si detecta incidente → Activar CU-003 (Gestión de Incidente)

---

### 7.2 CU-002: Activación de Mensaje en PMV

**Actor:** Operador de CCO  
**Descripción:** El operador publica un mensaje en uno o varios PMV  
**Precondiciones:**
- CCO operativo
- PMV funcionando
- Operador autenticado

**Flujo Normal:**
1. Operador identifica necesidad de mensaje (ej: accidente en PK 120)
2. Accede a módulo de gestión de PMV
3. Selecciona PMV cercanos al evento (ej: PMV antes del PK 120)
4. Redacta mensaje (alfanumérico + gráfico)
5. Previsualiza mensaje
6. Activa mensaje
7. Mensaje se muestra en PMV en < 5 segundos
8. Sistema registra acción en log

**Postcondiciones:**
- Usuarios de la vía informados del evento
- Acción registrada con timestamp y usuario

**Flujos Alternativos:**
- Si PMV no responde → Sistema alerta a operador, mensaje no se publica
- Si mensaje muy largo → Sistema trunca o rechaza

---

### 7.3 CU-003: Gestión de Incidente Detectado

**Actor:** Sistema DAI (automático) + Operador CCO  
**Descripción:** El sistema detecta un incidente y el operador gestiona la respuesta  
**Precondiciones:**
- DAI operativo
- CCTV funcional
- CCO con personal de turno

**Flujo Normal:**
1. DAI detecta vehículo detenido en carril (analítica de video)
2. Sistema genera alarma automática en CCO (visual + sonora)
3. Operador recibe alarma, ve cámara CCTV del punto
4. Operador confirma incidente (no es falso positivo)
5. Operador registra incidente en SICC (tipo, ubicación PK, hora)
6. Operador activa PMV previos (mensaje de advertencia)
7. Operador despacha patrulla de inspección (si necesario)
8. Operador coordina con sistema de emergencias (si es accidente)
9. Sistema registra todas las acciones y tiempos

**Postcondiciones:**
- Incidente atendido
- Usuarios advertidos
- Información registrada
- Reportado a ANI

**Flujos Alternativos:**
- Si es falso positivo → Operador descarta alarma, registra como FP
- Si es emergencia médica → Activar CU-004 (Despacho de Ambulancia)

---

### 7.4 CU-004: Llamada de Emergencia desde SOS

**Actor:** Usuario de la vía  
**Descripción:** Un usuario llama desde teléfono SOS y recibe atención  
**Precondiciones:**
- Teléfonos SOS operativos
- CCO con operadores de turno
- Sistema de emergencias disponible

**Flujo Normal:**
1. Usuario presiona botón de teléfono SOS
2. Sistema establece conexión VoIP con CCO (< 30 seg)
3. Sistema identifica automáticamente ubicación (PK) del teléfono
4. Operador atiende llamada
5. Usuario explica emergencia
6. Operador registra evento en SICC
7. Operador despacha equipo de emergencia apropiado (ambulancia, grúa, patrulla)
8. Sistema registra llamada completa (duración, motivo, acción tomada)

**Postcondiciones:**
- Emergencia atendida
- Equipo despachado
- Llamada registrada

**Flujos Alternativos:**
- Si no hay respuesta en CCO → Redirección a centro de respaldo
- Si es broma → Operador registra, posible notificación a Policía

---

### 7.5 CU-005: Detección de Vehículo con Altura Excesiva

**Actor:** Sistema Detector de Altura (automático)  
**Descripción:** El sistema detecta vehículo con altura superior a la permitida  
**Precondiciones:**
- Detector de altura operativo
- PMV cercano operativo
- CCO operativo

**Flujo Normal:**
1. Vehículo se aproxima a detector de altura (antes de peaje/puente/túnel)
2. Detector láser mide altura del vehículo
3. Si altura > límite permitido:
   - Activar alarma visual (luces de advertencia)
   - Activar PMV con mensaje "ALTURA EXCEDIDA - DETENERSE"
   - Enviar alarma a CCO
   - Registrar evento (fecha, hora, PK, altura medida)
4. Operador CCO visualiza evento
5. Operador coordina con Policía de Carreteras
6. Se detiene vehículo y se gestiona paso seguro (si posible) o ruta alterna

**Postcondiciones:**
- Vehículo detenido antes de causar daño
- Evento registrado
- Policía notificada

---

## 8. CHECKLIST DE CRITERIOS DE ACEPTACIÓN

### 8.1 Aceptación por Subsistema

- [ ] **CCTV:** 100% de las cámaras transmiten video a CCO con latencia < 500ms y resolución ≥ 1080p. El control PTZ responde en < 1 segundo.
- [ ] **PMV:** 100% de los paneles responden a comandos desde CCO en < 5 segundos. Los mensajes son legibles a 300m de día y de noche.
- [ ] **WIM:** El sistema clasifica el 100% de los vehículos y pesa con una precisión de ±5% a velocidades de hasta 80 km/h, validado con báscula estática.
- [ ] **Estaciones Meteorológicas:** 100% de las estaciones reportan datos (lluvia, temperatura, viento, visibilidad) a CCO cada 5 minutos.
- [ ] **Teléfonos SOS:** 100% de los postes establecen comunicación con CCO en < 30 segundos y reportan su geolocalización automáticamente.
- [ ] **DAI:** El sistema detecta correctamente ≥ 90% de los incidentes simulados (vehículo detenido, contraflujo) con < 10% de falsas alarmas.
- [ ] **Radares de Velocidad:** 100% de los radares miden velocidad con precisión de ±2 km/h y capturan matrículas legibles.
- [ ] **Detectores de Altura:** El sistema activa alarmas visuales y en CCO para el 100% de los vehículos que superan la altura configurada.
- [ ] **Aforo Vehicular:** El conteo de vehículos tiene una precisión ≥ 98% y la clasificación por categoría ≥ 95%, comparado con conteos manuales.

### 8.2 Aceptación de Performance y Disponibilidad

- [ ] **Disponibilidad General:** El sistema ITS completo demuestra una disponibilidad ≥ 99% durante un período de prueba de 30 días.
- [ ] **Disponibilidad por Subsistema:** Cada subsistema (CCTV, PMV, etc.) demuestra una disponibilidad individual ≥ 99.5%.
- [ ] **Rendimiento de Red:** La red de fibra óptica mantiene una utilización < 50% en horas pico y una tasa de pérdida de paquetes < 0.1%.
- [ ] **Almacenamiento de Video:** El sistema graba 24/7 desde todas las cámaras y permite recuperar video de hace 30 días en < 1 minuto.

### 8.3 Aceptación de Seguridad y Cumplimiento

- [ ] **Ciberseguridad:** Se presenta informe de pruebas de penetración sin vulnerabilidades críticas abiertas. El IDS está operativo.
- [ ] **Cumplimiento Normativo:** Se entregan certificados de cumplimiento para:
    - Resolución 546/2018 (PMV, Meteo)
    - ASTM E2213 (WIM)
    - ONVIF Profile S (CCTV)
    - RETIE (Instalaciones eléctricas)
- [ ] **Protección Física:** Se verifica en campo que el 100% de los equipos exteriores tienen carcasas IP66 e IK10.

### 8.4 Aceptación de Interfaces

- [ ] **Integración con CCO:** El dashboard del CCO recibe y muestra correctamente datos de todos los 10 subsistemas ITS en tiempo real.
- [ ] **Integración con ANI:** Se realiza una prueba de transmisión de datos exitosa a la plataforma ANIscopio.
- [ ] **Integración con Peajes:** El sistema de peajes recibe datos de aforo del ITS y los concilia con el recaudo.
- [ ] **Integración con Emergencias:** Una alarma de DAI genera automáticamente un ticket en el sistema de despacho de emergencias.

---

## 9. DEPENDENCIAS

| Sistema/Recurso | Tipo de Dependencia | Criticidad | Estado | Plazo |
|:----------------|:--------------------|:-----------|:-------|:------|
| **Telecomunicaciones (Fibra Óptica)** | Debe estar instalada y operativa | 🔴 Crítica | ✅ Documentado (T01) | Antes de ITS |
| **CCO** | Debe estar operativo para recibir datos | 🔴 Crítica | ✅ Documentado (T01) | Antes de ITS |
| **Energía (PoE/110V)** | Acometidas en puntos de instalación | 🔴 Crítica | ⏳ Por documentar | Antes de ITS |
| **Estudios de Detalle** | Ubicaciones precisas de equipos | 🔴 Alta | ⏳ Por realizar | Fase Preoperativa |
| **Estaciones de Peaje** | Ubicaciones confirmadas para PMV/CCTV | 🟡 Media | ✅ Confirmado (2 estaciones) | - |
| **Áreas de Servicio** | Ubicaciones para CCTV obligatorio | 🟡 Media | ⏳ Por confirmar (AT1 num. 3.8) | Fase Preoperativa |
| **Homologación ANI** | Aprobación de tecnología/protocolos | 🟡 Media | ⏳ Por gestionar | Fase Preoperativa |

---

## 10. PRÓXIMOS PASOS

- [ ] Desarrollar arquitectura conceptual del sistema ITS (Template T03)
- [ ] Leer AT4 completo para extraer KPIs exactos
- [ ] Validar requisitos con Interventoría y ANI
- [ ] Solicitar cotizaciones a proveedores preseleccionados:
  - CCTV: Axis, Hikvision, Dahua, Bosch
  - PMV: Daktronics, SWARCO, Messagemaker
  - WIM: Kistler, Intercomp, Cardinal Scale
- [ ] Elaborar especificaciones técnicas detalladas por componente (Templates T04)
- [ ] Desarrollar prototipos/pilotos de interfaces con ANI (SIINCO)
- [ ] Estimar costos detallados con cotizaciones reales (Template T05)
- [ ] Coordinar con Gestión Predial (servidumbres para postes/cámaras)
- [ ] Coordinar con Gestión Ambiental (permisos de instalación)

---

## 11. REFERENCIAS

### Documentos Contractuales:
- [AT2 - Operación y Mantenimiento](../II.%20Apendices%20Tecnicos/AT2_Operacion_Mantenimiento_v1.0.md) - Sección 3.3.5.1
- [AT4 - Indicadores](../II.%20Apendices%20Tecnicos/AT4_Indicadores_v1.0.md) - KPIs del sistema ITS
- [Parte General](../I.%20Contrato%20General/1_Parte_General_v1.0.md) - Secciones 9.1, 9.2
- [Parte Especial](../I.%20Contrato%20General/2_Parte_Especial_v1.0.md) - Obligaciones específicas

### Documentos del Proyecto:
- [T01 - Ficha Sistema ITS](24_T01_Ficha_Sistema_ITS_v1.0.md) - Base para este análisis
- [T01 - Sistema CCO](26_T01_Ficha_Sistema_CCO_v1.0.md) - Interface principal
- [T01 - Sistema Telecomunicaciones](27_T01_Ficha_Sistema_Telecomunicaciones_v1.0.md) - Backbone de comunicaciones
- [WBS Preliminar](../IX.%20WBS%20y%20Planificacion/WBS_Preliminar_v1.0.md) - Elemento 1.8

### Normativa:
- Resolución 546/2018 (MT) - Especificaciones ITS
- NEMA TS-2 - Controladores de Tráfico
- ISO 14823 - Señalización Variable
- ASTM E2213 - Pesaje en Movimiento
- ONVIF Profile S - Interoperabilidad CCTV
- IEC 62676 - Sistemas CCTV
- Especificaciones IDEAM - Estaciones Meteorológicas

---

## 12. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 16/10/2025 | Administrador Contractual EPC | Análisis inicial de requisitos del sistema ITS |
| **v1.1** | 22/10/2025 | Administrador Contractual EPC | **Revisión con información oficial:** Longitudes, CCO La Lizama, cantidades actualizadas, criterios de aceptación |

---

**Versión:** 1.1 ✅ **REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**  
**Estado:** ✅ Análisis de Requisitos Completado + Información Oficial Integrada  
**Fecha:** 22/10/2025  
**Responsable:** Ingeniero de Sistemas ITS  
**Próximo documento:** T03 - Arquitectura Conceptual del Sistema ITS  

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- Longitudes actualizadas: 259.6 km principal + 33.4 km adicionales
- CCO ubicado en La Lizama PK 4+300 (RN 4513)
- Cantidades validadas contra información oficial
- Criterios de aceptación actualizados con datos reales
- Metodología PKD lineal aplicada  

---

**Fin del documento - T02 Análisis de Requisitos Sistema ITS**  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*
