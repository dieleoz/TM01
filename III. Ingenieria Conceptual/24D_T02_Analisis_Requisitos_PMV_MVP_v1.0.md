# T02: ANÁLISIS DE REQUISITOS - PMV (PANELES DE MENSAJE VARIABLE)
## Proyecto APP Puerto Salgar - Barrancabermeja
## MVP - Metodología Punto 42

**Fecha:** 21 de Enero 2026  
**Sistema:** PMV - Paneles de Mensaje Variable (Dynamic Message Signs - DMS)  
**Responsable:** Ingeniero de Sistemas ITS / Administrador Contractual EPC  
**Versión:** 1.5 MVP (Alineado Normativa 2024)  
**Estado:** ✅ Validado y Reconciliado

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Documento

Este documento presenta el **análisis detallado de requisitos** del Sistema de Paneles de Mensaje Variable (PMV) para el proyecto APP Puerto Salgar - Barrancabermeja, cubriendo:

- Requisitos funcionales (qué debe hacer el sistema)
- Requisitos no funcionales (cómo debe hacerlo: disponibilidad, rendimiento, seguridad, etc.)
- Requisitos de interfaces con otros sistemas
- Casos de uso principales
- Matriz de trazabilidad contractual
- Restricciones y supuestos
- Criterios de aceptación

### 1.2 Alcance

Este análisis se enfoca exclusivamente en el sistema de **14 paneles PMV** distribuidos estratégicamente a lo largo del corredor vial (293 km de cobertura total), incluyendo su equipamiento de comunicación, control, estructuras soporte y su integración con el Centro de Control Operacional (CCO) y la red de telecomunicaciones.

**Ubicación del CCO:** La Lizama PK 4+300 (RN 4513) - Centro de control del corredor.

### 1.3 Referencias

- **T01:** `24D_T01_Ficha_Sistema_PMV_MVP_v1.0.md`
- **T03:** `53_T03_Arquitectura_Conceptual_ITS_v1.0.md` (PMV incluido)
- **T04:** `04_T04_Especificaciones_Tecnicas_PMV_v1.0.md`
- **T05:** `06_T05_Ingenieria_Detalle_PMV_v1.0.md`
- **Validación:** `38_VALIDACION_CONTRACTUAL_PMV_v1.0.md`
- **AT1:** Apéndice Técnico 1, Capítulo 3.8 "Sistemas de Información Variable"
- **AT2:** Apéndice Técnico 2, Sección 3.3.4.8 "Sistemas de Información Variable"
- **AT3:** Apéndice Técnico 3, Capítulo IV "Sistemas ITS"
- **AT4:** Apéndice Técnico 4 (Indicadores de desempeño)

### 1.4 Definiciones y Acrónimos

| Término | Definición |
|:--------|:-----------|
| **PMV** | Panel de Mensaje Variable (Dynamic Message Sign - DMS) |
| **DMS** | Dynamic Message Sign (Panel de Mensaje Variable) |
| **CCO** | Centro de Control Operacional |
| **ITS** | Intelligent Transportation Systems (Sistemas Inteligentes de Transporte) |
| **NTCIP** | National Transportation Communications for ITS Protocol |
| **NTCIP 1202** | Protocolo estándar para comunicación con PMV |
| **LED** | Light Emitting Diode (Diodo Emisor de Luz) |
| **RGB** | Red, Green, Blue (Rojo, Verde, Azul) |
| **PASA-VÍAS** | Tipo de estructura pórtico sobre calzada |
| **AT1, AT2, AT3, AT4** | Apéndices Técnicos del Contrato |
| **KPI** | Key Performance Indicator (Indicador Clave de Desempeño) |
| **MTBF** | Mean Time Between Failures (Tiempo Medio Entre Fallas) |
| **MTTR** | Mean Time To Repair (Tiempo Medio de Reparación) |

---

## 2. REQUISITOS FUNCIONALES

### 2.1 Visualización de Mensajes Variables

