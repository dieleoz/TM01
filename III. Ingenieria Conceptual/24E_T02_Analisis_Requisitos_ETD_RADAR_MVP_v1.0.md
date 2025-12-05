# T02: ANÁLISIS DE REQUISITOS - ETD/RADAR (ESTACIONES DE TOMA DE DATOS Y RADARES)
## Proyecto APP Puerto Salgar - Barrancabermeja
## MVP - Metodología Punto 42

**Fecha:** 31/10/2025  
**Sistema:** ETD (Estaciones de Toma de Datos) + Radares Sancionatorios  
**Responsable:** Ingeniero de Sistemas ITS / Administrador Contractual EPC  
**Versión:** 1.0 MVP  
**Estado:** ✅ Análisis de Requisitos Completado (Piloto MVP)

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Documento

Este documento presenta el **análisis detallado de requisitos** del Sistema de ETD/RADAR (Estaciones de Toma de Datos y Radares Sancionatorios) para el proyecto APP Puerto Salgar - Barrancabermeja, cubriendo:

- Requisitos funcionales (qué debe hacer el sistema)
- Requisitos no funcionales (cómo debe hacerlo: disponibilidad, rendimiento, seguridad, etc.)
- Requisitos de interfaces con otros sistemas
- Casos de uso principales
- Matriz de trazabilidad contractual
- Restricciones y supuestos
- Criterios de aceptación

### 1.2 Alcance

Este análisis se enfoca en el sistema de **15 equipos** (13 ETD + 2 Radares) distribuidos estratégicamente a lo largo del corredor vial (293 km de cobertura total), incluyendo su equipamiento de comunicación, control, procesamiento y su integración con el Centro de Control Operacional (CCO) y la red de telecomunicaciones.

**Distinción funcional:**
- **ETD (13 unidades):** Equipos de monitoreo estadístico (velocidad promedio, flujo, clasificación)
- **Radares (2 unidades):** Equipos sancionatorios (detección infracciones, registro fotográfico)

**Ubicación del CCO:** La Lizama PK 4+300 (RN 4513) - Centro de control del corredor.

### 1.3 Referencias

- **T01:** `24E_T01_Ficha_Sistema_ETD_RADAR_MVP_v1.0.md`
- **T03:** `53_T03_Arquitectura_Conceptual_ITS_v1.0.md` (ETD/RADAR incluido)
- **T04:** `02_T04_Especificaciones_Tecnicas_ETD_Radares_v1.0.md`
- **T05:** `07_T05_Ingenieria_Detalle_RADAR_ETD_v1.0.md`
- **Validación:** `35_VALIDACION_CONTRACTUAL_ETD_RADARES_v1.0.md`
- **AT2:** Apéndice Técnico 2, Sección 3.3.4.5 "Sistemas de Monitoreo y Control de Tráfico"
- **AT3:** Apéndice Técnico 3, Capítulo IV "Sistemas ITS"
- **AT4:** Apéndice Técnico 4 (Indicadores de desempeño)

### 1.4 Definiciones y Acrónimos

| Término | Definición |
|:--------|:-----------|
| **ETD** | Estación de Toma de Datos (Data Collection Station) |
| **RADAR** | Radares Sancionatorios (Speed Enforcement Systems) |
| **ANPR** | Automatic Number Plate Recognition (Reconocimiento Automático de Placas) |
| **SAST** | Sistema Automático de Sanción de Tránsito |
| **CCO** | Centro de Control Operacional |
| **ITS** | Intelligent Transportation Systems (Sistemas Inteligentes de Transporte) |
| **UF** | Unidad Funcional |
| **SICC** | Sistema Informático de Contabilización y Control (ANI) |
| **SIMIT** | Sistema Integrado de Información de Tránsito |
| **ONAC** | Organismo Nacional de Acreditación de Colombia |
| **AT2, AT3, AT4** | Apéndices Técnicos del Contrato |
| **KPI** | Key Performance Indicator (Indicador Clave de Desempeño) |
| **MTBF** | Mean Time Between Failures (Tiempo Medio Entre Fallas) |
| **MTTR** | Mean Time To Repair (Tiempo Medio de Reparación) |

---

## 2. REQUISITOS FUNCIONALES

### 2.1 Medición de Velocidad Promedio por UF (ETD)

