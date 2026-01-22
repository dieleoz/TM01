# T04: ESPECIFICACIÓN TÉCNICA - PANELES DE MENSAJE VARIABLE (PMV)
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 18/10/2025  
**Equipo:** Panel de Mensaje Variable Full-Color para Autopista  
**Responsable:** Ing. de Sistemas ITS  
**Versión:** 1.0  

---

## 1. INFORMACIÓN GENERAL

| Campo | Valor |
|:------|:------|
| **Equipo** | Panel de Mensaje Variable (PMV) Full-Color PASA-VÍAS |
| **Cantidad contractual** | **28 unidades FIJAS** (AT1 - Alcance del Proyecto + diseño detallado) |
| **Tipo de instalación** | FIJOS tipo PASA-VÍAS (pórtico sobre calzada) |
| **Distribución** | Máximo 20 km separación por sentido, bermas externas alternadas |
| **Ubicación** | Peajes, intersecciones críticas, distribuidos en corredor 259.6 km |
| **Sistema asociado** | ITS (Subsistema de Información al Usuario) |
| **Criticidad** | 🔴 Alta - Obligatorio contractual |
| **Documentos de Referencia** | AT1 Cap. 3.8, AT2 Sección 3.3.5.1, Resolución 546/2018 |

---

## 2. REQUISITOS CONTRACTUALES

### 2.1 Obligaciones Específicas (AT1/AT2)

**Cantidad y distribución (AT1 Capítulo 3.8 + diseño detallado):**
- **28 paneles LED fijos** (25 base + 3 adicionales por peajes)
- Separación máxima: **20 km por sentido**
- Instalación: **Alternada en bermas externas** (lado A/lado B de la vía)
- Tipo: **PASA-VÍAS** (pórtico sobre calzada)
- **2 PMV por peaje:** 1 antes + 1 después (4 PMV total en peajes)

**Requisitos operacionales (AT2 Secciones 3.3.5.1 y 3.3.10.1):**
- Mínimo **2 PMV por cada área de peaje bidireccional**
- Tipo: **Alfanuméricos y gráficos** (matriz completa)
- Conexión: **Permanente con CCO** vía fibra óptica + SCADA
- Coordinación: **Policía de Carreteras** (prioridad a mensajes de seguridad vial)

### 2.2 Usos Contractuales (AT2)

Los PMV deben permitir desplegar información sobre:

1. ✅ Manejo de incidentes y desvío de rutas
2. ✅ Condiciones ambientales adversas (lluvia, neblina, tempestad)
3. ✅ Información de precios de peaje
4. ✅ Tiempos de viaje estimados
5. ✅ Advertencias especiales (derrumbes, bloqueo de carriles)
6. ✅ Regulaciones de tránsito especiales
7. ✅ Control de velocidad
8. ✅ Uso de carriles y rampas de acceso/salida
9. ✅ Situaciones de control policial
10. ✅ Recomendaciones de seguridad vial ("use cinturón", "encienda luces")

---

## 3. ESPECIFICACIONES FUNCIONALES

### 3.1 Funciones Principales

- **Desplegar mensajes** de texto, gráficos y animaciones para informar condiciones de la vía
- **Control remoto** desde el CCO con tiempo de actualización < 5 segundos
- **Operación continua** 24/7/365 con disponibilidad mínima del 99%
- **Biblioteca de mensajes** predefinidos (mínimo 100 mensajes)
- **Priorización automática** de mensajes críticos (accidentes, cierres totales)
- **Ajuste automático** de brillo según condiciones de luz ambiental
- **Diagnóstico remoto** de estado (píxeles, fuentes de poder, temperatura)

---

## 4. ESPECIFICACIONES TÉCNICAS

### 4.1 Panel y Visualización

| Parámetro | Especificación Mínima |
|:----------|:----------------------|
| **Tecnología** | LED Full-Color (RGB) |
| **Resolución (Matriz)** | Mínimo 48 x 120 píxeles |
| **Pixel Pitch (Distancia entre píxeles)** | ≤ 20 mm |
| **Luminancia** | ≥ 9,000 cd/m² (ajustable automáticamente) |
| **Ángulo de Visibilidad Horizontal** | ≥ 30° |
| **Distancia de Legibilidad** | ≥ 300 metros |
| **Vida Útil de los LEDs** | ≥ 100,000 horas |
| **Contraste** | Mínimo 10:1 en condiciones diurnas |
| **Capacidad de Caracteres** | Mínimo 3 líneas de 20 caracteres por línea |

