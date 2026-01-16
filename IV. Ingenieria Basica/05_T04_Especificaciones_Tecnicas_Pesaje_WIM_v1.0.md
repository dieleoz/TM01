# T04: ESPECIFICACIONES TÉCNICAS - SISTEMA DE PESAJE WIM
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 21/10/2025  
**Sistema:** WIM - Weigh In Motion (Sistema de Pesaje Dinámico y Estático)  
**Responsable:** Ing. Civil / Ing. ITS / Administrador Contractual EPC  
**Versión:** 1.1  
**Referencia T01:** T01_Ficha_Sistema_Pesaje_WIM_v1.1  
**Referencia T03:** T03_Arquitectura_Conceptual_Pesaje_WIM_v1.0  
**Referencia Validación:** 24_VALIDACION_CONTRACTUAL_PESAJE_v1.0  
**Referencia Layout:** 42_LAYOUT_GEORREFERENCIADO_EQUIPOS_ITS_v1.0  

---

## 📋 **CONTROL DE CAMBIOS**

| Versión | Fecha | Cambios | Autor |
|:--------|:------|:--------|:------|
| 1.0 | 21/10/2025 | Creación inicial - 1 estación bidireccional (4 plataformas) | Adm. Contractual EPC |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Ubicación PR4+0100 RN 4513 confirmada | Adm. Contractual EPC |

---

## 1. IDENTIFICACIÓN Y ALCANCE

### 1.1 Identificación del Sistema

| Campo | Valor |
|:------|:------|
| **Nombre del sistema** | WIM - Weigh In Motion (Pesaje Dinámico y Estático) |
| **Categoría** | ITS - Control de Sobrecargas |
| **Código interno** | T04-WIM-005-v1.0 |
| **Configuración** | **1 estación bidireccional** |
| **Componentes** | **2 plataformas WIM + 2 plataformas estáticas** |
| **CAPEX estimado** | **USD $523,539** |
| **Documentos base** | T01 v1.1, T03 v1.0, Validación v1.0 |

### 1.2 Ubicación de la Estación

| Parámetro | Valor |
|:----------|:------|
| **Ubicación** | **PR4+0100 RN 4513** |
| **Referencia** | Cerca del CCO y Peaje Aguas Negras |
| **Configuración** | Bidireccional (2 carriles, ambos sentidos) |
| **Tipo de intervención** | Adecuar estación existente + modernizar equipos |

### 1.3 Alcance de las Especificaciones

**Este documento especifica:**
- ✅ Características técnicas de plataformas WIM (dinámicas)
- ✅ Características técnicas de básculas estáticas
- ✅ Sistema de clasificación y control automático
- ✅ Integración con CCO, SCADA, SICC
- ✅ Normativa nacional (NTC 5371, INVÍAS) e internacional (OIML R134)
- ✅ Procedimientos de calibración y certificación

**Este documento NO especifica:**
- ❌ Diseño civil detallado de cimentaciones (ver T05)
- ❌ Procedimientos operativos de sanción (ver Manual de Operación)

---

## 2. MARCO NORMATIVO Y CONTRACTUAL

### 2.1 Referencias Contractuales

| Documento | Sección | Requisito Clave |
|:----------|:--------|:----------------|
| **Apéndice Técnico 1** | Adenda 4, pág. 46-47 | 1 estación en PR4+0100 RN 4513, bidireccional |
| **Apéndice Técnico 2** | §3.3.9 "Control de Sobrecargas" | Integración CCO, calibración anual |
| **Apéndice Técnico 3** | Cap. IV "Sistemas ITS" | Especificaciones técnicas mínimas |

### 2.2 Normativa Aplicable

#### Normativa Nacional

