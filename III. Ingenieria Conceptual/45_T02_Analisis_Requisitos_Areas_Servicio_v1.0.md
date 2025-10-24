# T02: ANÁLISIS DE REQUISITOS - SISTEMA DE ÁREAS DE SERVICIO
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 17/10/2025  
**Sistema:** Áreas de Servicio (Paraderos, Sanitarios, Talleres)  
**Responsable:** Ingeniero de Arquitectura e Infraestructura  
**Versión:** 1.1  

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Documento

Este documento presenta el **análisis detallado de requisitos** del Sistema de Áreas de Servicio para el proyecto APP Puerto Salgar - Barrancabermeja, cubriendo:

- Requisitos funcionales de paraderos, sanitarios, talleres y servicios
- Requisitos no funcionales (disponibilidad, limpieza, seguridad)
- Requisitos de interfaces con otros sistemas
- Criterios de aceptación
- Casos de uso principales
- Matriz de trazabilidad contractual

### 1.2 Alcance

Este análisis cubre el **sistema de áreas de servicio obligatorias** según AT1 Cap. 3:
1. **Cantidad:** 2 Áreas de Servicio (1 asociada a cada peaje)
2. **Ubicación:** Peaje Zambito (PK 9.2) y Peaje Aguas Negras (PK 80)
3. **Tipo:** Áreas completas con servicios integrales según AT1 Tabla 53
4. **Servicios incluidos:** Sanitarios, restaurante, taller 24/7, base operativa, agua potable, saneamiento, energía, iluminación, CCTV
5. **Operación:** 24/7 durante toda la concesión (25 años)
6. **Integración:** Con CCO La Lizama PK 4+300 para monitoreo y control

**Usuarios estimados:** 500-1,000 usuarios/día por área de servicio.

**Fundamento contractual:** AT1 Cap. 3 - "el Concesionario deberá construir, operar y mantener **un Área de Servicio asociada a cada Estación de peaje** dentro del Proyecto"

### 1.3 Definiciones y Acrónimos

| Término | Definición |
|:--------|:-----------|
| **Área de Servicio** | Zona de descanso con servicios para usuarios (sanitarios, restaurante, parqueo) |
| **PTAR** | Planta de Tratamiento de Aguas Residuales |
| **NTC 6047** | Norma Técnica Colombiana de Accesibilidad al Medio Físico |
| **NSR-10** | Norma Sismo Resistente Colombiana |
| **CCO** | Centro de Control Operacional |
| **TAM** | Traslado Asistencial Médico |
| **UF** | Unidad Funcional |
| **PK** | Punto Kilométrico |
| **TPD** | Tráfico Promedio Diario |
| **WiFi** | Wireless Fidelity (red inalámbrica) |
| **POS** | Point of Sale (terminal de punto de venta) |

---

## 2. REQUISITOS FUNCIONALES

### 2.1 Sanitarios Públicos

**ID:** RF-001  
**Descripción:** El sistema debe proporcionar sanitarios públicos con servicios para hombres, mujeres y personas con discapacidad  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 6.2.6; NTC 6047  

**Criterios de Aceptación:**
- **Ambas áreas:** 8-12 inodoros (50% hombres, 50% mujeres) + 1 baño accesible por área
- Baños para personas con discapacidad: Cumplir NTC 6047 (puertas 90 cm, barras de apoyo, lavamanos accesible)
- Agua potable continua (24/7)
- Iluminación LED eficiente
- Ventilación natural y mecánica
- Espejos, secadores de manos eléctricos, dispensadores de jabón
- Limpieza mínima 3 veces/día (AT2 Sección 6.2.6)
- Disponibilidad: ≥ 95% (máximo 5% de sanitarios fuera de servicio)

---

### 2.2 Parqueos Vehiculares

**ID:** RF-002  
**Descripción:** El sistema debe proporcionar zonas de parqueo pavimentadas segregadas por tipo de vehículo  
**Prioridad:** 🔴 Alta  
**Fuente:** AT1; AT2, Sección 6.2.6  

**Criterios de Aceptación:**
- **Cada área:** 50 espacios mínimo (30 automóviles, 10 buses, 10 camiones)
- Superficie: Pavimento rígido o flexible (concreto o asfalto)
- Segregación clara (señalización horizontal)
- Iluminación nocturna (10-15 lux)
- Accesos y salidas señalizados (Resolución 1885/2015)
- Espacios para personas con discapacidad (5% del total, NTC 6047)
- Drenajes pluviales
- **Total proyecto:** 2 áreas × 50 espacios = 100 espacios de parqueo