### 4.2 Controlador y Comunicaciones

| Parámetro | Especificación |
|:----------|:----------------|
| **Protocolo de Control** | NTCIP (National Transportation Communications for ITS Protocol) |
| **Interfaz de Comunicación Primaria** | Ethernet (Fibra Óptica) |
| **Interfaz de Comunicación Secundaria** | Celular 4G/LTE (como respaldo) |
| **Memoria Interna** | Capacidad para almacenar al menos 100 mensajes predefinidos |
| **Diagnóstico Remoto** | Monitoreo de estado de LEDs, fuentes de poder y temperatura |

### 4.3 Estructura y Protección (PASA-VÍAS)

| Parámetro | Especificación Mínima |
|:----------|:----------------------|
| **Material del Gabinete** | Aluminio con pintura electrostática |
| **Grado de Protección IP** | **IP66** (Protección total contra polvo y chorros de agua potentes) |
| **Grado de Protección IK** | **IK08** |
| **Resistencia al Viento** | Soportar vientos de hasta 150 km/h |
| **Vida Útil Estructura** | ≥ 20 años (con tratamiento anticorrosivo) |
| **Temperatura de Operación** | -20°C a +70°C |
| **Ventilación** | Sistema de ventilación forzada con control termostático |
| **Acceso para Mantenimiento** | Acceso frontal o trasero con cerraduras de seguridad |

### 4.4 Energía

| Parámetro | Especificación |
|:----------|:----------------|
| **Alimentación** | 120/240 VAC, 60 Hz |
| **Consumo Máximo** | < 3,000 W (a máxima intensidad) |
| **Protección Eléctrica** | Supresores de sobretensión para alimentación y datos |

### 4.5 Diseño Gráfico (Manual de Señalización Vial Res. 1885/2015)

| Parámetro | Especificación Contractual |
|:----------|:---------------------------|
| **Altura de letra** | ≥ 45 cm (velocidades ≥ 70 km/h), ≥ 30 cm (velocidades < 70 km/h) |
| **Espacio entre caracteres** | 25-40% de la altura de las letras |
| **Espacio entre palabras** | 75-100% de la altura de las letras |
| **Espacio entre líneas** | 50-75% de la altura de las letras |
| **Proporción altura/ancho** | 0.7 a 1.0 |
| **Distancia mínima de lectura** | ≥ 300 m (velocidad 100 km/h), ≥ 360 m (velocidad 120 km/h) |
| **Tipo de letra** | Mayúsculas, sin serif, alta legibilidad |

### 4.6 Estructura de Soporte PASA-VÍAS

| Parámetro | Especificación |
|:----------|:----------------|
| **Tipo de estructura** | Pórtico sobre calzada (PASA-VÍAS) |
| **Material estructura** | Acero estructural galvanizado en caliente |
| **Altura libre** | Mínimo 5.5 metros sobre nivel de calzada |
| **Ancho de pórtico** | Suficiente para cubrir todos los carriles (8-12 metros típico) |
| **Fundaciones** | Concreto reforzado, diseñadas para carga de viento |
| **Cálculo estructural** | NSR-10, cargas vivas y viento 150 km/h |
| **Protección anticorrosiva** | Galvanizado + pintura epóxica |
| **Vida útil estructura** | ≥ 25 años |

---

## 5. NORMATIVAS Y ESTÁNDARES

