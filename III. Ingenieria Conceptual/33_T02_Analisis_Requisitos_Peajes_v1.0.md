# T02: ANÁLISIS DE REQUISITOS - SISTEMAS DE PEAJE
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 16/10/2025  
**Sistema:** Sistemas de Peaje y Recaudo  
**Responsable:** Ingeniero de Sistemas de Peaje  
**Versión:** 1.0  

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Documento

Este documento presenta el **análisis detallado de requisitos** del Sistema de Peaje y Recaudo Electrónico, que es crítico para la viabilidad financiera del proyecto, cubriendo:

- Requisitos de recaudo (3 modalidades)
- Requisitos de interoperabilidad TAG
- Requisitos de control y auditoría
- Criterios de aceptación
- Casos de uso operacionales

**DATO CRÍTICO:** Este proyecto tiene **solo 2 Estaciones de Peaje existentes** (Zambito + Aguas Negras), NO se construirán estaciones nuevas.

### 1.2 Alcance

Este análisis cubre:
- 2 Estaciones de Peaje (Zambito PK 9+200, Aguas Negras PK 80+000)
- 3 modalidades de cobro (Manual, Semiautomático, Automático TAG)
- 10-14 carriles totales
- Sistema de control de evasión
- Software de gestión de recaudo
- Integración con sistema nacional de interoperabilidad TAG
- Integración con CCO La Lizama PK 4+300 (RN 4513)

### 1.3 Definiciones y Acrónimos

| Término | Definición |
|:--------|:-----------|
| **TAG** | Dispositivo RFID para telepeaje |
| **IP/REV** | Interoperabilidad de Recaudo Electrónico Vehicular |
| **RFID** | Radio Frequency Identification |
| **OCR** | Optical Character Recognition (Reconocimiento de placas) |
| **MUV** | Múltiples Usuarios Vehículos |
| **DSRC** | Dedicated Short Range Communication (TAG) |
| **TPDA** | Tráfico Promedio Diario Anual |
| **FOSEVI** | Fondo de Seguridad Vial |

---

## 2. REQUISITOS FUNCIONALES

### 2.1 Modalidades de Cobro

**ID:** RF-PEAJE-001  
**Descripción:** El sistema debe operar 3 modalidades de cobro  
**Prioridad:** 🔴 Crítica  
**Fuente:** AT2, Sección 3.3.4  

**Criterios de Aceptación:**

**Modalidad 1: Manual**
- Clasificación automática del vehículo (sensores)
- Información automática del monto a pagar
- Recepción de pago en efectivo
- Entrega de cambio y comprobante
- Barrera automática de salida
- Operador en caseta

**Modalidad 2: Semiautomática**
- Mínimo 1 carril por sentido (obligatorio)
- Tarjetas de aproximación (prepago)
- Tarjetas débito/crédito (Redeban, Credibanco)
- Información de saldo/peajes restantes
- Comprobante si usuario lo solicita
- Uso exclusivo o mixto con manual

**Modalidad 3: Automática (TAG)**
- Mínimo 1 carril en ambas estaciones (obligatorio)
- Sin detención del vehículo
- Lectura TAG RFID
- Débito automático de cuenta
- Registro de placa
- Carriles de uso exclusivo (barrera)
- Interoperabilidad con sistema nacional

---

### 2.2 Interoperabilidad TAG

**ID:** RF-PEAJE-002  
**Descripción:** El sistema TAG debe ser interoperable con el sistema nacional ANI/INVIAS  
**Prioridad:** 🔴 Crítica  
**Fuente:** AT2, Sección 3.3.4; 5 Resoluciones MT (4303/2015, 5708/2016, 546/2018, 883/2019, 509/2020)  

**Criterios de Aceptación:**
- Cumplir 100% de las 5 Resoluciones vigentes del Ministerio de Transporte
- TAG emitidos en este proyecto funcionan en otros peajes ANI/INVIAS
- TAGs de otros peajes funcionan en este proyecto
- Clearing automático entre concesiones
- Compensación al intermediador según resoluciones
- Disponibilidad del sistema TAG: 99%
- Envío de documentación según resoluciones

---

### 2.3 Control y Clasificación Vehicular

