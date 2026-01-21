# T02: ANÁLISIS DE REQUISITOS - CCTV (SISTEMA DE CIRCUITO CERRADO DE TELEVISIÓN)
## Proyecto APP Puerto Salgar - Barrancabermeja
## MVP - Metodología Punto 42

**Fecha:** 21 de Enero 2026  
**Sistema:** CCTV - Sistema de Circuito Cerrado de Televisión  
**Responsable:** Ingeniero de Sistemas ITS / Administrador Contractual EPC  
**Versión:** 1.5 MVP (Reconciliado 15 Cámaras)  
**Estado:** ✅ Validado y Reconciliado

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Documento

Este documento presenta el **análisis detallado de requisitos** del Sistema de Circuito Cerrado de Televisión (CCTV) para el proyecto APP Puerto Salgar - Barrancabermeja, cubriendo:

- Requisitos funcionales (qué debe hacer el sistema)
- Requisitos no funcionales (cómo debe hacerlo: disponibilidad, rendimiento, seguridad, etc.)
- Requisitos de interfaces con otros sistemas
- Casos de uso principales
- Matriz de trazabilidad contractual
- Restricciones y supuestos
- Criterios de aceptación

### 1.2 Alcance

Este análisis se enfoca exclusivamente en el sistema de **15 cámaras CCTV (PTZ)** distribuidas estratégicamente a lo largo del corredor vial (293 km de cobertura total), incluyendo su equipamiento de comunicación, almacenamiento, visualización y su integración con el Centro de Control Operacional (CCO) y la red de telecomunicaciones.

**Ubicación del CCO:** La Lizama PK 4+300 (RN 4513) - Centro de control del corredor.

### 1.3 Referencias

- **T01:** `24C_T01_Ficha_Sistema_CCTV_MVP_v1.0.md`
- **T03:** `53_T03_Arquitectura_Conceptual_ITS_v1.0.md` (CCTV incluido)
- **T04:** `03_T04_Especificaciones_Tecnicas_CCTV_v1.0.md`
- **T05:** `05_T05_Ingenieria_Detalle_CCTV_v1.0.md`
- **Validación:** `37_VALIDACION_CONTRACTUAL_CCTV_v1.0.md`
- **AT2:** Apéndice Técnico 2, Sección 3.3.4.7 "Sistemas de Videovigilancia"
- **AT3:** Apéndice Técnico 3, Capítulo IV "Sistemas ITS"
- **AT4:** Apéndice Técnico 4 (Indicadores de desempeño)

### 1.4 Definiciones y Acrónimos

| Término | Definición |
|:--------|:-----------|
| **CCTV** | Closed-Circuit Television (Circuito Cerrado de Televisión) |
| **PTZ** | Pan-Tilt-Zoom (Cámara con movimiento panorámico, inclinación y zoom) |
| **CCO** | Centro de Control Operacional |
| **ITS** | Intelligent Transportation Systems (Sistemas Inteligentes de Transporte) |
| **NVR** | Network Video Recorder (Grabador de Video en Red) |
| **VMS** | Video Management System (Sistema de Gestión de Video) |
| **ONVIF** | Open Network Video Interface Forum (Estándar de interoperabilidad) |
| **PoE/PoE+** | Power over Ethernet (Alimentación por Ethernet) |
| **H.265/H.264** | Codecs de compresión de video |
| **IP66/IK10** | Grado de protección contra polvo/agua e impactos |
| **DAI** | Detección Automática de Incidentes |
| **AT2, AT3, AT4** | Apéndices Técnicos del Contrato |
| **KPI** | Key Performance Indicator (Indicador Clave de Desempeño) |
| **MTBF** | Mean Time Between Failures (Tiempo Medio Entre Fallas) |
| **MTTR** | Mean Time To Repair (Tiempo Medio de Reparación) |

---

## 2. REQUISITOS FUNCIONALES

### 2.1 Monitoreo Visual Continuo 24/7