**ID:** RF-PMV-001  
**Descripción:** El sistema debe permitir visualizar mensajes variables de texto, símbolos y gráficos en tiempo real, con capacidad de cambio remoto desde el CCO.  
**Prioridad:** 🔴 Crítica  
**Fuente:** AT2 Sección 3.3.4.8  
**Criterios de Aceptación:**
- Visualización de mensajes alfanuméricos y gráficos
- Resolución mínima: 32×16 píxeles (contractual), recomendado 96×48 píxeles
- Colores: RGB (16.7M colores) o mínimo 3 colores
- Brillo: ≥8,000 cd/m² (legible en pleno sol)
- Distancia de lectura: ≥300 metros
- Ángulo de visión: ≥120° horizontal
- Tiempo de cambio de mensaje: ≤5 segundos (desde comando CCO hasta visualización)

---

### 2.2 Control Remoto desde CCO

**ID:** RF-PMV-002  
**Descripción:** El sistema debe permitir control remoto desde el CCO para cambiar mensajes, activar/desactivar paneles y gestionar contenido.  
**Prioridad:** 🔴 Crítica  
**Fuente:** AT2 Sección 3.3.4.8  
**Criterios de Aceptación:**
- Control remoto desde estaciones de trabajo del CCO
- Protocolo NTCIP 1202 (obligatorio según AT3)
- Envío de mensajes en tiempo real
- Activación/desactivación remota de paneles
- Programación de mensajes predefinidos
- Tiempo de respuesta: ≤5 segundos

---

### 2.3 Almacenamiento Local de Mensajes

**ID:** RF-PMV-003  
**Descripción:** El sistema debe almacenar localmente mensajes predefinidos para operación autónoma en caso de pérdida de comunicación.  
**Prioridad:** 🟡 Media  
**Fuente:** AT2 Sección 3.3.4.8 (implícito)  
**Criterios de Aceptación:**
- Almacenamiento mínimo: ≥100 mensajes predefinidos
- Operación autónoma: ≥24 horas sin comunicación
- Mensajes de respaldo automáticos en caso de pérdida de comunicación

---

### 2.4 Integración con Sistemas ITS

**ID:** RF-PMV-004  
**Descripción:** El sistema debe integrarse con otros sistemas ITS para activación automática de mensajes según condiciones detectadas.  
**Prioridad:** 🟡 Media  
**Fuente:** AT2 Sección 3.3.5.1 (implícito)  
**Criterios de Aceptación:**
- Integración con DAI (Detección Automática de Incidentes)
- Integración con estaciones meteorológicas
- Activación automática de mensajes por condiciones climáticas adversas
- Activación automática de mensajes por incidentes detectados
- Coordinación con CCTV para visualización de eventos

---

### 2.5 Coordinación con Policía de Carreteras

**ID:** RF-PMV-005  
**Descripción:** El sistema debe permitir coordinación con Policía de Carreteras para mensajes prioritarios de seguridad vial.  
**Prioridad:** 🔴 Crítica  
**Fuente:** AT2 Sección 3.3.4.8  
**Criterios de Aceptación:**
- Prioridad a mensajes de Policía de Carreteras
- Interfaz para envío de mensajes desde Policía
- Notificación automática de mensajes prioritarios al CCO

---

### 2.6 Información de Peajes

**ID:** RF-PMV-006  
**Descripción:** El sistema debe mostrar información de peajes (tarifas, métodos de pago, tiempos de espera) especialmente antes y después de estaciones de peaje.  
**Prioridad:** 🔴 Crítica  
**Fuente:** AT2 Sección 3.3.4.8, Resolución 546/2018  
**Criterios de Aceptación:**
- Integración con sistema de peajes
- Visualización de tarifas actualizadas
- Información de métodos de pago disponibles
- Tiempos de espera estimados (si aplica)
- Ubicación: Antes y después de cada estación de peaje (obligatorio)

---

## 3. REQUISITOS NO FUNCIONALES

### 3.1 Requisitos de Disponibilidad

| ID | Requisito | Descripción | Valor Mínimo Aceptación | Fuente |
|:---|:----------|:------------|:------------------------|:-------|
| **RNF-PMV-001** | Disponibilidad del sistema | El sistema PMV debe estar operativo y disponible para mostrar mensajes. | ≥ 99% anual | AT4 (Indicador O1) |
| **RNF-PMV-002** | MTBF (Tiempo Medio Entre Fallas) | El tiempo promedio entre fallas de un panel individual. | ≥ 5,000 horas | Buenas prácticas |
| **RNF-PMV-003** | MTTR (Tiempo Medio de Reparación) | El tiempo promedio para reparar un panel después de una falla. | ≤ 24 horas (para fallas críticas) | AT2 (implícito) |
| **RNF-PMV-004** | Disponibilidad de comunicación | El sistema de comunicación con CCO debe estar disponible. | ≥ 99.5% anual | Crítico para control remoto |

