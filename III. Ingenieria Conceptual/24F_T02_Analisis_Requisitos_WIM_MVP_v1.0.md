# T02: ANÁLISIS DE REQUISITOS - WIM (SISTEMA DE PESAJE EN MOVIMIENTO)
## Proyecto APP Puerto Salgar - Barrancabermeja
## MVP - Metodología Punto 42

**Fecha:** 31/10/2025  
**Sistema:** WIM - Weigh In Motion (Sistema de Pesaje Dinámico y Estático)  
**Responsable:** Ingeniero Civil / Administrador Contractual EPC  
**Versión:** 1.0 MVP  
**Estado:** ✅ Análisis de Requisitos Completado (Piloto MVP)

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Documento

Este documento presenta el **análisis detallado de requisitos** del Sistema de Pesaje WIM (Weigh In Motion) para el proyecto APP Puerto Salgar - Barrancabermeja, cubriendo:

- Requisitos funcionales (qué debe hacer el sistema)
- Requisitos no funcionales (cómo debe hacerlo: disponibilidad, rendimiento, seguridad, etc.)
- Requisitos de interfaces con otros sistemas
- Casos de uso principales
- Matriz de trazabilidad contractual
- Restricciones y supuestos
- Criterios de aceptación

### 1.2 Alcance

Este análisis se enfoca en el sistema de **1 estación bidireccional** (4 plataformas: 2 WIM + 2 estáticas) ubicada en PR4+0100 RN 4513, incluyendo su equipamiento de comunicación, control, procesamiento y su integración con el Centro de Control Operacional (CCO) y la red de telecomunicaciones.

**Configuración:**
- **2 Plataformas WIM (Dinámicas):** 1 por sentido - Pesaje sin detención
- **2 Plataformas Estáticas:** 1 por sentido - Pesaje de precisión
- **Total: 4 plataformas** (1 estación bidireccional)

**Ubicación del CCO:** La Lizama PK 4+300 (RN 4513) - Centro de control del corredor.

### 1.3 Referencias

- **T01:** `24F_T01_Ficha_Sistema_WIM_MVP_v1.0.md`
- **T03:** `53_T03_Arquitectura_Conceptual_ITS_v1.0.md` (WIM incluido)
- **T04:** `05_T04_Especificaciones_Tecnicas_Pesaje_WIM_v1.0.md`
- **T05:** `10_T05_Ingenieria_Detalle_WIM_v1.0.md`
- **Validación:** `24_VALIDACION_CONTRACTUAL_PESAJE_v1.0.md`
- **AT1:** Apéndice Técnico 1, Adenda 4, páginas 46-47 "Estaciones de Pesaje"
- **AT2:** Apéndice Técnico 2, Sección 3.3.9 "Sistemas de Pesaje"
- **AT4:** Apéndice Técnico 4 (Indicadores de desempeño)

### 1.4 Definiciones y Acrónimos

| Término | Definición |
|:--------|:-----------|
| **WIM** | Weigh In Motion (Pesaje en Movimiento) |
| **PBVT** | Peso Bruto Vehicular Total |
| **PBV** | Peso Bruto Vehicular |
| **CCO** | Centro de Control Operacional |
| **ITS** | Intelligent Transportation Systems (Sistemas Inteligentes de Transporte) |
| **ASTM E1318** | Estándar para sistemas WIM |
| **COST323** | Estándar europeo para sistemas WIM |
| **OIML R134** | Estándar internacional de básculas |
| **NTC 5371** | Norma Técnica Colombiana para básculas |
| **NTC 5206** | Norma Técnica Colombiana para sistemas WIM |
| **INVÍAS** | Instituto Nacional de Vías |
| **AT1, AT2, AT4** | Apéndices Técnicos del Contrato |
| **KPI** | Key Performance Indicator (Indicador Clave de Desempeño) |
| **MTBF** | Mean Time Between Failures (Tiempo Medio Entre Fallas) |
| **MTTR** | Mean Time To Repair (Tiempo Medio de Reparación) |

---

## 2. REQUISITOS FUNCIONALES

### 2.1 Pesaje Dinámico (WIM) - Pre-selección

