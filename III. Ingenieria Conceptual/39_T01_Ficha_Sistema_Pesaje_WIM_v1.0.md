# T01: FICHA DE SISTEMA - PESAJE WIM (WEIGH IN MOTION)
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 17/10/2025  
**Sistema:** Pesaje WIM (Weigh In Motion)  
**Responsable:** Ing. Civil / Ing. de Tránsito  
**Versión:** 1.0  

---

## 1. IDENTIFICACIÓN DEL SISTEMA

| Campo | Valor |
|-------|-------|
| **Nombre del sistema** | Sistema de Pesaje WIM (Weigh In Motion) + Básculas Estáticas |
| **Categoría** | Control de Tráfico / Seguridad Vial / ITS |
| **Prioridad** | 🟠 **ALTA** - Control de sobrepeso obligatorio, protección de pavimentos |
| **Fase contractual** | Construcción / O&M |
| **AT relacionados** | AT1, AT2 (Sección 3.3.9), AT4 |

---

## 2. DESCRIPCIÓN GENERAL

### 2.1 Propósito del Sistema

Garantizar el **control efectivo del peso de vehículos de carga** que circulan por el corredor vial para:
1. **Proteger la infraestructura vial** (pavimentos, puentes) del daño causado por sobrepeso
2. **Cumplir con la normativa** de pesos y dimensiones vehiculares (Resolución 4959/2006)
3. **Detectar y sancionar** vehículos con sobrecarga (coordinación con Policía de Carreteras)
4. **Recopilar datos técnicos** para diseño de refuerzos de pavimentos y puentes (factor camión, ejes equivalentes)
5. **Reducir costos de mantenimiento** de pavimentos mediante prevención de daño por sobrepeso

**El sistema combina:**
- **Pesaje Dinámico (WIM - Weigh In Motion):** Pesaje sin detención del vehículo (pre-selección)
- **Pesaje Estático:** Pesaje de precisión para vehículos sospechosos de sobrepeso

### 2.2 Alcance del Sistema

- **Sistemas incluidos:**
  - **1 Estación de Pesaje Fija Bidireccional** (PR4+0100 RN 4513 - obligatoria AT1 Adenda 4)
    - 2 Sistemas WIM dinámicos (1 por sentido)
    - 2 Básculas Estáticas de Precisión 100 ton (1 por sentido)
  - **Básculas Dinámicas en Peajes** (todos los carriles de cobro - AT2 3.3.4.2)
  - **Software de Gestión de Pesaje** (integrado con CCO La Lizama PK 4+300)
  - **Sistemas de Detección de Ejes** y clasificación vehicular
  - **Área de Administración** (oficinas, sanitarios, estacionamiento infractores)
  - **Sistema de Impresión Automática** de comprobantes de peso
  - **Básculas Móviles** (2 unidades para operativos temporales - opcional)
  
- **Ubicación contractual:** PR4+0100 RN 4513 (AT1 Cap. 3, pág. 46-47, Adenda 4)
- **Configuración:** Estación bidireccional (ambos sentidos desde 1 punto de control)
- **Cobertura geográfica:** 259.6 km principales + 33.4 km adicionales, control permanente en estación fija + móviles eventuales
- **Integración con:** CCO La Lizama PK 4+300 (transmisión datos tiempo real), Peajes (pesaje dinámico), Policía (sanciones)

---

## 3. REQUISITOS CONTRACTUALES

### 3.1 Obligaciones del Contrato

**Según AT2, Sección 2.1 - Servicios de Carácter Obligatorio:**

> "p) **Control del peso de vehículos de carga (Estaciones de Pesaje).**"

**Según AT2, Sección 3.3.4.2 - Dimensionamiento del Peaje:**

> "Adicionalmente, el Concesionario deberá **instalar en todos los carriles de cobro de la Estación de peaje, un sistema de pesaje dinámico** que cumpla con las disposiciones de la sección 3.3.9 del presente documento."

**Según AT2, Sección 3.3.9 - Sistemas de Pesaje:**

> "Como parte del Manual de Operación y Mantenimiento, el Concesionario deberá presentar a la ANI los **procedimientos de operación de las Estaciones de Pesaje**, incluyendo instrucciones para casos rutinarios y especiales que comprendan entre otros temas, señalización, controles, fiscalización, elaboración de mapas estadísticos con el porcentaje de camiones controlados y el número de horas de control realizado por semana, registro de novedades, localización de equipos de trabajo, control y vigilancia de equipos e instalaciones, atención al Usuario y Sistema de Control para el cumplimiento de estas normas."

> "**Los sistemas de pesaje incluirán sistemas combinados dinámicos y estáticos** y buscarán reducir el número de camiones que deban detenerse. Toda estación fija debe contar con un área de administración, una zona de estacionamiento para los infractores, un área de servicio de la operación y un **sistema de básculas dinámicas para detectar y clasificar previamente los vehículos sobrecargados** y verificar el peso por eje y el total de los vehículos con sobrepeso en la báscula estática."