**ID:** RF-ETD-001  
**Descripción:** El sistema ETD debe medir la velocidad promedio de vehículos por Unidad Funcional para cálculo de indicadores de desempeño.  
**Prioridad:** 🔴 Crítica  
**Fuente:** AT4 (Indicadores de Nivel de Servicio)  
**Criterios de Aceptación:**
- Medición continua de velocidad de vehículos
- Precisión: ±3 km/h
- Rango: 20-250 km/h
- Cálculo de velocidad promedio por UF
- Transmisión de datos al CCO en tiempo real
- Reporte a SICC para indicadores de desempeño

---

### 2.2 Medición de Flujo Vehicular (ETD)

**ID:** RF-ETD-002  
**Descripción:** El sistema ETD debe medir el volumen y flujo de vehículos por carril y por sentido.  
**Prioridad:** 🔴 Crítica  
**Fuente:** AT3 Cap. IV  
**Criterios de Aceptación:**
- Medición continua de volumen vehicular
- Clasificación por carril (hasta 4 carriles simultáneos)
- Clasificación por sentido (bidireccional)
- Precisión: ≥95% en conteo vehicular
- Transmisión de datos al CCO en tiempo real

---

### 2.3 Clasificación Vehicular (ETD)

**ID:** RF-ETD-003  
**Descripción:** El sistema ETD debe clasificar vehículos en categorías (livianos, pesados, motocicletas, etc.).  
**Prioridad:** 🟡 Media  
**Fuente:** AT3 Cap. IV  
**Criterios de Aceptación:**
- Clasificación según estándar FHWA (10 categorías)
- Precisión: ≥90% en clasificación
- Detección de contrasentido
- Transmisión de datos al CCO

---

### 2.4 Detección de Infracciones (Radares)

**ID:** RF-RADAR-001  
**Descripción:** El sistema de Radares debe detectar infracciones de tránsito (exceso velocidad, contrasentido, invasión carril).  
**Prioridad:** 🔴 Crítica  
**Fuente:** AT2 Sección 3.3.4.5  
**Criterios de Aceptación:**
- Detección de exceso de velocidad
- Precisión: ±2 km/h
- Detección de contrasentido
- Detección de invasión de carril
- Registro automático de infracciones
- Transmisión de evidencia al CCO

---

### 2.5 Registro Fotográfico de Infracciones (Radares)

**ID:** RF-RADAR-002  
**Descripción:** El sistema de Radares debe registrar fotográficamente vehículos infractores con superposición de datos.  
**Prioridad:** 🔴 Crítica  
**Fuente:** AT2 Sección 3.3.4.5, Resolución 718/2018  
**Criterios de Aceptación:**
- Captura fotográfica de vehículo infractor
- Resolución: ≥1920×1080 px
- Superposición de datos (velocidad, fecha, hora, ubicación)
- Reconocimiento de placa (ANPR): ≥95% tasa de reconocimiento
- Almacenamiento local: ≥30 días
- Transmisión al CCO en tiempo real

---

### 2.6 Integración con Sistemas ITS

**ID:** RF-ETD-RADAR-001  
**Descripción:** El sistema debe integrarse con otros sistemas ITS para activación automática de alertas y correlación de eventos.  
**Prioridad:** 🟡 Media  
**Fuente:** AT2 Sección 3.3.5.1 (implícito)  
**Criterios de Aceptación:**
- Integración con DAI (Detección Automática de Incidentes)
- Integración con CCTV para correlación visual
- Integración con PMV para activación de mensajes
- Activación automática de alertas por condiciones anómalas

---

### 2.7 Reporte a SICC (ETD)

**ID:** RF-ETD-004  
**Descripción:** El sistema ETD debe reportar datos a SICC (Sistema Informático de Contabilización y Control) de la ANI para indicadores de desempeño.  
**Prioridad:** 🔴 Crítica  
**Fuente:** AT4 (Indicadores de Nivel de Servicio)  
**Criterios de Aceptación:**
- Transmisión de datos de velocidad promedio por UF
- Transmisión de datos de flujo vehicular
- Frecuencia: Diaria o según requerimiento SICC
- Formato: API REST o Base de Datos
- Disponibilidad: ≥99% de transmisión exitosa

---

## 3. REQUISITOS NO FUNCIONALES

### 3.1 Requisitos de Disponibilidad