**ID:** RF-WIM-001  
**Descripción:** El sistema WIM debe realizar pesaje dinámico sin detención del vehículo para pre-selección de vehículos sobrecargados.  
**Prioridad:** 🔴 Crítica  
**Fuente:** AT2 Sección 3.3.9  
**Criterios de Aceptación:**
- Pesaje sin detención del vehículo
- Velocidad operación: Hasta 80 km/h
- Precisión: Error máximo ≤5% (PBVT, grupos ejes, ejes simples)
- Detección de ejes y grupos de ejes
- Clasificación vehicular automática
- Transmisión de datos al CCO en tiempo real

---

### 2.2 Pesaje Estático - Verificación y Sanción

**ID:** RF-WIM-002  
**Descripción:** El sistema de básculas estáticas debe realizar pesaje de precisión para verificación y sanción de vehículos sospechosos de sobrepeso.  
**Prioridad:** 🔴 Crítica  
**Fuente:** AT2 Sección 3.3.9  
**Criterios de Aceptación:**
- Pesaje estático de precisión
- Capacidad: ≥100 toneladas
- Precisión: Error máximo ≤1%
- Medición de peso por eje y peso total (PBVT)
- Sistema automático de impresión del peso
- Identificación de vehículo y compañía de transporte

---

### 2.3 Control Bidireccional

**ID:** RF-WIM-003  
**Descripción:** El sistema debe controlar el peso de vehículos en ambos sentidos de circulación desde una estación única.  
**Prioridad:** 🔴 Crítica  
**Fuente:** AT1 Adenda 4, páginas 46-47  
**Criterios de Aceptación:**
- Control en sentido 1 (1 WIM + 1 estática)
- Control en sentido 2 (1 WIM + 1 estática)
- Operación simultánea en ambos sentidos
- Gestión independiente por sentido

---

### 2.4 Detección de Sobrepeso

**ID:** RF-WIM-004  
**Descripción:** El sistema debe detectar automáticamente vehículos que superen el peso máximo autorizado por el Ministerio de Transporte.  
**Prioridad:** 🔴 Crítica  
**Fuente:** AT2 Sección 3.3.9  
**Criterios de Aceptación:**
- Comparación automática con límites de peso (Resolución 4959/2006)
- Alarma automática para vehículos sobrecargados
- Registro automático de infracciones
- Transmisión inmediata a Policía de Carreteras

---

### 2.5 Reporte a Policía de Carreteras

**ID:** RF-WIM-005  
**Descripción:** El sistema debe reportar inmediatamente a la Policía de Carreteras los vehículos que superen el peso máximo autorizado.  
**Prioridad:** 🔴 Crítica  
**Fuente:** AT2 Sección 3.3.9  
**Criterios de Aceptación:**
- Reporte inmediato (tiempo real)
- Datos completos (peso, placa, fecha, hora, ubicación)
- Integración con sistema de Policía
- Registro de reportes en base de datos

---

### 2.6 Integración con CCO

**ID:** RF-WIM-006  
**Descripción:** El sistema debe integrarse con el CCO para transmisión de datos en tiempo real y acceso en línea.  
**Prioridad:** 🔴 Crítica  
**Fuente:** AT2 Sección 3.3.9  
**Criterios de Aceptación:**
- Transmisión de datos en tiempo real
- Acceso en línea desde CCO
- Integración con SCADA
- Disponibilidad de datos para ANI

---

### 2.7 Registro Automático de Datos

**ID:** RF-WIM-007  
**Descripción:** El sistema debe registrar automáticamente todos los datos de pesaje para reportes técnicos y económicos.  
**Prioridad:** 🟡 Media  
**Fuente:** AT2 Sección 3.3.9  
**Criterios de Aceptación:**
- Registro automático de todos los vehículos pesados
- Almacenamiento de datos históricos (≥5 años)
- Generación de reportes técnicos
- Generación de reportes económicos

---

## 3. REQUISITOS NO FUNCIONALES

### 3.1 Requisitos de Disponibilidad

| ID | Requisito | Descripción | Valor Mínimo Aceptación | Fuente |
|:---|:----------|:------------|:------------------------|:-------|
| **RNF-WIM-001** | Disponibilidad del sistema | El sistema WIM debe estar operativo y disponible para pesaje. | 24 horas diarias, 365 días al año | AT2 §3.3.9 |
| **RNF-WIM-002** | MTBF (Tiempo Medio Entre Fallas) | El tiempo promedio entre fallas de una plataforma individual. | ≥ 5,000 horas | Buenas prácticas |
| **RNF-WIM-003** | MTTR (Tiempo Medio de Reparación) | El tiempo promedio para reparar una plataforma después de una falla. | ≤ 24 horas (para fallas críticas) | AT2 (implícito) |
| **RNF-WIM-004** | Disponibilidad de comunicación | El sistema de comunicación con CCO debe estar disponible. | ≥ 99.5% anual | Crítico para transmisión de datos |