**ID:** RF-CCTV-001  
**Descripción:** El sistema debe proporcionar monitoreo visual continuo 24 horas al día, 7 días a la semana, 365 días al año de puntos críticos del corredor vial.  
**Prioridad:** 🔴 Crítica  
**Fuente:** AT2 Sección 3.3.4.7  
**Criterios de Aceptación:**
- Video en tiempo real disponible en CCO La Lizama PK 4+300
- Visualización simultánea de al menos 16-32 cámaras en videowall
- Disponibilidad ≥99% anual (máximo 87.6 horas de indisponibilidad/año)
- Operación continua sin interrupciones programadas
- Capacidad de grabación continua de todas las cámaras

---

### 2.2 Control Remoto PTZ

**ID:** RF-CCTV-002  
**Descripción:** Las cámaras PTZ deben permitir control remoto desde el CCO para ajustar posición (pan/tilt) y zoom óptico.  
**Prioridad:** 🔴 Crítica  
**Fuente:** AT2 Sección 3.3.4.7  
**Criterios de Aceptación:**
- Control remoto desde estaciones de trabajo del CCO
- Rotación Pan: 360° continuo
- Rotación Tilt: -15° a +90°
- Zoom óptico: 30× mínimo
- Presets programables: ≥256 posiciones
- Velocidad de movimiento: 0.1°-120°/s
- Tiempo de respuesta: ≤2 segundos

---

### 2.3 Grabación y Almacenamiento de Video

**ID:** RF-CCTV-003  
**Descripción:** El sistema debe grabar y almacenar video de todas las cámaras con capacidad mínima de 30 días.  
**Prioridad:** 🔴 Crítica  
**Fuente:** AT2 Sección 3.3.4.7  
**Criterios de Aceptación:**
- Grabación continua de 30 cámaras
- Almacenamiento mínimo: 30 días
- Resolución: 1080p (1920×1080) mínimo
- Frame rate: 25-30 fps
- Compresión: H.265 (eficiencia de almacenamiento)
- Almacenamiento redundante (RAID 6)
- Capacidad de búsqueda y reproducción de grabaciones

---

### 2.4 Detección Automática de Incidentes

**ID:** RF-CCTV-004  
**Descripción:** El sistema debe integrarse con sistemas de detección automática de incidentes (DAI) para alertar al CCO sobre eventos anómalos.  
**Prioridad:** 🟡 Media  
**Fuente:** AT2 Sección 3.3.5.1 (implícito)  
**Criterios de Aceptación:**
- Integración con analítica de video (DAI)
- Detección de: accidentes, vehículos detenidos, objetos en calzada, tráfico lento
- Tasa de detección: ≥90%
- Tasa de falsos positivos: <10%
- Alertas automáticas al CCO
- Visualización automática de cámara más cercana al incidente

---

### 2.5 Integración con CCO y SCADA

**ID:** RF-CCTV-005  
**Descripción:** El sistema debe integrarse completamente con el CCO y el sistema SCADA para supervisión y control operacional.  
**Prioridad:** 🔴 Crítica  
**Fuente:** AT2 Sección 3.3.4.7  
**Criterios de Aceptación:**
- Transmisión de video en tiempo real al CCO
- Integración con SCADA para monitoreo de estado
- Control de cámaras desde estaciones de trabajo del CCO
- Visualización en videowall del CCO
- Integración con sistema de gestión de incidentes

---

### 2.6 Visión Nocturna y Condiciones Adversas

**ID:** RF-CCTV-006  
**Descripción:** Las cámaras deben proporcionar visión clara en condiciones de baja iluminación y condiciones climáticas adversas.  
**Prioridad:** 🔴 Crítica  
**Fuente:** AT2 Sección 3.3.4.7  
**Criterios de Aceptación:**
- Visión nocturna con infrarrojos (IR): rango 150 m (PTZ), 50 m (fijas)
- WDR (Wide Dynamic Range): 120 dB mínimo
- Operación en condiciones climáticas: -30°C a +60°C
- Protección IP66 (estanco a polvo y agua)
- Resistencia a viento: 120 km/h
- Operación en lluvia, niebla, polvo

---

## 3. REQUISITOS NO FUNCIONALES