---

### 2.3 Restaurantes/Cafeterías

**ID:** RF-003  
**Descripción:** El sistema debe incluir edificios de restaurantes/cafeterías en ambas áreas de servicio  
**Prioridad:** 🟡 Alta  
**Fuente:** AT1 Tabla 53 (servicios integrales), AT2  

**Criterios de Aceptación:**
- Área construida: 100-150 m² por restaurante (2 restaurantes)
- Capacidad: 60-80 comensales por restaurante
- Cocina equipada (concesionada a operadores privados)
- Baños independientes para empleados
- Conexión eléctrica, agua potable, saneamiento
- WiFi público
- Terminales POS (conectividad con bancos)
- Licencias sanitarias (Código Sanitario Nacional)
- Operación: 6:00 - 22:00 (horario mínimo)

---

### 2.4 Talleres de Auxilio Mecánico 24/7

**ID:** RF-004  
**Descripción:** El sistema debe incluir talleres de auxilio mecánico en ambas áreas de servicio para reparaciones menores  
**Prioridad:** 🔴 Alta  
**Fuente:** AT1 Tabla 53, AT2 (servicios de emergencia)  

**Criterios de Aceptación:**
- Área construida: 200 m² por taller (2 talleres totales)
- 2 bahías de trabajo (elevadores o fosas)
- Herramientas básicas (llaves, gatos, compresores, soldadura)
- Iluminación: 300 lux (áreas de trabajo)
- Personal: 3 técnicos mecánicos (turnos 24/7)
- Tiempo de respuesta: < 20 minutos desde llamado
- Servicios: Cambio de llantas, reparación de frenos, auxilio eléctrico, remolque menor
- Operación: 24/7/365

---

### 2.5 Bases Operativas para Personal

**ID:** RF-005  
**Descripción:** El sistema debe incluir bases operativas para personal del concesionario (patrulleros, emergencias, mantenimiento)  
**Prioridad:** 🟡 Alta  
**Fuente:** AT2 (operación del corredor)  

**Criterios de Aceptación:**
- **Paraderos Tipo A:** Oficinas (50 m²), dormitorios (30 m², 6 camas), garaje (100 m², 3-4 vehículos)
- Baños y duchas para personal
- Cocina/comedor para personal
- Sala de reuniones/briefing
- Conexión con CCO (fibra óptica, radios)
- Suministro eléctrico con respaldo (generador)
- Personal: Patrulleros (2 turnos), técnicos de mantenimiento

---

### 2.6 Suministro de Agua Potable

**ID:** RF-006  
**Descripción:** El sistema debe garantizar suministro continuo de agua potable en todas las áreas de servicio  
**Prioridad:** 🔴 Alta  
**Fuente:** Código Sanitario Nacional; AT2  

**Criterios de Aceptación:**
- Fuente: Acueducto municipal o pozo profundo (si no hay red municipal)
- Tanques de almacenamiento: 10,000 litros por área de servicio
- Calidad: Cumplir normativa sanitaria (Resolución 2115/2007)
- Análisis microbiológico: Trimestral
- Presión mínima: 1.5 bar (en puntos de uso)
- Disponibilidad: 99% (backup con tanques)

---

### 2.7 Tratamiento de Aguas Residuales

**ID:** RF-007  
**Descripción:** El sistema debe incluir Plantas de Tratamiento de Aguas Residuales (PTAR) en cada área de servicio  
**Prioridad:** 🔴 Alta  
**Fuente:** Código Sanitario Nacional; Resolución 631/2015 (vertimientos)  

**Criterios de Aceptación:**
- PTAR por área de servicio (capacidad según número de usuarios estimados)
- Tecnología: Biológica (lodos activados, UASB, o similar)
- Cumplimiento Resolución 631/2015 (DBO < 90 mg/L, SST < 90 mg/L)
- Monitoreo continuo (sensores de pH, DBO, caudal)
- Mantenimiento mensual
- Disposición de lodos: Según normativa ambiental
- Análisis de vertimientos: Trimestral (laboratorio acreditado)

---

### 2.8 Iluminación de Áreas de Servicio

**ID:** RF-008  
**Descripción:** El sistema debe garantizar iluminación adecuada en parqueos, accesos y perímetro  
**Prioridad:** 🔴 Alta  
**Fuente:** AT1; AT4 (Indicador E14)  