| ID | Requisito | Descripción | Valor Mínimo Aceptación | Fuente |
|:---|:----------|:------------|:------------------------|:-------|
| **RNF-ETD-001** | Disponibilidad del sistema | El sistema ETD/RADAR debe estar operativo y disponible para medición. | ≥ 99% anual | AT4 (Indicador O1) |
| **RNF-ETD-002** | MTBF (Tiempo Medio Entre Fallas) | El tiempo promedio entre fallas de un equipo individual. | ≥ 5,000 horas | Buenas prácticas |
| **RNF-ETD-003** | MTTR (Tiempo Medio de Reparación) | El tiempo promedio para reparar un equipo después de una falla. | ≤ 24 horas (para fallas críticas) | AT2 (implícito) |
| **RNF-ETD-004** | Disponibilidad de comunicación | El sistema de comunicación con CCO debe estar disponible. | ≥ 99.5% anual | Crítico para transmisión de datos |

### 3.2 Requisitos de Performance

| ID | Requisito | Descripción | Valor Mínimo Aceptación | Fuente |
|:---|:----------|:------------|:------------------------|:-------|
| **RNF-ETD-005** | Precisión de velocidad (ETD) | La precisión de medición de velocidad. | ±3 km/h | AT3 Cap. IV |
| **RNF-ETD-006** | Precisión de velocidad (Radares) | La precisión de medición de velocidad para sanciones. | ±2 km/h | AT2 §3.3.4.5 |
| **RNF-ETD-007** | Precisión de conteo vehicular | La precisión de conteo de vehículos. | ≥95% | AT3 Cap. IV |
| **RNF-ETD-008** | Precisión de clasificación vehicular | La precisión de clasificación de vehículos. | ≥90% | AT3 Cap. IV |
| **RNF-ETD-009** | Tasa de reconocimiento ANPR | La tasa de reconocimiento de placas. | ≥95% | AT2 §3.3.4.5 |
| **RNF-ETD-010** | Latencia de transmisión | El tiempo desde captura hasta recepción en CCO. | ≤2 segundos | Operación en tiempo real |
| **RNF-ETD-011** | Rango de medición | El rango máximo de medición del sensor. | ≥150 m | AT3 Cap. IV |

### 3.3 Requisitos de Seguridad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-ETD-012** | Cifrado de transmisión | Las transmisiones de datos deben estar cifradas. | TLS 1.2 mínimo o protocolo seguro | ISO 27001 |
| **RNF-ETD-013** | Autenticación de acceso | El acceso a equipos y sistemas de gestión debe ser autenticado. | Credenciales de usuario y contraseña robustas | ISO 27001 |
| **RNF-ETD-014** | Protección física | Los equipos deben ser resistentes al vandalismo. | Carcasas antivandalismo IK08 mínimo | Campo (exposición pública) |
| **RNF-ETD-015** | Segmentación de red | Los equipos deben estar en VLAN dedicada para ITS. | VLAN separada, firewall | Buenas prácticas |
| **RNF-ETD-016** | Protección de datos personales | Cumplimiento con Ley 1581/2012 (Solo radares). | Políticas de privacidad, retención limitada | Ley 1581/2012 |
| **RNF-ETD-017** | Integridad de evidencia | Las evidencias fotográficas deben ser inviolables. | Firma digital, timestamp, no modificable | Resolución 718/2018 |

### 3.4 Requisitos Ambientales y de Protección

| ID | Requisito | Valor Mínimo | Fuente |
|:---|:----------|:-------------|:-------|
| **RNF-ETD-018** | Grado de protección IP | IP65 mínimo (equipos exteriores) | IEC 60529 |
| **RNF-ETD-019** | Grado de protección IK | IK08 mínimo (antivandalismo) | IEC 62262 |
| **RNF-ETD-020** | Rango de temperatura operación | -40°C a +70°C | AT3 Cap. IV |
| **RNF-ETD-021** | Humedad relativa | 0% a 95% RH (sin condensación) | IEC 60068-2-78 |
| **RNF-ETD-022** | Resistencia a viento | 120 km/h | Zona tropical |
| **RNF-ETD-023** | Protección contra rayos | Supresores de transitorios, puesta a tierra | RETIE |