### 3.2 Requisitos de Performance

| ID | Requisito | Descripción | Valor Mínimo Aceptación | Fuente |
|:---|:----------|:------------|:------------------------|:-------|
| **RNF-PMV-005** | Tiempo de respuesta (CCO → PMV) | El tiempo desde comando hasta cambio de mensaje. | ≤ 5 segundos | Información oportuna |
| **RNF-PMV-006** | Latencia de comunicación | El tiempo de transmisión de datos entre CCO y PMV. | ≤ 2 segundos | Operación en tiempo real |
| **RNF-PMV-007** | Velocidad de actualización | La velocidad de cambio de mensajes en el panel. | ≤ 1 segundo | Fluidez visual |
| **RNF-PMV-008** | Capacidad de mensajes simultáneos | Número de mensajes que pueden gestionarse simultáneamente. | ≥ 10 mensajes activos | Gestión eficiente |

### 3.3 Requisitos de Visibilidad y Legibilidad

| ID | Requisito | Descripción | Valor Mínimo Aceptación | Fuente |
|:---|:----------|:------------|:------------------------|:-------|
| **RNF-PMV-009** | Brillo del panel | El brillo mínimo del panel para legibilidad en pleno sol. | ≥ 8,000 cd/m² (nits) | AT2 §3.3.4.8 |
| **RNF-PMV-010** | Distancia de lectura | La distancia máxima desde la cual el mensaje es legible. | ≥ 300 metros | AT2 §3.3.4.8 |
| **RNF-PMV-011** | Ángulo de visión | El ángulo horizontal desde el cual el mensaje es legible. | ≥ 120° horizontal | AT2 §3.3.4.8 |
| **RNF-PMV-012** | Contraste | El contraste mínimo entre texto y fondo. | ≥ 3:1 | Legibilidad |
| **RNF-PMV-013** | Visibilidad nocturna | El panel debe ser legible en condiciones nocturnas. | Brillo ajustable automáticamente | Operación 24/7 |

### 3.4 Requisitos de Seguridad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-PMV-014** | Autenticación de acceso | El acceso a control de PMV debe ser autenticado. | Credenciales de usuario y contraseña robustas | ISO 27001 |
| **RNF-PMV-015** | Cifrado de comunicación | Las comunicaciones entre CCO y PMV deben estar cifradas. | TLS 1.2 mínimo o protocolo seguro | ISO 27001 |
| **RNF-PMV-016** | Protección física | Los paneles deben ser resistentes al vandalismo. | Carcasas antivandalismo IK08 mínimo | Campo (exposición pública) |
| **RNF-PMV-017** | Segmentación de red | Los PMV deben estar en VLAN dedicada para ITS. | VLAN separada, firewall | Buenas prácticas |
| **RNF-PMV-018** | Control de acceso a mensajes | Solo personal autorizado puede enviar mensajes. | Roles y permisos (operador, supervisor, admin) | ISO 27001 |

### 3.5 Requisitos Ambientales y de Protección

| ID | Requisito | Valor Mínimo | Fuente |
|:---|:----------|:-------------|:-------|
| **RNF-PMV-019** | Grado de protección IP | IP65 frontal, IP54 posterior (equipos exteriores) | IEC 60529 |
| **RNF-PMV-020** | Grado de protección IK | IK08 mínimo (antivandalismo) | IEC 62262 |
| **RNF-PMV-021** | Rango de temperatura operación | -20°C a +60°C | Condiciones climáticas colombianas |
| **RNF-PMV-022** | Humedad relativa | 0% a 95% RH (sin condensación) | IEC 60068-2-78 |
| **RNF-PMV-023** | Resistencia a viento | 120 km/h | Zona tropical |
| **RNF-PMV-024** | Protección contra rayos | Supresores de transitorios, puesta a tierra | RETIE |