**Criterios de Aceptación:**
- Parqueos: 10-15 lux promedio
- Accesos: 20-30 lux
- Sanitarios: 150 lux (áreas interiores)
- Perímetro: 5-10 lux (seguridad)
- Tecnología: LED de alta eficiencia
- Operación: 18:00 - 06:00 (horario nocturno)
- Disponibilidad: ≥ 80% de puntos luminosos operativos (Indicador E14)
- Control: Fotocélulas + temporizador

---

### 2.9 Seguridad y Videovigilancia (CCTV)

**ID:** RF-009  
**Descripción:** El sistema debe incluir CCTV y medidas de seguridad en todas las áreas de servicio  
**Prioridad:** 🔴 Alta  
**Fuente:** Seguridad de usuarios; AT2  

**Criterios de Aceptación:**
- **Paraderos Tipo A:** 12 cámaras CCTV (cobertura 100% de parqueos, accesos, sanitarios-exteriores)
- **Paraderos Tipo B:** 8 cámaras CCTV
- Resolución: 1080p mínimo
- Grabación continua 24/7
- Retención de video: 30 días
- Transmisión a CCO en tiempo real
- Iluminación perimetral (disuasión)
- Cerramientos/mallas en perímetros (opcional según zona)
- Alarmas de intrusión en edificios (fuera de horario)

---

### 2.10 Limpieza y Aseo

**ID:** RF-010  
**Descripción:** El sistema debe mantener niveles altos de limpieza e higiene en todas las áreas de servicio  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 6.2.6; AT4 (Indicador O8)  

**Criterios de Aceptación:**
- Limpieza sanitarios: 3 veces/día (Tipo A), 2 veces/día (Tipo B)
- Limpieza parqueos: Diaria (barrido mecánico)
- Limpieza edificios: Diaria
- Recolección de basuras: 2 veces/día
- Productos: Desinfectantes, detergentes, ambientadores
- Personal de limpieza: 3 operarios/área (Tipo A), 2 operarios (Tipo B)
- Indicador O8: ≥ 90% de satisfacción de usuarios (encuestas mensuales)

---

### 2.11 Señalización de Áreas de Servicio

**ID:** RF-011  
**Descripción:** El sistema debe incluir señalización anticipada y de acceso/salida en el corredor  
**Prioridad:** 🟡 Media  
**Fuente:** Resolución 1885/2015  

**Criterios de Aceptación:**
- Señalización anticipada: 5 km, 3 km, 1 km, 500 m antes del acceso
- Contenido: Distancia, servicios disponibles (baños, restaurante, taller, combustible)
- Señalización de acceso: Carril de desaceleración (según diseño geométrico)
- Señalización de salida: Carril de aceleración
- Interior del área: Señalización de parqueos, sanitarios, salida
- Retroreflectividad Tipo XI

---

## 3. REQUISITOS NO FUNCIONALES

### 3.1 Requisitos de Disponibilidad

| ID | Requisito | Valor Mínimo | Fuente |
|:---|:----------|:-------------|:-------|
| **RNF-001** | Disponibilidad de sanitarios | ≥ 95% (máximo 5% fuera de servicio) | Operación continua |
| **RNF-002** | Disponibilidad de agua potable | ≥ 99% | Código Sanitario |
| **RNF-003** | Operación de talleres 24/7 | 100% (sin interrupciones) | AT2 (servicios emergencia) |
| **RNF-004** | Iluminación (Indicador E14) | ≥ 80% de puntos operativos | AT4 |
| **RNF-005** | Disponibilidad de PTAR | ≥ 95% | Normativa ambiental |

---

### 3.2 Requisitos de Performance

| ID | Requisito | Valor Mínimo | Fuente |
|:---|:----------|:-------------|:-------|
| **RNF-006** | Tiempo de respuesta taller mecánico | < 20 minutos desde llamado | Servicio a usuarios |
| **RNF-007** | Capacidad de parqueos (Tipo A) | 50 espacios (30 autos, 10 buses, 10 camiones) | Diseño |
| **RNF-008** | Capacidad de parqueos (Tipo B) | 30 espacios | Diseño |
| **RNF-009** | Presión de agua | ≥ 1.5 bar | NTC 1500 |
| **RNF-010** | Nivel de iluminancia parqueos | 10-15 lux | RETILAP |

---