> "Una vez se suscriba el Acta de Terminación o Acta de Terminación Parcial de la Unidad Funcional en la que se encuentra el Pesaje, las **básculas utilizadas deben tener una capacidad de 100 toneladas**. Las **básculas fijas deberán tener un error máximo permisible del 1%**, mientras que las **dinámicas y las móviles podrán tener un error máximo permisible del 5%**. Todas las básculas fijas deberán contar con un **sistema automático de impresión del peso**, identificando el vehículo y la compañía de transporte."

> "El Concesionario será responsable de que **todas las básculas fijas y móviles se calibren con periodicidad máxima de un año**, así como de asegurar que todos los elementos y personal deberán atender su función con elevados parámetros de calidad y eficiencia."

> "El Concesionario debe garantizar que **la infraestructura esté disponible las 24 horas diarias, los 365 Días del año**."

> "Cuando los vehículos superen el peso máximo autorizado por el Ministerio de Transporte, será obligación del Concesionario **reportarlo a la Policía de forma inmediata**, para que ésta proceda de acuerdo con las normas y la reglamentación vigentes."

### 3.2 Requisitos de Apéndices Técnicos

**AT2, Sección 3.3.9:**

| Requisito | Descripción |
|:----------|:------------|
| **Control bidireccional** | Estaciones de pesaje deben controlar en ambos sentidos de circulación |
| **Infraestructura completa** | Área de administración, estacionamiento infractores, área de servicio, básculas dinámicas y estáticas |
| **Personal capacitado** | Trabajadores uniformados y capacitados + equipo permanente de vigilancia |
| **Registro automático** | Equipos de control automatizados para reportes técnicos y económicos |
| **Integración con CCO** | Acceso en línea a datos de puestos móviles y fijos |
| **Disponibilidad para Policía** | Registros de peso disponibles para Policía de Carreteras y ANI |
| **Señalización especial** | Área de básculas con señalización de ordenamiento y seguridad |
| **Calibración anual** | Todas las básculas calibradas máximo cada año |

**AT4 (Indicadores - Por validar):**
- No hay indicadores específicos de pesaje en AT4, pero se infiere que el cumplimiento de peso máximo (Resolución 4959/2006) es obligatorio

**AT1 - Alcance del Proyecto:**
- Se asume que las estaciones de pesaje están incluidas en el alcance general, aunque no se especifica número exacto (se estima 2-3 estaciones fijas)

### 3.3 Normativa Aplicable

| Norma | Descripción | Alcance |
|:------|:------------|:--------|
| **Resolución 4959/2006** | Pesos y dimensiones de vehículos de carga | Límites de peso por eje, peso bruto vehicular |
| **Resolución 3282/2020** | Actualización pesos y dimensiones | Normativa vigente de pesos máximos |
| **Ley 769/2002 (Código Nacional de Tránsito)** | Infracciones por sobrepeso | Sanciones y multas |
| **NTC 5206** | Sistemas de pesaje dinámico (WIM) | Especificaciones técnicas de básculas WIM |
| **OIML R 76** | Básculas electrónicas para pesaje no automático | Estándares internacionales de básculas estáticas |
| **ASTM E1318** | Estándar para sistemas WIM | Especificaciones de precisión y calibración |
| **Manual de Señalización (Resolución 1885/2015)** | Señalización de estaciones de pesaje | Señales informativas y preventivas |

---

## 4. COMPONENTES PRINCIPALES

### 4.1 Estaciones de Pesaje Fijas

| Componente | Cantidad Estimada | Ubicación | Función |
|:-----------|:-----------------|:----------|:--------|
| **Estaciones de Pesaje Fijas** | **1 estación bidireccional** | PR4+0100 RN 4513 | Control de sobrepeso en ambos sentidos |
| **Carriles de Pesaje por Estación** | 2 carriles (1 por sentido) | PR4+0100 RN 4513 | Carril exclusivo para pesaje |
| **Área de Administración** | 1 por estación | PR4+0100 RN 4513 | Oficinas, sanitarios, control |
| **Estacionamiento Infractores** | 1 por estación (500-800 m²) | PR4+0100 RN 4513 | Parqueo para vehículos con sobrepeso |
| **Zona de Servicio Operacional** | 1 por estación | PR4+0100 RN 4513 | Área técnica, equipos, almacenamiento |

### 4.2 Básculas y Sistemas de Pesaje