### 3.6 Requisitos de Usabilidad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-PMV-025** | Interfaz de usuario intuitiva | Operadores capacitados en < 8 horas | AT2 (implícito) |
| **RNF-PMV-026** | Biblioteca de mensajes predefinidos | Mensajes comunes predefinidos para uso rápido | Operación eficiente |
| **RNF-PMV-027** | Idioma | Español (interfaz y mensajes) | Colombia |
| **RNF-PMV-028** | Validación de mensajes | El sistema debe validar que los mensajes sean legibles antes de enviarlos | Prevención de errores |

### 3.7 Requisitos de Mantenibilidad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-PMV-029** | Actualización de firmware remota | Sin necesidad de visita al campo | Operación eficiente |
| **RNF-PMV-030** | Diagnóstico remoto | Monitoreo SNMP de estado de paneles | Gestión proactiva |
| **RNF-PMV-031** | Disponibilidad de repuestos | Durante toda la concesión (25 años) | AT2 (garantía) |
| **RNF-PMV-032** | Modularidad de componentes | Reemplazo de módulos sin afectar sistema completo | Mantenimiento ágil |
| **RNF-PMV-033** | Documentación técnica | Manuales en español, actualizados | AT2 (implícito) |

---

## 4. REQUISITOS DE INTERFACES

### 4.1 Interface PMV ↔ CCO

**ID:** RI-PMV-001  
**Sistemas:** Paneles PMV ↔ CCO (Centro de Control Operacional)  
**Tipo:** Red de Datos IP (Control sobre IP)  
**Protocolo:** NTCIP 1202 (obligatorio según AT3), SNMP (para monitoreo de estado)  
**Datos Intercambiados:**
- Comandos de control (cambio de mensajes, activación/desactivación)
- Estado operativo de paneles
- Confirmación de recepción de mensajes
- Alarmas y eventos
**Frecuencia:** Por evento (control), cada 5 minutos (monitoreo).  
**Ancho de banda:** < 1 Mbps por panel (total ~14 Mbps for 14 paneles).

---

### 4.2 Interface PMV ↔ Sistema de Telecomunicaciones

**ID:** RI-PMV-002  
**Sistemas:** Paneles PMV ↔ Red Troncal de Fibra Óptica  
**Tipo:** Física / Red de Datos IP  
**Protocolo:** Ethernet (Gigabit), Fibra Óptica Monomodo (ITU-T G.652.D)  
**Datos Intercambiados:**
- Tráfico de control y datos
**Frecuencia:** Continua.  
**Ancho de banda:** Dedicado por panel (mínimo 10 Mbps), agregación 100 Mbps.

---

### 4.3 Interface PMV ↔ Sistema SCADA

**ID:** RI-PMV-003  
**Sistemas:** Paneles PMV ↔ Sistema SCADA  
**Tipo:** Lógica (a través de red IP)  
**Protocolo:** SNMP v3, Modbus TCP (opcional)  
**Datos Intercambiados:**
- Estado operativo de paneles
- Alarmas de falla
- Métricas de desempeño
**Frecuencia:** Cada 5 minutos (polling), por evento (alarmas).

---

### 4.4 Interface PMV ↔ Sistema ITS (DAI, Meteo)

**ID:** RI-PMV-004  
**Sistemas:** Paneles PMV ↔ Sistema DAI / Estaciones Meteorológicas  
**Tipo:** Lógica (a través de red IP, vía CCO)  
**Protocolo:** API REST  
**Datos Intercambiados:**
- Alertas de incidentes detectados
- Condiciones climáticas adversas
- Activación automática de mensajes
**Frecuencia:** Por evento (alertas).

---

### 4.5 Interface PMV ↔ Sistema de Peajes

**ID:** RI-PMV-005  
**Sistemas:** Paneles PMV ↔ Sistema de Peajes  
**Tipo:** Lógica (a través de red IP, vía CCO)  
**Protocolo:** Base de Datos / API REST  
**Datos Intercambiados:**
- Tarifas actualizadas
- Métodos de pago disponibles
- Tiempos de espera estimados
**Frecuencia:** Cada 5-10 minutos (actualización de tarifas), tiempo real (tiempos de espera).