### 3.1 Requisitos de Disponibilidad

| ID | Requisito | Descripción | Valor Mínimo Aceptación | Fuente |
|:---|:----------|:------------|:------------------------|:-------|
| **RNF-CCTV-001** | Disponibilidad del sistema | El sistema CCTV debe estar operativo y disponible para monitoreo. | ≥ 99% anual | AT4 (Indicador O1) |
| **RNF-CCTV-002** | MTBF (Tiempo Medio Entre Fallas) | El tiempo promedio entre fallas de una cámara individual. | ≥ 5,000 horas | Buenas prácticas |
| **RNF-CCTV-003** | MTTR (Tiempo Medio de Reparación) | El tiempo promedio para reparar una cámara después de una falla. | ≤ 24 horas (para fallas críticas) | AT2 (implícito) |
| **RNF-CCTV-004** | Disponibilidad de almacenamiento | El sistema de almacenamiento (NVR) debe estar disponible. | ≥ 99.5% anual | Crítico para grabaciones |

### 3.2 Requisitos de Performance

| ID | Requisito | Descripción | Valor Mínimo Aceptación | Fuente |
|:---|:----------|:------------|:------------------------|:-------|
| **RNF-CCTV-005** | Latencia de video (CCTV → CCO) | El tiempo desde captura hasta visualización en CCO. | ≤ 500 ms | Operación en tiempo real |
| **RNF-CCTV-006** | Frame rate de video | La velocidad de cuadros por segundo del video. | ≥ 25 fps @ 1080p | Calidad de video |
| **RNF-CCTV-007** | Resolución de video | La resolución mínima del video capturado. | 1920×1080 (1080p) | AT3 (mínimo 320×240, recomendado 1080p) |
| **RNF-CCTV-008** | Ancho de banda por cámara | El ancho de banda requerido para transmisión de video. | 4-8 Mbps (H.265) | Transmisión eficiente |
| **RNF-CCTV-009** | Tiempo de respuesta PTZ | El tiempo desde comando hasta movimiento de cámara. | ≤ 2 segundos | Control remoto efectivo |
| **RNF-CCTV-010** | Capacidad de almacenamiento | Capacidad total de almacenamiento para 30 días de grabación. | ≥ 45 TB (15 cámaras × 30 días) | AT2 (30 días mínimo) |

### 3.3 Requisitos de Seguridad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-CCTV-011** | Cifrado de transmisión de video | Las transmisiones de video deben estar cifradas. | TLS 1.2 mínimo o protocolo seguro | ISO 27001 |
| **RNF-CCTV-012** | Autenticación de acceso | El acceso a cámaras y sistemas de gestión debe ser autenticado. | Credenciales de usuario y contraseña robustas | ISO 27001 |
| **RNF-CCTV-013** | Protección física | Las cámaras deben ser resistentes al vandalismo y robo. | Carcasas antivandalismo IK10 | Campo (exposición pública) |
| **RNF-CCTV-014** | Segmentación de red | Las cámaras deben estar en VLAN dedicada para ITS. | VLAN separada, firewall | Buenas prácticas |
| **RNF-CCTV-015** | Control de acceso a grabaciones | Solo personal autorizado puede acceder a grabaciones. | Roles y permisos (operador, supervisor, admin) | ISO 27001 |
| **RNF-CCTV-016** | Protección de datos personales | Cumplimiento con Ley 1581/2012 (Protección de Datos Personales). | Políticas de privacidad, retención limitada | Ley 1581/2012 |

### 3.4 Requisitos Ambientales y de Protección

| ID | Requisito | Valor Mínimo | Fuente |
|:---|:----------|:-------------|:-------|
| **RNF-CCTV-017** | Grado de protección IP | IP66 mínimo (para equipos exteriores) | IEC 60529 |
| **RNF-CCTV-018** | Grado de protección IK | IK10 (antivandalismo) | IEC 62262 |
| **RNF-CCTV-019** | Rango de temperatura operación | -30°C a +60°C | Condiciones climáticas colombianas |
| **RNF-CCTV-020** | Humedad relativa | 0% a 95% RH (sin condensación) | IEC 60068-2-78 |
| **RNF-CCTV-021** | Resistencia a viento | 120 km/h | Zona tropical |
| **RNF-CCTV-022** | Protección contra rayos | Supresores de transitorios, puesta a tierra | RETIE |

