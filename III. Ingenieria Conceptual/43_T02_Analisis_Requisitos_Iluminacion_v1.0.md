# T02: ANÁLISIS DE REQUISITOS - SISTEMA DE ILUMINACIÓN VIAL
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 17/10/2025  
**Sistema:** Iluminación Vial  
**Responsable:** Ingeniero de Sistemas Eléctricos  
**Versión:** 1.0  

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Documento

Este documento presenta el **análisis detallado de requisitos** del Sistema de Iluminación Vial para el proyecto APP Puerto Salgar - Barrancabermeja, cubriendo:

- Requisitos funcionales (qué debe hacer el sistema)
- Requisitos no funcionales (cómo debe hacerlo)
- Requisitos de interfaces con otros sistemas
- Criterios de aceptación
- Casos de uso principales
- Matriz de trazabilidad contractual

### 1.2 Alcance

Este análisis cubre la **iluminación de todas las zonas críticas** del corredor vial de 259.6 km:
1. Estaciones de Peaje (2 estaciones: Zambito, Aguas Negras)
2. Estaciones de Pesaje
3. Centro de Control de Operaciones (CCO)
4. Áreas de Servicio (14 UFs)
5. Intersecciones a Nivel y Desnivel
6. Paraderos y Puentes Peatonales
7. Zonas de acceso y estacionamiento

**Total estimado:** 650 luminarias LED con sistema de control y monitoreo centralizado.

### 1.3 Definiciones y Acrónimos

| Término | Definición |
|:--------|:-----------|
| **RETILAP** | Reglamento Técnico de Iluminación y Alumbrado Público |
| **LED** | Light Emitting Diode (Diodo Emisor de Luz) |
| **CCO** | Centro de Control Operacional |
| **SCADA** | Supervisory Control and Data Acquisition |
| **Lux** | Unidad de iluminancia (lm/m²) |
| **CRI** | Color Rendering Index (Índice de Reproducción Cromática) |
| **IP** | Ingress Protection (Grado de Protección) |
| **IK** | Grado de Protección Mecánica contra Impactos |
| **UF** | Unidad Funcional |
| **MTBF** | Mean Time Between Failures (Tiempo Medio Entre Fallas) |
| **MTTR** | Mean Time To Repair (Tiempo Medio de Reparación) |
| **kWh** | Kilovatio-hora (unidad de energía eléctrica) |
| **DPS** | Dispositivo de Protección contra Sobretensiones |

---

## 2. REQUISITOS FUNCIONALES

### 2.1 Iluminación de Estaciones de Peaje

**ID:** RF-001  
**Descripción:** El sistema debe proporcionar iluminación adecuada en todas las áreas de las 2 estaciones de peaje (Zambito y Aguas Negras)  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 6.3.4  

**Criterios de Aceptación:**
- Iluminación completa de plazas de peaje, casetas, accesos y bahías
- Nivel de iluminancia: 20-30 lux promedio en plazas según RETILAP
- Uniformidad: ≥ 0.4 (relación iluminancia mínima/promedio)
- Temperatura de color: 4000-5000 K (luz blanca neutra)
- CRI (Índice de Reproducción Cromática): ≥ 70
- Sin deslumbramiento molesto (limitación de luminancia < 10,000 cd/m²)
- Operación 24/7 durante horario nocturno (18:00 - 06:00)

---

### 2.2 Iluminación de Estaciones de Pesaje

**ID:** RF-002  
**Descripción:** El sistema debe iluminar las plataformas de pesaje, oficinas y accesos  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 6.3.4  

**Criterios de Aceptación:**
- Nivel de iluminancia en plataforma de pesaje: 30-50 lux (para inspección visual)
- Iluminación de oficinas: 150-200 lux (áreas de trabajo)
- Iluminación de accesos: 10-20 lux
- Sin sombras pronunciadas en zona de inspección
- Compatible con operación de cámaras CCTV nocturnas

---

### 2.3 Iluminación del CCO

**ID:** RF-003  
**Descripción:** El sistema debe iluminar el perímetro, accesos y estacionamientos del CCO  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 6.3.4  