---

### 4.6 Interface PMV ↔ Sistema de Energía Eléctrica

**ID:** RI-PMV-006  
**Sistemas:** Paneles PMV ↔ Red Eléctrica  
**Tipo:** Física (Alimentación)  
**Protocolo:** AC 120V/60Hz  
**Datos Intercambiados:**
- Suministro de energía para operación
**Frecuencia:** Continua.

---

## 5. CASOS DE USO

### 5.1 CU-PMV-001: Envío de Mensaje desde CCO

**Actor Principal:** Operador del CCO  
**Actores Secundarios:** Sistema SCADA, Panel PMV  
**Descripción:** Un operador del CCO envía un mensaje a un panel PMV específico para informar a los usuarios sobre condiciones de tráfico o eventos.

**Precondiciones:**
- El panel PMV está operativo y conectado.
- La red de telecomunicaciones está funcional.
- El CCO está operativo con personal de turno.
- El sistema SCADA está disponible.

**Flujo Normal:**
1. El operador accede al sistema de gestión PMV en el CCO.
2. El operador selecciona un panel PMV específico (por ubicación geográfica).
3. El operador crea o selecciona un mensaje predefinido.
4. El operador envía el mensaje al panel.
5. El sistema transmite el mensaje vía NTCIP 1202.
6. El panel recibe y visualiza el mensaje en ≤5 segundos.
7. El sistema confirma la recepción del mensaje al CCO.
8. El sistema registra la acción en logs de auditoría.

**Postcondiciones:**
- El mensaje es visible en el panel PMV.
- El mensaje está registrado en el sistema.

**Flujos Alternativos:**
- **A1: Panel no responde:** Si el panel no responde, el sistema alerta al operador y registra la falla en SCADA.
- **A2: Mensaje inválido:** Si el mensaje no cumple validaciones, el sistema rechaza el envío y notifica al operador.

---

### 5.2 CU-PMV-002: Activación Automática por Incidente

**Actor Principal:** Sistema DAI (Detección Automática de Incidentes)  
**Actores Secundarios:** Panel PMV, CCO  
**Descripción:** El sistema DAI detecta un incidente y automáticamente activa mensajes de alerta en los PMV más cercanos.

**Precondiciones:**
- El sistema DAI está operativo.
- Los PMV están operativos y conectados.
- La integración DAI-PMV está configurada.

**Flujo Normal:**
1. El sistema DAI detecta un incidente (accidente, vehículo detenido, etc.).
2. El sistema DAI identifica los PMV más cercanos al incidente.
3. El sistema DAI genera un mensaje de alerta automático.
4. El sistema DAI envía el mensaje a los PMV seleccionados vía CCO.
5. Los PMV visualizan el mensaje de alerta.
6. El sistema notifica al operador del CCO sobre la activación automática.
7. El sistema registra el evento en logs de auditoría.

**Postcondiciones:**
- Los mensajes de alerta son visibles en los PMV cercanos al incidente.
- El operador del CCO es notificado.

---

### 5.3 CU-PMV-003: Actualización de Información de Peajes

**Actor Principal:** Sistema de Peajes  
**Actores Secundarios:** Panel PMV, CCO  
**Descripción:** El sistema de peajes actualiza automáticamente la información de tarifas y tiempos de espera en los PMV ubicados antes y después de estaciones de peaje.

**Precondiciones:**
- El sistema de peajes está operativo.
- Los PMV en peajes están operativos y conectados.
- La integración peajes-PMV está configurada.

**Flujo Normal:**
1. El sistema de peajes actualiza tarifas o tiempos de espera.
2. El sistema de peajes identifica los PMV asociados a la estación de peaje.
3. El sistema de peajes genera mensajes actualizados.
4. El sistema de peajes envía los mensajes a los PMV vía CCO.
5. Los PMV visualizan la información actualizada.
6. El sistema registra la actualización en logs.

**Postcondiciones:**
- La información de peajes está actualizada en los PMV.
- Los usuarios ven información actualizada.

---

## 6. MATRIZ DE TRAZABILIDAD CONTRACTUAL