**ID:** RF-PEAJE-003  
**Descripción:** El sistema debe clasificar vehículos automáticamente en 6 categorías  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 3.3.4.5; Resolución de Peajes  

**Criterios de Aceptación:**
- Mínimo 3 sistemas de control por estación:
  - Cámaras (grabación de ejes, placas, vista general)
  - Sensores ópticos
  - Sensores inductivos
  - Peanas de detección de ejes
- Clasificación en categorías I a VI
- Precisión de clasificación: ≥ 95%
- Detección de evasión (vehículos sin pago)
- Comparación tráfico detectado vs. recaudo (diaria)
- Interventoría puede verificar confiabilidad sin previo aviso

---

### 2.4 Control de Evasión

**ID:** RF-PEAJE-004  
**Descripción:** El sistema debe identificar y registrar violaciones y evasión de peaje  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 3.3.4.5; Resolución 0718/2018  

**Criterios de Aceptación:**
- Cámaras OCR (reconocimiento de placas)
- Registro de vehículos infractores (imagen inequívoca)
- Datos del vehículo (placa, categoría, fecha, hora)
- Identificación de naturaleza de infracción
- Reporte de discrepancias (sensores vs. recaudador)
- Cumplir Resolución 0718/2018
- Información disponible para Policía/Autoridades

---

### 2.5 Registro y Almacenamiento de Transacciones

**ID:** RF-PEAJE-005  
**Descripción:** El sistema debe registrar y almacenar todas las transacciones  
**Prioridad:** 🔴 Crítica  
**Fuente:** AT2, Sección 3.3.4.6  

**Criterios de Aceptación:**
- Almacenamiento mínimo: 3 meses
- Almacenamiento recomendado: 5 años (auditoría)
- Datos por transacción:
  - Fecha y hora exacta
  - Estación de peaje
  - Carril
  - Categoría vehicular
  - Monto cobrado
  - Forma de pago (efectivo, tarjeta, TAG)
  - Matrícula (si disponible)
  - Operador (si manual/semi)
- Transmisión a CCO en tiempo real
- Backup automático diario

---

### 2.6 Generación de Reportes

**ID:** RF-PEAJE-006  
**Descripción:** El sistema debe generar reportes de tráfico y recaudo  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 3.3.4.6  

**Criterios de Aceptación:**

**Reportes obligatorios:**
- Reporte horario total día por carril
- Reporte horario por turno
- Reporte horario total día por sentido
- Reporte horario total día total estación
- Reporte diario por carril
- Reporte diario por sentido
- Reporte diario total estación
- Reporte por turno por carril
- Reporte total por turno
- Reporte de discrepancias (sensores vs. recaudador)
- Reporte de reversibilidad (contraflujo)
- Reporte de totales en período determinado por ANI/Interventoría
- Reporte individual de cada paso (hora, sentido)

---

## 3. REQUISITOS NO FUNCIONALES

### 3.1 Requisitos de Disponibilidad

| ID | Requisito | Valor Mínimo | Fuente |
|:---|:----------|:-------------|:-------|
| **RNF-PEAJE-001** | Disponibilidad del sistema de recaudo | ≥ 99% | AT2 (analogía con ITS) |
| **RNF-PEAJE-002** | Disponibilidad de TAG (carriles automáticos) | ≥ 98% | Resoluciones MT |
| **RNF-PEAJE-003** | Disponibilidad de comunicación con CCO | ≥ 99.5% | Crítico |
| **RNF-PEAJE-004** | MTTR (Tiempo Medio de Reparación) | ≤ 4 horas | Crítico (recaudo) |
| **RNF-PEAJE-005** | Repuestos críticos en stock local | 100% | Operación continua |

---

### 3.2 Requisitos de Performance

| ID | Requisito | Valor Mínimo | Fuente |
|:---|:----------|:-------------|:-------|
| **RNF-PEAJE-006** | Tiempo de espera en peaje (hora pico) | ≤ 3 minutos promedio | Nivel de servicio |
| **RNF-PEAJE-007** | Tiempo de transacción manual | ≤ 30 segundos | Eficiencia |
| **RNF-PEAJE-008** | Tiempo de transacción semiautomática | ≤ 15 segundos | Eficiencia |
| **RNF-PEAJE-009** | Velocidad en carril TAG | 30-40 km/h (sin detención) | Fluidez |
| **RNF-PEAJE-010** | Tasa de éxito de lectura TAG | ≥ 98% | Resoluciones MT |
| **RNF-PEAJE-011** | Precisión de recaudo vs. tráfico | ≥ 99.5% | Auditoría |
| **RNF-PEAJE-012** | Capacidad de procesamiento (transacciones/hora) | ≥ 500 por carril | Hora pico |