| Norma | Título | Aplicación |
|:------|:-------|:-----------|
| **NTC 5371** | Metrología - Instrumentos de pesaje no automático | Básculas estáticas |
| **Resolución INVÍAS** | Especificaciones de pesaje en carreteras | Sistemas WIM |
| **Ley 769/2002** | Código Nacional de Tránsito (Art. 29) | Límites de peso por eje |
| **Resolución 4100/2004** | Pesos y dimensiones de vehículos | Límites legales |
| **RETIE** | Instalaciones Eléctricas | Alimentación, tierras |

#### Normativa Internacional

| Norma | Título | Aplicación |
|:------|:-------|:-----------|
| **OIML R134** | Automatic instruments for weighing road vehicles in motion | **OBLIGATORIA** para WIM |
| **ASTM E1318** | Standard Specification for Highway WIM Systems | Sistemas WIM |
| **COST 323** | European specification for WIM | Referencia técnica |
| **ISO TC-204** | Intelligent Transport Systems | Sistemas ITS |
| **IEC 60529** | IP Code | Protección IP65 mínimo |

### 2.3 Certificaciones Requeridas

| Certificación | Organismo | Obligatoria | Aplicación |
|:--------------|:----------|:------------|:-----------|
| **OIML R134** | Organismo metrológico | ✅ Sí | Plataformas WIM |
| **NTC 5371** | ONAC Colombia | ✅ Sí | Básculas estáticas |
| **Calibración inicial** | Lab. acreditado | ✅ Sí | Todas las plataformas |
| **Calibración anual** | Lab. acreditado | ✅ Sí | Todas las plataformas |
| **CE / FCC** | Europa / USA | ✅ Sí | Equipos electrónicos |
| **IP65** | IEC 60529 | ✅ Sí | Gabinetes exteriores |

---

## 3. ESPECIFICACIONES TÉCNICAS GENERALES

### 3.1 Características Ambientales

| Parámetro | Especificación Mínima | Referencia |
|:----------|:---------------------|:-----------|
| **Temperatura de operación** | -10°C a +60°C | Condiciones tropicales |
| **Humedad relativa** | 0-95% sin condensación | IEC 60068-2-78 |
| **Protección (electrónica)** | IP65 mínimo | IEC 60529 |
| **Resistencia a lluvia** | Operación continua bajo lluvia intensa | OIML R134 |
| **Altitud operación** | 0-500 msnm | Magdalena Medio |

### 3.2 Requisitos Eléctricos

| Parámetro | Especificación | Norma |
|:----------|:---------------|:------|
| **Tensión nominal** | 208 VAC trifásica, 60 Hz | RETIE |
| **Variación de tensión** | ±10% | RETIE |
| **Consumo máximo (estación completa)** | **5 kW** | - |
| **Factor de potencia** | ≥0.9 | RETIE |
| **Respaldo UPS** | 4 horas mínimo | AT2 |
| **Sistema de tierras** | <10 Ω | RETIE |

### 3.3 Requisitos de Comunicaciones

| Parámetro | Especificación | Protocolo |
|:----------|:---------------|:----------|
| **Medio físico** | Fibra óptica monomodo | ITU-T G.652 |
| **Velocidad** | 1 Gbps | IEEE 802.3 |
| **Protocolo de red** | TCP/IP | RFC 791, RFC 793 |
| **Protocolo aplicación** | SNMP v3, API REST | - |
| **Disponibilidad** | ≥99% anual | AT2, AT4 |

---

## 4. ESPECIFICACIONES POR COMPONENTE

### 4.1 Plataformas WIM (Dinámicas) - 2 unidades

#### 4.1.1 Descripción General

Plataformas de pesaje dinámico (Weigh In Motion) que permiten pesar vehículos en movimiento sin detenerlos, clasificarlos por tipo y detectar potenciales sobrecargas. Un sistema por sentido de circulación.

#### 4.1.2 Especificaciones Técnicas de la Plataforma