| Requisito ID | Tipo | Descripción Resumida | Fuente Contractual | Componente Afectado | Prioridad | Criterio de Aceptación |
|:-------------|:-----|:---------------------|:-------------------|:--------------------|:----------|:-----------------------|
| **RF-PMV-001** | Funcional | Visualización de mensajes variables | AT2 3.3.4.8 | Panel LED | 🔴 Crítica | Mensajes alfanuméricos y gráficos, resolución 32×16 mínimo, brillo ≥8,000 cd/m², distancia ≥300m. |
| **RF-PMV-002** | Funcional | Control remoto desde CCO | AT2 3.3.4.8 | Controlador PMV, CCO | 🔴 Crítica | Control remoto, protocolo NTCIP 1202, respuesta ≤5s. |
| **RF-PMV-003** | Funcional | Almacenamiento local de mensajes | AT2 3.3.4.8 (implícito) | Controlador PMV | 🟡 Media | Almacenamiento ≥100 mensajes, operación autónoma ≥24h. |
| **RF-PMV-004** | Funcional | Integración con sistemas ITS | AT2 3.3.5.1 (implícito) | Sistema ITS, DAI, Meteo | 🟡 Media | Integración DAI y Meteo, activación automática. |
| **RF-PMV-005** | Funcional | Coordinación con Policía | AT2 3.3.4.8 | CCO, Sistema de gestión | 🔴 Crítica | Prioridad a mensajes de Policía, interfaz disponible. |
| **RF-PMV-006** | Funcional | Información de peajes | AT2 3.3.4.8, Res. 546/2018 | Sistema de peajes, PMV | 🔴 Crítica | Integración con peajes, información antes/después peajes. |
| **RNF-PMV-001** | Disponibilidad | Disponibilidad del sistema | AT4 (O1) | Paneles PMV | 🔴 Crítica | ≥ 99% anual. |
| **RNF-PMV-005** | Performance | Tiempo de respuesta | Información oportuna | Red, Controlador | 🔴 Crítica | ≤ 5 segundos. |
| **RNF-PMV-009** | Visibilidad | Brillo del panel | AT2 §3.3.4.8 | Panel LED | 🔴 Crítica | ≥ 8,000 cd/m². |
| **RNF-PMV-010** | Visibilidad | Distancia de lectura | AT2 §3.3.4.8 | Panel LED | 🔴 Crítica | ≥ 300 metros. |
| **RNF-PMV-015** | Seguridad | Cifrado de comunicación | ISO 27001 | Red, Controlador | 🔴 Crítica | TLS 1.2 mínimo. |
| **RNF-PMV-016** | Seguridad | Protección física | Campo | Panel LED | 🔴 Crítica | Carcasas IK08 mínimo. |
| **RNF-PMV-019** | Ambiental | Protección IP | IEC 60529 | Panel LED | 🔴 Crítica | Grado de protección IP65 frontal, IP54 posterior. |

**Total requisitos identificados:** 33 (6 funcionales + 27 no funcionales)

---

## 7. RESTRICCIONES Y SUPUESTOS

### 7.1 Restricciones

| ID | Restricción | Impacto | Origen |
|:---|:------------|:--------|:-------|
| **REST-PMV-001** | Disponibilidad ≥99% anual | Penalizable según AT4 si no se cumple. | AT4 (Contractual, Penalizable) |
| **REST-PMV-002** | Protocolo NTCIP 1202 obligatorio | No se puede usar otro protocolo. | AT3 (Contractual) |
| **REST-PMV-003** | Separación máxima 20 km por sentido | Obligatorio cumplir distribución. | AT1 (Contractual) |
| **REST-PMV-004** | 2 PMV por peaje (antes + después) | Obligatorio en cada estación de peaje. | AT2 (Contractual) |
| **REST-PMV-005** | Brillo mínimo 7,000 cd/m² | No se puede usar panel con brillo inferior. | AT2 (Contractual) |

### 7.2 Supuestos