---

### 3.3 Requisitos de Seguridad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-PEAJE-013** | Seguridad del dinero recaudado | Empresa de valores, protocolos, pólizas | AT2, 3.3.4.4 |
| **RNF-PEAJE-014** | Seguridad de datos financieros | Cifrado AES-256, cumplir PCI-DSS | Buenas prácticas |
| **RNF-PEAJE-015** | CCTV de seguridad en 100% del área | Vigilancia completa, grabación 24/7 | AT2 |
| **RNF-PEAJE-016** | Control de acceso a sistemas | Autenticación, roles (operador, supervisor, admin) | ISO 27001 |
| **RNF-PEAJE-017** | Auditoría de transacciones | Log inviolable de todas las operaciones | AT2, 3.3.4.6 |
| **RNF-PEAJE-018** | Protección contra fraude | Múltiples sistemas de verificación | AT2, 3.3.4.5 |

---

### 3.4 Requisitos de Integración con Bancos

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-PEAJE-019** | Integración con redes de tarjetas | Redeban, Credibanco, PSE | AT2, 3.3.4 |
| **RNF-PEAJE-020** | Tiempo de autorización de tarjeta | ≤ 10 segundos | Servicio ágil |
| **RNF-PEAJE-021** | Disponibilidad de datáfonos | 100% operativos en carriles semi | Obligatorio |

---

### 3.5 Requisitos de Usabilidad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-PEAJE-022** | Consola de operador intuitiva | Capacitación ≤ 16 horas | AT2, 3.3.4.4 |
| **RNF-PEAJE-023** | Personal uniformado e identificado | 100% del personal de cara al público | AT2, 3.3.4.4 |
| **RNF-PEAJE-024** | Personal entrenado en atención al usuario | Capacitación obligatoria | AT2, 3.3.4.4 |
| **RNF-PEAJE-025** | Moneda fraccionaria siempre disponible | 100% del tiempo | AT2, 3.3.4.4 |

---

## 4. REQUISITOS DE INTERFACES

### 4.1 Interface Peajes ↔ CCO

**ID:** RI-PEAJE-001  
**Sistemas:** Peajes (2 estaciones) ↔ CCO  
**Tipo:** Red de Datos IP (3 niveles)  
**Protocolo:** TCP/IP, SQL, API REST  
**Datos Intercambiados:**
- Nivel 1 (Carril) → Nivel 2 (Centro de plaza): Transacciones individuales
- Nivel 2 → Nivel 3 (CCO): Consolidado en tiempo real
- Datos: Recaudos, tráfico, clasificación, video, alarmas
**Frecuencia:** Tiempo real (si falla, almacenar y retransmitir en máx. 3 días)  

---

### 4.2 Interface Peajes ↔ Sistema Nacional TAG

**ID:** RI-PEAJE-002  
**Sistemas:** Peajes ↔ Sistema Central TAG (Nacional ANI/INVIAS)  
**Tipo:** Red WAN (Internet/VPN)  
**Protocolo:** Según Resoluciones MT (protocolo de interoperabilidad)  
**Datos Intercambiados:**
- Transacciones TAG (validación, débito)
- Lista negra de TAGs
- Clearing entre concesiones
- Compensaciones al intermediador
**Frecuencia:** Tiempo real para transacciones, diario para clearing

---

### 4.3 Interface Peajes ↔ ITS (Aforo)

**ID:** RI-PEAJE-003  
**Sistemas:** Peajes ↔ Sistema de Aforo (ITS)  
**Tipo:** Lógica (Base de Datos)  
**Protocolo:** SQL, API  
**Datos Intercambiados:**
- Comparación tráfico aforo vs. recaudo
- Detección de evasión
- Validación de clasificación vehicular
**Frecuencia:** Diario (comparación de reportes)