### 3.5 Requisitos de Usabilidad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-CCTV-023** | Interfaz de usuario intuitiva | Operadores capacitados en < 8 horas | AT2 (implícito) |
| **RNF-CCTV-024** | Visualización de eventos | Alertas visuales y sonoras en CCO | Operación efectiva |
| **RNF-CCTV-025** | Idioma | Español (interfaz y manuales) | Colombia |
| **RNF-CCTV-026** | Búsqueda de grabaciones | Capacidad de búsqueda por fecha, hora, cámara, evento | Gestión eficiente |

### 3.6 Requisitos de Mantenibilidad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-CCTV-027** | Actualización de firmware remota | Sin necesidad de visita al campo | Operación eficiente |
| **RNF-CCTV-028** | Diagnóstico remoto | Monitoreo SNMP de estado de cámaras | Gestión proactiva |
| **RNF-CCTV-029** | Disponibilidad de repuestos | Durante toda la concesión (25 años) | AT2 (garantía) |
| **RNF-CCTV-030** | Modularidad de componentes | Reemplazo de módulos sin afectar sistema completo | Mantenimiento ágil |
| **RNF-CCTV-031** | Documentación técnica | Manuales en español, actualizados | AT2 (implícito) |

---

## 4. REQUISITOS DE INTERFACES

### 4.1 Interface CCTV ↔ CCO

**ID:** RI-CCTV-001  
**Sistemas:** Cámaras CCTV ↔ CCO (Centro de Control Operacional)  
**Tipo:** Red de Datos IP (Video sobre IP)  
**Protocolo:** ONVIF Profile S/T (para video), SNMP (para monitoreo de estado)  
**Datos Intercambiados:**
- Video en tiempo real (H.265/H.264)
- Control PTZ (comandos pan/tilt/zoom)
- Estado operativo de cámaras
- Alarmas y eventos
**Frecuencia:** Continuo (video), por evento (control, alarmas).  
**Ancho de banda:** 4-8 Mbps por cámara (H.265), total ~60-120 Mbps para 15 cámaras.

---

### 4.2 Interface CCTV ↔ Sistema de Telecomunicaciones

**ID:** RI-CCTV-002  
**Sistemas:** Cámaras CCTV ↔ Red Troncal de Fibra Óptica  
**Tipo:** Física / Red de Datos IP  
**Protocolo:** Ethernet (Gigabit), Fibra Óptica Monomodo (ITU-T G.652.D)  
**Datos Intercambiados:**
- Tráfico de video (streaming)
- Datos de control y gestión
**Frecuencia:** Continua.  
**Ancho de banda:** Dedicado por cámara (mínimo 100 Mbps), agregación 1 Gbps.

---

### 4.3 Interface CCTV ↔ Sistema SCADA

**ID:** RI-CCTV-003  
**Sistemas:** Cámaras CCTV ↔ Sistema SCADA  
**Tipo:** Lógica (a través de red IP)  
**Protocolo:** SNMP v3, Modbus TCP (opcional)  
**Datos Intercambiados:**
- Estado operativo de cámaras
- Alarmas de falla
- Métricas de desempeño
**Frecuencia:** Cada 5 minutos (polling), por evento (alarmas).

---

### 4.4 Interface CCTV ↔ Sistema DAI (Detección Automática de Incidentes)

**ID:** RI-CCTV-004  
**Sistemas:** Cámaras CCTV ↔ Sistema DAI  
**Tipo:** Lógica (a través de red IP)  
**Protocolo:** API REST, ONVIF Analytics  
**Datos Intercambiados:**
- Video para análisis (streaming)
- Alertas de incidentes detectados
- Coordenadas de eventos
**Frecuencia:** Continuo (video), por evento (alertas).

---