### 3.2 Requisitos de Performance

| ID | Requisito | Descripción | Valor Mínimo Aceptación | Fuente |
|:---|:----------|:------------|:------------------------|:-------|
| **RNF-WIM-005** | Precisión WIM (PBVT) | La precisión de pesaje dinámico para peso total. | Error máximo ≤5% | AT2 §3.3.9 |
| **RNF-WIM-006** | Precisión WIM (grupos ejes) | La precisión de pesaje dinámico para grupos de ejes. | Error máximo ≤5% | AT2 §3.3.9 |
| **RNF-WIM-007** | Precisión WIM (ejes simples) | La precisión de pesaje dinámico para ejes simples. | Error máximo ≤5% | AT2 §3.3.9 |
| **RNF-WIM-008** | Precisión estática | La precisión de pesaje estático. | Error máximo ≤1% | AT2 §3.3.9 |
| **RNF-WIM-009** | Velocidad operación WIM | La velocidad máxima de operación para pesaje dinámico. | Hasta 80 km/h | AT2 §3.3.9 |
| **RNF-WIM-010** | Capacidad estática | La capacidad máxima de las básculas estáticas. | ≥100 toneladas | AT2 §3.3.9 |
| **RNF-WIM-011** | Tiempo de respuesta | El tiempo desde pesaje hasta transmisión al CCO. | ≤2 segundos | Operación en tiempo real |

### 3.3 Requisitos de Seguridad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-WIM-012** | Cifrado de transmisión | Las transmisiones de datos deben estar cifradas. | TLS 1.2 mínimo o protocolo seguro | ISO 27001 |
| **RNF-WIM-013** | Autenticación de acceso | El acceso a equipos y sistemas de gestión debe ser autenticado. | Credenciales de usuario y contraseña robustas | ISO 27001 |
| **RNF-WIM-014** | Protección física | Los equipos deben ser resistentes al vandalismo. | Carcasas antivandalismo IK08 mínimo | Campo (exposición pública) |
| **RNF-WIM-015** | Segmentación de red | Los equipos deben estar en VLAN dedicada para ITS. | VLAN separada, firewall | Buenas prácticas |
| **RNF-WIM-016** | Integridad de datos | Los datos de pesaje deben ser inviolables. | Firma digital, timestamp, no modificable | Evidencia legal |

### 3.4 Requisitos Ambientales y de Protección

| ID | Requisito | Valor Mínimo | Fuente |
|:---|:----------|:-------------|:-------|
| **RNF-WIM-017** | Grado de protección IP | IP65 mínimo (equipos exteriores) | IEC 60529 |
| **RNF-WIM-018** | Grado de protección IK | IK08 mínimo (antivandalismo) | IEC 62262 |
| **RNF-WIM-019** | Rango de temperatura operación | -20°C a +60°C | Condiciones climáticas colombianas |
| **RNF-WIM-020** | Humedad relativa | 0% a 95% RH (sin condensación) | IEC 60068-2-78 |
| **RNF-WIM-021** | Resistencia a carga | ≥100 toneladas | AT2 §3.3.9 |
| **RNF-WIM-022** | Protección contra rayos | Supresores de transitorios, puesta a tierra | RETIE |

### 3.5 Requisitos Normativos

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-WIM-023** | Certificación metrológica | Las básculas deben estar certificadas metrológicamente. | Certificación OIML R134, NTC 5371 | AT2 §3.3.9 |
| **RNF-WIM-024** | Calibración anual | Todas las básculas deben calibrarse anualmente. | Calibración por laboratorio acreditado | AT2 §3.3.9 |
| **RNF-WIM-025** | Cumplimiento normativa | Cumplimiento con Resolución 4959/2006. | Límites de peso según normativa | Resolución 4959/2006 |