### 3.3 Requisitos de Seguridad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-011** | Videovigilancia 24/7 | CCTV en 100% de parqueos y accesos | Seguridad usuarios |
| **RNF-012** | Iluminación perimetral | Disuasión de intrusiones | Seguridad |
| **RNF-013** | Alarmas de intrusión | En edificios fuera de horario operativo | Protección de activos |
| **RNF-014** | Acceso controlado a bases operativas | Solo personal autorizado | Seguridad operacional |
| **RNF-015** | Extintores y señalización de emergencia | Según NSR-10 | Seguridad contra incendios |

---

### 3.4 Requisitos de Usabilidad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-016** | Accesibilidad (NTC 6047) | Sanitarios, rampas, parqueos para personas con discapacidad | NTC 6047 |
| **RNF-017** | Señalización interior clara | Pictogramas universales (sanitarios, salida, etc.) | Usabilidad |
| **RNF-018** | WiFi público | En restaurantes y áreas de descanso (opcional) | Confort usuarios |
| **RNF-019** | Mobiliario urbano | Bancas, basureros, pérgolas | Confort |
| **RNF-020** | Idioma | Español + pictogramas | Colombia |

---

### 3.5 Requisitos de Mantenibilidad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-021** | Materiales durables | Pisos antideslizantes, paredes con cerámica/pintura lavable | Vida útil 25 años |
| **RNF-022** | Facilidad de limpieza | Diseño sin rincones de difícil acceso | Operación eficiente |
| **RNF-023** | Acceso para mantenimiento PTAR | Vehículos de limpieza de lodos (camiones cisterna) | Mantenibilidad |
| **RNF-024** | Repuestos disponibles | Para grifería, inodoros, iluminación | Reposición rápida |

---

### 3.6 Requisitos de Escalabilidad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-025** | Diseño modular | Posibilidad de ampliar sanitarios o parqueos (+20%) | Crecimiento futuro |
| **RNF-026** | Terrenos con reserva | Lotes con espacio adicional para ampliaciones | Planificación |

---

### 3.7 Requisitos Ambientales y Sanitarios

| ID | Requisito | Valor/Descripción | Fuente |
|:---|:----------|:------------------|:-------|
| **RNF-027** | Calidad de agua potable | Cumplir Resolución 2115/2007 | Código Sanitario |
| **RNF-028** | Calidad de vertimientos PTAR | DBO < 90 mg/L, SST < 90 mg/L | Resolución 631/2015 |
| **RNF-029** | Gestión de residuos sólidos | Separación en origen (orgánicos, reciclables, peligrosos) | Normativa ambiental |
| **RNF-030** | Ahorro de agua | Grifos con aireadores, inodoros de bajo consumo (< 6 L/descarga) | Sostenibilidad |
| **RNF-031** | Eficiencia energética | Iluminación LED, generadores eficientes | Reducción OPEX |

---

## 4. REQUISITOS DE INTERFACES

### 4.1 Interface Áreas de Servicio ↔ Emergencias (TAM, Grúas)

**ID:** RI-001  
**Sistemas:** Áreas de Servicio (Bases Operativas) ↔ Sistema de Emergencias  
**Tipo:** Operacional  
**Protocolo:** Radio, Teléfono, VoIP  
**Datos Intercambiados:** 
- Despacho de vehículos de emergencia (ambulancias TAM, grúas)
- Coordenadas de incidentes
- Tiempos de respuesta
**Frecuencia:** Por evento (emergencias)

---

### 4.2 Interface Áreas de Servicio ↔ ITS (CCTV)

**ID:** RI-002  
**Sistemas:** Áreas de Servicio ↔ Sistema CCTV  
**Tipo:** Red IP  
**Protocolo:** ONVIF, Ethernet/Fibra Óptica  
**Datos Intercambiados:** 
- Video en vivo de áreas de servicio
- Grabaciones (30 días)
- Alarmas de seguridad
**Frecuencia:** Continuo (24/7)

---

### 4.3 Interface Áreas de Servicio ↔ CCO

**ID:** RI-003  
**Sistemas:** Áreas de Servicio ↔ Centro de Control Operacional  
**Tipo:** Red IP / SCADA  
**Protocolo:** Fibra Óptica, VPN  
**Datos Intercambiados:** 
- Monitoreo de CCTV
- Alarmas (PTAR, generadores, intrusión)
- Comunicaciones con bases operativas
- Reportes de operación (sanitarios, limpieza)
**Frecuencia:** Continuo

---

### 4.4 Interface Áreas de Servicio ↔ Telecomunicaciones

