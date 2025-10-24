# T02: ANÁLISIS DE REQUISITOS - SISTEMA DE PESAJE WIM
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 17/10/2025  
**Sistema:** Pesaje WIM (Weigh In Motion) + Básculas Estáticas  
**Responsable:** Ingeniero Civil / Ingeniero de Tránsito  
**Versión:** 1.0  

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Documento

Este documento presenta el **análisis detallado de requisitos** del Sistema de Pesaje WIM para el proyecto APP Puerto Salgar - Barrancabermeja, cubriendo:

- Requisitos funcionales de pesaje dinámico y estático
- Requisitos no funcionales (precisión, disponibilidad, calibración)
- Requisitos de interfaces con otros sistemas
- Criterios de aceptación
- Casos de uso principales
- Matriz de trazabilidad contractual

### 1.2 Alcance

Este análisis cubre el **sistema completo de control de peso vehicular** en el corredor de 259.6 km principales + 33.4 km adicionales:

**Componentes del sistema:**
1. **Estaciones de Pesaje Fijas:** 1 estación bidireccional en PR4+0100 RN 4513
2. **Básculas Dinámicas WIM:** Pre-selección de vehículos sin detención
3. **Básculas Estáticas:** Pesaje de precisión (100 ton, error ≤1%)
4. **Básculas en Peajes:** Pesaje dinámico en todos los carriles de cobro
5. **Básculas Móviles:** Para operativos temporales
6. **Software de Gestión:** Integrado con CCO La Lizama PK 4+300 y Policía de Carreteras

### 1.3 Definiciones y Acrónimos

| Término | Definición |
|:--------|:-----------|
| **WIM** | Weigh In Motion (Pesaje en Movimiento) |
| **PBVT** | Peso Bruto Vehicular Total |
| **PBV** | Peso Bruto Vehicular |
| **CCO** | Centro de Control Operacional |
| **AT** | Apéndice Técnico |
| **INVIAS** | Instituto Nacional de Vías |
| **ASTM E1318** | Estándar para sistemas WIM |
| **OIML R 76** | Estándar internacional de básculas |
| **NTC 5206** | Norma Técnica Colombiana para WIM |

---

## 2. REQUISITOS FUNCIONALES

### 2.1 Pesaje Dinámico (WIM) - Pre-selección

**ID:** RF-001  
**Descripción:** El sistema debe realizar pesaje dinámico de vehículos sin detenerlos para pre-seleccionar sospechosos de sobrepeso  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 3.3.9  

**Criterios de Aceptación:**
- Pesaje sin detención del vehículo
- Precisión: ±5% (error máximo permisible para básculas dinámicas)
- Velocidad de pesaje: 5-100 km/h
- Detección de ejes (número, espaciamiento)
- Clasificación vehicular automática (Categorías I-VI)
- Peso por eje individual
- Peso bruto vehicular total (PBVT)
- Alarma automática si PBVT > límite legal
- Transmisión de datos a CCO en tiempo real

---

### 2.2 Pesaje Estático de Precisión

**ID:** RF-002  
**Descripción:** El sistema debe incluir básculas estáticas de precisión para pesar vehículos sospechosos detectados por WIM  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 3.3.9  

**Criterios de Aceptación:**
- Capacidad: 100 toneladas
- Precisión: ±1% (error máximo permisible para básculas fijas)
- Tipo: Plataforma completa (pesa todo el vehículo simultáneamente)
- Sistema de impresión automática de comprobante (peso, matrícula, fecha, hora)
- Identificación de vehículo y compañía de transporte
- Calibración anual obligatoria (certificado vigente)
- Display digital visible para conductor y operador

---

### 2.3 Pesaje Dinámico en Estaciones de Peaje

**ID:** RF-003  
**Descripción:** El sistema debe instalar básculas dinámicas en todos los carriles de cobro de peajes  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 3.3.4.2  