### 4.5 Interface CCTV ↔ Sistema de Energía Eléctrica

**ID:** RI-CCTV-005  
**Sistemas:** Cámaras CCTV ↔ Red Eléctrica / PoE  
**Tipo:** Física (Alimentación)  
**Protocolo:** PoE+ (IEEE 802.3at) 25.5W (PTZ), 15.4W (fijas)  
**Datos Intercambiados:**
- Suministro de energía para operación
**Frecuencia:** Continua.

---

## 5. CASOS DE USO

### 5.1 CU-CCTV-001: Monitoreo Continuo de Tráfico

**Actor Principal:** Operador del CCO  
**Actores Secundarios:** Sistema SCADA, Sistema DAI  
**Descripción:** Un operador del CCO monitorea el flujo de tráfico en tiempo real usando las cámaras CCTV para identificar condiciones normales o anómalas.

**Precondiciones:**
- Las cámaras CCTV están operativas y conectadas.
- La red de telecomunicaciones está funcional.
- El CCO está operativo con personal de turno.
- El sistema SCADA está disponible.

**Flujo Normal:**
1. El operador accede al sistema VMS en el CCO.
2. El sistema muestra video en tiempo real de múltiples cámaras (16-32 en videowall).
3. El operador selecciona cámaras de interés según ubicación geográfica.
4. El sistema muestra video con latencia ≤500 ms.
5. El operador observa condiciones normales de tráfico.
6. El sistema registra el monitoreo en logs de auditoría.

**Postcondiciones:**
- El tráfico es monitoreado continuamente.
- Las condiciones son registradas en el sistema.

**Flujos Alternativos:**
- **A1: Detección de incidente:** Si el sistema DAI detecta un incidente, automáticamente muestra la cámara más cercana y alerta al operador.

---

### 5.2 CU-CCTV-002: Control Remoto de Cámara PTZ

**Actor Principal:** Operador del CCO  
**Actores Secundarios:** Cámara PTZ  
**Descripción:** Un operador del CCO controla remotamente una cámara PTZ para enfocar en un área específica de interés.

**Precondiciones:**
- La cámara PTZ está operativa y conectada.
- El operador tiene permisos de control PTZ.
- La red de comunicaciones está funcional.

**Flujo Normal:**
1. El operador selecciona una cámara PTZ desde el VMS.
2. El operador activa el control PTZ (modo joystick o presets).
3. El operador ajusta posición Pan (horizontal) y Tilt (vertical).
4. El operador ajusta zoom óptico para enfocar en área específica.
5. La cámara responde en ≤2 segundos.
6. El operador guarda la posición como preset (opcional).
7. El sistema registra la acción en logs de auditoría.

**Postcondiciones:**
- La cámara está posicionada según el comando del operador.
- La posición puede ser guardada como preset para uso futuro.

---

### 5.3 CU-CCTV-003: Reproducción de Grabaciones

**Actor Principal:** Operador del CCO / Supervisor  
**Actores Secundarios:** Sistema NVR  
**Descripción:** Un operador o supervisor reproduce grabaciones de video para análisis de incidentes o auditoría.

**Precondiciones:**
- Las grabaciones están almacenadas en el NVR (mínimo 30 días).
- El usuario tiene permisos de acceso a grabaciones.
- El sistema NVR está operativo.

**Flujo Normal:**
1. El usuario accede al sistema VMS en el CCO.
2. El usuario selecciona función de búsqueda de grabaciones.
3. El usuario especifica criterios de búsqueda (fecha, hora, cámara, evento).
4. El sistema muestra lista de grabaciones disponibles.
5. El usuario selecciona una grabación.
6. El sistema reproduce el video con calidad original (1080p, 25-30 fps).
7. El usuario puede pausar, avanzar, retroceder, exportar clip.
8. El sistema registra el acceso en logs de auditoría.

**Postcondiciones:**
- El usuario ha revisado la grabación solicitada.
- El acceso está registrado para auditoría.

---

## 6. MATRIZ DE TRAZABILIDAD CONTRACTUAL