**ID:** RI-004  
**Sistemas:** Áreas de Servicio ↔ Red de Fibra Óptica  
**Tipo:** Física  
**Protocolo:** Ethernet  
**Datos Intercambiados:** 
- Conectividad para WiFi público
- Terminales POS (restaurantes)
- CCTV, VoIP
**Frecuencia:** Continuo

---

### 4.5 Interface Áreas de Servicio ↔ Iluminación

**ID:** RI-005  
**Sistemas:** Áreas de Servicio ↔ Sistema de Iluminación  
**Tipo:** Eléctrica  
**Protocolo:** AC 220V  
**Datos Intercambiados:** Suministro de energía eléctrica  
**Frecuencia:** Continuo

---

## 5. MATRIZ DE TRAZABILIDAD

| Requisito ID | Tipo | Descripción Resumida | Fuente Contractual | Componente Afectado | Prioridad |
|:-------------|:-----|:---------------------|:-------------------|:--------------------|:----------|
| **RF-001** | Funcional | Sanitarios públicos (hombres, mujeres, discapacidad) | AT2, 6.2.6; NTC 6047 | Sanitarios | 🔴 Alta |
| **RF-002** | Funcional | Parqueos vehiculares segregados | AT1; AT2, 6.2.6 | Parqueos | 🔴 Alta |
| **RF-003** | Funcional | Restaurantes/Cafeterías | AT1 (implícito) | Restaurantes | 🟡 Alta |
| **RF-004** | Funcional | Talleres de auxilio mecánico 24/7 | AT2 (emergencias) | Talleres | 🔴 Alta |
| **RF-005** | Funcional | Bases operativas | AT2 (operación) | Bases Operativas | 🟡 Alta |
| **RF-006** | Funcional | Suministro de agua potable | Código Sanitario; AT2 | Agua Potable | 🔴 Alta |
| **RF-007** | Funcional | Tratamiento aguas residuales (PTAR) | Resolución 631/2015 | PTAR | 🔴 Alta |
| **RF-008** | Funcional | Iluminación de áreas de servicio | AT1; AT4, E14 | Iluminación | 🔴 Alta |
| **RF-009** | Funcional | Seguridad y CCTV | Seguridad usuarios; AT2 | CCTV | 🔴 Alta |
| **RF-010** | Funcional | Limpieza y aseo | AT2, 6.2.6; AT4, O8 | Limpieza | 🔴 Alta |
| **RF-011** | Funcional | Señalización de áreas de servicio | Res. 1885/2015 | Señalización | 🟡 Media |
| **RNF-001** | Disponibilidad | Sanitarios ≥ 95% disponibles | Operación continua | Sanitarios | 🔴 Alta |
| **RNF-010** | Performance | Iluminancia parqueos 10-15 lux | RETILAP | Iluminación | 🔴 Alta |
| **RNF-016** | Usabilidad | Accesibilidad NTC 6047 | NTC 6047 | Todo el sistema | 🔴 Alta |
| **RNF-028** | Ambiental | Vertimientos PTAR < 90 mg/L DBO | Res. 631/2015 | PTAR | 🔴 Alta |

**Total requisitos identificados:** 42 (11 funcionales + 31 no funcionales)

---

## 6. RESTRICCIONES Y SUPUESTOS

### 6.1 Restricciones

| ID | Restricción | Impacto | Origen |
|:---|:------------|:--------|:-------|
| **REST-001** | Incumplimiento Indicador O8 (< 90% satisfacción) = Deducciones | Alto - Impacto financiero | AT4 |
| **REST-002** | Reversión de áreas de servicio a ANI (25 años) | Alto - Deben mantenerse en buen estado | AT2, Sección 5 |
| **REST-003** | Cumplir NTC 6047 (accesibilidad) obligatorio | Medio - Diseño específico | NTC 6047 |
| **REST-004** | PTARs deben cumplir Resolución 631/2015 | Alto - Multas ambientales | Normativa ambiental |
| **REST-005** | Talleres mecánicos 24/7 obligatorios (Tipo A) | Alto - OPEX elevado (personal continuo) | AT2 |
| **REST-006** | Terrenos para áreas de servicio (predial) | Crítico - Sin terrenos no hay áreas | Predial |

---

### 6.2 Supuestos