**Criterios de Aceptación:**
- Instalación en 100% de carriles de cobro (12-18 carriles total en 2 estaciones)
- Integración con sistema de cobro de peaje (correlación categoría/peso)
- Detección de evasión (vehículo pesado pagando como liviano)
- Precisión: ±5%
- Transmisión de datos a CCO

---

### 2.4 Detección de Ejes y Clasificación Vehicular

**ID:** RF-004  
**Descripción:** El sistema debe detectar el número de ejes y clasificar vehículos según categorías oficiales  
**Prioridad:** 🟡 Alta  
**Fuente:** Resolución 4959/2006; AT2, Sección 3.3.9  

**Criterios de Aceptación:**
- Detección de número de ejes (2 a 9 ejes)
- Espaciamiento entre ejes
- Clasificación según categorías oficiales (I a VI)
- Comparación con categoría de peaje (detección de fraude)
- Registro fotográfico del vehículo

---

### 2.5 Infraestructura de Estaciones de Pesaje

**ID:** RF-005  
**Descripción:** Las estaciones de pesaje deben incluir infraestructura completa de operación  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 3.3.9  

**Criterios de Aceptación:**
- Área de administración (oficinas, sanitarios, control)
- Estacionamiento para infractores (500-800 m²)
- Área de servicio operacional
- Señalización especial de ordenamiento y seguridad
- Iluminación nocturna
- CCTV (grabación de operativos)
- Caseta de control para operadores

---

### 2.6 Operación 24/7/365

**ID:** RF-006  
**Descripción:** El sistema debe garantizar disponibilidad continua de infraestructura  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 3.3.9  

**Criterios de Aceptación:**
- Infraestructura disponible 24/7/365
- Personal de operación (2 turnos mínimo en horarios de alta demanda)
- Energía eléctrica continua (UPS + generador)
- Mantenimiento sin interrumpir operación (básculas redundantes)

---

### 2.7 Coordinación con Policía de Carreteras

**ID:** RF-007  
**Descripción:** El sistema debe permitir coordinación efectiva con Policía para sancionar infracciones  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 3.3.9  

**Criterios de Aceptación:**
- Reporte inmediato a Policía de vehículos con sobrepeso
- Datos disponibles: Peso, ejes, matrícula, foto, hora, fecha
- Oficina/área para Policía en estación de pesaje
- Acceso de Policía a base de datos de pesajes
- Registro de sanciones aplicadas

---

### 2.8 Registro y Reportes Técnicos

**ID:** RF-008  
**Descripción:** El sistema debe generar reportes técnicos y estadísticos para el proyecto y la ANI  
**Prioridad:** 🟡 Alta  
**Fuente:** AT2, Sección 3.3.9  

**Criterios de Aceptación:**
- Registro de 100% de los pesajes (dinámicos y estáticos)
- Reportes diarios, semanales, mensuales
- Estadísticas de:
  - % de camiones controlados
  - Horas de control por semana
  - % de infracciones (sobrepeso)
  - Peso promedio por categoría
  - Factor camión (para diseño de pavimentos)
  - Ejes equivalentes (diseño estructural)
- Exportación a Excel/PDF
- Transmisión a ANI según requerimientos

---

### 2.9 Básculas Móviles (Operativos Temporales)

**ID:** RF-009  
**Descripción:** El sistema debe incluir básculas móviles para operativos en puntos variables  
**Prioridad:** 🟡 Media  
**Fuente:** AT2, Sección 3.3.9  

**Criterios de Aceptación:**
- 2-3 básculas portátiles
- Precisión: ±5%
- Calibración anual
- Operación con Policía de Carreteras
- Señalización temporal para desvío de vehículos

---

### 2.10 Calibración Anual Obligatoria

**ID:** RF-010  
**Descripción:** Todas las básculas deben calibrarse anualmente con certificado oficial  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 3.3.9  

**Criterios de Aceptación:**
- Calibración por organismo acreditado (ONAC)
- Certificado de calibración vigente
- Trazabilidad a patrones nacionales (INM)
- Frecuencia: Máximo 1 año
- Registro de calibraciones en archivo técnico

