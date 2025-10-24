# T02: ANÁLISIS DE REQUISITOS - SISTEMA DE ENERGÍA ELÉCTRICA
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 17/10/2025  
**Sistema:** Energía Eléctrica  
**Responsable:** Ingeniero Eléctrico / Ingeniero de Potencia  
**Versión:** 1.0  

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Documento

Este documento presenta el **análisis detallado de requisitos** del Sistema de Energía Eléctrica para el proyecto APP Puerto Salgar - Barrancabermeja. Este sistema es **CRÍTICO** ya que alimenta TODOS los demás sistemas del corredor.

El análisis cubre:
- Requisitos funcionales de suministro eléctrico
- Requisitos no funcionales (disponibilidad, calidad, seguridad)
- Requisitos de interfaces con todos los sistemas
- Criterios de aceptación
- Casos de uso principales
- Matriz de trazabilidad contractual

### 1.2 Alcance

Este análisis cubre el **sistema eléctrico completo** a lo largo de 259.6 km principales + 33.4 km adicionales:

**Componentes principales:**
- Subestaciones y Centros de Transformación (~75 unidades)
- Sistemas UPS y Generadores de Emergencia
- Red Eléctrica MT/BT
- Sistema SCADA Eléctrico
- Puesta a Tierra y Protección contra Rayos

**Sistemas alimentados:**
- 2 Estaciones de Peaje
- Centro de Control Operacional (CCO La Lizama PK 4+300)
- Sistema de Iluminación (410 luminarias)
- Sistemas ITS (100+ equipos)
- **2 Áreas de Servicio** (obligatorias asociadas a peajes - AT1 Cap. 3)
- Sistema de Telecomunicaciones
- Estaciones de Pesaje

### 1.3 Definiciones y Acrónimos

| Término | Definición |
|:--------|:-----------|
| **MT** | Media Tensión (13.2 kV / 34.5 kV) |
| **BT** | Baja Tensión (220V / 110V) |
| **UPS** | Uninterruptible Power Supply (Sistema de Alimentación Ininterrumpida) |
| **ATS** | Automatic Transfer Switch (Sistema de Transferencia Automática) |
| **RETIE** | Reglamento Técnico de Instalaciones Eléctricas |
| **NTC 2050** | Código Eléctrico Colombiano |
| **SCADA** | Supervisory Control and Data Acquisition |
| **CCO** | Centro de Control Operacional |
| **kVA** | Kilovoltio-Amperio (unidad de potencia aparente) |
| **kW** | Kilovatio (unidad de potencia activa) |
| **PoE** | Power over Ethernet |
| **DPS** | Dispositivo de Protección contra Sobretensiones |

---

## 2. REQUISITOS FUNCIONALES

### 2.1 Suministro Eléctrico Continuo para Todos los Sistemas

**ID:** RF-001  
**Descripción:** El sistema debe garantizar suministro eléctrico continuo 24/7/365 a TODOS los sistemas del corredor  
**Prioridad:** 🔴 CRÍTICA  
**Fuente:** AT2, Sección 3.3.4.1; Todos los AT  

**Criterios de Aceptación:**
- Disponibilidad ≥ 99.5% mensual para sistemas críticos (CCO, Peajes, ITS)
- Disponibilidad ≥ 98% mensual para sistemas no críticos (Iluminación, Áreas de Servicio)
- Respaldo con UPS + Generador en todas las instalaciones críticas
- Transferencia automática (ATS) en < 10 segundos ante falla de red
- Registro continuo de eventos eléctricos en SCADA

---

### 2.2 Alimentación del CCO (Centro de Control Operacional)

**ID:** RF-002  
**Descripción:** El sistema debe alimentar el CCO con redundancia N+1  
**Prioridad:** 🔴 CRÍTICA  
**Fuente:** AT2, Sección 3.1.7  