| ID | Supuesto | Riesgo si no se cumple | Validación |
|:---|:---------|:-----------------------|:-----------|
| **SUP-001** | Terrenos disponibles en ubicaciones óptimas (cada 50-60 km) | Alto - Áreas de servicio mal ubicadas | Validar con Predial (mes 3) |
| **SUP-002** | Acueducto municipal disponible o pozos factibles | Alto - Falta de agua potable | Estudios hidrológicos (mes 6) |
| **SUP-003** | Operadores privados interesados en restaurantes | Medio - Operación directa más costosa | Licitación atractiva (año 1) |
| **SUP-004** | Demanda: 500-1,000 usuarios/día por área | Medio - Infraestructura sobredimensionada/subdimensionada | Validar con estudios de tráfico |
| **SUP-005** | Fibra óptica disponible en todas las áreas de servicio | Alto - Sin CCTV, WiFi, POS | Coordinar con Telecom (T01) |

---

## 7. CASOS DE USO

### 7.1 CU-001: Usuario Utiliza Sanitarios Públicos

**Actor:** Usuario de la vía  
**Descripción:** Un usuario hace uso de sanitarios en área de servicio  
**Precondiciones:**
- Área de servicio operativa
- Sanitarios limpios y disponibles
- Agua potable disponible

**Flujo Normal:**
1. Usuario ingresa al área de servicio (salida desde corredor)
2. Usuario estaciona su vehículo en zona de parqueo
3. Usuario identifica sanitarios mediante señalización interior
4. Usuario accede a sanitario (género correspondiente o accesible)
5. Usuario utiliza inodoro, lavamanos (agua potable, jabón)
6. Usuario sale del área de servicio
7. Personal de limpieza realiza inspección posterior (cada 2 horas)

**Postcondiciones:**
- Usuario satisfecho con servicio
- Sanitario listo para siguiente usuario

**Flujos Alternativos:**
- Si sanitario ocupado → Usuario espera o usa otro
- Si sanitario fuera de servicio → Usuario usa otro, reporta a personal
- Si falta agua → Personal activa bomba de respaldo o notifica a mantenimiento

---

### 7.2 CU-002: Auxilio Mecánico desde Taller 24/7

**Actor:** Usuario con avería mecánica + Técnico de Taller  
**Descripción:** Un usuario llama solicitando auxilio mecánico y es atendido desde taller  
**Precondiciones:**
- Taller operativo 24/7
- Técnico de turno disponible
- Vehículo de auxilio operativo

**Flujo Normal:**
1. Usuario llama a número de emergencia (desde teléfono SOS o celular)
2. CCO recibe llamada y deriva a taller más cercano
3. Técnico de taller recibe alerta (ubicación PK del usuario)
4. Técnico se desplaza en vehículo de auxilio (< 20 minutos)
5. Técnico llega al sitio, diagnostica avería
6. Si es reparación menor (cambio de llanta, batería) → Técnico repara en sitio
7. Si requiere traslado → Técnico remolca vehículo a taller del área de servicio
8. Técnico realiza reparación en taller
9. Usuario paga servicio (tarifa estándar)
10. Usuario continúa viaje

**Postcondiciones:**
- Usuario con vehículo operativo
- Servicio registrado en sistema

**Flujos Alternativos:**
- Si avería mayor (motor, transmisión) → Coordina con grúa especializada
- Si usuario sin dinero → Servicio de auxilio básico sin costo (remolque a taller), reparación pagada

---

### 7.3 CU-003: Limpieza de Sanitarios (Rutina Diaria)

**Actor:** Personal de Limpieza  
**Descripción:** Personal realiza limpieza de sanitarios 3 veces al día  
**Precondiciones:**
- Personal de limpieza de turno
- Productos de limpieza disponibles (desinfectantes, detergentes)
- Equipos (escobas, trapeadores, guantes)

**Flujo Normal:**
1. Personal accede a sanitarios según horario (8:00, 14:00, 20:00)
2. Coloca señal "En limpieza" (usuarios esperan o usan otros sanitarios)
3. Limpia inodoros, lavamanos, espejos, pisos
4. Desinfecta superficies
5. Repone papel higiénico, jabón
6. Vacía basureros
7. Trapea pisos con desinfectante
8. Verifica que todos los sanitarios funcionen (reporta fallas)
9. Retira señal "En limpieza"
10. Registra limpieza en planilla (hora, responsable)

**Postcondiciones:**
- Sanitarios limpios y operativos
- Registro de limpieza completado

**Frecuencia:** 3 veces/día (Tipo A), 2 veces/día (Tipo B)

---

### 7.4 CU-004: Encuesta de Satisfacción (Indicador O8)