**Criterios de Aceptación:**
- Iluminación perimetral: 5-10 lux (seguridad)
- Iluminación de accesos: 20-30 lux
- Iluminación de estacionamientos: 10-15 lux
- Compatible con sistema de CCTV de seguridad
- Evitar deslumbramiento hacia cámaras de vigilancia

---

### 2.4 Iluminación de Áreas de Servicio

**ID:** RF-004  
**Descripción:** El sistema debe iluminar las 14 áreas de servicio (UFs)  
**Prioridad:** 🟡 Alta  
**Fuente:** AT2, Sección 6.3.4; AT1  

**Criterios de Aceptación:**
- Zonas de parqueo: 10-15 lux
- Sanitarios y accesos: 30-50 lux
- Áreas peatonales: 10-20 lux
- Operación continua durante horario nocturno
- Disponibilidad: ≥ 98%

---

### 2.5 Iluminación de Intersecciones

**ID:** RF-005  
**Descripción:** El sistema debe iluminar intersecciones a nivel y desnivel según diseño geométrico  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 6.3.4; RETILAP  

**Criterios de Aceptación:**
- Intersecciones a nivel: 20-30 lux promedio
- Intercambios a desnivel: 15-25 lux promedio
- Mayor iluminancia en zonas de conflicto y decisión
- Uniformidad: ≥ 0.4
- Transición gradual de niveles de iluminación (evitar cambios abruptos)

---

### 2.6 Iluminación de Puentes Peatonales

**ID:** RF-006  
**Descripción:** El sistema debe iluminar escaleras, rampas y pasos superiores de puentes peatonales  
**Prioridad:** 🟡 Media  
**Fuente:** AT2, Sección 6.3.4  

**Criterios de Aceptación:**
- Escaleras: 50 lux mínimo (seguridad)
- Rampas: 30-40 lux
- Paso superior: 20-30 lux
- Sin zonas de sombra en escalones
- Iluminación de emergency (back-up) en caso de falla principal

---

### 2.7 Control y Monitoreo desde CCO

**ID:** RF-007  
**Descripción:** El sistema debe permitir control y monitoreo remoto desde el CCO  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 3.1.7 (CCO)  

**Criterios de Aceptación:**
- Visualización del estado on/off de cada luminaria o grupo de luminarias
- Control remoto de encendido/apagado
- Alarmas automáticas en caso de falla
- Registro de eventos (encendido, apagado, fallas)
- Medición de consumo energético por zona
- Interfaz gráfica tipo SCADA

---

### 2.8 Programación Horaria Automática

**ID:** RF-008  
**Descripción:** El sistema debe encender/apagar automáticamente según horario establecido  
**Prioridad:** 🟡 Media  
**Fuente:** Operación eficiente  

**Criterios de Aceptación:**
- Encendido automático al atardecer (configurable, ej: 18:00)
- Apagado automático al amanecer (configurable, ej: 06:00)
- Posibilidad de ajuste estacional (horario de verano/invierno)
- Posibilidad de encendido/apagado manual desde CCO (override)
- Función de fotocélula (encendido por baja luminosidad natural)

---

### 2.9 Mantenimiento de Iluminación Existente

**ID:** RF-009  
**Descripción:** El sistema debe mantener la iluminación existente en otras zonas (excepto Pasos Nacionales)  
**Prioridad:** 🟡 Media  
**Fuente:** AT2, Sección 6.3.4  

**Criterios de Aceptación:**
- Inventario completo de puntos luminosos existentes
- Mantenimiento preventivo (limpieza, inspección) cada 6 meses
- Mantenimiento correctivo (reposición) en < 24 horas
- Exclusión explícita: Pasos Nacionales (no son responsabilidad del Concesionario)

---

### 2.10 Eficiencia Energética

**ID:** RF-010  
**Descripción:** El sistema debe optimizar el consumo energético mediante tecnología LED de alta eficiencia  
**Prioridad:** 🟡 Media  
**Fuente:** Sostenibilidad, reducción de OPEX  