**Criterios de Aceptación:**
- Subestación principal de 500 kVA
- UPS redundante (2 x 100 kVA) con autonomía 30 minutos
- Generador de emergencia 300 kW (autonomía 24-48 horas)
- Transferencia automática ante falla
- Alimentación ininterrumpida de:
  - Servidores y almacenamiento
  - Videowall
  - SCADA
  - Telecomunicaciones
  - Iluminación de emergencia

---

### 2.3 Alimentación de Estaciones de Peaje

**ID:** RF-003  
**Descripción:** El sistema debe alimentar las 2 estaciones de peaje con capacidad de operación en falla eléctrica  
**Prioridad:** 🔴 CRÍTICA  
**Fuente:** AT2, Sección 3.3.4.1  

**Criterios de Aceptación:**
- Subestación de 200 kVA por estación (Zambito, Aguas Negras)
- UPS de 50 kVA con autonomía 30 minutos
- Generador de emergencia 150 kW por estación
- Operación continua de:
  - Casetas de cobro
  - Sistemas de peaje (TAG, básculas)
  - Iluminación
  - CCTV
  - Servidores locales
- Tiempo máximo de interrupción: 10 segundos

---

### 2.4 Alimentación del Sistema de Iluminación

**ID:** RF-004  
**Descripción:** El sistema debe alimentar 650 luminarias LED en zonas críticas  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 6.3.4; AT4 (Indicador E14)  

**Criterios de Aceptación:**
- 25 transformadores de distribución (15-30 kVA)
- Potencia total: 65 kW (650 luminarias x 100W promedio)
- Control automático (fotocélulas + temporizador)
- Control remoto desde CCO (SCADA)
- Protecciones contra sobretensiones (DPS)
- Disponibilidad ≥ 98% (Indicador E14: ≥80% puntos operativos)

---

### 2.5 Alimentación de Sistemas ITS

**ID:** RF-005  
**Descripción:** El sistema debe alimentar 100+ equipos ITS distribuidos en el corredor  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 3.3.5.1  

**Criterios de Aceptación:**
- 30 transformadores de distribución (cada 8-10 km)
- Alimentación PoE para cámaras CCTV
- UPS distribuidos (3-5 kVA) para equipos críticos
- Potencia total estimada: 50-80 kW
- Protección IP66/IK10 en gabinetes de campo
- Disponibilidad ≥ 99% (Indicador ITS)

---

### 2.6 Alimentación de Áreas de Servicio

**ID:** RF-006  
**Descripción:** El sistema debe alimentar 2 áreas de servicio obligatorias (asociadas a peajes)  
**Prioridad:** 🔴 Alta (obligación contractual)  
**Fuente:** AT1 Cap. 3; AT2, Sección 6.2.6  

**Criterios de Aceptación:**
- 2 centros de transformación (100 kVA cada uno)
- Ubicación: Peaje Zambito (PK 9.2) y Peaje Aguas Negras (PK 80)
- Generadores de emergencia en ambas áreas (50 kW cada uno)
- Alimentación de:
  - Sanitarios (iluminación, bombas de agua)
  - Restaurantes/cafeterías
  - Talleres mecánicos 24/7
  - Iluminación de parqueos
  - CCTV
- Disponibilidad ≥ 95%

---

### 2.7 Sistema de Respaldo (UPS + Generadores)

**ID:** RF-007  
**Descripción:** El sistema debe incluir respaldo de energía para sistemas críticos  
**Prioridad:** 🔴 CRÍTICA  
**Fuente:** AT2, Sección 3.3.4.1  

**Criterios de Aceptación:**
- **UPS:**
  - CCO: 2 x 100 kVA (redundante N+1)
  - Peajes: 50 kVA por estación
  - ITS distribuidos: 30 x 3-5 kVA
  - Autonomía: 30 minutos mínimo
- **Generadores:**
  - CCO: 300 kW (diésel)
  - Peajes: 150 kW por estación
  - Áreas de Servicio: 50 kW en 6 principales
  - Autonomía: 24-48 horas (tanque combustible)
  - Arranque automático en < 10 segundos
  - Mantenimiento preventivo mensual