**Actor:** Supervisor de Área de Servicio + Usuarios  
**Descripción:** Realización mensual de encuestas de satisfacción para medir Indicador O8  
**Precondiciones:**
- Formato de encuesta aprobado por ANI
- Muestra estadística definida (ej: 100 usuarios/mes por área)
- Personal capacitado

**Flujo Normal:**
1. Supervisor coordina aplicación de encuestas (presencial o digital)
2. Personal aborda a usuarios en área de servicio
3. Usuario responde encuesta (5-10 preguntas):
   - Limpieza de sanitarios (1-5 estrellas)
   - Disponibilidad de servicios (1-5)
   - Seguridad percibida (1-5)
   - Estado de parqueos (1-5)
   - Satisfacción general (1-5)
4. Personal registra respuestas
5. Supervisor procesa resultados: "92% satisfecho/muy satisfecho" (ejemplo)
6. Si O8 ≥ 90% → Indicador conforme
7. Si O8 < 90% → Plan de acción correctiva (mejoras en limpieza, seguridad)
8. Supervisor envía reporte a Interventoría y ANI

**Postcondiciones:**
- Indicador O8 medido y reportado
- Plan de acción (si aplica)

**Frecuencia:** Mensual

---

## 8. CRITERIOS DE ACEPTACIÓN

### 8.1 Criterios Funcionales

- [ ] El 100% de áreas de servicio tienen sanitarios para hombres, mujeres y personas con discapacidad
- [ ] El 100% de Paraderos Tipo A tienen restaurante/cafetería operativo
- [ ] El 100% de Paraderos Tipo A tienen taller mecánico 24/7
- [ ] El 100% de áreas de servicio tienen parqueos pavimentados (segregados por tipo de vehículo)
- [ ] El 100% de áreas de servicio tienen suministro continuo de agua potable
- [ ] El 100% de áreas de servicio tienen PTAR operativa
- [ ] El 100% de áreas de servicio tienen iluminación nocturna
- [ ] El 100% de áreas de servicio tienen CCTV (transmisión a CCO)
- [ ] El 100% de áreas de servicio tienen señalización anticipada (5 km, 3 km, 1 km, 500 m)
- [ ] El 100% de áreas de servicio tienen personal de limpieza (mínimo 2 operarios)

### 8.2 Criterios de Performance

- [ ] Indicador O8 ≥ 90% de satisfacción de usuarios
- [ ] Indicador E14 ≥ 80% de puntos luminosos operativos
- [ ] Disponibilidad de sanitarios ≥ 95%
- [ ] Tiempo de respuesta talleres mecánicos < 20 minutos
- [ ] Calidad de agua potable: 100% conforme (análisis trimestral)
- [ ] Calidad de vertimientos PTAR: DBO < 90 mg/L (análisis trimestral)

### 8.3 Criterios de Calidad

- [ ] Cumplir NTC 6047 (accesibilidad para personas con discapacidad)
- [ ] Cumplir NSR-10 (diseño sismo resistente)
- [ ] Cumplir Código Sanitario Nacional (Ley 9/1979)
- [ ] Cumplir Resolución 2115/2007 (calidad de agua potable)
- [ ] Cumplir Resolución 631/2015 (vertimientos de aguas residuales)
- [ ] Cumplir Resolución 1885/2015 (señalización)
- [ ] Licencias sanitarias vigentes (restaurantes, sanitarios)

### 8.4 Criterios de Integración

- [ ] Interfaz con Emergencias funcional (despacho de TAM, grúas desde bases operativas)
- [ ] Interfaz con ITS (CCTV) funcional (transmisión a CCO)
- [ ] Interfaz con Telecomunicaciones funcional (WiFi, POS, VoIP)
- [ ] Interfaz con Iluminación funcional (suministro eléctrico)

---

## 9. DEPENDENCIAS

| Sistema/Recurso | Tipo de Dependencia | Criticidad | Estado | Plazo |
|:----------------|:--------------------|:-----------|:-------|:------|
| **Gestión Predial** | Adquisición de lotes (5,000-10,000 m²) | 🔴 Crítica | ⏳ Por gestionar | Mes 3-6 |
| **Estudios Geotécnicos** | Para diseño de cimentaciones y PTARs | 🔴 Alta | ⏳ Por realizar | Mes 6 |
| **Permisos Ambientales** | Para PTARs y captación de agua | 🔴 Alta | ⏳ Por gestionar | Mes 6-12 |
| **Diseño Geométrico** | Ubicación de accesos/salidas seguros | 🔴 Alta | ⏳ Por confirmar | Mes 6 |
| **Telecomunicaciones (Fibra Óptica)** | Para CCTV, WiFi, POS | 🟡 Media | ✅ Documentado (T01) | Antes de Áreas de Servicio |
| **Sistema Eléctrico Principal** | Acometidas de energía | 🔴 Alta | ⏳ Por documentar | Antes de Áreas de Servicio |
| **Emergencias (TAM, Grúas)** | Coordinación operativa | 🟡 Media | ✅ Documentado (T01) | Fase Operativa |