---

### 4.4 Interface Peajes ↔ ANI

**ID:** RI-PEAJE-004  
**Sistemas:** Peajes → ANI (Información Financiera)  
**Tipo:** Red WAN  
**Protocolo:** HTTPS, Web Services, SFTP  
**Datos Intercambiados:**
- Recaudos diarios (por estación, por categoría)
- Tráfico vehicular
- Discrepancias e inconsistencias
- Información de disponibilidad del sistema
**Frecuencia:** Tiempo real + reportes diarios/mensuales

---

## 5. MATRIZ DE TRAZABILIDAD

| Requisito ID | Tipo | Descripción Resumida | Fuente Contractual | Componente | Prioridad |
|:-------------|:-----|:---------------------|:-------------------|:-----------|:----------|
| **RF-PEAJE-001** | Funcional | 3 modalidades de cobro | AT2, 3.3.4 | Carriles Manual/Semi/TAG | 🔴 Crítica |
| **RF-PEAJE-002** | Funcional | Interoperabilidad TAG | 5 Resoluciones MT | Sistema TAG | 🔴 Crítica |
| **RF-PEAJE-003** | Funcional | Clasificación vehicular | AT2, 3.3.4.5 | Sensores, Cámaras | 🔴 Alta |
| **RF-PEAJE-004** | Funcional | Control de evasión | AT2, Res. 0718/2018 | OCR, Cámaras | 🔴 Alta |
| **RF-PEAJE-005** | Funcional | Registro de transacciones | AT2, 3.3.4.6 | BD, Servidores | 🔴 Crítica |
| **RF-PEAJE-006** | Funcional | Generación de reportes | AT2, 3.3.4.6 | Software Gestión | 🔴 Alta |
| **RNF-PEAJE-001** | Disponibilidad | 99% del sistema | AT2 | Todo el sistema | 🔴 Crítica |
| **RNF-PEAJE-006** | Performance | Tiempo espera ≤3 min | Nivel de servicio | Carriles suficientes | 🔴 Alta |
| **RNF-PEAJE-010** | Performance | Tasa éxito TAG ≥98% | Resoluciones MT | Lectores TAG | 🔴 Alta |
| **RNF-PEAJE-013** | Seguridad | Seguridad del dinero | AT2, 3.3.4.4 | Empresa de valores | 🔴 Crítica |

**Total requisitos identificados:** ~30 (6 funcionales + 24 no funcionales)

---

## 6. RESTRICCIONES Y SUPUESTOS

### 6.1 Restricciones

| ID | Restricción | Impacto | Origen |
|:---|:------------|:--------|:-------|
| **REST-PEAJE-001** | Solo 2 estaciones (NO nuevas) | Crítico - Menor recaudo, menor densidad | Parte Especial 3.6 |
| **REST-PEAJE-002** | Reubicación de Aguas Negras (PK 83+900 → 80+000) | Alto - Requiere proyecto de construcción | AT1, Parte Especial |
| **REST-PEAJE-003** | Interoperabilidad TAG obligatoria (5 Resoluciones MT) | Crítico - Limita proveedores | Resoluciones MT |
| **REST-PEAJE-004** | Mínimo 1 carril semiautomático por sentido | Medio - Inversión obligatoria | AT2, 3.3.4 |
| **REST-PEAJE-005** | Mínimo 1 carril TAG en ambas estaciones | Medio - Inversión obligatoria | AT2, 3.3.4 |
| **REST-PEAJE-006** | Entrega desde INVIAS (Contrato 643/2019 - Consorcio RQS) | Alto - Requiere coordinación | Parte Especial 3.6 |
| **REST-PEAJE-007** | Almacenamiento 3 meses mínimo | Medio - Capacidad de storage | AT2, 3.3.4.6 |

---

### 6.2 Supuestos