### 3.5 Requisitos Normativos (Radares)

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-ETD-024** | Certificación ONAC | Los radares deben estar certificados por ONAC. | Certificación metrológica obligatoria | Resolución 718/2018 |
| **RNF-ETD-025** | Autorización MinTransporte | Los radares deben tener autorización del Ministerio de Transporte. | Autorización previa obligatoria | Resolución 718/2018 |
| **RNF-ETD-026** | Calibración anual | Los radares deben calibrarse anualmente. | Calibración por ONAC o laboratorio acreditado | Resolución 718/2018 |
| **RNF-ETD-027** | Señalización previa | Debe existir señalización 500 m antes del radar. | Señalización vial obligatoria | Resolución 718/2018 |

### 3.6 Requisitos de Usabilidad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-ETD-028** | Interfaz de usuario intuitiva | Operadores capacitados en < 8 horas | AT2 (implícito) |
| **RNF-ETD-029** | Visualización de datos | Dashboard con datos de tráfico en tiempo real | Operación efectiva |
| **RNF-ETD-030** | Idioma | Español (interfaz y manuales) | Colombia |

### 3.7 Requisitos de Mantenibilidad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-ETD-031** | Actualización de firmware remota | Sin necesidad de visita al campo | Operación eficiente |
| **RNF-ETD-032** | Diagnóstico remoto | Monitoreo SNMP de estado de equipos | Gestión proactiva |
| **RNF-ETD-033** | Disponibilidad de repuestos | Durante toda la concesión (25 años) | AT2 (garantía) |
| **RNF-ETD-034** | Modularidad de componentes | Reemplazo de módulos sin afectar sistema completo | Mantenimiento ágil |
| **RNF-ETD-035** | Documentación técnica | Manuales en español, actualizados | AT2 (implícito) |

---

## 4. REQUISITOS DE INTERFACES

### 4.1 Interface ETD/RADAR ↔ CCO

**ID:** RI-ETD-001  
**Sistemas:** Equipos ETD/RADAR ↔ CCO (Centro de Control Operacional)  
**Tipo:** Red de Datos IP  
**Protocolo:** API REST, SNMP (para monitoreo de estado)  
**Datos Intercambiados:**
- Datos de tráfico en tiempo real (velocidad, flujo, clasificación)
- Evidencias fotográficas (solo radares)
- Estado operativo de equipos
- Alarmas y eventos
**Frecuencia:** Tiempo real (datos), por evento (evidencias, alarmas).  
**Ancho de banda:** < 1 Mbps por ETD, < 5 Mbps por radar (evidencias).

---

### 4.2 Interface ETD/RADAR ↔ Sistema de Telecomunicaciones

**ID:** RI-ETD-002  
**Sistemas:** Equipos ETD/RADAR ↔ Red Troncal de Fibra Óptica  
**Tipo:** Física / Red de Datos IP  
**Protocolo:** Ethernet (Gigabit), Fibra Óptica Monomodo (ITU-T G.652.D)  
**Datos Intercambiados:**
- Tráfico de datos y control
**Frecuencia:** Continua.  
**Ancho de banda:** Dedicado por equipo (mínimo 10 Mbps), agregación 100 Mbps.

---

### 4.3 Interface ETD/RADAR ↔ Sistema SCADA

**ID:** RI-ETD-003  
**Sistemas:** Equipos ETD/RADAR ↔ Sistema SCADA  
**Tipo:** Lógica (a través de red IP)  
**Protocolo:** SNMP v3, Modbus TCP (opcional)  
**Datos Intercambiados:**
- Estado operativo de equipos
- Alarmas de falla
- Métricas de desempeño
**Frecuencia:** Cada 5 minutos (polling), por evento (alarmas).

---

### 4.4 Interface ETD ↔ SICC (ANI)

**ID:** RI-ETD-004  
**Sistemas:** Equipos ETD ↔ SICC (Sistema Informático de Contabilización y Control)  
**Tipo:** Lógica (a través de red IP, vía CCO)  
**Protocolo:** API REST, Base de Datos  
**Datos Intercambiados:**
- Velocidad promedio por UF
- Flujo vehicular
- Datos para indicadores de desempeño
**Frecuencia:** Diaria o según requerimiento SICC.

---

### 4.5 Interface RADAR ↔ SIMIT (Opcional)

**ID:** RI-RADAR-001  
**Sistemas:** Radares ↔ SIMIT (Sistema Integrado de Información de Tránsito)  
**Tipo:** Lógica (a través de red IP, vía CCO)  
**Protocolo:** API REST  
**Datos Intercambiados:**
- Datos de infracciones
- Evidencias fotográficas
**Frecuencia:** Por evento (infracciones).  
**Nota:** Capacidad técnica, NO obligatorio según contrato.