### 3.6 Requisitos de Usabilidad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-WIM-026** | Interfaz de usuario intuitiva | Operadores capacitados en < 8 horas | AT2 (implícito) |
| **RNF-WIM-027** | Sistema de impresión automática | Impresión automática de comprobantes de peso. | AT2 §3.3.9 |
| **RNF-WIM-028** | Idioma | Español (interfaz y manuales) | Colombia |

### 3.7 Requisitos de Mantenibilidad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-WIM-029** | Actualización de firmware remota | Sin necesidad de visita al campo | Operación eficiente |
| **RNF-WIM-030** | Diagnóstico remoto | Monitoreo SNMP de estado de equipos | Gestión proactiva |
| **RNF-WIM-031** | Disponibilidad de repuestos | Durante toda la concesión (25 años) | AT2 (garantía) |
| **RNF-WIM-032** | Modularidad de componentes | Reemplazo de módulos sin afectar sistema completo | Mantenimiento ágil |
| **RNF-WIM-033** | Documentación técnica | Manuales en español, actualizados | AT2 (implícito) |

---

## 4. REQUISITOS DE INTERFACES

### 4.1 Interface WIM ↔ CCO

**ID:** RI-WIM-001  
**Sistemas:** Plataformas WIM/Estáticas ↔ CCO (Centro de Control Operacional)  
**Tipo:** Red de Datos IP  
**Protocolo:** API REST, SNMP (para monitoreo de estado)  
**Datos Intercambiados:**
- Datos de peso en tiempo real (PBVT, peso por eje, grupos de ejes)
- Alarmas de sobrepeso
- Estado operativo de plataformas
- Confirmación de reportes a Policía
**Frecuencia:** Tiempo real (datos), por evento (alarmas, reportes).  
**Ancho de banda:** < 1 Mbps por plataforma (total ~4 Mbps para 4 plataformas).

---

### 4.2 Interface WIM ↔ Sistema de Telecomunicaciones

**ID:** RI-WIM-002  
**Sistemas:** Plataformas WIM/Estáticas ↔ Red Troncal de Fibra Óptica  
**Tipo:** Física / Red de Datos IP  
**Protocolo:** Ethernet (Gigabit), Fibra Óptica Monomodo (ITU-T G.652.D)  
**Datos Intercambiados:**
- Tráfico de datos y control
**Frecuencia:** Continua.  
**Ancho de banda:** Dedicado por plataforma (mínimo 10 Mbps), agregación 100 Mbps.

---

### 4.3 Interface WIM ↔ Sistema SCADA

**ID:** RI-WIM-003  
**Sistemas:** Plataformas WIM/Estáticas ↔ Sistema SCADA  
**Tipo:** Lógica (a través de red IP)  
**Protocolo:** SNMP v3, Modbus TCP (opcional)  
**Datos Intercambiados:**
- Estado operativo de plataformas
- Alarmas de falla
- Métricas de desempeño
**Frecuencia:** Cada 5 minutos (polling), por evento (alarmas).

---

### 4.4 Interface WIM ↔ Policía de Carreteras

**ID:** RI-WIM-004  
**Sistemas:** Plataformas WIM/Estáticas ↔ Policía de Carreteras  
**Tipo:** Lógica (a través de red IP, vía CCO)  
**Protocolo:** API REST, Base de Datos  
**Datos Intercambiados:**
- Reportes de vehículos con sobrepeso
- Datos completos (peso, placa, fecha, hora, ubicación)
**Frecuencia:** Por evento (vehículos con sobrepeso) - Tiempo real.

---

### 4.5 Interface WIM ↔ Sistema de Impresión

**ID:** RI-WIM-005  
**Sistemas:** Plataformas Estáticas ↔ Sistema de Impresión  
**Tipo:** Física / Red IP  
**Protocolo:** Ethernet / USB  
**Datos Intercambiados:**
- Comprobantes automáticos de peso
- Identificación de vehículo y compañía
**Frecuencia:** Por evento (cada pesaje estático).

---

### 4.6 Interface WIM ↔ Sistema de Energía Eléctrica

**ID:** RI-WIM-006  
**Sistemas:** Plataformas WIM/Estáticas ↔ Red Eléctrica  
**Tipo:** Física (Alimentación)  
**Protocolo:** AC 120V/60Hz  
**Datos Intercambiados:**
- Suministro de energía para operación
**Frecuencia:** Continua.

---

## 5. CASOS DE USO

### 5.1 CU-WIM-001: Pesaje Dinámico sin Detención