---

### 2.8 Protección contra Rayos y Sobretensiones

**ID:** RF-008  
**Descripción:** El sistema debe proteger todos los equipos contra rayos y sobretensiones  
**Prioridad:** 🔴 Alta  
**Fuente:** RETIE; NTC 2050; IEEE 142  

**Criterios de Aceptación:**
- Sistema de puesta a tierra (SPT) en todas las instalaciones
- Resistencia de puesta a tierra: < 10 Ω
- DPS (Dispositivos de Protección contra Sobretensiones) en:
  - Tableros principales
  - Subestaciones
  - Equipos electrónicos sensibles
- Pararrayos en estructuras altas (CCO, torres de telecomunicaciones)
- Medición de resistencia de tierra: Anual

---

### 2.9 Sistema SCADA Eléctrico

**ID:** RF-009  
**Descripción:** El sistema debe incluir SCADA para monitoreo y control desde CCO  
**Prioridad:** 🟡 Alta  
**Fuente:** AT2, Sección 3.1.7  

**Criterios de Aceptación:**
- Monitoreo en tiempo real de:
  - Estado de subestaciones (voltaje, corriente, potencia)
  - Estado de UPS (carga, autonomía)
  - Estado de generadores (operativo, falla, combustible)
  - Consumo energético por zona
- Alarmas automáticas ante:
  - Falla de red principal
  - Baja autonomía de UPS
  - Falla de generador
  - Sobrecarga
- Control remoto de:
  - Transferencia manual red/generador (override)
  - Encendido/apagado de iluminación
- Interfaz web para visualización

---

### 2.10 Cumplimiento Normativo y Certificaciones

**ID:** RF-010  
**Descripción:** El sistema debe cumplir con todas las normativas eléctricas colombianas  
**Prioridad:** 🔴 CRÍTICA  
**Fuente:** RETIE; NTC 2050  

**Criterios de Aceptación:**
- Certificado RETIE de conformidad
- Planos eléctricos aprobados
- Memorias de cálculo (caídas de tensión, cortocircuito, coordinación de protecciones)
- Certificados de calibración de equipos de medición
- Protocolos de pruebas de:
  - Resistencia de aislamiento
  - Resistencia de puesta a tierra
  - Funcionamiento de protecciones
  - Funcionamiento de UPS y generadores

---

## 3. REQUISITOS NO FUNCIONALES

### 3.1 Requisitos de Disponibilidad

| ID | Requisito | Valor Mínimo | Fuente |
|:---|:----------|:-------------|:-------|
| **RNF-001** | Disponibilidad CCO | ≥ 99.5% mensual | AT2, AT4 |
| **RNF-002** | Disponibilidad Peajes | ≥ 99.5% mensual | AT2, Sección 3.3.4.1 |
| **RNF-003** | Disponibilidad ITS | ≥ 99% mensual | AT2, AT4 |
| **RNF-004** | Disponibilidad Iluminación | ≥ 98% mensual | AT4 (E14) |
| **RNF-005** | Tiempo máximo de transferencia (red → generador) | < 10 segundos | NFPA 110 |
| **RNF-006** | Autonomía UPS (sistemas críticos) | ≥ 30 minutos | Operación continua |

**Cálculo de disponibilidad 99.5%:** Máximo 3.6 horas de indisponibilidad/mes

---

### 3.2 Requisitos de Calidad de Energía

| ID | Requisito | Valor | Fuente |
|:---|:----------|:------|:-------|
| **RNF-007** | Voltaje nominal BT | 220V ±10% (198-242V) | NTC 2050 |
| **RNF-008** | Frecuencia | 60 Hz ±0.5 Hz | RETIE |
| **RNF-009** | Factor de potencia | ≥ 0.9 | Eficiencia energética |
| **RNF-010** | Distorsión armónica total (THD) | < 5% | IEEE 519 |
| **RNF-011** | Caída de tensión máxima | < 3% (alimentadores) | NTC 2050 |