---

### 4.6 Interface ETD/RADAR ↔ Sistema de Energía Eléctrica

**ID:** RI-ETD-005  
**Sistemas:** Equipos ETD/RADAR ↔ Red Eléctrica  
**Tipo:** Física (Alimentación)  
**Protocolo:** AC 120V/60Hz  
**Datos Intercambiados:**
- Suministro de energía para operación
**Frecuencia:** Continua.

---

## 5. CASOS DE USO

### 5.1 CU-ETD-001: Medición Continua de Tráfico

**Actor Principal:** Sistema ETD  
**Actores Secundarios:** CCO, SCADA, SICC  
**Descripción:** Un ETD mide continuamente velocidad, flujo y clasificación vehicular y transmite los datos al CCO.

**Precondiciones:**
- El ETD está operativo y conectado.
- La red de telecomunicaciones está funcional.
- El CCO está operativo.

**Flujo Normal:**
1. El ETD detecta vehículos mediante sensor radar/microondas.
2. El ETD mide velocidad, flujo y clasificación.
3. El ETD procesa y agrega datos.
4. El ETD transmite datos al CCO en tiempo real.
5. El CCO almacena y procesa datos.
6. El CCO reporta datos a SICC (diariamente).
7. El sistema registra el proceso en logs.

**Postcondiciones:**
- Los datos de tráfico están disponibles en CCO.
- Los datos están reportados a SICC.

---

### 5.2 CU-RADAR-001: Detección y Registro de Infracción

**Actor Principal:** Sistema Radar  
**Actores Secundarios:** CCO, Sistema de Gestión de Infracciones  
**Descripción:** Un radar detecta una infracción de velocidad y registra evidencia fotográfica.

**Precondiciones:**
- El radar está operativo y conectado.
- El radar está calibrado y autorizado por MinTransporte.
- La red de telecomunicaciones está funcional.

**Flujo Normal:**
1. El radar detecta un vehículo excediendo velocidad límite.
2. El radar verifica que la velocidad supera el umbral configurado.
3. El radar activa la cámara ANPR.
4. El radar captura fotografía del vehículo infractor.
5. El sistema ANPR reconoce la placa (≥95% precisión).
6. El sistema superpone datos (velocidad, fecha, hora, ubicación).
7. El radar almacena evidencia localmente (≥30 días).
8. El radar transmite evidencia al CCO en tiempo real.
9. El CCO procesa y almacena evidencia.
10. El sistema registra el evento en logs de auditoría.

**Postcondiciones:**
- La evidencia está almacenada en CCO.
- La evidencia está disponible para procesamiento legal.

**Flujos Alternativos:**
- **A1: Placa no reconocida:** Si el ANPR no reconoce la placa, se almacena la imagen sin reconocimiento y se marca para revisión manual.

---

### 5.3 CU-ETD-002: Reporte a SICC

**Actor Principal:** Sistema CCO  
**Actores Secundarios:** ETD, SICC (ANI)  
**Descripción:** El CCO reporta datos de velocidad promedio por UF a SICC para indicadores de desempeño.

**Precondiciones:**
- Los ETD están operativos y transmitiendo datos.
- El CCO está operativo.
- La conexión con SICC está disponible.

**Flujo Normal:**
1. El CCO agrega datos de velocidad por UF (diariamente).
2. El CCO genera reporte según formato SICC.
3. El CCO transmite reporte a SICC vía API REST.
4. El SICC confirma recepción del reporte.
5. El sistema registra la transmisión en logs.

**Postcondiciones:**
- Los datos están reportados a SICC.
- Los indicadores de desempeño están actualizados.

---

## 6. MATRIZ DE TRAZABILIDAD CONTRACTUAL