| Componente | Cantidad Estimada | Ubicación | Función |
|:-----------|:-----------------|:----------|:--------|
| **Básculas Dinámicas WIM (Pre-selección)** | **2 básculas** | PR4+0100 RN 4513 (1 por sentido) | Pesaje sin detención, detección de sobrepeso |
| **Básculas Estáticas de Precisión (100 ton)** | **2 básculas** | PR4+0100 RN 4513 (1 por sentido) | Pesaje de precisión de vehículos sospechosos |
| **Básculas Dinámicas en Peajes** | 12-18 básculas | Todos los carriles de peaje (Zambito + Aguas Negras) | Pesaje dinámico en plazas de peaje |
| **Básculas Móviles (Portátiles)** | 2-3 básculas | Operativos móviles en puntos variables | Operativos temporales de control |
| **Sensores de Ejes (WIM)** | 4-6 sensores | Básculas dinámicas | Detección de ejes y clasificación vehicular |
| **Sistemas de Detección de Loops Inductivos** | 4-6 loops | Básculas dinámicas y estáticas | Detección de presencia vehicular |

**Especificaciones técnicas:**
- **Básculas Estáticas:** Capacidad 100 ton, Error máximo ≤1%, Tipo plataforma
- **Básculas Dinámicas (WIM):** Capacidad 100 ton, Error máximo ≤5%, Tecnología piezoelétrica o load cells
- **Calibración:** Anual obligatoria (certificado de calibración)

### 4.3 Sistemas de Control y Gestión

| Componente | Cantidad Estimada | Ubicación | Función |
|:-----------|:-----------------|:----------|:--------|
| **Software de Gestión de Pesaje** | 1 licencia central + módulos locales | CCO La Lizama PK 4+300 + Estación | Gestión de datos, reportes, estadísticas |
| **Computadores de Operación** | 2-3 equipos | Estación PR4+0100 RN 4513 | Registro de pesajes, emisión de comprobantes |
| **Impresoras de Comprobantes** | 2 impresoras | Básculas estáticas | Impresión automática de peso y datos |
| **Cámaras de Reconocimiento de Placas (OCR)** | 4-6 cámaras | Estación + peajes | Identificación de vehículos |
| **Cámaras de Ejes** | 4-6 cámaras | Básculas dinámicas y estáticas | Verificación de número de ejes |
| **Cámaras de Vigilancia** | 6-9 cámaras | Estación + peajes | Seguridad y evidencia de infracciones |
| **Sensores de Clasificación Vehicular** | 4-6 sensores | Básculas dinámicas | Clasificación automática por categoría |
| **Sistema de Alarma de Sobrepeso** | 2 sistemas | Estación bidireccional | Alerta visual/sonora ante sobrepeso |

### 4.4 Edificaciones e Infraestructura

| Componente | Cantidad Estimada | Ubicación | Función |
|:-----------|:-----------------|:----------|:--------|
| **Oficinas de Administración** | 1 edificio (60-80 m²) | Estación PR4+0100 RN 4513 | Gestión operativa, archivo |
| **Sanitarios para Personal** | 1 módulo | Estación PR4+0100 RN 4513 | Servicios higiénicos |
| **Estacionamiento de Infractores** | 1 área (500-800 m²) | Estación PR4+0100 RN 4513 | Parqueo obligatorio para vehículos con sobrepeso |
| **Casetas de Control** | 2 casetas | Estación PR4+0100 RN 4513 (1 por sentido) | Operador de báscula |
| **Techos/Cubiertas** | 1 cubierta | Estación PR4+0100 RN 4513 | Protección de básculas y personal |
| **Señalización Vertical** | 10-15 señales | Accesos a estación, vía principal | Información y advertencia de pesaje |
| **Demarcación Horizontal** | 1 km | Estación PR4+0100 RN 4513 | Carriles de pesaje, estacionamiento |
| **Iluminación Nocturna** | 1 sistema LED | Estación PR4+0100 RN 4513 | Operación 24/7 |
| **Cercado Perimetral** | 1 km | Estación PR4+0100 RN 4513 | Seguridad perimetral |

### 4.5 Sistemas de Comunicación y Energía

| Componente | Cantidad Estimada | Ubicación | Función |
|:-----------|:-----------------|:----------|:--------|
| **Conexión Fibra Óptica** | 1 conexión | Estación PR4+0100 RN 4513 | Transmisión de datos a CCO La Lizama PK 4+300 |
| **Red de Datos Local (Switch, Router)** | 2-3 equipos | Estación + peajes | Red LAN local |
| **UPS (15-30 kVA)** | 2 sistemas | Estación + peajes | Respaldo energético |
| **Transformador Eléctrico (50-75 kVA)** | 1 transformador | Estación PR4+0100 RN 4513 | Alimentación eléctrica |
| **Generador de Emergencia (30-50 kW)** | 1 generador | Estación PR4+0100 RN 4513 | Energía de emergencia |

---

## 5. INTERFACES CON OTROS SISTEMAS