**Actor Principal:** Vehículo de carga  
**Actores Secundarios:** Plataforma WIM, CCO, Sistema de Control  
**Descripción:** Un vehículo de carga circula sobre la plataforma WIM y es pesado sin detenerse.

**Precondiciones:**
- La plataforma WIM está operativa y conectada.
- La red de telecomunicaciones está funcional.
- El CCO está operativo.

**Flujo Normal:**
1. El vehículo circula sobre la plataforma WIM a velocidad ≤80 km/h.
2. La plataforma WIM detecta el vehículo mediante sensores.
3. La plataforma WIM mide peso total (PBVT), peso por eje y grupos de ejes.
4. El sistema procesa y clasifica el vehículo.
5. El sistema compara el peso con límites autorizados (Resolución 4959/2006).
6. Si el peso es normal, el vehículo continúa sin detenerse.
7. Si el peso supera el límite, se activa alarma y se deriva a báscula estática.
8. El sistema transmite datos al CCO en tiempo real.
9. El sistema registra el proceso en logs.

**Postcondiciones:**
- Los datos de peso están disponibles en CCO.
- Si hay sobrepeso, el vehículo es derivado a báscula estática.

**Flujos Alternativos:**
- **A1: Velocidad excesiva:** Si el vehículo supera 80 km/h, el sistema registra el evento pero puede no garantizar precisión.

---

### 5.2 CU-WIM-002: Pesaje Estático de Verificación

**Actor Principal:** Vehículo de carga (sospechoso de sobrepeso)  
**Actores Secundarios:** Plataforma Estática, CCO, Policía de Carreteras  
**Descripción:** Un vehículo sospechoso de sobrepeso es pesado en la báscula estática para verificación y sanción.

**Precondiciones:**
- El vehículo fue detectado con sobrepeso en WIM o seleccionado para verificación.
- La plataforma estática está operativa y conectada.
- El sistema de impresión está operativo.

**Flujo Normal:**
1. El vehículo se detiene sobre la plataforma estática.
2. La plataforma estática mide peso total (PBVT) y peso por eje con precisión ≤1%.
3. El sistema compara el peso con límites autorizados.
4. Si el peso supera el límite, se genera alarma.
5. El sistema imprime comprobante automático (identificando vehículo y compañía).
6. El sistema reporta inmediatamente a Policía de Carreteras.
7. El sistema transmite datos al CCO en tiempo real.
8. El sistema registra el proceso en logs de auditoría.

**Postcondiciones:**
- El comprobante de peso está impreso.
- El reporte está enviado a Policía de Carreteras.
- Los datos están almacenados en CCO.

---

### 5.3 CU-WIM-003: Reporte a Policía de Carreteras

**Actor Principal:** Sistema de Control WIM  
**Actores Secundarios:** CCO, Policía de Carreteras  
**Descripción:** El sistema detecta un vehículo con sobrepeso y reporta inmediatamente a la Policía de Carreteras.

**Precondiciones:**
- El sistema detectó un vehículo con sobrepeso (WIM o estática).
- La conexión con Policía de Carreteras está disponible.
- El CCO está operativo.

**Flujo Normal:**
1. El sistema detecta que el peso supera el límite autorizado.
2. El sistema genera reporte con datos completos (peso, placa, fecha, hora, ubicación).
3. El sistema transmite reporte a Policía de Carreteras vía CCO.
4. La Policía de Carreteras confirma recepción del reporte.
5. El sistema registra el reporte en logs de auditoría.

**Postcondiciones:**
- El reporte está enviado a Policía de Carreteras.
- El reporte está registrado en el sistema.

---

## 6. MATRIZ DE TRAZABILIDAD CONTRACTUAL