| Norma | Aplicación | Cumplimiento |
|:------|:------------|:--------------|
| **AT1 Capítulo 3.8** | Cantidad, distribución, separación de PMV | 🔴 Obligatorio |
| **AT2 Secciones 3.3.5.1, 3.3.10.1** | Operación, tipo, coordinación | 🔴 Obligatorio |
| **Resolución 546/2018 (MinTransporte)** | Especificaciones técnicas PMV Colombia | 🔴 Obligatorio |
| **Resolución 718/2018 (MinTransporte)** | Requisitos adicionales PMV | 🔴 Obligatorio |
| **NTC 6465:2018** | Norma técnica colombiana PMV | 🔴 Obligatorio |
| **Resolución 1885/2015** | Manual de Señalización Vial | 🔴 Obligatorio |
| **NTCIP 1203** | Protocolo de comunicación PMV | 🔴 Obligatorio |
| **NEMA TS 4** | Estándares para equipos ITS | 🔴 Obligatorio |
| **ISO TC-204** | Sistemas Inteligentes de Transporte | Recomendado |
| **ISO 14823** | Señalización gráfica variable | Recomendado |
| **NSR-10** | Cálculo estructural pórticos | 🔴 Obligatorio |
| **RETIE** | Instalación eléctrica | 🔴 Obligatorio |

---

## 6. DISTRIBUCIÓN EN EL CORREDOR (28 PMV)

### 6.1 Criterios de Ubicación

**Contractual (AT1 + diseño detallado):**
- Cantidad: **28 paneles LED fijos**
- Separación máxima: **20 km por sentido**
- Instalación: **Alternada en bermas externas** (lado A/lado B)
- Mínimo: **2 PMV por peaje bidireccional** (AT2)
- **Lógica:** 25 base + 3 adicionales por peajes (antes/después)

**Técnico (Manual Señalización Vial Res. 1885/2015):**
- Visibilidad: Mínimo 300-360 metros previos según velocidad
- Sin obstrucciones visuales
- Ángulo de visión perpendicular
- Iluminación complementaria nocturna

### 6.2 Distribución Propuesta (28 PMV FIJOS)

| PMV # | PK Aproximado | Lado | Separación | Función Principal |
|:------|:--------------|:-----|:-----------|:------------------|
| 1 | PK 2+790 | A | Inicio | Inicio proyecto, bienvenida |
| 2 | PK 9.2 | B | 6.4 km | **Peaje Zambito** (antes) |
| 3 | PK 15 | A | 5.8 km | **Peaje Zambito** (después) |
| 4 | PK 25 | B | 10 km | Cobertura general |
| 5 | PK 35 | A | 10 km | Cobertura general |
| 6 | PK 45 | B | 10 km | Cobertura general |
| 7 | PK 55 | A | 10 km | Cobertura general |
| 8 | PK 65 | B | 10 km | Cobertura general |
| 9 | PK 75 | A | 10 km | **Peaje Aguas Negras** (antes) |
| 10 | PK 80 | B | 5 km | **Peaje Aguas Negras** (después) |
| 11 | PK 85 | A | 5 km | Cobertura general |
| 12 | PK 95 | B | 10 km | Cobertura general |
| 13 | PK 105 | A | 10 km | Cobertura general |
| 14 | PK 115 | B | 10 km | Variante Campo 23 |
| 15 | PK 125 | A | 10 km | Aproximación CCO |
| 16 | PK 130 | B | 5 km | **CCO** |
| 17 | PK 135+633 | A | 5.6 km | Salida CCO |
| 18 | PK 145 | B | 9.4 km | Cobertura general |
| 19 | PK 155 | A | 10 km | Cobertura general |
| 20 | PK 165 | B | 10 km | Cobertura general |
| 21 | PK 175 | A | 10 km | Cobertura general |
| 22 | PK 185 | B | 10 km | Cobertura general |
| 23 | PK 195 | A | 10 km | Cobertura general |
| 24 | PK 205 | B | 10 km | Cobertura general |
| 25 | PK 215 | A | 10 km | Aproximación Barrancabermeja |
| 26 | PK 225 | B | 10 km | Cobertura general |
| 27 | PK 235 | A | 10 km | Acceso Barrancabermeja |
| 28 | PK 245 | B | 10 km | Fin proyecto |

**Separación promedio:** 9.3 km ✅  
**Separación máxima:** 20 km ✅  
**Cumplimiento contractual:** ✅ Validado  
**PMV en peajes:** 4 (2 por peaje) ✅  
**Total:** 28 PMV ✅

---

## 7. PRUEBAS DE ACEPTACIÓN (SAT)