---

## 10. PRÓXIMOS PASOS

- [ ] Desarrollar arquitectura conceptual con planos arquitectónicos (Template T03)
- [ ] Realizar estudios de demanda de usuarios (aforo vehicular + proyecciones)
- [ ] Diseñar planos arquitectónicos y estructurales de Paraderos Tipo A y B
- [ ] Solicitar permisos ambientales (PTARs, conexiones de agua)
- [ ] Licitar operación de restaurantes y servicios complementarios
- [ ] Coordinar con Predial para adquisición de terrenos (**2 lotes** según AT1 Cap. 3)
- [ ] Elaborar especificaciones técnicas de edificaciones (Templates T04)
- [ ] Validar con ANI, Interventoría y comunidades locales
- [ ] Estimar costos detallados con cotizaciones reales (Template T05)
- [ ] Confirmar ubicaciones exactas: Peaje Zambito (PK 9.2) y Peaje Aguas Negras (PK 80)

---

## 11. REFERENCIAS

### Documentos Contractuales:
- [AT1 - Alcance del Proyecto](../II.%20Apendices%20Tecnicos/AT1_Alcance_Proyecto_v1.0.md)
- [AT2 - Operación y Mantenimiento](../II.%20Apendices%20Tecnicos/AT2_Operacion_Mantenimiento_v1.0.md) - Secciones 5, 6.2.6
- [AT4 - Indicadores](../II.%20Apendices%20Tecnicos/AT4_Indicadores_v1.0.md) - Indicadores O8, E14

### Documentos del Proyecto:
- [T01 - Ficha Sistema Áreas de Servicio](36_T01_Ficha_Sistema_Areas_Servicio_v1.0.md) - Base para este análisis
- [T01 - Sistema Emergencias](28_T01_Ficha_Sistema_Emergencias_v1.0.md) - Interface TAM/Grúas
- [T01 - Sistema ITS](24_T01_Ficha_Sistema_ITS_v1.0.md) - Interface CCTV
- [T01 - Sistema Iluminación](34_T01_Ficha_Sistema_Iluminacion_v1.0.md) - Iluminación de áreas
- [WBS Preliminar](../IX.%20WBS%20y%20Planificacion/WBS_Preliminar_v1.0.md) - Elemento 2.8

### Normativa:
- NTC 6047:2013 - Accesibilidad al Medio Físico
- NSR-10 - Reglamento Colombiano de Construcción Sismo Resistente
- Ley 9/1979 - Código Sanitario Nacional
- Resolución 2115/2007 - Calidad del Agua Potable
- Resolución 631/2015 - Vertimientos de Aguas Residuales
- Resolución 1885/2015 - Manual de Señalización Vial
- NTC 1500 - Código Colombiano de Fontanería

---

## 12. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 17/10/2025 | Administrador Contractual EPC | Análisis inicial de requisitos del sistema de áreas de servicio |
| **v1.1** | **20/10/2025** | Administrador Contractual EPC | **Ajuste contractual:** 6 áreas → 2 áreas obligatorias (AT1 Cap. 3). Actualización de requisitos |
| **v1.2** | **22/10/2025** | Administrador Contractual EPC | ✅ **Revisión con información oficial:** Integración CCO La Lizama PK 4+300 |

---

**Versión:** 1.2 ✅ **REVISIÓN CON INFORMACIÓN OFICIAL APLICADA**  
**Estado:** ✅ Análisis Validado Contractualmente  
**Fecha:** 20/10/2025  
**Responsable:** Ingeniero de Arquitectura e Infraestructura  
**Próximo documento:** T03 - Arquitectura Conceptual del Sistema de Áreas de Servicio  

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- Integración CCO La Lizama PK 4+300 para monitoreo y control
- Longitudes validadas: 259.6 km principal + 33.4 km adicionales
- Rutas específicas: RN 4510, RN 4511, RN 4513
- Metodología PKD lineal aplicada

---

**Fin del documento - T02 Análisis de Requisitos Sistema de Áreas de Servicio**  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*