| Requisito ID | Tipo | Descripción Resumida | Fuente Contractual | Componente Afectado | Prioridad | Criterio de Aceptación |
|:-------------|:-----|:---------------------|:-------------------|:--------------------|:----------|:-----------------------|
| **RF-ETD-001** | Funcional | Medición velocidad promedio por UF | AT4 (Indicadores) | ETD | 🔴 Crítica | Precisión ±3 km/h, rango 20-250 km/h, transmisión tiempo real. |
| **RF-ETD-002** | Funcional | Medición flujo vehicular | AT3 Cap. IV | ETD | 🔴 Crítica | Precisión ≥95%, hasta 4 carriles, bidireccional. |
| **RF-ETD-003** | Funcional | Clasificación vehicular | AT3 Cap. IV | ETD | 🟡 Media | Clasificación FHWA, precisión ≥90%. |
| **RF-RADAR-001** | Funcional | Detección infracciones | AT2 §3.3.4.5 | Radar | 🔴 Crítica | Precisión ±2 km/h, detección exceso velocidad, contrasentido. |
| **RF-RADAR-002** | Funcional | Registro fotográfico | AT2 §3.3.4.5, Res. 718/2018 | Radar | 🔴 Crítica | Resolución ≥1920×1080, ANPR ≥95%, almacenamiento ≥30 días. |
| **RF-ETD-004** | Funcional | Reporte a SICC | AT4 (Indicadores) | ETD, CCO | 🔴 Crítica | Transmisión diaria, formato API REST, disponibilidad ≥99%. |
| **RNF-ETD-001** | Disponibilidad | Disponibilidad del sistema | AT4 (O1) | ETD/RADAR | 🔴 Crítica | ≥ 99% anual. |
| **RNF-ETD-005** | Performance | Precisión velocidad ETD | AT3 Cap. IV | ETD | 🔴 Crítica | ±3 km/h. |
| **RNF-ETD-006** | Performance | Precisión velocidad Radares | AT2 §3.3.4.5 | Radar | 🔴 Crítica | ±2 km/h. |
| **RNF-ETD-009** | Performance | Tasa reconocimiento ANPR | AT2 §3.3.4.5 | Radar | 🔴 Crítica | ≥95%. |
| **RNF-ETD-012** | Seguridad | Cifrado de transmisión | ISO 27001 | Red, Equipos | 🔴 Crítica | TLS 1.2 mínimo. |
| **RNF-ETD-014** | Seguridad | Protección física | Campo | ETD/RADAR | 🔴 Crítica | Carcasas IK08 mínimo. |
| **RNF-ETD-018** | Ambiental | Protección IP | IEC 60529 | ETD/RADAR | 🔴 Crítica | Grado de protección IP65 mínimo. |
| **RNF-ETD-024** | Normativo | Certificación ONAC | Res. 718/2018 | Radar | 🔴 Crítica | Certificación metrológica obligatoria (solo radares). |
| **RNF-ETD-025** | Normativo | Autorización MinTransporte | Res. 718/2018 | Radar | 🔴 Crítica | Autorización previa obligatoria (solo radares). |

**Total requisitos identificados:** 35 (7 funcionales + 28 no funcionales)

---

## 7. RESTRICCIONES Y SUPUESTOS

### 7.1 Restricciones

| ID | Restricción | Impacto | Origen |
|:---|:------------|:--------|:-------|
| **REST-ETD-001** | Disponibilidad ≥99% anual | Penalizable según AT4 si no se cumple. | AT4 (Contractual, Penalizable) |
| **REST-ETD-002** | Precisión velocidad ETD ±3 km/h | No se puede usar sensor con precisión inferior. | AT3 (Contractual) |
| **REST-ETD-003** | Precisión velocidad Radares ±2 km/h | No se puede usar sensor con precisión inferior. | AT2 (Contractual) |
| **REST-ETD-004** | Autorización MinTransporte (Radares) | Obligatorio tramitar antes de instalación. | Resolución 718/2018 (Legal) |
| **REST-ETD-005** | Certificación ONAC (Radares) | Obligatorio para radares sancionatorios. | Resolución 718/2018 (Legal) |
| **REST-ETD-006** | ETD NO requiere cámara ANPR | ETD son equipos de monitoreo, no sancionatorios. | Validación contractual |

### 7.2 Supuestos

| ID | Supuesto | Riesgo si no se cumple | Validación |
|:---|:---------|:-----------------------|:-----------|
| **SUP-ETD-001** | Red de fibra óptica disponible | Sin comunicaciones no hay transmisión de datos. | Validar con T01/T03 Telecomunicaciones. |
| **SUP-ETD-002** | CCO operativo | Los equipos no tendrían destino para transmisión. | Coordinar cronogramas con CCO. |
| **SUP-ETD-003** | Alimentación eléctrica disponible | Requiere obra eléctrica adicional. | Validar con T01/T03 Energía Eléctrica. |
| **SUP-ETD-004** | Autorización MinTransporte obtenida | Los radares no pueden operar sin autorización. | Iniciar trámite temprano (6-12 meses antes). |
| **SUP-ETD-005** | Estudio técnico de seguridad vial completado | No se pueden definir ubicaciones de radares. | Realizar estudio antes de instalación. |