**Criterios de Aceptación:**
- Luminarias LED con eficacia > 100 lm/W
- Vida útil de luminarias: > 50,000 horas
- Reducción de consumo energético ≥ 50% vs. tecnología HID tradicional
- Posibilidad de dimming (reducción de intensidad) en horarios de bajo tráfico
- Factor de potencia: ≥ 0.9

---

## 3. REQUISITOS NO FUNCIONALES

### 3.1 Requisitos de Disponibilidad

| ID | Requisito | Valor Mínimo | Fuente |
|:---|:----------|:-------------|:-------|
| **RNF-001** | Disponibilidad del sistema de iluminación | ≥ 98% mensual | AT4, Indicador E14 (≥80% puntos operativos) |
| **RNF-002** | MTBF (Tiempo Medio Entre Fallas) de luminarias LED | > 15,000 horas | Especificaciones LED |
| **RNF-003** | MTTR (Tiempo Medio de Reparación) | ≤ 24 horas | AT2 (implícito), AT4 |
| **RNF-004** | Disponibilidad de iluminación en peajes | ≥ 99% (crítico para operación) | AT2, Sección 6.3.4 |
| **RNF-005** | Redundancia en alimentación eléctrica (sitios críticos) | Doble acometida o UPS | Peajes, CCO |

**Cálculo de disponibilidad:**
- 98% mensual = máximo 14.4 horas de indisponibilidad/mes
- 99% mensual = máximo 7.3 horas de indisponibilidad/mes

---

### 3.2 Requisitos de Performance

| ID | Requisito | Valor Mínimo | Fuente |
|:---|:----------|:-------------|:-------|
| **RNF-006** | Tiempo de encendido de luminarias LED | < 1 segundo (instantáneo) | Tecnología LED |
| **RNF-007** | Nivel de iluminancia en peajes | 20-30 lux promedio | RETILAP, Clase M3 |
| **RNF-008** | Uniformidad de iluminación | ≥ 0.4 (U0 = Emin/Eprom) | RETILAP |
| **RNF-009** | Temperatura de color | 4000-5000 K (luz blanca neutra) | RETILAP, CIE 115 |
| **RNF-010** | Índice de Reproducción Cromática (CRI) | ≥ 70 | RETILAP |
| **RNF-011** | Eficacia luminosa | > 100 lm/W | Eficiencia energética |
| **RNF-012** | Factor de potencia | ≥ 0.9 | NTC 2050, eficiencia |

---

### 3.3 Requisitos de Seguridad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-013** | Protección contra contacto eléctrico | Puesta a tierra en todos los postes | NTC 2050 |
| **RNF-014** | Protección contra sobretensiones | DPS (Dispositivos de Protección contra Sobretensiones) en tableros | NTC 2050 |
| **RNF-015** | Protección de cableado | Canalizaciones subterráneas, ductos PVC o HDPE | NTC 2050 |
| **RNF-016** | Señalización de riesgo eléctrico | En tableros y postes con transformadores | RETIE |
| **RNF-017** | Carcasas antivandalismo | IK10 (resistencia a impactos) en áreas públicas | Seguridad |
| **RNF-018** | Acceso controlado a tableros | Llave o cerradura de seguridad | Operación |

---

### 3.4 Requisitos de Usabilidad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-019** | Interfaz SCADA intuitiva | Operadores capacitados en < 4 horas | Operación CCO |
| **RNF-020** | Visualización de alarmas | Alertas visuales y sonoras en CCO | Gestión proactiva |
| **RNF-021** | Idioma | Español (interfaz y manuales) | Colombia |
| **RNF-022** | Acceso web al sistema SCADA | Navegador estándar (Chrome, Firefox, Edge) | Flexibilidad operativa |

---