| Requisito ID | Tipo | Descripción Resumida | Fuente Contractual | Componente Afectado | Prioridad | Criterio de Aceptación |
|:-------------|:-----|:---------------------|:-------------------|:--------------------|:----------|:-----------------------|
| **RF-WIM-001** | Funcional | Pesaje dinámico sin detención | AT2 §3.3.9 | Plataforma WIM | 🔴 Crítica | Velocidad ≤80 km/h, precisión ≤5%, detección ejes. |
| **RF-WIM-002** | Funcional | Pesaje estático de precisión | AT2 §3.3.9 | Plataforma Estática | 🔴 Crítica | Capacidad ≥100 ton, precisión ≤1%, impresión automática. |
| **RF-WIM-003** | Funcional | Control bidireccional | AT1 Adenda 4 | Estación completa | 🔴 Crítica | Control en ambos sentidos, 1 WIM + 1 estática por sentido. |
| **RF-WIM-004** | Funcional | Detección de sobrepeso | AT2 §3.3.9 | Sistema de Control | 🔴 Crítica | Comparación automática con límites, alarma automática. |
| **RF-WIM-005** | Funcional | Reporte a Policía | AT2 §3.3.9 | Sistema de Control, CCO | 🔴 Crítica | Reporte inmediato, datos completos, integración con Policía. |
| **RF-WIM-006** | Funcional | Integración con CCO | AT2 §3.3.9 | Sistema de Control, CCO | 🔴 Crítica | Transmisión tiempo real, acceso en línea, integración SCADA. |
| **RF-WIM-007** | Funcional | Registro automático | AT2 §3.3.9 | Sistema de Control | 🟡 Media | Registro automático, almacenamiento ≥5 años, reportes técnicos/económicos. |
| **RNF-WIM-001** | Disponibilidad | Disponibilidad 24/7/365 | AT2 §3.3.9 | Plataformas WIM/Estáticas | 🔴 Crítica | 24 horas diarias, 365 días al año. |
| **RNF-WIM-005** | Performance | Precisión WIM (PBVT) | AT2 §3.3.9 | Plataforma WIM | 🔴 Crítica | Error máximo ≤5%. |
| **RNF-WIM-008** | Performance | Precisión estática | AT2 §3.3.9 | Plataforma Estática | 🔴 Crítica | Error máximo ≤1%. |
| **RNF-WIM-010** | Performance | Capacidad estática | AT2 §3.3.9 | Plataforma Estática | 🔴 Crítica | ≥100 toneladas. |
| **RNF-WIM-012** | Seguridad | Cifrado de transmisión | ISO 27001 | Red, Equipos | 🔴 Crítica | TLS 1.2 mínimo. |
| **RNF-WIM-014** | Seguridad | Protección física | Campo | Plataformas WIM/Estáticas | 🔴 Crítica | Carcasas IK08 mínimo. |
| **RNF-WIM-017** | Ambiental | Protección IP | IEC 60529 | Plataformas WIM/Estáticas | 🔴 Crítica | Grado de protección IP65 mínimo. |
| **RNF-WIM-023** | Normativo | Certificación metrológica | AT2 §3.3.9 | Plataformas WIM/Estáticas | 🔴 Crítica | Certificación OIML R134, NTC 5371. |
| **RNF-WIM-024** | Normativo | Calibración anual | AT2 §3.3.9 | Plataformas WIM/Estáticas | 🔴 Crítica | Calibración anual obligatoria. |

**Total requisitos identificados:** 33 (7 funcionales + 26 no funcionales)

---

## 7. RESTRICCIONES Y SUPUESTOS

### 7.1 Restricciones

| ID | Restricción | Impacto | Origen |
|:---|:------------|:--------|:-------|
| **REST-WIM-001** | Disponibilidad 24/7/365 | Obligatorio según AT2. | AT2 §3.3.9 (Contractual) |
| **REST-WIM-002** | Precisión WIM ≤5% | No se puede usar sistema con precisión inferior. | AT2 §3.3.9 (Contractual) |
| **REST-WIM-003** | Precisión estática ≤1% | No se puede usar báscula con precisión inferior. | AT2 §3.3.9 (Contractual) |
| **REST-WIM-004** | Capacidad estática ≥100 ton | Obligatorio según AT2. | AT2 §3.3.9 (Contractual) |
| **REST-WIM-005** | Calibración anual obligatoria | Todas las básculas deben calibrarse anualmente. | AT2 §3.3.9 (Contractual) |
| **REST-WIM-006** | 1 estación bidireccional | Obligatorio según AT1. | AT1 Adenda 4 (Contractual) |

### 7.2 Supuestos