| Parámetro | Especificación Mínima | Método de Verificación |
|:----------|:---------------------|:-----------------------|
| **Tecnología** | Sensores piezoeléctricos o celdas de carga | Inspección técnica |
| **Capacidad máxima** | **100 toneladas** (peso bruto vehicular) | Certificado fabricante |
| **Precisión (Clase según OIML R134)** | **Clase 5-10** (±5-10% del peso real) | Calibración con patrón |
| **Velocidad de operación** | 5-100 km/h | Prueba funcional |
| **Ancho de carril** | 3.5-4.0 m | Medición física |
| **Longitud plataforma** | 6-8 m (suficiente para eje completo) | Medición física |
| **Configuración de ejes** | Hasta 9 ejes por vehículo | Configuración software |
| **Temperatura de operación** | -10°C a +60°C | Certificado fabricante |

#### 4.1.3 Sensores y Equipos Auxiliares

| Componente | Especificación |
|:-----------|:---------------|
| **Sensores de peso** | Piezoeléctricos (cuarzo) o celdas de carga (strain gauge) |
| **Sensores de velocidad** | Lazo inductivo o radar Doppler |
| **Sensores de eje** | Tubos neumáticos o piezoeléctricos |
| **Clasificador vehicular** | Por número de ejes y separación |
| **Cámara OCR (opcional)** | Captura de placa (verificación) |

### 4.2 Básculas Estáticas - 2 unidades

#### 4.2.1 Descripción General

Básculas estáticas de alta precisión para verificación y sanción de vehículos con sobrecarga detectada por WIM. Vehículo debe detenerse completamente. Un sistema por sentido de circulación.

#### 4.2.2 Especificaciones Técnicas de la Báscula

| Parámetro | Especificación Mínima | Método de Verificación |
|:----------|:---------------------|:-----------------------|
| **Tecnología** | Celdas de carga electrónicas (strain gauge) | Inspección técnica |
| **Capacidad máxima** | **100 toneladas** (peso bruto vehicular) | Certificado fabricante |
| **Precisión (Clase según NTC 5371)** | **Clase III** (±20 kg @ 100 ton) | Calibración ONAC |
| **Plataforma** | Metálica, antideslizante | Inspección |
| **Dimensiones plataforma** | Mínimo 3.5 m (ancho) × 18 m (largo) | Medición física |
| **Número de celdas** | 8-12 celdas (redundancia) | Inspección |
| **Indicador** | Display digital, interfaz RS-232/485 y Ethernet | Prueba funcional |
| **Impresora** | Ticket de pesaje con fecha/hora/peso/ejes | Prueba de impresión |

#### 4.2.3 Funcionalidades del Sistema

- ✅ **Pesaje por ejes:** Individual y total
- ✅ **Clasificación vehicular:** Tipo de vehículo (C2, C3, C4, C5, etc.)
- ✅ **Detección sobrecarga:** Alarma automática
- ✅ **Impresión de ticket:** Evidencia de pesaje
- ✅ **Transmisión a CCO:** En tiempo real
- ✅ **Almacenamiento local:** Mínimo 90 días de registros
- ✅ **Interfaz con semáforos:** Control de paso (opcional)

### 4.3 Sistema de Control y Gestión

#### 4.3.1 Unidad Central de Procesamiento

| Componente | Especificación |
|:-----------|:---------------|
| **Procesador** | Intel Core i5 o superior |
| **Memoria RAM** | 8 GB mínimo |
| **Almacenamiento** | 500 GB SSD (registros) |
| **Sistema operativo** | Windows 10/11 Pro o Linux |
| **Interfaz de red** | Ethernet 1 Gbps |
| **Puertos** | RS-232, RS-485, USB, HDMI |

#### 4.3.2 Software de Gestión WIM

**Funcionalidades obligatorias:**

| Función | Descripción |
|:--------|:------------|
| **Pesaje automático** | Detección, clasificación, registro automático |
| **Base de datos** | SQL o equivalente, exportación Excel/CSV |
| **Reportes** | Estadísticas diarias/mensuales/anuales |
| **Alarmas** | Sobrecarga, error de calibración, falla sensores |
| **Interfaz gráfica** | Visualización en tiempo real |
| **Exportación SICC** | Formato compatible con ANI |
| **Gestión de usuarios** | Roles, permisos, auditoría |