---

## 3. REQUISITOS NO FUNCIONALES

### 3.1 Requisitos de Precisión

| ID | Requisito | Valor | Fuente |
|:---|:----------|:------|:-------|
| **RNF-001** | Precisión básculas estáticas | ≤ 1% error | AT2, 3.3.9 |
| **RNF-002** | Precisión básculas dinámicas WIM | ≤ 5% error | AT2, 3.3.9 |
| **RNF-003** | Precisión básculas móviles | ≤ 5% error | AT2, 3.3.9 |
| **RNF-004** | Repetibilidad de mediciones | ±0.5% (10 pesajes consecutivos) | OIML R 76 |

---

### 3.2 Requisitos de Disponibilidad

| ID | Requisito | Valor Mínimo | Fuente |
|:---|:----------|:-------------|:-------|
| **RNF-005** | Disponibilidad de infraestructura | 100% (24/7/365) | AT2, 3.3.9 |
| **RNF-006** | Disponibilidad de básculas | ≥ 95% mensual | Operación continua |
| **RNF-007** | Tiempo de reparación | < 48 horas | Mantenimiento |

---

### 3.3 Requisitos de Performance

| ID | Requisito | Valor | Fuente |
|:---|:----------|:------|:-------|
| **RNF-008** | Velocidad de pesaje WIM | 5-100 km/h | ASTM E1318 |
| **RNF-009** | Tiempo de pesaje estático | < 5 minutos por vehículo | Operación eficiente |
| **RNF-010** | Capacidad de procesamiento | ≥ 50 vehículos/hora (estática) | Tráfico pesado |

---

### 3.4 Requisitos de Seguridad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-011** | Señalización de operativos | Señales preventivas, conos, desvíos | Seguridad vial |
| **RNF-012** | Iluminación nocturna | Operación segura 24 horas | AT2, 6.3.4 |
| **RNF-013** | CCTV de seguridad | Grabación de todos los pesajes | Evidencia |
| **RNF-014** | Protección de datos | Acceso controlado a base de datos | Privacidad |

---

### 3.5 Requisitos de Mantenibilidad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-015** | Calibración anual obligatoria | Todas las básculas | AT2, 3.3.9 |
| **RNF-016** | Mantenimiento preventivo | Trimestral (limpieza, inspección) | Buenas prácticas |
| **RNF-017** | Disponibilidad de repuestos | Sensores, load cells, controladores | Reposición rápida |

---

## 4. REQUISITOS DE INTERFACES

### 4.1 Interface Pesaje ↔ CCO

**ID:** RI-001  
**Sistemas:** Pesaje WIM ↔ Centro de Control Operacional  
**Tipo:** Red de Datos IP  
**Protocolo:** TCP/IP, API REST  
**Datos Intercambiados:**
- Datos de pesaje en tiempo real (peso, ejes, categoría)
- Alarmas de sobrepeso
- Estadísticas diarias/semanales/mensuales
- Estado de básculas (operativa, falla, calibración)
**Frecuencia:** Tiempo real (cada vehículo pesado)

---

### 4.2 Interface Pesaje ↔ Peajes

**ID:** RI-002  
**Sistemas:** Básculas WIM en Peajes ↔ Sistema de Peajes  
**Tipo:** Red de Datos IP  
**Protocolo:** TCP/IP, Base de Datos compartida  
**Datos Intercambiados:**
- Peso vs. categoría de cobro
- Detección de evasión
- Correlación aforo/peso
**Frecuencia:** Tiempo real

---

### 4.3 Interface Pesaje ↔ Policía de Carreteras

**ID:** RI-003  
**Sistemas:** Pesaje ↔ Policía de Carreteras  
**Tipo:** Operacional + Base de Datos  
**Protocolo:** Acceso web, Reportes  
**Datos Intercambiados:**
- Vehículos con sobrepeso (reporte inmediato)
- Base de datos de infracciones
- Fotos y evidencias
**Frecuencia:** Por evento + acceso continuo