| ID | Supuesto | Riesgo si no se cumple | Validación |
|:---|:---------|:-----------------------|:-----------|
| **SUP-PEAJE-001** | TPDA promedio: 5,000-10,000 veh/día por estación | Medio - Dimensionamiento incorrecto | Estudios de tráfico |
| **SUP-PEAJE-002** | 5-7 carriles por estación suficientes | Medio - Congestión en horas pico | Análisis de capacidad |
| **SUP-PEAJE-003** | Tarifas vigentes (Zambito $11,200, Aguas Negras $11,200) | Bajo - Ajuste anual por IPC | Resolución de Peajes |
| **SUP-PEAJE-004** | Aceptación de TAGs por usuarios ≥ 20% | Bajo - Menor uso de carriles TAG | Campañas de difusión |
| **SUP-PEAJE-005** | Transición INVIAS sin conflictos | Medio - Posibles disputas laborales | Coordinación temprana |

---

## 7. CASOS DE USO

### 7.1 CU-PEAJE-001: Transacción Manual de Peaje

**Actor:** Recaudador en caseta  
**Descripción:** Cobro de peaje en modalidad manual  
**Precondiciones:**
- Carril operativo
- Recaudador en turno
- Sistema de recaudo activo

**Flujo Normal:**
1. Vehículo se aproxima a caseta
2. Sensores detectan vehículo y clasifican automáticamente (Cat I-VI)
3. Consola muestra categoría y monto a cobrar
4. Recaudador confirma o corrige categoría (si necesario)
5. Recaudador informa monto al conductor
6. Conductor entrega dinero
7. Recaudador recibe pago, entrega cambio (si aplica)
8. Sistema imprime comprobante
9. Recaudador entrega comprobante
10. Recaudador autoriza barrera
11. Barrera se levanta automáticamente
12. Vehículo pasa
13. Barrera baja automáticamente
14. Sistema registra transacción (fecha, hora, carril, categoría, monto, operador)
15. Transmite a CCO en tiempo real

**Postcondiciones:**
- Transacción completada y registrada
- Dinero en caja

**Flujos Alternativos:**
- Si clasificación incorrecta → Recaudador corrige manualmente
- Si no hay cambio → Recaudador solicita cambio exacto o registra deuda
- Si vehículo exento (Ley 787/2002) → Recaudador registra exención

---

### 7.2 CU-PEAJE-002: Transacción con TAG (Automática)

**Actor:** Sistema automático (sin operador)  
**Descripción:** Cobro automático mediante TAG sin detención  
**Precondiciones:**
- Carril TAG operativo
- Vehículo con TAG válido
- Sistema de interoperabilidad activo

**Flujo Normal:**
1. Vehículo con TAG se aproxima a carril TAG (30-40 km/h)
2. Lector RFID detecta TAG a distancia
3. Sistema lee ID del TAG
4. Sistema consulta con central TAG (validación, saldo)
5. Sensores clasifican vehículo (Cat I-VI)
6. Sistema calcula monto según categoría
7. Cámara OCR lee matrícula
8. Cámara de ejes graba paso del vehículo
9. Sistema debita cuenta del TAG
10. Semáforo en verde confirma transacción exitosa
11. Vehículo pasa sin detenerse
12. Sistema registra transacción completa
13. Sistema transmite a CCO y central TAG

**Postcondiciones:**
- Transacción completada sin detención
- Cuenta TAG debitada
- Registro completo

**Flujos Alternativos:**
- Si TAG inválido/sin saldo → Semáforo rojo, barrera baja, derivar a carril manual
- Si velocidad excesiva (>50 km/h) → No se lee TAG, registrar como evasión

---

### 7.3 CU-PEAJE-003: Comparación Diaria Tráfico vs. Recaudo

**Actor:** Supervisor de Peaje + Interventoría  
**Descripción:** Verificación diaria de que todo el tráfico fue recaudado  
**Precondiciones:**
- Día completo de operación
- Datos consolidados

**Flujo Normal:**
1. Al finalizar el día (00:00), sistema genera reporte automático
2. Reporte incluye:
   - Total de vehículos detectados por sensores (por categoría)
   - Total de vehículos recaudados (por categoría)
   - Diferencias (por carril, por sentido)
3. Supervisor de Peaje revisa reporte
4. Interventoría accede al reporte
5. Si hay discrepancias:
   - Investigar causa (errores de clasificación, evasión, fallas técnicas)
   - Registrar explicación
   - Tomar acciones correctivas
6. Ambos firman reporte (físico o digital)
7. Reporte se archiva