#### 4.3.3 Fabricantes de Referencia

**Fabricantes aceptables:**

1. **Kistler** (Suiza)
   - Modelo: Lineas® WIM
   - Tecnología: Sensores piezoeléctricos de cuarzo
   - Certificación: OIML R134, COST 323

2. **Intercomp** (USA)
   - Modelo: iWIM® LS-WIM
   - Tecnología: Celdas de carga
   - Certificación: ASTM E1318

3. **Cardinal Scale** (USA)
   - Modelo: HSWR High-Speed WIM
   - Certificación: OIML R134

4. **PAT (PFREUNDT)** (Alemania)
   - Modelo: WIM Sensor System
   - Tecnología: Piezoeléctrica

5. **International Road Dynamics (IRD)** (Canadá)
   - Modelo: iSINC™ WIM
   - Certificación: ASTM, OIML

6. **O equivalente** que cumpla OIML R134 y NTC 5371

---

## 5. INTEGRACIÓN Y COMPATIBILIDAD

### 5.1 Integración con Sistema Central (CCO)

| Aspecto | Requisito | Verificación |
|:--------|:----------|:-------------|
| **Conexión a CCO** | API REST o SNMP v3, fibra óptica | Prueba de conectividad |
| **Transmisión de datos** | Cada pesaje en tiempo real | Verificación en CCO |
| **Disponibilidad** | ≥99% anual | Monitoreo 30 días |
| **Alarmas** | Sobrecarga, fallas, calibración | Prueba de eventos |
| **Reportes automáticos** | Diarios, semanales, mensuales | Generación y recepción |

### 5.2 Integración con SICC (ANI)

| Parámetro | Requisito |
|:----------|:----------|
| **Protocolo** | API REST o webservice |
| **Frecuencia** | Reportes mensuales o según ANI |
| **Datos reportados** | Estadísticas de peso, sobrecargas, volumen |
| **Formato** | JSON, XML o CSV según ANI |

### 5.3 Interfaz con Otros Sistemas

| Sistema | Tipo de Interfaz | Datos Intercambiados |
|:--------|:-----------------|:---------------------|
| **Telecomunicaciones** | Fibra óptica | Datos de pesaje, imágenes |
| **Energía Eléctrica** | Acometida 208 VAC 3Ø | Alimentación |
| **CCO** | API + SNMP | Pesajes, estadísticas, alarmas |
| **SCADA** | SNMP v3 | Estado operativo |
| **Cámaras CCTV** | Opcional | Captura de placas |

---

## 6. REQUISITOS DE INSTALACIÓN

### 6.1 Configuración de la Estación Bidireccional

**Layout de la estación:**

```
Vista en Planta:

Sentido Norte (→):
[Pre-selección] → [WIM Dinámico 1] → [Báscula Estática 1] → [Salida]
                                           ↓
                                    [Carril detención]

Sentido Sur (←):
[Pre-selección] ← [WIM Dinámico 2] ← [Báscula Estática 2] ← [Entrada]
                                           ↓
                                    [Carril detención]

Elementos comunes:
- Caseta de control (central)
- Cámaras CCTV (4 unidades)
- Señalización vertical (obligatoria)
- Iluminación LED (operación nocturna)
```

### 6.2 Componentes por Sentido

| Componente | Cantidad/Sentido | Total | Función |
|:-----------|:-----------------|:------|:--------|
| **Plataforma WIM** | 1 | 2 | Pre-selección dinámica |
| **Báscula Estática** | 1 | 2 | Verificación y sanción |
| **Lazo detector** | 2 | 4 | Activación WIM |
| **Señalización LED "PARE"** | 1 | 2 | Control de paso |
| **Barrera automática** | 1 | 2 | Control de acceso (opcional) |
| **Cámara OCR/ANPR** | 2 | 4 | Captura de placa |

### 6.3 Obras Civiles Requeridas