---

### 3.3 Requisitos de Seguridad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-012** | Puesta a tierra | Resistencia < 10 Ω en todas las instalaciones | IEEE 142 |
| **RNF-013** | Protección contra contacto eléctrico | Interruptores diferenciales (30 mA en circuitos de toma) | NTC 2050 |
| **RNF-014** | Protecciones contra sobrecorriente | Breakers o fusibles dimensionados según NTC 2050 | NTC 2050 |
| **RNF-015** | Señalización de riesgo eléctrico | En tableros, subestaciones, áreas restringidas | RETIE |
| **RNF-016** | Extintores clase C | En subestaciones y salas eléctricas | NSR-10 |
| **RNF-017** | Acceso controlado | Subestaciones y salas eléctricas solo para personal autorizado | Seguridad |

---

### 3.4 Requisitos de Mantenibilidad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-018** | Mantenimiento preventivo | Mensual (generadores), Trimestral (UPS), Semestral (subestaciones) | NFPA 110 |
| **RNF-019** | Acceso para mantenimiento | Subestaciones accesibles 24/7 | Operación |
| **RNF-020** | Repuestos críticos | Stock de breakers, fusibles, baterías UPS | Reposición rápida |
| **RNF-021** | Manuales técnicos | En español, con diagramas unifilares actualizados | RETIE |

---

### 3.5 Requisitos de Escalabilidad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-022** | Capacidad de crecimiento | +30% de carga sin cambios en subestaciones | Buenas prácticas |
| **RNF-023** | Espacios de reserva en tableros | 30% de espacios libres para breakers adicionales | NTC 2050 |

---

### 3.6 Requisitos Ambientales

| ID | Requisito | Valor/Descripción | Fuente |
|:---|:----------|:------------------|:-------|
| **RNF-024** | Rango de temperatura operación (equipos interiores) | 0°C a +40°C | Especificaciones de equipos |
| **RNF-025** | Rango de temperatura operación (equipos exteriores) | -10°C a +50°C | Clima colombiano |
| **RNF-026** | Protección IP (equipos exteriores) | IP54 mínimo (subestaciones), IP66 (gabinetes campo) | RETIE |
| **RNF-027** | Ventilación de salas eléctricas | Natural o forzada, sin condensación | RETIE |

---

## 4. REQUISITOS DE INTERFACES

### 4.1 Interface Energía ↔ TODOS LOS SISTEMAS

**ID:** RI-001  
**Sistemas:** Energía Eléctrica ↔ Todos los sistemas del corredor  
**Tipo:** Física (Suministro Eléctrico)  
**Protocolo:** AC 220V / 110V  
**Datos Intercambiados:** Energía eléctrica (kW)  
**Frecuencia:** Continuo 24/7  

**Sistemas alimentados:**
- CCO: 200 kW
- Peajes (2): 100 kW por estación
- Iluminación: 65 kW
- ITS: 50-80 kW
- Áreas de Servicio: 150 kW total
- Telecomunicaciones: 30 kW
- Pesaje: 20 kW

**Potencia total estimada:** 700-800 kW

---

### 4.2 Interface Energía ↔ CCO (SCADA)

**ID:** RI-002  
**Sistemas:** Sistema Eléctrico ↔ CCO (SCADA)  
**Tipo:** Red de Datos IP  
**Protocolo:** Modbus TCP/IP, SNMP, IEC 61850  
**Datos Intercambiados:**
- Estado de subestaciones (V, A, kW, kVA, kWh)
- Estado de UPS (carga, autonomía)
- Estado de generadores (on/off, combustible, alarmas)
- Alarmas eléctricas
- Comandos de control
**Frecuencia:** Tiempo real (cada 5-10 segundos)

---