| Requisito ID | Tipo | Descripción Resumida | Fuente Contractual | Componente Afectado | Prioridad | Criterio de Aceptación |
|:-------------|:-----|:---------------------|:-------------------|:--------------------|:----------|:-----------------------|
| **RF-CCTV-001** | Funcional | Monitoreo visual continuo 24/7 | AT2 3.3.4.7 | Cámaras CCTV, CCO | 🔴 Crítica | Video tiempo real, disponibilidad ≥99%, visualización simultánea 16-32 cámaras. |
| **RF-CCTV-002** | Funcional | Control remoto PTZ | AT2 3.3.4.7 | Cámaras PTZ, CCO | 🔴 Crítica | Control remoto, zoom 30×, presets ≥256, respuesta ≤2s. |
| **RF-CCTV-003** | Funcional | Grabación y almacenamiento | AT2 3.3.4.7 | NVR, Almacenamiento | 🔴 Crítica | Grabación 30 días, 1080p, 25-30 fps, H.265, RAID 6. |
| **RF-CCTV-004** | Funcional | Detección automática de incidentes | AT2 3.3.5.1 (implícito) | DAI, Cámaras CCTV | 🟡 Media | Integración DAI, detección ≥90%, falsos positivos <10%. |
| **RF-CCTV-005** | Funcional | Integración CCO y SCADA | AT2 3.3.4.7 | CCO, SCADA | 🔴 Crítica | Transmisión tiempo real, integración SCADA, videowall. |
| **RF-CCTV-006** | Funcional | Visión nocturna y condiciones adversas | AT2 3.3.4.7 | Cámaras CCTV | 🔴 Crítica | IR 150m (PTZ), 50m (fijas), WDR 120dB, IP66, -30°C a +60°C. |
| **RNF-CCTV-001** | Disponibilidad | Disponibilidad del sistema | AT4 (O1) | Cámaras CCTV | 🔴 Crítica | ≥ 99% anual. |
| **RNF-CCTV-005** | Performance | Latencia de video | Operación tiempo real | Red, Cámaras | 🔴 Crítica | ≤ 500 ms. |
| **RNF-CCTV-006** | Performance | Frame rate de video | Calidad de video | Cámaras CCTV | 🔴 Crítica | ≥ 25 fps @ 1080p. |
| **RNF-CCTV-011** | Seguridad | Cifrado de transmisión | ISO 27001 | Red, Cámaras | 🔴 Crítica | TLS 1.2 mínimo. |
| **RNF-CCTV-013** | Seguridad | Protección física | Campo | Cámaras CCTV | 🔴 Crítica | Carcasas IK10. |
| **RNF-CCTV-017** | Ambiental | Protección IP | IEC 60529 | Cámaras CCTV | 🔴 Crítica | Grado de protección IP66 mínimo. |

**Total requisitos identificados:** 31 (6 funcionales + 25 no funcionales)

---

## 7. RESTRICCIONES Y SUPUESTOS

### 7.1 Restricciones

| ID | Restricción | Impacto | Origen |
|:---|:------------|:--------|:-------|
| **REST-CCTV-001** | Disponibilidad ≥99% anual | Penalizable según AT4 si no se cumple. | AT4 (Contractual, Penalizable) |
| **REST-CCTV-002** | Resolución mínima 320×240 | No se puede usar resolución inferior. | AT3 (Contractual) |
| **REST-CCTV-003** | Almacenamiento mínimo 30 días | Obligatorio mantener grabaciones 30 días. | AT2 (Contractual) |
| **REST-CCTV-004** | Integración obligatoria con CCO | Todas las cámaras deben transmitir al CCO. | AT2 (Contractual) |
| **REST-CCTV-005** | Protección de datos personales | Cumplimiento Ley 1581/2012 (privacidad). | Ley 1581/2012 (Legal) |

### 7.2 Supuestos