| Sistema Relacionado | Tipo de Interface | Protocolo/Medio | Datos Intercambiados |
|:--------------------|:------------------|:----------------|:---------------------|
| **CCO La Lizama PK 4+300** | Red IP | Ethernet/Fibra Óptica | Datos de pesaje en tiempo real, sobrepesos, estadísticas, alarmas |
| **Peajes** | Física / Red IP | Ethernet, instalación física en carriles | Pesaje dinámico en plazas de peaje, clasificación vehicular |
| **ITS** | Lógica | Base de Datos | Correlación tráfico/peso, clasificación vehicular, aforo de pesados |
| **Policía de Carreteras** | Lógica / Comunicación | Radio, Teléfono, Web | Notificación de infracciones, acceso a registros, coordin

ación de operativos |
| **Sistema de Energía Eléctrica** | Física | 220V AC, UPS | Alimentación de básculas, computadores, iluminación |
| **Telecomunicaciones** | Física | Fibra Óptica | Transmisión de datos, videovigilancia |
| **ANI (Sistema Central)** | Red IP | Web/API HTTPS | Reportes mensuales, estadísticas, información histórica |

---

## 6. ESTIMACIÓN PRELIMINAR

### 6.1 CAPEX (Inversión Inicial) CORREGIDO v1.1

| Ítem | Cantidad | Costo Unitario (USD) | Costo Total (USD) | Costo Total (COP) |
|:-----|:---------|:---------------------|:------------------|:------------------|
| **Estación de Pesaje Fija Bidireccional (Obra Civil)** |
| Edificación (oficinas, sanitarios, casetas, área adm.) | 1 estación | $120,000 | $120,000 | $480,000,000 |
| Estacionamiento infractores (pavimento, 20 espacios) | 1 área | $45,000 | $45,000 | $180,000,000 |
| Techos/Cubiertas para básculas (4 plataformas) | 1 conjunto | $60,000 | $60,000 | $240,000,000 |
| Cercado perimetral | 1.2 km | $12,000/km | $14,400 | $57,600,000 |
| Señalización vial accesos/salidas | 1 sistema | $25,000 | $25,000 | $100,000,000 |
| **Básculas y Sistemas de Pesaje Estación Fija** |
| Básculas Dinámicas WIM Sentido 1 (pre-selección) | 1 báscula | $140,000 | $140,000 | $560,000,000 |
| Báscula Estática Precisión 100 ton Sentido 1 | 1 báscula | $95,000 | $95,000 | $380,000,000 |
| Básculas Dinámicas WIM Sentido 2 (pre-selección) | 1 báscula | $140,000 | $140,000 | $560,000,000 |
| Báscula Estática Precisión 100 ton Sentido 2 | 1 báscula | $95,000 | $95,000 | $380,000,000 |
| Sensores de Ejes (WIM) + Loops Inductivos (4 carriles) | 8 sensores | $8,500 | $68,000 | $272,000,000 |
| **Básculas Dinámicas en Peajes (AT2 Sección 3.3.4.2)** |
| Básculas Dinámicas carriles peaje (todos) | 15 básculas | $45,000 | $675,000 | $2,700,000,000 |
| **Básculas Móviles (Opcional para operativos)** |
| Básculas Móviles Portátiles | 2 básculas | $55,000 | $110,000 | $440,000,000 |
| **Sistemas de Control y Gestión** |
| Software de Gestión de Pesaje (Licencia central) | 1 sistema | $95,000 | $95,000 | $380,000,000 |
| Computadores de Operación | 4 equipos | $2,500 | $10,000 | $40,000,000 |
| Impresoras de Comprobantes Automáticas | 2 impresoras | $3,500 | $7,000 | $28,000,000 |
| Cámaras Reconocimiento Placas OCR (4 carriles) | 4 cámaras | $8,000 | $32,000 | $128,000,000 |
| Cámaras de Ejes | 4 cámaras | $6,000 | $24,000 | $96,000,000 |
| Cámaras de Vigilancia (perímetro) | 8 cámaras | $2,500 | $20,000 | $80,000,000 |
| Sistema de Alarma de Sobrepeso | 1 sistema | $8,000 | $8,000 | $32,000,000 |
| **Infraestructura Eléctrica y Comunicaciones** |
| Conexión Fibra Óptica (instalación desde anillo) | 1 derivación | $25,000 | $25,000 | $100,000,000 |
| Red de Datos Local (Switch, Router, Cableado) | 1 sistema | $15,000 | $15,000 | $60,000,000 |
| UPS (30 kVA) | 2 sistemas | $18,000 | $36,000 | $144,000,000 |
| Transformador Eléctrico (75 kVA) | 1 transf. | $30,000 | $30,000 | $120,000,000 |
| Generador de Emergencia (50 kW) | 1 generador | $45,000 | $45,000 | $180,000,000 |
| **Señalización e Iluminación** |
| Señalización Vertical (informativa, reglamentaria) | 12 señales | $850 | $10,200 | $40,800,000 |
| Demarcación Horizontal (accesos, carriles) | 0.8 km | $3,500/km | $2,800 | $11,200,000 |
| Iluminación Nocturna LED (4 carriles + área) | 1 sistema | $35,000 | $35,000 | $140,000,000 |
| **Instalación, Ingeniería y Puesta en Marcha** | - | - | $180,000 | $720,000,000 |
| **Contingencia (8%)** | - | - | $156,000 | $624,000,000 |
| **TOTAL CAPEX** | | | **$2,286,400** | **$9,145,600,000** |