- [ ] Verificación de legibilidad a 300 metros en condiciones diurnas y nocturnas.
- [ ] Prueba de actualización de mensaje desde el CCO (< 5 segundos).
- [ ] Prueba de todos los píxeles (no se aceptan píxeles muertos).
- [ ] Verificación del ajuste automático de brillo según la luz ambiental.
- [ ] Prueba de conmutación a comunicación de respaldo (4G) al desconectar la fibra.
- [ ] Prueba de estanqueidad (chorro de agua potente para verificar IP66).
- [ ] Verificación de reportes de diagnóstico en el CCO.

---

## 8. INTEGRACIÓN CON SISTEMAS

### 8.1 Conexión con CCO

| Aspecto | Especificación |
|:--------|:----------------|
| **Medio primario** | Fibra óptica monomodo 24 hilos (red troncal del proyecto) |
| **Protocolo** | NTCIP 1203 sobre TCP/IP |
| **Ancho de banda mínimo** | 10 Mbps por PMV |
| **Latencia máxima** | < 100 ms |
| **Medio de respaldo** | 4G/LTE con SIM local |
| **Conmutación automática** | < 30 segundos al detectar falla fibra |

### 8.2 Integración con SCADA ITS

| Función | Descripción |
|:--------|:------------|
| **Monitoreo en tiempo real** | Estado de cada PMV, píxeles, temperatura, consumo |
| **Control de mensajes** | Envío, programación, priorización desde CCO |
| **Alarmas** | Notificación automática de fallas (píxeles, comunicación, energía) |
| **Registro histórico** | Log de mensajes desplegados (fecha, hora, operador) |
| **Dashboard** | Visualización de estado de 25 PMV en mapa |

---

## 9. ALCANCE DEL SUMINISTRO

### 9.1 Incluye (por cada PMV)

- ✅ Panel LED full-color matriz completa
- ✅ Controlador con protocolo NTCIP 1203
- ✅ Gabinete IP66/IK08 con ventilación forzada
- ✅ **Estructura PASA-VÍAS completa** (pórtico acero galvanizado)
- ✅ **Fundaciones y cimentación** (diseño estructural NSR-10)
- ✅ Fuente de poder con protección eléctrica
- ✅ Módems 4G/LTE para respaldo (con SIM)
- ✅ Sensor de luz ambiental (control automático brillo)
- ✅ Software de gestión local (almacenamiento mensajes)
- ✅ Instalación, montaje, pruebas en sitio
- ✅ Integración con SCADA del CCO
- ✅ Capacitación de operadores (2 jornadas)
- ✅ Manuales de operación y mantenimiento (español)

### 9.2 NO Incluye (responsabilidad de otros sistemas)

- ❌ Acometida eléctrica (Sistema de Energía Eléctrica)
- ❌ Red de fibra óptica (Sistema de Telecomunicaciones)
- ❌ Transformador y UPS (Sistema de Energía)
- ❌ Software SCADA central (Sistema CCO)

---

## 10. ESTIMACIÓN DE COSTOS

### 10.1 Desglose por PMV

| Ítem | Costo Unitario (USD) |
|:-----|:---------------------|
| Panel LED full-color (matriz completa) | $28,000 |
| Controlador NTCIP + comunicaciones | $5,000 |
| Estructura PASA-VÍAS (acero galvanizado) | $8,000 |
| Fundaciones y cimentación | $2,500 |
| Instalación eléctrica y datos | $1,000 |
| Instalación, montaje, pruebas | $500 |
| **TOTAL por PMV** | **$45,000** |

### 10.2 CAPEX Total PMV

| Concepto | Cálculo | Costo (USD) |
|:---------|:--------|:------------|
| 28 PMV completos | 28 × $45,000 | $1,260,000 |
| Integración con SCADA CCO | 1 sistema | $75,000 |
| Capacitación y puesta en marcha | Global | $50,000 |
| Contingencias (5%) | | $69,250 |
| **TOTAL CAPEX PMV** | | **$1,454,250 USD** |

**Conversión COP (TRM 4,000):** COP 5,817,000,000 (~5.82 mil millones)

---

## 11. GARANTÍA Y SOPORTE