### 4.3 Interface Energía ↔ Red Eléctrica Nacional

**ID:** RI-003  
**Sistemas:** Sistema Eléctrico ↔ Operador de Red (Codensa, ESSA, etc.)  
**Tipo:** Física (Acometida MT)  
**Protocolo:** 13.2 kV / 34.5 kV trifásico  
**Datos Intercambiados:** Energía eléctrica de la red nacional  
**Frecuencia:** Continuo  

---

## 5. MATRIZ DE TRAZABILIDAD

| Requisito ID | Tipo | Descripción Resumida | Fuente Contractual | Componente Afectado | Prioridad |
|:-------------|:-----|:---------------------|:-------------------|:--------------------|:----------|
| **RF-001** | Funcional | Suministro continuo 24/7/365 | AT2, Todos los AT | Todo el sistema | 🔴 CRÍTICA |
| **RF-002** | Funcional | Alimentación CCO (redundancia N+1) | AT2, 3.1.7 | CCO | 🔴 CRÍTICA |
| **RF-003** | Funcional | Alimentación Peajes (operación en falla) | AT2, 3.3.4.1 | Peajes | 🔴 CRÍTICA |
| **RF-004** | Funcional | Alimentación Iluminación (410 luminarias) | AT2, 6.3.4; AT4 E14 | Iluminación | 🔴 Alta |
| **RF-005** | Funcional | Alimentación ITS (100+ equipos) | AT2, 3.3.5.1 | ITS | 🔴 Alta |
| **RF-006** | Funcional | Alimentación Áreas de Servicio (**2 obligatorias**) | AT1 Cap. 3; AT2, 6.2.6 | Áreas de Servicio | 🔴 Alta |
| **RF-007** | Funcional | Sistema de respaldo (UPS + Generadores) | AT2, 3.3.4.1 | Respaldo | 🔴 CRÍTICA |
| **RF-008** | Funcional | Protección contra rayos | RETIE, IEEE 142 | Puesta a tierra | 🔴 Alta |
| **RF-009** | Funcional | SCADA Eléctrico | AT2, 3.1.7 | CCO, Monitoreo | 🟡 Alta |
| **RF-010** | Funcional | Cumplimiento normativo | RETIE, NTC 2050 | Todo el sistema | 🔴 CRÍTICA |
| **RNF-001** | Disponibilidad | CCO ≥ 99.5% | AT2, AT4 | CCO | 🔴 CRÍTICA |
| **RNF-002** | Disponibilidad | Peajes ≥ 99.5% | AT2, 3.3.4.1 | Peajes | 🔴 CRÍTICA |
| **RNF-012** | Seguridad | Puesta a tierra < 10 Ω | IEEE 142 | SPT | 🔴 Alta |

**Total requisitos identificados:** 37 (10 funcionales + 27 no funcionales)

---

## 6. RESTRICCIONES Y SUPUESTOS

### 6.1 Restricciones

| ID | Restricción | Impacto | Origen |
|:---|:------------|:--------|:-------|
| **REST-001** | Disponibilidad ≥ 99.5% (penalizable en CCO y Peajes) | Crítico - Deducciones si no se cumple | AT2, AT4 |
| **REST-002** | Cumplir RETIE obligatorio | Alto - Certificación obligatoria | RETIE |
| **REST-003** | Operación de peajes en falla eléctrica | Crítico - UPS + Generador obligatorio | AT2, 3.3.4.1 |
| **REST-004** | Sin energía, NINGÚN sistema opera | Crítico - Sistema más crítico del proyecto | Lógica operacional |
| **REST-005** | Pago de consumo eléctrico a cargo del Concesionario | Alto - Impacto en OPEX | AT2 |

---

### 6.2 Supuestos