### 3.5 Requisitos de Mantenibilidad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-023** | Modularidad de componentes | Luminarias reemplazables sin afectar cableado | Mantenimiento ágil |
| **RNF-024** | Disponibilidad de repuestos | Durante toda la concesión (25 años) | AT2 (garantía) |
| **RNF-025** | Diagnóstico remoto | Detección de fallas desde CCO | Gestión proactiva |
| **RNF-026** | Accesibilidad a equipos | Sin necesidad de equipos especiales (< 12m altura) | Mantenimiento seguro |
| **RNF-027** | Manuales técnicos | En español, con diagramas unifilares actualizados | AT2 |

---

### 3.6 Requisitos de Escalabilidad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-028** | Capacidad de crecimiento | +20% de luminarias sin cambios en arquitectura | Buenas prácticas |
| **RNF-029** | Ductos de reserva | 30% de ductos libres para expansiones | Planificación |
| **RNF-030** | Puertos de control disponibles | 20% de puertos libres en controladores | Expansión |

---

### 3.7 Requisitos Ambientales y de Protección

| ID | Requisito | Valor Mínimo | Fuente |
|:---|:----------|:-------------|:-------|
| **RNF-031** | Grado de protección IP | IP66 mínimo (equipos exteriores) | Clima colombiano |
| **RNF-032** | Grado de protección IK | IK10 (antivandalismo) | Seguridad |
| **RNF-033** | Rango de temperatura operación | -10°C a +50°C | Condiciones climáticas |
| **RNF-034** | Humedad relativa | 0% a 95% RH (sin condensación) | Clima tropical |
| **RNF-035** | Resistencia a rayos UV | Carcasas resistentes a degradación UV | Vida útil 15+ años |
| **RNF-036** | Minimización de contaminación lumínica | Luminarias con reflectores direccionales, 0 lúmenes hacia arriba | Normativa ambiental |

---

## 4. REQUISITOS DE INTERFACES

### 4.1 Interface Iluminación ↔ CCO

**ID:** RI-001  
**Sistemas:** Iluminación ↔ CCO  
**Tipo:** Red de Datos IP  
**Protocolo:** Modbus TCP/IP, SNMP  
**Datos Intercambiados:**
- Estado on/off de luminarias (por grupo o individual)
- Consumo energético (kWh) por zona
- Alarmas de falla (luminaria apagada, sobrecorriente, baja tensión)
- Comandos de control (encendido/apagado manual, programación horaria)
**Frecuencia:** Tiempo real (monitoreo cada 5 minutos, alarmas inmediatas)  
**Ancho de banda:** Bajo (< 1 Mbps)

---

### 4.2 Interface Iluminación ↔ Sistema Eléctrico Principal

**ID:** RI-002  
**Sistemas:** Iluminación ↔ Red Eléctrica 13.2 kV / 220V  
**Tipo:** Física (Acometida Eléctrica)  
**Protocolo:** N/A (eléctrico AC trifásico)  
**Datos Intercambiados:** Energía eléctrica (kW)  
**Frecuencia:** Continuo  
**Potencia total estimada:** 65 kW (650 luminarias × 100W promedio)

---

### 4.3 Interface Iluminación ↔ ITS (CCTV)

**ID:** RI-003  
**Sistemas:** Iluminación ↔ CCTV  
**Tipo:** Coordinación Operacional  
**Protocolo:** N/A (diseño coordinado)  
**Datos Intercambiados:** 
- Iluminación adecuada para operación nocturna de cámaras
- Evitar deslumbramiento hacia cámaras
**Frecuencia:** N/A (diseño inicial)

---

### 4.4 Interface Iluminación ↔ Peajes

**ID:** RI-004  
**Sistemas:** Iluminación ↔ Estaciones de Peaje  
**Tipo:** Integración Física  
**Protocolo:** Cableado dedicado  
**Datos Intercambiados:** Iluminación de casetas, plazas, accesos  
**Frecuencia:** Continuo (24h en horario nocturno)

---

### 4.5 Interface Iluminación ↔ Telecomunicaciones

**ID:** RI-005  
**Sistemas:** Iluminación ↔ Red de Fibra Óptica  
**Tipo:** Física  
**Protocolo:** Ethernet (para SCADA)  
**Datos Intercambiados:** Comunicaciones SCADA CCO ↔ Controladores de iluminación  
**Frecuencia:** Continuo