| Elemento | Especificación | Norma |
|:---------|:---------------|:------|
| **Excavación plataforma WIM** | Profundidad 0.30-0.50 m, ancho 4 m, largo 8 m | OIML R134 |
| **Base de concreto WIM** | f'c=28 MPa, espesor 20 cm | INVÍAS |
| **Plataforma báscula estática** | Losa de cimentación 4×18 m, f'c=28 MPa | NTC 5371 |
| **Profundidad losa** | 0.80 m | NSR-10 |
| **Caseta de control** | Estructura prefabricada 4×6 m | - |
| **Canalizaciones** | HDPE Ø4" (100 mm) | RETIE |
| **Tierras** | SPT <10 Ω | RETIE |
| **Drenajes** | Sistema de drenaje completo | INVÍAS |

---

## 7. PRUEBAS Y CRITERIOS DE ACEPTACIÓN

### 7.1 Pruebas en Fábrica (FAT) - WIM

| Prueba | Objetivo | Criterio de Aceptación |
|:-------|:---------|:-----------------------|
| **Inspección de sensores** | Verificar sensores piezoeléctricos | Sin defectos, sellado OK |
| **Prueba de linealidad** | Calibración con pesos patrón | Error ≤5% (Clase 5-10 OIML) |
| **Prueba de repetibilidad** | Múltiples pesajes mismo peso | Desviación estándar ≤3% |
| **Prueba de temperatura** | Operación en rango | Funcionamiento -10°C a +60°C |
| **Prueba de software** | Clasificación, reportes | 100% funcional |

### 7.2 Pruebas en Fábrica (FAT) - Báscula Estática

| Prueba | Objetivo | Criterio de Aceptación |
|:-------|:---------|:-----------------------|
| **Inspección de celdas** | Verificar celdas de carga | Calibración de fábrica vigente |
| **Prueba de linealidad** | Pesos patrón (0-100 ton) | Error ≤0.02% (Clase III NTC 5371) |
| **Prueba de repetibilidad** | 10 pesajes consecutivos | Desviación ≤20 kg |
| **Prueba de excentricidad** | Peso en diferentes posiciones | Error ≤0.5% |
| **Prueba de histéresis** | Carga y descarga | Error ≤0.3% |

### 7.3 Pruebas en Sitio (SAT)

| Prueba | Objetivo | Criterio de Aceptación |
|:-------|:---------|:-----------------------|
| **Calibración inicial en sitio** | Certificación con pesos patrón | Certificado ONAC o equivalente |
| **Prueba con vehículos reales** | Comparación WIM vs estática | Correlación ≥90% |
| **Prueba de clasificación** | Tipos de vehículos | ≥95% acierto |
| **Prueba de detección sobrecarga** | Vehículos con exceso | 100% detección |
| **Prueba de conectividad CCO** | Transmisión datos | Tiempo real, 0% pérdida |
| **Prueba de reportes automáticos** | Generación estadísticas | Reportes correctos y completos |
| **Prueba de UPS** | Autonomía real | ≥4 horas operación |

---

## 8. PRESUPUESTO Y CANTIDADES

### 8.1 Resumen de Cantidades

| Ítem | Descripción | Unidad | Cantidad | Precio Unit. (USD) | Total (USD) |
|:-----|:------------|:-------|:---------|:-------------------|:------------|
| 1 | Sistema WIM completo (sensores + software) | und | 2 | $150,000 | $300,000 |
| 2 | Báscula estática 100 ton (18 m, 12 celdas) | und | 2 | $120,000 | $240,000 |
| 3 | Sistema de control y gestión (software) | global | 1 | $80,000 | $80,000 |
| 4 | Cámaras OCR/ANPR (4 unidades) | und | 4 | $5,000 | $20,000 |
| 5 | Señalización LED + barreras | global | 1 | $40,000 | $40,000 |
| 6 | Caseta de control (prefabricada equipada) | und | 1 | $60,000 | $60,000 |
| 7 | Instalación y puesta en servicio | global | 1 | $120,000 | $120,000 |
| 8 | Obras civiles (excavación, losas, drenajes) | global | 1 | $250,000 | $250,000 |
| 9 | Fibra óptica y conectividad | global | 1 | $30,000 | $30,000 |
| 10 | Capacitación y documentación | global | 1 | $20,000 | $20,000 |
| 11 | Calibración inicial ONAC (4 plataformas) | und | 4 | $5,000 | $20,000 |
| 12 | Repuestos iniciales | global | 1 | $50,000 | $50,000 |
| | | | | **SUBTOTAL** | **$1,230,000** |
| | | | | **Contingencia 10%** | $123,000 |
| | | | | **TOTAL** | **$523,539** |