---

### 4.4 Interface Pesaje ↔ ANI

**ID:** RI-004  
**Sistemas:** Pesaje ↔ ANI  
**Tipo:** Reportes  
**Protocolo:** Web, Excel, PDF  
**Datos Intercambiados:**
- Reportes mensuales de control de peso
- Estadísticas de infracciones
- Datos para diseño de refuerzos de pavimentos
**Frecuencia:** Mensual

---

## 5. MATRIZ DE TRAZABILIDAD

| Requisito ID | Tipo | Descripción Resumida | Fuente Contractual | Prioridad |
|:-------------|:-----|:---------------------|:-------------------|:----------|
| **RF-001** | Funcional | Pesaje dinámico WIM (±5%) | AT2, 3.3.9 | 🔴 Alta |
| **RF-002** | Funcional | Pesaje estático (±1%, 100 ton) | AT2, 3.3.9 | 🔴 Alta |
| **RF-003** | Funcional | WIM en todos los carriles de peaje | AT2, 3.3.4.2 | 🔴 Alta |
| **RF-007** | Funcional | Coordinación con Policía | AT2, 3.3.9 | 🔴 Alta |
| **RF-010** | Funcional | Calibración anual | AT2, 3.3.9 | 🔴 Alta |
| **RNF-001** | Precisión | Error ≤ 1% (estáticas) | AT2, 3.3.9 | 🔴 Alta |
| **RNF-005** | Disponibilidad | Infraestructura 24/7/365 | AT2, 3.3.9 | 🔴 Alta |

**Total requisitos identificados:** 27 (10 funcionales + 17 no funcionales)

---

## 6. RESTRICCIONES Y SUPUESTOS

### 6.1 Restricciones

| ID | Restricción | Impacto | Origen |
|:---|:------------|:--------|:-------|
| **REST-001** | Capacidad 100 ton obligatoria | Alto - Especificación técnica | AT2, 3.3.9 |
| **REST-002** | Error máximo 1% (estáticas), 5% (dinámicas) | Alto - Precisión obligatoria | AT2, 3.3.9 |
| **REST-003** | Calibración anual obligatoria | Alto - Certificación legal | AT2, 3.3.9 |
| **REST-004** | Reporte inmediato a Policía | Alto - Obligación legal | AT2, 3.3.9 |
| **REST-005** | WIM en 100% carriles de peaje | Alto - No opcional | AT2, 3.3.4.2 |

---

### 6.2 Supuestos

| ID | Supuesto | Riesgo si no se cumple | Validación |
|:---|:---------|:-----------------------|:-----------|
| **SUP-001** | Ubicaciones de estaciones definidas (PK exactos) | Alto - Diseño incompleto | Coordinar con diseño geométrico |
| **SUP-002** | Pavimento rígido disponible para instalación WIM | Alto - Requiere obra civil adicional | Validar con diseño de pavimentos |
| **SUP-003** | Policía disponible para operativos | Medio - Menor efectividad de control | Coordinar con Policía |

---

## 7. CASOS DE USO

### 7.1 CU-001: Pesaje Dinámico y Detección de Sobrepeso

**Actor:** Sistema WIM (automático) + Operador  
**Descripción:** Sistema pesa vehículo en movimiento y detecta sobrepeso  
**Precondiciones:**
- Báscula WIM operativa
- Software de gestión activo
- Comunicación con CCO activa

**Flujo Normal:**
1. Camión se aproxima a báscula WIM (velocidad 60 km/h)
2. Sensores detectan presencia vehicular (loop inductivo)
3. Sensores WIM (piezoléctricos) miden peso de cada eje
4. Sistema calcula peso bruto vehicular total (PBVT)
5. Sistema detecta número de ejes: 5 ejes
6. Sistema clasifica vehículo: Categoría V (tractocamión 5 ejes)
7. PBVT medido: 52 toneladas
8. Límite legal para 5 ejes: 50.5 toneladas
9. Sistema detecta sobrepeso: +1.5 ton (+3%)
10. Sistema genera alarma: "SOBREPESO DETECTADO"
11. Sistema activa señal luminosa y PMV: "DIRÍJASE A BÁSCULA ESTÁTICA"
12. Sistema notifica a operador en estación de pesaje
13. Sistema registra evento y envía datos a CCO
14. Operador coordina con Policía