| ID | Supuesto | Riesgo si no se cumple | Validación |
|:---|:---------|:-----------------------|:-----------|
| **SUP-001** | Red eléctrica nacional disponible en puntos críticos | Alto - Requiere generación propia o extensiones costosas | Validar con operadores de red (mes 3) |
| **SUP-002** | Tarifa eléctrica: $0.15 USD/kWh promedio | Medio - Variación de OPEX | Monitorear tarifas |
| **SUP-003** | Proveedores garantizan repuestos 25 años | Alto - Obsolescencia tecnológica | Contratos de largo plazo |
| **SUP-004** | Combustible diésel disponible para generadores | Medio - Impacto en autonomía de respaldo | Contratos con proveedores locales |

---

## 7. CASOS DE USO

### 7.1 CU-001: Falla de Red Eléctrica con Transferencia Automática a Generador

**Actor:** Sistema ATS (Automático) + Operador CCO  
**Descripción:** Ante una falla de la red eléctrica, el sistema transfiere automáticamente a generador  
**Precondiciones:**
- UPS operativo
- Generador con combustible y en standby
- ATS configurado

**Flujo Normal:**
1. Falla la red eléctrica principal (apagón)
2. UPS entra en operación instantáneamente (< 1 ms)
3. UPS alimenta cargas críticas (servidores, SCADA, iluminación emergencia)
4. Sistema ATS detecta falla de red
5. ATS envía señal de arranque a generador
6. Generador arranca y alcanza régimen (< 10 segundos)
7. ATS verifica estabilidad del generador (voltaje, frecuencia)
8. ATS transfiere carga de UPS a generador
9. UPS entra en modo bypass (sigue alimentado por generador)
10. Sistema SCADA genera alarma "OPERACIÓN CON GENERADOR" en CCO
11. Operador monitorea nivel de combustible
12. Cuando retorna red eléctrica:
    - ATS verifica estabilidad de red (2 minutos)
    - ATS transfiere carga de generador a red
    - Generador opera 5 minutos en vacío (enfriamiento)
    - Generador se detiene y vuelve a standby

**Postcondiciones:**
- Operación continua sin interrupción
- Evento registrado en log SCADA

**Tiempo total de interrupción percibida:** 0 segundos (gracias a UPS)

---

### 7.2 CU-002: Monitoreo de Consumo Energético desde CCO

**Actor:** Operador CCO  
**Descripción:** Operador monitorea el consumo energético en tiempo real  
**Precondiciones:**
- SCADA Eléctrico operativo
- Medidores de energía instalados en subestaciones

**Flujo Normal:**
1. Operador accede a módulo de SCADA Eléctrico en CCO
2. Selecciona vista "Consumo Energético"
3. Sistema muestra dashboard con:
   - Potencia total consumida (kW)
   - Consumo por zona (CCO, Peajes, Iluminación, ITS, etc.)
   - Energía acumulada del día (kWh)
   - Comparación con día anterior
   - Proyección de consumo mensual
   - Costo estimado (kWh × tarifa)
4. Operador identifica consumo anómalo en "Peaje Zambito"
5. Operador profundiza en datos de Peaje Zambito
6. Sistema muestra consumo por circuito
7. Operador identifica circuito con sobrecarga (posible falla)
8. Operador genera orden de inspección para mantenimiento eléctrico

**Postcondiciones:**
- Consumo monitoreado
- Anomalías detectadas
- Orden de trabajo generada

---

### 7.3 CU-003: Mantenimiento Preventivo Mensual de Generador

**Actor:** Técnico Eléctrico  
**Descripción:** Técnico realiza mantenimiento preventivo mensual del generador del CCO  
**Precondiciones:**
- Plan de mantenimiento aprobado
- Técnico capacitado
- Herramientas y consumibles disponibles

**Flujo Normal:**
1. Técnico revisa plan de mantenimiento (lista de chequeo)
2. Técnico notifica a operador CCO: "Inicio mantenimiento generador (10 minutos)"
3. Operador confirma que no hay criticidad operativa
4. Técnico realiza inspección visual:
   - Nivel de aceite
   - Nivel de refrigerante
   - Estado de batería (voltaje)
   - Fugas (combustible, aceite)
   - Estado de mangueras y conexiones