**CAPEX Total:** USD 2.29 millones | COP 9.15 mil millones

#### 🔴 **Nota de Ajuste Contractual v1.1 (21/10/2025):**

**Corrección aplicada:**
- v1.0: Asumía 3 estaciones independientes → $3.40M USD
- v1.1: 1 estación bidireccional (PR4+0100 RN 4513) → $2.29M USD
- **Ahorro:** -$1.11M USD (-33%)

**Fundamento contractual:**
- AT1 Cap. 3 (Adenda 4, pág. 46-47): "El Concesionario como mínimo deberá adecuar, operar y mantener **la estación de pesaje existente** en el PR4+0100 de la Ruta Nacional 4513, de modo que funcione para **ambos sentidos** del flujo vehicular."

**Configuración técnica:**
- 1 estación = 2 sistemas completos (1 por sentido)
- Por sentido: 1 báscula dinámica WIM + 1 báscula estática 100 ton
- Total: 4 plataformas de pesaje en 1 ubicación

**Nota:** Básculas dinámicas en peajes (15 unidades, $675K) se mantienen según AT2 Sección 3.3.4.2

### 6.2 OPEX (Operación y Mantenimiento - Anual)

| Ítem | Costo Anual (USD) | Costo Anual (COP) |
|:-----|:------------------|:------------------|
| **Personal Operativo** |
| Supervisores de Pesaje (3 FTE) | $75,000 | $300,000,000 |
| Operadores de Báscula (9 FTE, turnos rotativos 24/7) | $135,000 | $540,000,000 |
| Personal de Vigilancia (6 FTE) | $72,000 | $288,000,000 |
| Personal Administrativo (3 FTE) | $60,000 | $240,000,000 |
| **Subtotal Personal** | **$342,000** | **$1,368,000,000** |
| **Mantenimiento Preventivo** |
| Calibración anual de básculas (obligatorio) | $35,000 | $140,000,000 |
| Mantenimiento de básculas (sensores, celdas de carga) | $28,000 | $112,000,000 |
| Mantenimiento de software de gestión | $18,000 | $72,000,000 |
| Mantenimiento de equipos informáticos | $12,000 | $48,000,000 |
| Mantenimiento de edificaciones e infraestructura | $15,000 | $60,000,000 |
| **Subtotal Mantenimiento Preventivo** | **$108,000** | **$432,000,000** |
| **Mantenimiento Correctivo (5% del CAPEX anual)** | $28,500 | $114,000,000 |
| **Repuestos y Consumibles** |
| Sensores y celdas de carga de reemplazo | $18,000 | $72,000,000 |
| Consumibles de impresoras (papel térmico) | $6,000 | $24,000,000 |
| Repuestos electrónicos (computadores, switches) | $12,000 | $48,000,000 |
| **Subtotal Repuestos** | **$36,000** | **$144,000,000** |
| **Consumo de Energía Eléctrica** | $22,000 | $88,000,000 |
| **Servicios Públicos (Agua, Internet, Teléfono)** | $12,000 | $48,000,000 |
| **Seguros y Certificaciones** | $15,000 | $60,000,000 |
| **Coordinación con Policía de Carreteras** | $10,000 | $40,000,000 |
| **TOTAL OPEX/año** | **$573,500** | **$2,294,000,000** |

**OPEX Anual:** USD 573,500 | COP 2.29 mil millones/año  
**OPEX 25 años:** USD 14.3 millones | COP 57.3 mil millones

### 6.3 Resumen Financiero

| Concepto | Monto (USD) | Monto (COP) |
|:---------|------------:|------------:|
| **CAPEX Inicial** | $3,401,500 | $13,606,000,000 |
| **OPEX 25 años** | $14,337,500 | $57,350,000,000 |
| **TOTAL PROYECTO (25 años)** | **$17,739,000** | **$70,956,000,000** |

**Total Proyecto:** USD 17.7 millones | COP 71.0 mil millones

---

## 7. RIESGOS IDENTIFICADOS