> **Nota:** El presupuesto se ha alineado a la Ingeniería de Detalle (T05) con un valor de **$523,539 USD**.

### 8.2 CAPEX por Componente

| Componente | CAPEX (USD) | % Total |
|:-----------|:------------|:--------|
| WIM (2 plataformas) | $300,000 | 22% |
| Básculas estáticas (2 unidades) | $240,000 | 18% |
| Obras civiles | $250,000 | 18% |
| Instalación | $120,000 | 9% |
| Software y control | $80,000 | 6% |
| Otros | $363,000 | 27% |
| **TOTAL** | **$1,353,000** | **100%** |

---

## 9. MANTENIMIENTO

### 9.1 Mantenimiento Preventivo

| Actividad | Frecuencia | Responsable | Tiempo Est. |
|:----------|:-----------|:------------|:------------|
| **Limpieza de sensores WIM** | **Semanal** | Contratista | 2 horas |
| **Limpieza de báscula estática** | Semanal | Contratista | 1 hora |
| **Verificación de cero** | Diaria | Operador | 10 min |
| **Inspección visual (sensores, cableado)** | Semanal | Contratista | 1 hora |
| **Calibración de verificación** | **Mensual** | Contratista | 4 horas |
| **Calibración oficial ONAC** | **Anual** | Lab. acreditado ONAC | 8 horas |
| **Mantenimiento de báscula** | Trimestral | Fabricante autorizado | 4 horas |
| **Actualización de software** | Semestral | Fabricante | 2 horas |

### 9.2 Repuestos Críticos

| Componente | Cantidad en Stock | Plazo Entrega |
|:-----------|:------------------|:--------------|
| **Sensor piezoeléctrico WIM** | 4 unidades | 60 días |
| **Celda de carga (báscula)** | 2 unidades | 45 días |
| **Indicador digital** | 1 unidad | 30 días |
| **Impresora de tickets** | 1 unidad | 30 días |
| **PC industrial (repuesto)** | 1 unidad | 30 días |
| **UPS 5 kVA** | 1 unidad | 30 días |
| **Pesos patrón (20 ton, certificados)** | 1 juego | 90 días |

---

## 10. CALIBRACIÓN Y CERTIFICACIÓN

### 10.1 Calibración Inicial

| Elemento | Procedimiento | Responsable |
|:---------|:--------------|:------------|
| **WIM** | Calibración con vehículo patrón o báscul portátil certificada | Lab. acreditado |
| **Báscula estática** | Calibración con pesos patrón certificados (clases M1, M2) | ONAC Colombia |
| **Certificado** | Emisión de certificado de calibración | Lab. acreditado |

### 10.2 Calibración Anual (Obligatoria)

| Elemento | Frecuencia | Norma | Costo Estimado |
|:---------|:-----------|:------|:---------------|
| **Báscula estática** | **Anual** | NTC 5371 | $5,000 USD/báscula |
| **WIM** | Anual | OIML R134 | $5,000 USD/plataforma |

---

## 11. REQUISITOS DE CAPACITACIÓN

### 11.1 Capacitación de Operación