---

## 5. MATRIZ DE TRAZABILIDAD

| Requisito ID | Tipo | Descripción Resumida | Fuente Contractual | Componente Afectado | Prioridad |
|:-------------|:-----|:---------------------|:-------------------|:--------------------|:----------|
| **RF-001** | Funcional | Iluminación de peajes | AT2, 6.3.4 | Peajes (2 estaciones) | 🔴 Alta |
| **RF-002** | Funcional | Iluminación de pesaje | AT2, 6.3.4 | Estaciones de Pesaje | 🔴 Alta |
| **RF-003** | Funcional | Iluminación de CCO | AT2, 6.3.4 | CCO | 🔴 Alta |
| **RF-004** | Funcional | Iluminación de Áreas de Servicio | AT2, 6.3.4; AT1 | 14 UFs | 🟡 Alta |
| **RF-005** | Funcional | Iluminación de intersecciones | AT2, 6.3.4; RETILAP | Intersecciones | 🔴 Alta |
| **RF-006** | Funcional | Iluminación de puentes peatonales | AT2, 6.3.4 | Puentes peatonales | 🟡 Media |
| **RF-007** | Funcional | Control desde CCO | AT2, 3.1.7 | CCO, SCADA | 🔴 Alta |
| **RF-008** | Funcional | Programación horaria | Operación eficiente | Controladores | 🟡 Media |
| **RF-009** | Funcional | Mantenimiento iluminación existente | AT2, 6.3.4 | Inventario existente | 🟡 Media |
| **RF-010** | Funcional | Eficiencia energética | Sostenibilidad | Luminarias LED | 🟡 Media |
| **RNF-001** | Disponibilidad | 98% mensual | AT4, Indicador E14 | Todo el sistema | 🔴 Alta |
| **RNF-007** | Performance | Nivel de iluminancia 20-30 lux | RETILAP | Peajes, intersecciones | 🔴 Alta |
| **RNF-013** | Seguridad | Puesta a tierra | NTC 2050 | Postes, tableros | 🔴 Alta |
| **RNF-031** | Ambiental | Protección IP66 | Clima | Luminarias exteriores | 🔴 Alta |

**Total requisitos identificados:** 46 (10 funcionales + 36 no funcionales)

---

## 6. RESTRICCIONES Y SUPUESTOS

### 6.1 Restricciones

| ID | Restricción | Impacto | Origen |
|:---|:------------|:--------|:-------|
| **REST-001** | Disponibilidad ≥ 80% de puntos luminosos operativos (penalizable) | Crítico - Deducciones en Retribución si no se cumple | AT4, Indicador E14 |
| **REST-002** | Cumplir RETILAP (niveles, uniformidad, CRI) | Alto - Especificaciones obligatorias | RETILAP 2010 |
| **REST-003** | Exclusión de Pasos Nacionales | Medio - Definir inventario inicial | AT2, Sección 6.3.4 |
| **REST-004** | Mantenimiento obligatorio de iluminación existente | Alto - Incluir en inventario inicial | AT2, Sección 6.3.4 |
| **REST-005** | Iluminación obligatoria en 100% de peajes y áreas de servicio | Alto - Cobertura no opcional | AT2, Sección 6.3.4 |
| **REST-006** | Cumplir NTC 2050 (Código Eléctrico) | Alto - Instalaciones seguras | NTC 2050 |

---

### 6.2 Supuestos

| ID | Supuesto | Riesgo si no se cumple | Validación |
|:---|:---------|:-----------------------|:-----------|
| **SUP-001** | Energía eléctrica disponible en todos los puntos críticos | Crítico - Requiere generación local o extensiones de red | Validar con Ing. Eléctrico (T01 Energía) |
| **SUP-002** | Fibra óptica disponible para comunicaciones SCADA | Alto - Requiere comunicaciones alternativas (radio, celular) | Validar con Ing. Telecom (T01 Telecom) |
| **SUP-003** | Proveedores garantizan repuestos LED 15+ años | Alto - Obsolescencia tecnológica | Incluir en contratos de suministro |
| **SUP-004** | Ubicaciones exactas de intersecciones y puentes peatonales confirmadas | Medio - Posible reubicación de luminarias | Validar con diseño geométrico definitivo |
| **SUP-005** | Tarifa eléctrica estable ($0.12/kWh promedio) | Medio - Impacto en OPEX | Monitoreo de tarifas, posible cláusula de ajuste |