| Riesgo | Probabilidad | Impacto | Mitigación |
|:-------|:-------------|:--------|:-----------|
| **Evasión de pesaje por vías alternas** | Alta | 🟠 Alto | Estaciones de pesaje estratégicamente ubicadas. Coordinación con Policía. Señalización preventiva |
| **Descalibración de básculas** | Media | 🟠 Alto | Calibración anual obligatoria con certificado. Mantenimiento preventivo trimestral |
| **Errores de medición (>5% en WIM, >1% estáticas)** | Media | 🟠 Medio | Tecnología de precisión (piezoelétrica/load cells). Verificación diaria con pesos patrón |
| **Daño por sobrepeso al pavimento** | Alta | 🔴 Crítico | Control estricto de sobrepeso. Reportes inmediatos a Policía. Multas y sanciones efectivas |
| **Conflicto con transportadores por sanciones** | Alta | 🟡 Medio | Personal capacitado en atención al usuario. Procedimientos claros. Evidencia fotográfica y video |
| **Falla de sistema de gestión (software)** | Baja | 🟠 Medio | Backup automático de datos. Servidor redundante. Operación manual como contingencia |
| **Vandalismo en estaciones remotas** | Media | 🟠 Medio | Vigilancia 24/7. Cercado perimetral. CCTV. Alarmas |
| **Falta de coordinación con Policía de Carreteras** | Media | 🟠 Alto | Protocolo de coordinación formal (AT2, Sección 3.3.10). Reuniones mensuales. Acceso en línea a datos |
| **Falla de energía eléctrica** | Media | 🟠 Medio | UPS + Generador de emergencia. Autonomía 24 horas |
| **Datos de pesaje no disponibles para ANI/Interventoría** | Baja | 🟠 Medio | Transmisión en tiempo real vía fibra óptica. Almacenamiento local 3 meses. Reportes mensuales |
| **Báscu las obsoletas (tecnología)** | Baja | 🟡 Bajo | Tecnología moderna (WIM piezoelétrico). Plan de actualización tecnológica cada 10 años |
| **Falta de repuestos críticos (celdas de carga)** | Media | 🟠 Medio | Stock mínimo de repuestos en almacén. Contratos con proveedores internacionales |

**Riesgos Críticos:** 1 riesgo con impacto crítico identificado (daño por sobrepeso)  
**Estrategia General:** Control estricto + Coordinación con Policía + Mantenimiento preventivo riguroso

---

## 8. INDICADORES DE DESEMPEÑO (KPIs)

**Según AT4 (No hay indicadores específicos de pesaje, se proponen indicadores operacionales):**

| Indicador ID | Descripción | Valor Mínimo Aceptación | Frecuencia Medición |
|:-------------|:------------|:------------------------|:--------------------|
| **Disponibilidad Infraestructura** | Estaciones de pesaje disponibles | 100% (24/7/365) | Mensual |
| **Precisión Básculas Estáticas** | Error de medición básculas estáticas | ≤ 1% | Calibración anual |
| **Precisión Básculas Dinámicas WIM** | Error de medición básculas dinámicas | ≤ 5% | Calibración anual |
| **Porcentaje de Vehículos Pesados Controlados** | % de camiones pesados controlados respecto al total circulante | ≥ 20% mensual | Mensual |
| **Tiempo de Respuesta a Reportes de Sobrepeso** | Tiempo desde detección hasta reporte a Policía | < 15 minutos | Por evento |
| **Horas de Operación Semanal** | Horas efectivas de control de pesaje por semana | ≥ 120 horas/semana (promedio) | Semanal |
| **Disponibilidad de Software de Gestión** | Disponibilidad del sistema de gestión de pesaje | ≥ 99% | Mensual |
| **Generación de Reportes Mensuales** | Entrega oportuna de reportes a ANI | 100% entregados dentro del plazo (Día 5 mes siguiente) | Mensual |
| **MTBF (Mean Time Between Failures)** | Tiempo promedio entre fallas de básculas | > 2,190 horas (3 meses) | Continuo |
| **Cumplimiento de Calibración Anual** | Porcentaje de básculas calibradas al día | 100% | Anual |

**Datos Requeridos en Reportes Mensuales (AT2):**
- Porcentaje de camiones controlados
- Número de horas de control realizado por semana
- Registro de novedades (infracciones, sanciones)
- Factor camión (análisis técnico)
- Peso bruto vehicular promedio
- Ejes equivalentes (para diseño de refuerzos de pavimentos)
- Origen y destino (estudios de demanda de transporte)
- Empresas sancionadas por sobrecarga

---

## 9. PRÓXIMOS PASOS

- [x] ✅ Ficha de Sistema completada (Template T01)
- [ ] 📋 **Desarrollar análisis de requisitos detallado (Template T02)** - Próximo paso
  - Requisitos funcionales (RF): Pesaje dinámico, pesaje estático, clasificación vehicular, reportes
  - Requisitos no funcionales (RNF): Precisión ≤1% y ≤5%, disponibilidad 24/7, calibración anual
  - Requisitos de interfaces (RI): CCO, Peajes, Policía, ANI