---

## 8. CHECKLIST DE CRITERIOS DE ACEPTACIÓN

### 8.1 Aceptación por Requisito

- [ ] **RF-ETD-001:** Verificar medición de velocidad promedio por UF, precisión ±3 km/h, rango 20-250 km/h.
- [ ] **RF-ETD-002:** Verificar medición de flujo vehicular, precisión ≥95%, hasta 4 carriles simultáneos.
- [ ] **RF-ETD-003:** Verificar clasificación vehicular, precisión ≥90%, estándar FHWA.
- [ ] **RF-RADAR-001:** Verificar detección de infracciones, precisión ±2 km/h, detección exceso velocidad y contrasentido.
- [ ] **RF-RADAR-002:** Verificar registro fotográfico, resolución ≥1920×1080, ANPR ≥95%, almacenamiento ≥30 días.
- [ ] **RF-ETD-004:** Verificar reporte a SICC, transmisión diaria, formato API REST, disponibilidad ≥99%.
- [ ] **RNF-ETD-001:** Revisar reportes de disponibilidad mensual del sistema ETD/RADAR.
- [ ] **RNF-ETD-005:** Verificar precisión de velocidad ETD (±3 km/h) con pruebas de campo.
- [ ] **RNF-ETD-006:** Verificar precisión de velocidad Radares (±2 km/h) con pruebas de campo y certificación ONAC.
- [ ] **RNF-ETD-009:** Verificar tasa de reconocimiento ANPR (≥95%) con pruebas de campo.
- [ ] **RNF-ETD-012:** Verificar cifrado TLS 1.2 en transmisiones entre equipos y CCO.
- [ ] **RNF-ETD-014:** Inspeccionar físicamente los equipos para verificar resistencia al vandalismo (IK08).
- [ ] **RNF-ETD-018:** Verificar la certificación IP65 de los equipos.
- [ ] **RNF-ETD-024:** Verificar certificación ONAC de los radares (solo radares).
- [ ] **RNF-ETD-025:** Verificar autorización del Ministerio de Transporte para radares (solo radares).

---

## 9. PRÓXIMOS PASOS (MVP)

- [x] ✅ Análisis de Requisitos completado (T02).
- [ ] 🔄 Desarrollar T03: Arquitectura Conceptual para ETD/RADAR.
- [ ] ⏳ Validar T04: Especificaciones Técnicas para ETD/RADAR (ya existe, revisar coherencia).
- [ ] ⏳ Validar T05: Ingeniería de Detalle para ETD/RADAR (ya existe, revisar coherencia).
- [ ] ⏳ Realizar validación de coherencia entre todos los documentos T01-T05.
- [ ] ⏳ Documentar lecciones aprendidas del proceso MVP.

---

## 10. REFERENCIAS

- `24E_T01_Ficha_Sistema_ETD_RADAR_MVP_v1.0.md` (Ficha de Sistema ETD/RADAR)
- `31_T02_Analisis_Requisitos_ITS_v1.0.md` (Análisis de Requisitos ITS - Referencia para requisitos generales)
- `VII. Documentos Transversales/35_VALIDACION_CONTRACTUAL_ETD_RADARES_v1.0.md` (Validación Contractual ETD/RADAR)
- Apéndice Técnico 2 - Condiciones de O&M, Sección 3.3.4.5 "Sistemas de Monitoreo y Control de Tráfico"
- Apéndice Técnico 3 - Especificaciones Generales, Capítulo IV "Sistemas ITS"
- Apéndice Técnico 4 - Indicadores de Nivel de Servicio
- Resolución 718/2018 - Ministerio de Transporte (Solo radares sancionatorios)

---

**Versión:** 1.0 MVP  
**Estado:** ✅ Análisis de Requisitos Completado (Piloto MVP)  
**Fecha:** 31 de Octubre 2025  
**Responsable:** Ingeniero de Sistemas ITS / Administrador Contractual EPC  
**Próximo paso:** T03 - Arquitectura Conceptual ETD/RADAR