**Postcondiciones:**
- Control diario completado
- Discrepancias investigadas
- Reporte firmado

---

## 8. CRITERIOS DE ACEPTACIÓN

### 8.1 Criterios Funcionales

- [ ] Las 3 modalidades de cobro funcionan correctamente (Manual, Semi, TAG)
- [ ] Interoperabilidad TAG validada con al menos 3 otros peajes ANI/INVIAS
- [ ] Clasificación vehicular con precisión ≥ 95%
- [ ] Sistema de evasión detecta y registra 100% de infracciones
- [ ] Todas las transacciones se registran y almacenan por 3+ meses
- [ ] Los 13 tipos de reportes se generan automáticamente

### 8.2 Criterios de Performance

- [ ] Disponibilidad del sistema ≥ 99%
- [ ] Tiempo de espera promedio ≤ 3 minutos (hora pico)
- [ ] Tasa de éxito TAG ≥ 98%
- [ ] Precisión recaudo vs. tráfico ≥ 99.5%
- [ ] Capacidad de procesar ≥ 10,000 vehículos/día por estación

### 8.3 Criterios de Calidad

- [ ] Cumplir 100% de las 5 Resoluciones MT (4303/2015, 5708/2016, 546/2018, 883/2019, 509/2020)
- [ ] Cumplir Resolución 0718/2018 (control de evasión)
- [ ] Cumplir Ley 787/2002 (vehículos exentos)
- [ ] Certificación de interoperabilidad TAG otorgada por ANI
- [ ] Disponibilidad del sistema TAG según resoluciones
- [ ] Compensación al intermediador según resoluciones

### 8.4 Criterios de Integración

- [ ] Interfaz con CCO funcional (recaudos en tiempo real)
- [ ] Interfaz con sistema nacional TAG funcional (interoperabilidad probada)
- [ ] Interfaz con redes de tarjetas funcional (débito/crédito)
- [ ] Interfaz con ITS funcional (comparación aforo)
- [ ] Interfaz con ANI funcional (información financiera)
- [ ] Transición desde INVIAS completada sin pérdida de recaudo

---

## 9. DEPENDENCIAS

| Sistema/Recurso | Tipo de Dependencia | Criticidad | Estado | Plazo |
|:----------------|:--------------------|:-----------|:-------|:------|
| **Reubicación Aguas Negras** | Proyecto de construcción completo | 🔴 Crítica | ⏳ Por diseñar | Según cronograma UF |
| **Transición INVIAS** | Protocolo de entrega desde Consorcio RQS | 🔴 Crítica | ⏳ Por coordinar | Pre-Entrega Infraestructura |
| **CCO** | Centro operativo para recibir datos | 🔴 Crítica | ✅ Documentado (T01, T02) | Antes de inicio recaudo |
| **Telecomunicaciones** | Fibra óptica a ambas estaciones | 🔴 Crítica | ✅ Documentado (T01) | Antes de peajes |
| **Homologación TAG con ANI** | Aprobación de tecnología | 🔴 Crítica | ⏳ Por gestionar | Fase Preoperativa |
| **Acuerdos con Bancos** | Contratos con Redeban/Credibanco | 🟡 Media | ⏳ Por negociar | 6 meses antes de O&M |
| **Personal de Recaudo** | 30-40 personas capacitadas (3 turnos) | 🔴 Alta | ⏳ Por contratar | 3 meses antes de O&M |

---

## 10. PRÓXIMOS PASOS

- [ ] Desarrollar arquitectura conceptual del Sistema de Peajes (Template T03)
  - Topología de red 3 niveles
  - Arquitectura de servidores (local + central)
  - Layout de estaciones (Zambito + Aguas Negras)
  - Diagrama de flujo de transacciones
- [ ] Leer AT4 completo para KPIs de peajes
- [ ] Solicitar cotizaciones a proveedores TAG:
  - Kapsch TrafficCom
  - Q-Free
  - TransCore
  - SICE (experiencia en Colombia)
- [ ] Elaborar especificaciones técnicas (Templates T04):
  - Lectores TAG RFID
  - Software de gestión de recaudo
  - Cámaras OCR
  - Básculas de pesaje