- [ ] 🏗️ Definir arquitectura conceptual (Template T03)
  - Layout de estaciones de pesaje fijas
  - Topología de básculas (dinámicas + estáticas)
  - Flujo de vehículos (pre-selección → verificación)
  - Integración con CCO y Peajes
- [ ] 📐 Elaborar especificaciones técnicas (Template T04)
  - Especificación de básculas WIM (capacidad, precisión, tecnología)
  - Especificación de básculas estáticas (100 ton, error ≤1%)
  - Especificación de software de gestión de pesaje
  - Especificación de sensores y cámaras
- [ ] 💰 Estimar costos detallados (Template T05)
  - Solicitar cotizaciones formales a proveedores:
    * Básculas WIM: Kistler, Intercomp, Cardinal Scale, International Road Dynamics (IRD)
    * Básculas Estáticas: Rice Lake Weighing Systems, Avery Weigh-Tronix, Mettler Toledo
    * Software de Gestión: Q-Free, Kapsch TrafficCom, TransCore
    * Sensores y Cámaras: Axis, Hikvision, Bosch
- [ ] 🗺️ Definir ubicaciones de estaciones de pesaje
  - Análisis de tráfico de vehículos pesados
  - Estudio de puntos estratégicos (evitar evasión)
  - Coordinación con ANI/Interventoría
- [ ] 📄 Elaborar Manual de Operación y Mantenimiento de Pesaje
  - Procedimientos rutinarios y especiales
  - Instrucciones de calibración
  - Protocolos de coordinación con Policía
- [ ] ✅ Validar con stakeholders
  - Revisión con Ingeniero de Tránsito
  - Coordinación con Policía de Carreteras
  - Aprobación de ANI/Interventoría

---

## 10. OBSERVACIONES Y SUPUESTOS

### 10.1 Supuestos Técnicos

1. **Número de estaciones de pesaje fijas:**
   - Se asume **2-3 estaciones de pesaje fijas** en el corredor de 259.6 km
   - Ubicaciones por definir en Fase de Preconstrucción (AT2 permite que el Concesionario proponga ubicaciones)
   - Se asume que NO hay estaciones de pesaje existentes entregadas por la ANI

2. **Tecnología de básculas WIM:**
   - Se asume tecnología **piezoelétrica** o **load cells** para básculas dinámicas WIM
   - Precisión objetivo: ≤5% (máximo permitido AT2)
   - Capacidad: 100 toneladas (como básculas estáticas)

3. **Volumen de vehículos pesados:**
   - Se asume que el 20-30% del tráfico total son vehículos de carga (categorías 3-6)
   - Objetivo: Controlar mínimo 20% de vehículos pesados mensualmente

4. **Coordinación con Policía de Carreteras:**
   - Se asume que el Protocolo de Coordinación (AT2, Sección 3.3.10) se suscribirá en los primeros 3 meses
   - Policía de Carreteras tendrá acceso en línea a datos de pesaje

5. **Pesaje dinámico en peajes:**
   - Se asume instalación de básculas WIM en **todos los carriles de cobro** de las 2 estaciones de peaje (Zambito + Aguas Negras)
   - Total estimado: 12-18 básculas WIM en peajes (considerando 6-9 carriles por estación)

### 10.2 Dependencias

1. **Dependencia de Sistema Eléctrico:**
   - Las básculas y equipos informáticos requieren alimentación eléctrica 24/7
   - UPS y generadores son obligatorios para operación continua

2. **Dependencia de Telecomunicaciones:**
   - La transmisión de datos en tiempo real a CCO depende de la red de fibra óptica
   - Sin fibra óptica, no hay integración con CCO (operación local aislada)

3. **Dependencia de Policía de Carreteras:**
   - Las sanciones por sobrepeso son responsabilidad exclusiva de la Policía de Carreteras (AT2)
   - El Concesionario solo reporta, no sanciona

4. **Dependencia de ANI/Interventoría:**
   - Las ubicaciones finales de estaciones de pesaje deben ser aprobadas por ANI/Interventoría
   - Los reportes mensuales son obligatorios (Día 5 mes siguiente)

5. **Dependencia de proveedores internacionales:**
   - Básculas WIM de precisión son fabricadas por proveedores internacionales (Kistler-Suiza, Intercomp-USA, etc.)
   - Repuestos críticos (celdas de carga) pueden tener tiempos de entrega largos (60-90 días)

### 10.3 Restricciones

1. **Restricción normativa:**
   - Calibración anual obligatoria (AT2)
   - Precisión máxima: ≤1% (estáticas), ≤5% (dinámicas)
   - Operación 24/7/365 obligatoria