| ID | Supuesto | Riesgo si no se cumple | Validación |
|:---|:---------|:-----------------------|:-----------|
| **SUP-CCTV-001** | Red de fibra óptica disponible | Sin comunicaciones no hay sistema CCTV. | Validar con T01/T03 Telecomunicaciones. |
| **SUP-CCTV-002** | CCO operativo | Las cámaras no tendrían destino para transmisión. | Coordinar cronogramas con CCO. |
| **SUP-CCTV-003** | Alimentación eléctrica disponible | Requiere obra eléctrica adicional o PoE. | Validar con T01/T03 Energía Eléctrica. |
| **SUP-CCTV-004** | Ancho de banda suficiente | Latencia alta o pérdida de video. | Validar dimensionamiento de red. |
| **SUP-CCTV-005** | Personal de mantenimiento capacitado | Afecta MTTR y disponibilidad. | Plan de capacitación. |

---

## 8. CHECKLIST DE CRITERIOS DE ACEPTACIÓN

### 8.1 Aceptación por Requisito

- [ ] **RF-CCTV-001:** Verificar video en tiempo real de todas las cámaras en CCO, disponibilidad ≥99% mensual.
- [ ] **RF-CCTV-002:** Controlar remotamente cámaras PTZ desde CCO, verificar zoom 30×, presets, respuesta ≤2s.
- [ ] **RF-CCTV-003:** Verificar grabación continua de 30 cámaras, almacenamiento 30 días, calidad 1080p.
- [ ] **RF-CCTV-004:** Simular incidente y verificar detección automática, alerta al CCO, visualización automática.
- [ ] **RF-CCTV-005:** Verificar integración con SCADA, visualización en videowall, control desde estaciones de trabajo.
- [ ] **RF-CCTV-006:** Probar visión nocturna (IR), WDR, operación en condiciones climáticas extremas.
- [ ] **RNF-CCTV-001:** Revisar reportes de disponibilidad mensual del sistema CCTV.
- [ ] **RNF-CCTV-005:** Medir latencia de video de al menos 10 cámaras (captura → visualización CCO).
- [ ] **RNF-CCTV-006:** Verificar frame rate de video (≥25 fps @ 1080p).
- [ ] **RNF-CCTV-011:** Verificar cifrado TLS 1.2 en transmisiones de video.
- [ ] **RNF-CCTV-013:** Inspeccionar físicamente las cámaras para verificar resistencia al vandalismo (IK10).
- [ ] **RNF-CCTV-017:** Verificar la certificación IP66 de las cámaras.

---

## 9. PRÓXIMOS PASOS (MVP)

- [x] ✅ Análisis de Requisitos completado (T02).
- [ ] 🔄 Desarrollar T03: Arquitectura Conceptual para CCTV.
- [ ] ⏳ Validar T04: Especificaciones Técnicas para CCTV (ya existe, revisar coherencia).
- [ ] ⏳ Validar T05: Ingeniería de Detalle para CCTV (ya existe, revisar coherencia).
- [ ] ⏳ Realizar validación de coherencia entre todos los documentos T01-T05.
- [ ] ⏳ Documentar lecciones aprendidas del proceso MVP.

---

## 10. REFERENCIAS

- `24C_T01_Ficha_Sistema_CCTV_MVP_v1.0.md` (Ficha de Sistema CCTV)
- `31_T02_Analisis_Requisitos_ITS_v1.0.md` (Análisis de Requisitos ITS - Referencia para requisitos generales)
- `VII. Documentos Transversales/37_VALIDACION_CONTRACTUAL_CCTV_v1.0.md` (Validación Contractual CCTV)
- Apéndice Técnico 2 - Condiciones de O&M, Sección 3.3.4.7 "Sistemas de Videovigilancia"
- Apéndice Técnico 3 - Especificaciones Generales, Capítulo IV "Sistemas ITS"
- Apéndice Técnico 4 - Indicadores de Nivel de Servicio

---

**Versión:** 1.0 MVP  
**Estado:** ✅ Análisis de Requisitos Completado (Piloto MVP)  
**Fecha:** 31 de Octubre 2025  
**Responsable:** Ingeniero de Sistemas ITS / Administrador Contractual EPC  
**Próximo paso:** T03 - Arquitectura Conceptual CCTV