- [ ] Estimar costos detallados con cotizaciones (Template T05)
- [ ] Coordinar con ANI proceso de homologación TAG
- [ ] Estudios de tráfico (TPDA actual y proyectado por estación)
- [ ] Diseño de proyecto de reubicación de Aguas Negras
- [ ] Protocolo de transición con INVIAS/Consorcio RQS
- [ ] Plan de capacitación de personal de recaudo

---

## 11. REFERENCIAS

### Documentos Contractuales:
- [AT2 - Operación y Mantenimiento](../II.%20Apendices%20Tecnicos/AT2_Operacion_Mantenimiento_v1.0.md) - Sección 3.3.4
- [AT4 - Indicadores](../II.%20Apendices%20Tecnicos/AT4_Indicadores_v1.0.md) - KPIs de peajes
- [Parte Especial](../I.%20Contrato%20General/2_Parte_Especial_v1.0.md) - Sección 3.6 (Estaciones de Peaje)
- [AT1 - Alcance](../II.%20Apendices%20Tecnicos/AT1_Alcance_Proyecto_v1.0.md) - Tabla 2 (Estaciones)

### Documentos del Proyecto:
- [T01 - Ficha Sistema Peajes](25_T01_Ficha_Sistema_Peajes_v1.0.md) - Base para este análisis (v1.1 actualizado)
- [T01 - Sistema CCO](26_T01_Ficha_Sistema_CCO_v1.0.md) - Interface principal
- [T01 - Sistema ITS](24_T01_Ficha_Sistema_ITS_v1.0.md) - Interface con aforo
- [T02 - Análisis Requisitos CCO](32_T02_Analisis_Requisitos_CCO_v1.0.md) - Supervisión de peajes
- [WBS Preliminar](../IX.%20WBS%20y%20Planificacion/WBS_Preliminar_v1.0.md) - Elemento 1.9

### Normativa (Crítica):
- **Resolución 4303/2015** - Especificaciones TAG/Telepeaje
- **Resolución 5708/2016** - Especificaciones técnicas peajes
- **Resolución 546/2018** - Especificaciones ITS y Peajes (modificada por 3254/2018)
- **Resolución 883/2019** - Actualización sistema peajes
- **Resolución 509/2020** - Última actualización (vigente)
- **Resolución 0718/2018** - Detección de infracciones
- **Ley 787/2002** - Vehículos exentos de pago
- **Parte General Sección 4.11** - Adopción de tecnología nacional

---

## 12. OBSERVACIONES CRÍTICAS

### ⚠️ Hallazgo: Solo 2 Estaciones de Peaje

Este requisito crítico afecta significativamente el proyecto:

**Implicaciones positivas:**
- ✅ Menor inversión en peajes ($2.5M vs. $7M estimado inicialmente)
- ✅ Menor personal de recaudo (30-40 vs. 100-150 personas)
- ✅ Operación más simple y manejable
- ✅ Ahorro de $45M USD en 25 años

**Implicaciones negativas:**
- ⚠️ Menor densidad de recaudo (solo 2 puntos en 259.6 km)
- ⚠️ Posible evasión por rutas alternas
- ⚠️ Recaudos concentrados en 2 puntos

**Mitigaciones requeridas:**
- Control estricto de evasión (OCR, cámaras)
- Estudio de rutas alternas (vías de elusión)
- Coordinación con Policía de Carreteras

---

## 13. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 16/10/2025 | Administrador Contractual EPC | Análisis inicial de requisitos del Sistema de Peajes |
| **v1.2** | 22/10/2025 | Administrador Contractual EPC | **Revisión con información oficial:** Integración CCO La Lizama PK 4+300 |

---

**Versión:** 1.2 ✅ **REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**  
**Estado:** ✅ Análisis de Requisitos Completado + Información Oficial Integrada  
**Fecha:** 22/10/2025  
**Responsable:** Ingeniero de Sistemas de Peaje  
**Próximo documento:** T03 - Arquitectura Conceptual del Sistema de Peajes  

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- Integración con CCO La Lizama PK 4+300 (RN 4513) documentada
- Ubicaciones de peajes validadas contra información oficial
- Metodología PKD lineal aplicada

---

**Fin del documento - T02 Análisis de Requisitos Sistema Peajes**  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*