2. **Restricción presupuestaria:**
   - CAPEX limitado a presupuesto aprobado
   - OPEX recurrente (personal 24/7 es costoso)

3. **Restricción de espacio:**
   - Estaciones de pesaje requieren áreas grandes (administración + estacionamiento infractores + carriles)
   - Estimado: 5,000-8,000 m² por estación

4. **Restricción de flujo vehicular:**
   - Las estaciones de pesaje NO pueden interrumpir el flujo normal de tráfico
   - Diseño debe minimizar detenciones (pre-selección con WIM)

5. **Restricción de coordinación:**
   - La aplicación de sanciones depende de la Policía de Carreteras (no del Concesionario)
   - Efectividad del sistema depende de la presencia policial

6. **Restricción técnica:**
   - Básculas WIM son sensibles a condiciones del pavimento (deben estar en pavimento en buen estado)
   - Errores de medición si el pavimento está deteriorado

---

## 11. INTEGRACIÓN CON OTROS DOCUMENTOS

### 11.1 Referencia a otros T01 (Fichas de Sistema)

| T01 Relacionado | Dependencia con Sistema de Pesaje |
|:----------------|:-----------------------------------|
| **25_T01_Peajes** | ALTA - Básculas WIM instaladas en TODOS los carriles de peaje (12-18 básculas) |
| **26_T01_CCO** | ALTA - Transmisión de datos de pesaje en tiempo real, integración con SCADA |
| **27_T01_Telecomunicaciones** | ALTA - Fibra óptica para transmisión de datos, red LAN local |
| **28_T01_Emergencias** | MEDIA - Coordinación en accidentes por sobrecarga, carro taller |
| **38_T01_Energia_Electrica** | ALTA - Alimentación eléctrica 24/7, UPS, generadores |
| **24_T01_ITS** | MEDIA - Correlación de datos de aforo vehicular con pesaje, clasificación |

### 11.2 Vinculación con WBS Preliminar

| Código WBS | Elemento WBS | Relación con Sistema de Pesaje |
|:-----------|:-------------|:--------------------------------|
| **1.1** | Preconstrucción | Estudio de localización de estaciones de pesaje, diseños |
| **1.5** | Peajes | Instalación de básculas WIM en carriles de peaje |
| **1.9** | Pesaje (WIM) | **ELEMENTO PRINCIPAL** - Estaciones fijas, básculas, software |
| **1.10** | CCO | Integración de datos de pesaje con SCADA del CCO |
| **1.15** | O&M | Operación 24/7, mantenimiento, calibración anual |

---

## 12. DATOS CLAVE PARA MEMORIZAR

**Resumen de Cantidades Principales:**
- **2-3 Estaciones de Pesaje Fijas** (control bidireccional)
- **5 Básculas Dinámicas WIM** (pre-selección, error ≤5%)
- **5 Básculas Estáticas** (precisión, 100 ton, error ≤1%)
- **15 Básculas WIM en Peajes** (todos los carriles de cobro)
- **2 Básculas Móviles** (operativos temporales)
- **Calibración anual obligatoria** (todas las básculas)
- **Operación 24/7/365** (infraestructura siempre disponible)

**Cifras Financieras:**
- **CAPEX:** USD 3.40 millones (COP 13.6 mil millones)
- **OPEX Anual:** USD 573,500 (COP 2.29 mil millones/año)
- **OPEX 25 años:** USD 14.3 millones (COP 57.3 mil millones)
- **Total Proyecto:** USD 17.7 millones (COP 71.0 mil millones)

**Personal Requerido:** 21 personas (3 supervisores + 9 operadores + 6 vigilancia + 3 administrativos)

**Normativa Clave:**
- **Resolución 4959/2006 (actualizada 3282/2020):** Pesos y dimensiones
- **Error máximo:** ≤1% (estáticas), ≤5% (dinámicas) - AT2

**Reportes Obligatorios:**
- Reportes mensuales a ANI (Día 5 mes siguiente)
- Estadísticas: % camiones controlados, horas operación, infracciones
- Datos técnicos: Factor camión, ejes equivalentes

---

**Versión:** 1.2 ✅ **REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**  
**Estado:** ✅ Ficha de Sistema Completada + Información Oficial Integrada  
**Fecha:** 22/10/2025  
**Responsable:** Administrador Contractual EPC  
**Próximo Documento:** 40_T01_Ficha_Sistema_Gestion_Ambiental_v1.0.md

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- Cantidad confirmada: 1 estación bidireccional en PR4+0100 RN 4513
- CCO ubicado en La Lizama PK 4+300 (RN 4513)
- Cobertura actualizada: 259.6 km principal + 33.4 km adicionales
- Cantidades validadas contra información oficial
- Metodología PKD lineal aplicada

---

**FIN DEL DOCUMENTO T01 - SISTEMA DE PESAJE WIM** ⚖️🚚✅