| ID | Supuesto | Riesgo si no se cumple | Validación |
|:---|:---------|:-----------------------|:-----------|
| **SUP-WIM-001** | Red de fibra óptica disponible | Sin comunicaciones no hay transmisión de datos. | Validar con T01/T03 Telecomunicaciones. |
| **SUP-WIM-002** | CCO operativo | Los equipos no tendrían destino para transmisión. | Coordinar cronogramas con CCO. |
| **SUP-WIM-003** | Alimentación eléctrica disponible | Requiere obra eléctrica adicional. | Validar con T01/T03 Energía Eléctrica. |
| **SUP-WIM-004** | Infraestructura civil existente | Requiere adecuación de estación existente. | Validar con diseño civil. |
| **SUP-WIM-005** | Personal operativo capacitado | Afecta disponibilidad y operación. | Plan de capacitación. |

---

## 8. CHECKLIST DE CRITERIOS DE ACEPTACIÓN

### 8.1 Aceptación por Requisito

- [ ] **RF-WIM-001:** Verificar pesaje dinámico sin detención, velocidad ≤80 km/h, precisión ≤5%, detección de ejes.
- [ ] **RF-WIM-002:** Verificar pesaje estático de precisión, capacidad ≥100 ton, precisión ≤1%, impresión automática.
- [ ] **RF-WIM-003:** Verificar control bidireccional, operación simultánea en ambos sentidos.
- [ ] **RF-WIM-004:** Verificar detección automática de sobrepeso, comparación con límites, alarma automática.
- [ ] **RF-WIM-005:** Verificar reporte inmediato a Policía de Carreteras, datos completos, integración.
- [ ] **RF-WIM-006:** Verificar integración con CCO, transmisión tiempo real, acceso en línea.
- [ ] **RF-WIM-007:** Verificar registro automático de datos, almacenamiento ≥5 años, reportes técnicos/económicos.
- [ ] **RNF-WIM-001:** Verificar disponibilidad 24/7/365 del sistema.
- [ ] **RNF-WIM-005:** Verificar precisión WIM (PBVT) ≤5% con pruebas de campo.
- [ ] **RNF-WIM-008:** Verificar precisión estática ≤1% con pruebas de campo y certificación metrológica.
- [ ] **RNF-WIM-010:** Verificar capacidad estática ≥100 ton con pruebas de carga.
- [ ] **RNF-WIM-012:** Verificar cifrado TLS 1.2 en transmisiones entre equipos y CCO.
- [ ] **RNF-WIM-014:** Inspeccionar físicamente los equipos para verificar resistencia al vandalismo (IK08).
- [ ] **RNF-WIM-017:** Verificar la certificación IP65 de los equipos.
- [ ] **RNF-WIM-023:** Verificar certificación metrológica OIML R134, NTC 5371 de las básculas.
- [ ] **RNF-WIM-024:** Verificar plan de calibración anual de todas las básculas.

---

## 9. PRÓXIMOS PASOS (MVP)

- [x] ✅ Análisis de Requisitos completado (T02).
- [ ] 🔄 Desarrollar T03: Arquitectura Conceptual para WIM.
- [ ] ⏳ Validar T04: Especificaciones Técnicas para WIM (ya existe, revisar coherencia).
- [ ] ⏳ Validar T05: Ingeniería de Detalle para WIM (ya existe, revisar coherencia).
- [ ] ⏳ Realizar validación de coherencia entre todos los documentos T01-T05.
- [ ] ⏳ Documentar lecciones aprendidas del proceso MVP.

---

## 10. REFERENCIAS

- `24F_T01_Ficha_Sistema_WIM_MVP_v1.0.md` (Ficha de Sistema WIM)
- `47_T02_Analisis_Requisitos_Pesaje_WIM_v1.0.md` (Análisis de Requisitos WIM - Referencia para requisitos generales)
- `VII. Documentos Transversales/24_VALIDACION_CONTRACTUAL_PESAJE_v1.0.md` (Validación Contractual WIM)
- Apéndice Técnico 1 - Alcance del Proyecto, Adenda 4, páginas 46-47 "Estaciones de Pesaje"
- Apéndice Técnico 2 - Condiciones de O&M, Sección 3.3.9 "Sistemas de Pesaje"
- Apéndice Técnico 4 - Indicadores de Nivel de Servicio
- Resolución 4959/2006 - Normas sobre pesos y dimensiones vehiculares

---

**Versión:** 1.0 MVP  
**Estado:** ✅ Análisis de Requisitos Completado (Piloto MVP)  
**Fecha:** 31 de Octubre 2025  
**Responsable:** Ingeniero Civil / Administrador Contractual EPC  
**Próximo paso:** T03 - Arquitectura Conceptual WIM