5. Técnico realiza prueba de arranque:
   - Arranca generador manualmente
   - Verifica estabilidad (voltaje, frecuencia, temperatura)
   - Generador opera 15 minutos con carga (alimenta iluminación auxiliar)
   - Técnico detiene generador
6. Técnico registra valores en planilla de mantenimiento
7. Si detecta anomalías → Genera orden de mantenimiento correctivo
8. Técnico notifica a operador: "Mantenimiento completado, generador operativo"

**Postcondiciones:**
- Generador verificado
- Registro de mantenimiento completado
- Disponibilidad del generador confirmada

**Frecuencia:** Mensual (según NFPA 110)

---

## 8. CRITERIOS DE ACEPTACIÓN

### 8.1 Criterios Funcionales

- [ ] El 100% de los sistemas del corredor tienen suministro eléctrico
- [ ] CCO tiene redundancia N+1 (2 UPS + 1 generador)
- [ ] Peajes tienen UPS + Generador (operación en falla)
- [ ] Sistema de Iluminación tiene 410 luminarias alimentadas
- [ ] Sistemas ITS tienen alimentación con UPS distribuidos
- [ ] **2 Áreas de Servicio obligatorias** tienen suministro eléctrico
- [ ] Sistema SCADA Eléctrico operativo en CCO
- [ ] Todos los equipos tienen protección contra rayos y sobretensiones
- [ ] Transferencia automática (ATS) funciona en < 10 segundos
- [ ] Certificado RETIE obtenido para todas las instalaciones

### 8.2 Criterios de Performance

- [ ] Disponibilidad CCO ≥ 99.5% mensual
- [ ] Disponibilidad Peajes ≥ 99.5% mensual
- [ ] Disponibilidad ITS ≥ 99% mensual
- [ ] Disponibilidad Iluminación ≥ 98% mensual
- [ ] Autonomía UPS: 30 minutos mínimo
- [ ] Autonomía generadores: 24-48 horas
- [ ] Tiempo de arranque generadores: < 10 segundos
- [ ] Voltaje BT: 220V ±10% (198-242V)
- [ ] Frecuencia: 60 Hz ±0.5 Hz
- [ ] Factor de potencia: ≥ 0.9

### 8.3 Criterios de Calidad

- [ ] Cumplir RETIE (Certificación obligatoria)
- [ ] Cumplir NTC 2050 (Código Eléctrico Colombiano)
- [ ] Cumplir IEEE 142 (Puesta a tierra)
- [ ] Cumplir NFPA 110 (Generadores de emergencia)
- [ ] Resistencia de puesta a tierra < 10 Ω
- [ ] Protocolos de pruebas aprobados (aislamiento, SPT, protecciones)
- [ ] Manuales técnicos en español

### 8.4 Criterios de Integración

- [ ] Interfaz con todos los sistemas del corredor funcional
- [ ] SCADA Eléctrico integrado con CCO
- [ ] Alarmas eléctricas llegan a CCO en tiempo real
- [ ] Control remoto de iluminación desde CCO operativo

---

## 9. DEPENDENCIAS

| Sistema/Recurso | Tipo de Dependencia | Criticidad | Estado | Plazo |
|:----------------|:--------------------|:-----------|:-------|:------|
| **Red Eléctrica Nacional** | Acometidas MT disponibles | 🔴 Crítica | ⏳ Por gestionar con operadores | Mes 3-6 |
| **Todos los Sistemas** | Dependen de Energía Eléctrica | 🔴 Crítica | N/A | Sistema más crítico |
| **CCO** | SCADA Eléctrico integrado | 🟡 Media | ✅ Documentado (T01) | Fase Operativa |
| **Combustible Diésel** | Suministro continuo para generadores | 🟡 Media | ⏳ Por contratar | Fase Operativa |

---