**Postcondiciones:**
- Vehículo derivado a pesaje estático
- Evento registrado

---

### 7.2 CU-002: Pesaje Estático y Emisión de Comprobante

**Actor:** Operador de Pesaje + Conductor  
**Descripción:** Vehículo es pesado en báscula estática con precisión  
**Precondiciones:**
- Vehículo derivado desde WIM (o control aleatorio)
- Báscula estática operativa
- Operador de turno

**Flujo Normal:**
1. Operador indica a conductor estacionar en báscula estática
2. Vehículo se ubica completamente en plataforma
3. Operador verifica que vehículo está centrado y detenido
4. Operador ingresa datos en sistema:
   - Matrícula: ABC-123
   - Compañía de transporte
   - Tipo de carga
5. Sistema realiza pesaje estático (precisión ±1%)
6. Display muestra: PBVT = 52.3 toneladas
7. Sistema imprime comprobante automáticamente:
   - Peso: 52.3 ton
   - Matrícula: ABC-123
   - Fecha/hora
   - Peso por eje
   - Límite legal: 50.5 ton
   - Sobrepeso: +1.8 ton (+3.6%)
8. Operador entrega comprobante al conductor
9. Policía aplica sanción según Ley 769/2002
10. Conductor debe descargar exceso o pagar multa

**Postcondiciones:**
- Peso exacto determinado
- Comprobante impreso
- Infracción documentada

---

### 7.3 CU-003: Calibración Anual de Báscula

**Actor:** Técnico de Metrología (Certificado)  
**Descripción:** Calibración anual de báscula estática  
**Precondiciones:**
- Organismo acreditado (ONAC)
- Pesas patrón certificadas (trazables a INM)
- Báscula fuera de operación (mantenimiento programado)

**Flujo Normal:**
1. Técnico coloca pesas patrón en báscula (5, 10, 20, 50, 100 ton)
2. Técnico verifica lectura de báscula vs. peso patrón
3. Técnico ajusta calibración si hay desviación
4. Técnico repite proceso con diferentes pesos
5. Técnico verifica linealidad (error en todo el rango)
6. Si error ≤ 1% en todo el rango → Báscula aprobada
7. Técnico emite certificado de calibración (vigencia 1 año)
8. Operador archiva certificado (copia a ANI/Interventoría)
9. Báscula vuelve a operación

**Postcondiciones:**
- Báscula calibrada y certificada
- Certificado archivado

**Frecuencia:** Anual (máximo cada 12 meses)

---

## 8. CRITERIOS DE ACEPTACIÓN

### 8.1 Criterios Funcionales

- [ ] 2-3 estaciones de pesaje fijas con control bidireccional
- [ ] Básculas dinámicas WIM (pre-selección) operativas
- [ ] Básculas estáticas de 100 ton (±1%) operativas
- [ ] WIM instalado en 100% de carriles de peaje
- [ ] 2-3 básculas móviles disponibles
- [ ] Sistema de impresión automática funcional
- [ ] Coordinación efectiva con Policía de Carreteras
- [ ] Reportes técnicos generados mensualmente
- [ ] Calibración anual de todas las básculas

### 8.2 Criterios de Performance

- [ ] Precisión estáticas: ≤ 1% error
- [ ] Precisión dinámicas: ≤ 5% error
- [ ] Disponibilidad infraestructura: 100% (24/7/365)
- [ ] Disponibilidad básculas: ≥ 95%
- [ ] Velocidad WIM: 5-100 km/h
- [ ] Capacidad: 100 toneladas

### 8.3 Criterios de Calidad