---

## 7. CASOS DE USO

### 7.1 CU-001: Encendido Automático de Iluminación al Atardecer

**Actor:** Sistema de Control de Iluminación (automático)  
**Descripción:** El sistema enciende automáticamente las luminarias al detectar baja luminosidad natural  
**Precondiciones:**
- Fotocélulas operativas
- Controladores de iluminación operativos
- Suministro eléctrico disponible

**Flujo Normal:**
1. Fotocélula detecta nivel de luz natural < 10 lux (aproximadamente 18:00)
2. Fotocélula envía señal a controlador de iluminación
3. Controlador verifica horario programado (18:00 - 06:00)
4. Controlador activa relés de encendido de luminarias
5. Luminarias LED se encienden instantáneamente (< 1 segundo)
6. Sistema SCADA registra evento de encendido en CCO
7. Operador CCO visualiza estado "ON" en pantalla

**Postcondiciones:**
- Iluminación operativa en todos los sitios críticos
- Evento registrado en log del sistema

**Flujos Alternativos:**
- Si falla fotocélula → Encendido manual desde CCO
- Si falla controlador local → Alarma a CCO, encendido manual
- Si falla suministro eléctrico → Activación de UPS (si disponible) o alarma

---

### 7.2 CU-002: Detección y Reporte de Falla de Luminaria

**Actor:** Sistema de Monitoreo SCADA + Operador CCO  
**Descripción:** El sistema detecta falla de luminaria y alerta al operador  
**Precondiciones:**
- Sistema SCADA operativo
- Comunicaciones CCO ↔ Controladores activas
- Operador de turno en CCO

**Flujo Normal:**
1. Controlador de iluminación detecta caída de corriente en circuito de luminaria
2. Controlador envía alarma a SCADA del CCO
3. Sistema SCADA genera alarma visual (pantalla roja) y sonora
4. Operador visualiza alarma: "Luminaria L-PZ-01 FALLA"
5. Operador registra evento en sistema de mantenimiento
6. Operador genera orden de trabajo para equipo de mantenimiento
7. Equipo de mantenimiento repara/reemplaza luminaria en < 24 horas
8. Operador confirma reparación y cierra evento

**Postcondiciones:**
- Falla registrada y atendida
- Indicador E14 actualizado (% de puntos operativos)

**Flujos Alternativos:**
- Si falla múltiple (>10% en una zona) → Alarma crítica, despacho urgente
- Si falla en peaje → Prioridad máxima (disponibilidad ≥99%)

---

### 7.3 CU-003: Encendido Manual de Zona Específica

**Actor:** Operador CCO  
**Descripción:** El operador enciende manualmente una zona de iluminación fuera de horario  
**Precondiciones:**
- Sistema SCADA operativo
- Operador autenticado
- Zona de iluminación disponible

**Flujo Normal:**
1. Operador identifica necesidad (ej: mantenimiento nocturno en Área de Servicio)
2. Operador accede a módulo de control de iluminación en SCADA
3. Operador selecciona zona (ej: "Área de Servicio UF-5")
4. Operador presiona botón "Encender"
5. Sistema envía comando a controlador local
6. Controlador activa luminarias en < 5 segundos
7. Sistema registra acción (usuario, fecha, hora, zona)
8. Operador confirma encendido visualmente (indicador verde)

**Postcondiciones:**
- Zona iluminada manualmente
- Acción registrada en log del sistema

**Flujos Alternativos:**
- Si controlador no responde → Alarma de falla de comunicación
- Si es horario de operación normal → Sistema advierte (override manual)

---

### 7.4 CU-004: Generación de Reporte de Consumo Energético