| Aspecto | Requisito Mínimo |
|:--------|:-------------------|
| **Garantía del fabricante** | 5 años en todos los componentes (LEDs, controlador, estructura) |
| **Garantía de luminancia** | Mínimo 80% de luminancia inicial tras 5 años de operación |
| **Soporte técnico** | Local en Colombia, 24/7, tiempo de respuesta < 4 horas |
| **Disponibilidad de repuestos** | Garantizada por 10 años en Colombia |
| **Personal técnico certificado** | Mínimo 2 técnicos en Colombia capacitados por fabricante |
| **Actualizaciones de software** | Gratuitas durante período de garantía |

---

## 12. PROVEEDORES DE REFERENCIA

| Proveedor | País | Observaciones |
|:----------|:-----|:--------------|
| **Daktronics** | EE. UU. | Líder global, experiencia en Colombia (Ruta del Sol) |
| **SWARCO** | Austria | Cumplimiento NTCIP, proyectos APP en Europa |
| **Messagemaker** | Reino Unido | Tecnología LED avanzada |
| **Telegra** | Croacia | Competitivo en precio, soporte EU |
| **AddVision** | Colombia | Fabricante local, mantenimiento más rápido |

**Nota:** El proveedor debe demostrar:
- ✅ Experiencia en proyectos APP/concesiones viales (mín. 3 proyectos similares)
- ✅ Representación técnica en Colombia
- ✅ Certificación NTCIP 1203
- ✅ Cumplimiento NTC 6465:2018

---

## 13. CRITERIOS DE EVALUACIÓN TÉCNICA

### 13.1 Ponderación Sugerida

| Criterio | Peso | Descripción |
|:---------|:-----|:------------|
| **Cumplimiento normativo** | 30% | AT1/AT2, NTC 6465, Res. 546/2018 |
| **Experiencia en Colombia** | 25% | Proyectos similares, soporte local |
| **Especificaciones técnicas** | 25% | Luminancia, vida útil, protección |
| **Precio** | 15% | CAPEX total ofertado |
| **Garantía y soporte** | 5% | Años de garantía, disponibilidad repuestos |

### 13.2 Requisitos Mínimos (Pass/Fail)

- ✅ Luminancia ≥ 9,000 cd/m² (medida según ASTM E2113)
- ✅ Protección IP66 certificada
- ✅ Vida útil LEDs ≥ 100,000 horas (certificado fabricante)
- ✅ Protocolo NTCIP 1203 (prueba de interoperabilidad)
- ✅ Disponibilidad ≥ 99% (garantía contractual)

---

## 14. CRONOGRAMA DE IMPLEMENTACIÓN

| Fase | Actividad | Duración | Responsable |
|:-----|:----------|:---------|:------------|
| **Fase 1** | Diseño de ubicaciones (planos) | 1 mes | Ing. ITS |
| **Fase 2** | Fabricación de 25 PMV | 3 meses | Proveedor |
| **Fase 3** | Construcción fundaciones | 6 meses | Contratista civil |
| **Fase 4** | Montaje estructuras PASA-VÍAS | 4 meses | Contratista estructural |
| **Fase 5** | Instalación paneles + conexiones | 3 meses | Proveedor PMV |
| **Fase 6** | Integración con CCO + pruebas | 2 meses | Ing. ITS + Proveedor |
| **Fase 7** | Puesta en operación | 1 mes | Todos |

**Duración total:** 20 meses (con overlapping de fases)

**Hito crítico:** Integración de 25 PMV con SCADA antes de Acta de Terminación de UF

---

## 15. CONTROL DE VERSIONES

| Versión | Fecha | Descripción |
|:--------|:------|:------------|
| v1.0 | 18/10/2025 | Especificación técnica inicial (20-30 unidades estimadas) |
| **v1.2** | **21/10/2025** | **Corrección final:** 28 PMV fijos (25 base + 3 adicionales por peajes). Distribución completa, costos actualizados. CAPEX $1.45M |

---

**Versión:** 1.2 ✅ **VALIDADO CON DISEÑO DETALLADO**  
**Estado:** ✅ Especificación Completa para Licitación  
**Fecha:** 21/10/2025  
**Responsable:** Ing. de Sistemas ITS  
**Próximo documento:** T05 - Costos Detallados PMV (APU)  

---

**Fin del documento - T04 Especificación Técnica PMV**  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*