- [ ] Cumplir ASTM E1318 (Sistemas WIM)
- [ ] Cumplir OIML R 76 (Básculas)
- [ ] Cumplir NTC 5206 (WIM)
- [ ] Certificados de calibración vigentes
- [ ] Trazabilidad a patrones nacionales (INM)

---

## 9. DEPENDENCIAS

| Sistema/Recurso | Tipo de Dependencia | Criticidad | Estado |
|:----------------|:--------------------|:-----------|:-------|
| **Diseño Geométrico** | Ubicación de estaciones de pesaje | 🔴 Alta | ⏳ Por definir |
| **Diseño de Pavimentos** | Pavimento rígido para WIM | 🔴 Alta | ⏳ Por coordinar |
| **Sistema Eléctrico** | Alimentación + UPS + Generador | 🔴 Alta | ✅ Documentado |
| **Telecomunicaciones** | Transmisión a CCO | 🟡 Media | ✅ Documentado |
| **Policía de Carreteras** | Coordinación operativa | 🔴 Alta | ⏳ Por coordinar |

---

## 10. PRÓXIMOS PASOS

- [ ] Desarrollar arquitectura conceptual (Template T03)
- [ ] Definir ubicaciones exactas de estaciones (PK)
- [ ] Solicitar cotizaciones a proveedores:
  - Básculas WIM: Kistler, Intercomp, Cardinal Scale
  - Básculas estáticas: Toledo, Avery Weigh-Tronix
  - Software: Proveedores especializados
- [ ] Elaborar especificaciones técnicas (Template T04)
- [ ] Coordinar con Policía de Carreteras
- [ ] Estimar costos detallados (Template T05)

---

## 11. REFERENCIAS

### Documentos Contractuales:
- [AT2 - Operación y Mantenimiento](../II.%20Apendices%20Tecnicos/AT2_Operacion_Mantenimiento_v1.0.md) - Secciones 3.3.9, 3.3.4.2
- [AT1 - Alcance del Proyecto](../II.%20Apendices%20Tecnicos/AT1_Alcance_Proyecto_v1.0.md)

### Documentos del Proyecto:
- [T01 - Ficha Sistema Pesaje WIM](39_T01_Ficha_Sistema_Pesaje_WIM_v1.0.md)
- [T01 - Sistema CCO](26_T01_Ficha_Sistema_CCO_v1.0.md)
- [T01 - Sistema Peajes](25_T01_Ficha_Sistema_Peajes_v1.0.md)

### Normativa:
- ASTM E1318 - Standard Specification for Highway Weigh-In-Motion Systems
- OIML R 76 - Non-automatic Weighing Instruments
- NTC 5206 - Sistemas de Pesaje Dinámico
- Resolución 4959/2006 - Pesos y Dimensiones Vehiculares
- Ley 769/2002 - Código Nacional de Tránsito

---

## 12. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 17/10/2025 | Administrador Contractual EPC | Análisis inicial de requisitos del sistema de pesaje WIM |
| **v1.2** | 22/10/2025 | Administrador Contractual EPC | **Revisión con información oficial:** 1 estación bidireccional PR4+0100 RN 4513, CCO La Lizama PK 4+300 |

---

**Versión:** 1.2 ✅ **REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**  
**Estado:** ✅ Análisis de Requisitos Completado + Información Oficial Integrada  
**Fecha:** 22/10/2025  
**Responsable:** Ingeniero Civil / Ingeniero de Tránsito  
**Próximo documento:** T03 - Arquitectura Conceptual del Sistema de Pesaje WIM  

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- Cantidad confirmada: 1 estación bidireccional en PR4+0100 RN 4513
- CCO ubicado en La Lizama PK 4+300 (RN 4513)
- Longitudes actualizadas: 259.6 km principal + 33.4 km adicionales
- Software de gestión integrado con ubicación oficial
- Metodología PKD lineal aplicada

---

**Fin del documento - T02 Análisis de Requisitos Sistema de Pesaje WIM**  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*