**Actor:** Supervisor de Operaciones  
**Descripción:** El supervisor genera reporte mensual de consumo energético  
**Precondiciones:**
- Sistema SCADA con módulo de reportes operativo
- Datos de consumo registrados (medidores)
- Supervisor autenticado

**Flujo Normal:**
1. Supervisor accede a módulo de reportes en SCADA
2. Selecciona tipo de reporte: "Consumo Energético"
3. Selecciona período: "Mes de Septiembre 2025"
4. Selecciona nivel de detalle: "Por zona"
5. Sistema genera reporte con:
   - Consumo total (kWh)
   - Consumo por zona (Peajes, Áreas de Servicio, CCO, etc.)
   - Comparación con mes anterior (variación %)
   - Comparación con presupuesto (presupuestado vs. real)
   - Gráficos de tendencias
6. Supervisor exporta reporte a PDF o Excel
7. Supervisor envía reporte a gerencia

**Postcondiciones:**
- Reporte generado y archivado
- Análisis de desviaciones vs. presupuesto

---

## 8. CRITERIOS DE ACEPTACIÓN

### 8.1 Criterios Funcionales

- [ ] El 100% de las estaciones de peaje (2) tienen iluminación operativa
- [ ] El 100% de las estaciones de pesaje tienen iluminación operativa
- [ ] El CCO tiene iluminación perimetral, de accesos y estacionamientos operativa
- [ ] El 100% de las áreas de servicio (14 UFs) tienen iluminación operativa
- [ ] Las intersecciones críticas tienen iluminación según diseño
- [ ] Los puentes peatonales tienen iluminación de escaleras y pasos
- [ ] El sistema SCADA permite control y monitoreo desde CCO
- [ ] El encendido/apagado automático funciona según horario programado
- [ ] Se mantiene el inventario de iluminación existente (excepto Pasos Nacionales)
- [ ] El sistema reduce consumo energético ≥ 50% vs. tecnología tradicional (HID)

### 8.2 Criterios de Performance

- [ ] Disponibilidad del sistema ≥ 98% mensual
- [ ] Indicador E14 ≥ 80% de puntos luminosos operativos en cada sitio
- [ ] Tiempo de encendido de luminarias LED < 1 segundo
- [ ] Nivel de iluminancia en peajes: 20-30 lux promedio
- [ ] Uniformidad de iluminación ≥ 0.4 (U0)
- [ ] Temperatura de color: 4000-5000 K
- [ ] CRI ≥ 70
- [ ] Eficacia luminosa > 100 lm/W

### 8.3 Criterios de Calidad

- [ ] Cumplir RETILAP 2010 (niveles de iluminancia, uniformidad, deslumbramiento)
- [ ] Cumplir NTC 2050 (Código Eléctrico Colombiano)
- [ ] Cumplir NTC 900 (Instalaciones eléctricas)
- [ ] Cumplir CIE 115:2010 (Lighting of Roads for Motor and Pedestrian Traffic)
- [ ] Protección IP66 e IK10 en luminarias de campo
- [ ] Vida útil de luminarias LED > 50,000 horas
- [ ] Garantía de fabricante: mínimo 5 años

### 8.4 Criterios de Integración

- [ ] Interfaz con CCO funcional (visualización y control)
- [ ] Interfaz con sistema eléctrico funcional (acometidas disponibles)
- [ ] Coordinación con CCTV (iluminación adecuada para cámaras nocturnas)
- [ ] Todas las alarmas llegan a CCO en < 1 minuto

---

## 9. DEPENDENCIAS