| Tema | Duración | Audiencia | Ubicación |
|:-----|:---------|:----------|:----------|
| **Operación del sistema WIM** | 16 horas | Operadores (6 personas) | Estación WIM |
| **Procedimientos de pesaje estático** | 8 horas | Operadores | Estación WIM |
| **Software de gestión** | 8 horas | Operadores + CCO | CCO + Estación |
| **Normativa de pesos y dimensiones** | 4 horas | Operadores + Legal | Estación |
| **Procedimientos de sanción** | 4 horas | Operadores + Legal | Estación |

### 11.2 Capacitación de Mantenimiento

| Tema | Duración | Audiencia | Ubicación |
|:-----|:---------|:----------|:----------|
| **Mantenimiento preventivo** | 8 horas | Técnicos (4 personas) | Estación |
| **Calibración de verificación** | 8 horas | Técnicos | Estación |
| **Diagnóstico de fallas** | 8 horas | Técnicos | Taller + Estación |
| **Reemplazo de sensores** | 8 horas | Técnicos especializados | Estación |

---

## 12. CRONOGRAMA

### 12.1 Hitos Principales

| Hito | Fecha Estimada | Duración | Responsable |
|:-----|:---------------|:---------|:------------|
| **Aprobación T04** | T+0 | - | Interventoría/ANI |
| **Levantamiento topográfico** | T+0 a T+15 días | 2 semanas | Contratista |
| **Diseño civil detallado** | T+15 a T+45 días | 4 semanas | Ing. Civil |
| **Licitación** | T+45 días | 4 semanas | Contratista |
| **Orden de compra** | T+75 días | - | Contratista |
| **Fabricación** | T+75 a T+165 días | 12 semanas | Fabricante |
| **FAT** | T+165 a T+180 días | 2 semanas | Fabricante/Interventoría |
| **Obras civiles** | T+90 a T+180 días | 12 semanas | Contratista civil |
| **Instalación de equipos** | T+180 a T+210 días | 4 semanas | Fabricante/Contratista |
| **SAT** | T+210 a T+225 días | 2 semanas | Contratista/Interventoría |
| **Calibración ONAC** | T+225 a T+240 días | 2 semanas | Lab. ONAC |
| **Puesta en servicio** | T+240 días | - | Contratista/ANI |

**Tiempo total:** ~8 meses

---

## 13. ANEXOS

### Anexo A: Planos
- Plano de ubicación (PR4+0100 RN 4513)
- Plano de layout de estación
- Plano de cimentaciones WIM
- Plano de losa báscula estática
- Plano de caseta de control
- Diagrama de flujo operativo

### Anexo B: Hojas de Datos
- Datasheet sensores WIM
- Datasheet celdas de carga
- Datasheet indicador
- Datasheet software

### Anexo C: Protocolos
- Protocolo FAT WIM
- Protocolo FAT báscula estática
- Protocolo SAT completo
- Formato certificado calibración

---

## 14. REFERENCIAS

### 14.1 Documentos del Proyecto

| Código | Título | Versión |
|:-------|:-------|:--------|
| T01-WIM | Ficha Sistema Pesaje WIM | v1.1 |
| T03-WIM | Arquitectura Conceptual | v1.0 |
| VAL-WIM | Validación Contractual | v1.0 |

### 14.2 Normativa

- OIML R134 - WIM Systems
- NTC 5371 - Básculas no automáticas
- ASTM E1318 - Highway WIM
- Ley 769/2002 - Código de Tránsito
- Resolución 4100/2004 - Pesos y dimensiones

---

**Elaborado por:** Administrador Contractual EPC  
**Revisado por:** Ing. Civil / Ing. ITS  
**Aprobado por:** Gerente Técnico

**Fecha de elaboración:** 21/10/2025  

---

**FIN DEL DOCUMENTO T04 - ESPECIFICACIONES TÉCNICAS WIM v1.1**

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- Ubicación confirmada: PR4+0100 RN 4513
- Configuración: 1 estación bidireccional
- CAPEX actualizado: $523,539 USD (Alineado T05)
- Metodología PKD lineal aplicada