## 10. PRÓXIMOS PASOS

- [ ] Desarrollar arquitectura eléctrica conceptual (Template T03)
- [ ] Realizar estudios de carga (estimación detallada de potencias)
- [ ] Diseñar diagramas unifilares de Media y Baja Tensión
- [ ] Calcular caídas de tensión y coordinación de protecciones
- [ ] Solicitar cotizaciones a proveedores:
  - Transformadores: ABB, Siemens, Schneider Electric
  - UPS: APC, Eaton, Vertiv
  - Generadores: Caterpillar, Cummins, Kohler
- [ ] Elaborar especificaciones técnicas detalladas (Templates T04)
- [ ] Gestionar acometidas eléctricas con operadores de red
- [ ] Tramitar Certificado RETIE
- [ ] Estimar costos detallados con cotizaciones reales (Template T05)

---

## 11. REFERENCIAS

### Documentos Contractuales:
- [AT2 - Operación y Mantenimiento](../II.%20Apendices%20Tecnicos/AT2_Operacion_Mantenimiento_v1.0.md) - Secciones 3.3.4.1, 3.1.7, 6.3.4
- [AT4 - Indicadores](../II.%20Apendices%20Tecnicos/AT4_Indicadores_v1.0.md) - Indicadores E14, Disponibilidad CCO/ITS
- [AT1 - Alcance del Proyecto](../II.%20Apendices%20Tecnicos/AT1_Alcance_Proyecto_v1.0.md)

### Documentos del Proyecto:
- [T01 - Ficha Sistema Energía Eléctrica](38_T01_Ficha_Sistema_Energia_Electrica_v1.0.md) - Base para este análisis
- [T01 - Todos los sistemas](.) - Todos dependen de Energía

### Normativa:
- RETIE - Reglamento Técnico de Instalaciones Eléctricas
- NTC 2050 - Código Eléctrico Colombiano
- IEEE 142 - Grounding of Industrial and Commercial Power Systems
- IEEE 1100 - Powering and Grounding Electronic Equipment
- NFPA 110 - Standard for Emergency and Standby Power Systems
- IEC 61850 - Communication Networks and Systems for Power Utility Automation

---

## 12. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 17/10/2025 | Administrador Contractual EPC | Análisis inicial de requisitos del sistema de energía eléctrica |
| **v1.1** | 20/10/2025 | Administrador Contractual EPC | **Ajuste contractual:** 14 áreas → 2 áreas obligatorias (AT1 Cap. 3) |
| **v1.2** | 22/10/2025 | Administrador Contractual EPC | **Revisión con información oficial:** CCO La Lizama PK 4+300, longitudes actualizadas |

---

**Versión:** 1.2 ✅ **REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**  
**Estado:** ✅ Análisis Validado Contractualmente + Información Oficial Integrada  
**Fecha:** 22/10/2025  
**Responsable:** Ingeniero Eléctrico / Ingeniero de Potencia  
**Próximo documento:** T03 - Arquitectura Conceptual del Sistema de Energía Eléctrica  

---

**CHANGELOG:**
| Versión | Fecha | Descripción |
|:--------|:------|:------------|
| v1.0 | 17/10/2025 | Análisis inicial de requisitos de energía eléctrica |
| **v1.1** | **20/10/2025** | **Ajuste contractual:** 14 áreas → 2 áreas obligatorias (AT1 Cap. 3). RF-006 y criterios actualizados |
| **v1.2** | **22/10/2025** | **Revisión con información oficial:** CCO La Lizama PK 4+300, longitudes 259.6 km + 33.4 km |

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- CCO ubicado en La Lizama PK 4+300 (RN 4513)
- Longitudes actualizadas: 259.6 km principal + 33.4 km adicionales
- Sistemas alimentados actualizados con ubicación oficial
- Metodología PKD lineal aplicada

---

**Fin del documento - T02 Análisis de Requisitos Sistema de Energía Eléctrica**  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*