| Sistema/Recurso | Tipo de Dependencia | Criticidad | Estado | Plazo |
|:----------------|:--------------------|:-----------|:-------|:------|
| **Sistema Eléctrico Principal** | Acometidas de 13.2 kV / 220V disponibles | 🔴 Crítica | ⏳ Por documentar | Antes de Iluminación |
| **Telecomunicaciones (Fibra Óptica)** | Para comunicaciones SCADA | 🟡 Media | ✅ Documentado (T01) | Antes de SCADA |
| **CCO** | Debe estar operativo para recibir datos | 🟡 Media | ✅ Documentado (T01) | Antes de SCADA |
| **Diseño Geométrico Definitivo** | Ubicaciones de intersecciones, puentes | 🔴 Alta | ⏳ Por confirmar | Fase Preoperativa |
| **Estaciones de Peaje** | Ubicaciones confirmadas | ✅ Confirmado | ✅ Confirmado (2 estaciones) | - |
| **Áreas de Servicio** | Ubicaciones confirmadas | 🟡 Media | ⏳ Por confirmar (AT1 num. 3.8) | Fase Preoperativa |
| **Inventario de Iluminación Existente** | Levantamiento en campo | 🟡 Media | ⏳ Por realizar | Fase Preoperativa (mes 1-3) |

---

## 10. PRÓXIMOS PASOS

- [ ] Desarrollar arquitectura conceptual del sistema de iluminación (Template T03)
- [ ] Realizar estudios de iluminancia con software especializado (DIALux, AGI32)
- [ ] Validar requisitos con Interventoría y ANI
- [ ] Solicitar cotizaciones a proveedores preseleccionados:
  - Luminarias LED: Philips, Schréder, GE Current, Cree
  - Postes metálicos: Fabricantes nacionales
  - Sistema SCADA: Siemens, Schneider Electric, ABB
- [ ] Elaborar especificaciones técnicas detalladas por componente (Templates T04)
- [ ] Realizar inventario de iluminación existente en campo
- [ ] Estimar costos detallados con cotizaciones reales (Template T05)
- [ ] Coordinar con Gestión Predial (servidumbres para postes)
- [ ] Coordinar con Gestión Ambiental (minimización de contaminación lumínica)

---

## 11. REFERENCIAS

### Documentos Contractuales:
- [AT2 - Operación y Mantenimiento](../II.%20Apendices%20Tecnicos/AT2_Operacion_Mantenimiento_v1.0.md) - Sección 6.3.4
- [AT4 - Indicadores](../II.%20Apendices%20Tecnicos/AT4_Indicadores_v1.0.md) - Indicador E14
- [AT1 - Alcance del Proyecto](../II.%20Apendices%20Tecnicos/AT1_Alcance_Proyecto_v1.0.md)
- [Parte General](../I.%20Contrato%20General/1_Parte_General_v1.0.md) - Obligaciones generales
- [Parte Especial](../I.%20Contrato%20General/2_Parte_Especial_v1.0.md) - Obligaciones específicas

### Documentos del Proyecto:
- [T01 - Ficha Sistema Iluminación](34_T01_Ficha_Sistema_Iluminacion_v1.0.md) - Base para este análisis
- [T01 - Sistema CCO](26_T01_Ficha_Sistema_CCO_v1.0.md) - Interface SCADA
- [T01 - Sistema Eléctrico](38_T01_Ficha_Sistema_Energia_Electrica_v1.0.md) - Suministro eléctrico
- [WBS Preliminar](../IX.%20WBS%20y%20Planificacion/WBS_Preliminar_v1.0.md) - Elemento 2.6

### Normativa:
- RETILAP 2010 - Reglamento Técnico de Iluminación y Alumbrado Público
- NTC 2050 - Código Eléctrico Colombiano
- NTC 900 - Código Eléctrico Colombiano
- CIE 115:2010 - Lighting of Roads for Motor and Pedestrian Traffic
- RETIE - Reglamento Técnico de Instalaciones Eléctricas

---

## 12. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 17/10/2025 | Administrador Contractual EPC | Análisis inicial de requisitos del sistema de iluminación vial |

---

**Versión:** 1.0  
**Estado:** ✅ Análisis de Requisitos Completado  
**Fecha:** 17/10/2025  
**Responsable:** Ingeniero de Sistemas Eléctricos  
**Próximo documento:** T03 - Arquitectura Conceptual del Sistema de Iluminación  

---

**Fin del documento - T02 Análisis de Requisitos Sistema de Iluminación Vial**  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*