| ID | Supuesto | Riesgo si no se cumple | Validación |
|:---|:---------|:-----------------------|:-----------|
| **SUP-PMV-001** | Red de fibra óptica disponible | Sin comunicaciones no hay control remoto. | Validar con T01/T03 Telecomunicaciones. |
| **SUP-PMV-002** | CCO operativo | Los PMV no tendrían destino para control. | Coordinar cronogramas con CCO. |
| **SUP-PMV-003** | Alimentación eléctrica disponible | Requiere obra eléctrica adicional. | Validar con T01/T03 Energía Eléctrica. |
| **SUP-PMV-004** | Ancho de banda suficiente | Latencia alta o pérdida de control. | Validar dimensionamiento de red. |
| **SUP-PMV-005** | Personal de mantenimiento capacitado | Afecta MTTR y disponibilidad. | Plan de capacitación. |

---

## 8. CHECKLIST DE CRITERIOS DE ACEPTACIÓN

### 8.1 Aceptación por Requisito

- [ ] **RF-PMV-001:** Verificar visualización de mensajes alfanuméricos y gráficos, resolución mínima 32×16, brillo ≥8,000 cd/m², distancia ≥300m.
- [ ] **RF-PMV-002:** Controlar remotamente paneles PMV desde CCO, verificar protocolo NTCIP 1202, respuesta ≤5s.
- [ ] **RF-PMV-003:** Verificar almacenamiento local de ≥100 mensajes, operación autónoma ≥24h sin comunicación.
- [ ] **RF-PMV-004:** Simular incidente y verificar activación automática de mensajes en PMV cercanos.
- [ ] **RF-PMV-005:** Verificar coordinación con Policía de Carreteras, prioridad a mensajes de seguridad vial.
- [ ] **RF-PMV-006:** Verificar integración con sistema de peajes, visualización de tarifas y tiempos de espera.
- [ ] **RNF-PMV-001:** Revisar reportes de disponibilidad mensual del sistema PMV.
- [ ] **RNF-PMV-005:** Medir tiempo de respuesta de al menos 10 paneles (comando CCO → cambio de mensaje).
- [ ] **RNF-PMV-009:** Verificar brillo del panel (≥8,000 cd/m²) con medidor de brillo.
- [ ] **RNF-PMV-010:** Verificar distancia de lectura (≥300m) con pruebas de legibilidad.
- [ ] **RNF-PMV-015:** Verificar cifrado TLS 1.2 en comunicaciones entre CCO y PMV.
- [ ] **RNF-PMV-016:** Inspeccionar físicamente los paneles para verificar resistencia al vandalismo (IK08).
- [ ] **RNF-PMV-019:** Verificar la certificación IP65 frontal e IP54 posterior de los paneles.

---

## 9. PRÓXIMOS PASOS (MVP)

- [x] ✅ Análisis de Requisitos completado (T02).
- [ ] 🔄 Desarrollar T03: Arquitectura Conceptual para PMV.
- [ ] ⏳ Validar T04: Especificaciones Técnicas para PMV (ya existe, revisar coherencia).
- [ ] ⏳ Validar T05: Ingeniería de Detalle para PMV (ya existe, revisar coherencia).
- [ ] ⏳ Realizar validación de coherencia entre todos los documentos T01-T05.
- [ ] ⏳ Documentar lecciones aprendidas del proceso MVP.

---

## 10. REFERENCIAS

- `24D_T01_Ficha_Sistema_PMV_MVP_v1.0.md` (Ficha de Sistema PMV)
- `31_T02_Analisis_Requisitos_ITS_v1.0.md` (Análisis de Requisitos ITS - Referencia para requisitos generales)
- `VII. Documentos Transversales/38_VALIDACION_CONTRACTUAL_PMV_v1.0.md` (Validación Contractual PMV)
- Apéndice Técnico 1 - Alcance del Proyecto, Capítulo 3.8 "Sistemas de Información Variable"
- Apéndice Técnico 2 - Condiciones de O&M, Sección 3.3.4.8 "Sistemas de Información Variable"
- Apéndice Técnico 3 - Especificaciones Generales, Capítulo IV "Sistemas ITS"
- Apéndice Técnico 4 - Indicadores de Nivel de Servicio

---

**Versión:** 1.0 MVP  
**Estado:** ✅ Análisis de Requisitos Completado (Piloto MVP)  
**Fecha:** 31 de Octubre 2025  
**Responsable:** Ingeniero de Sistemas ITS / Administrador Contractual EPC  
**Próximo paso:** T03 - Arquitectura Conceptual PMV

