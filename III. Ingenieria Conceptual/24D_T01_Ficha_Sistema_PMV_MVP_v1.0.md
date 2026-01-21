# T01: FICHA DE SISTEMA - PMV (PANELES DE MENSAJE VARIABLE)
## Proyecto APP Puerto Salgar - Barrancabermeja
## MVP - Metodología Punto 42

**Fecha:** 21 de Enero 2026  
**Sistema:** PMV - Paneles de Mensaje Variable (Dynamic Message Signs - DMS)  
**Responsable:** Administrador Contractual EPC / Ingeniero de Sistemas ITS  
**Versión:** 1.5 MVP (Alineado Normativa 2024)  
**Estado:** ✅ Validado y Reconciliado

---

## 1. IDENTIFICACIÓN DEL SISTEMA

| Campo | Valor |
|:------|:------|
| **Nombre del sistema** | PMV - Paneles de Mensaje Variable |
| **Categoría** | ITS - Sistemas Inteligentes de Transporte / Información Variable al Usuario |
| **Prioridad** | 🔴 Alta |
| **Fase contractual** | Construcción y O&M |
| **AT relacionados** | AT1 (Cap. 3.8), AT2 (Sección 3.3.4.8), AT3 (Cap. IV), AT4 (Indicadores) |

---

## 2. DESCRIPCIÓN GENERAL

### 2.1 Propósito del Sistema

El Sistema de Paneles de Mensaje Variable (PMV) tiene como objetivo **proporcionar información dinámica y actualizada** a los usuarios de la vía sobre condiciones de tráfico, obras, eventos especiales, condiciones climáticas y alertas de seguridad vial, a lo largo del corredor vial Puerto Salgar - Barrancabermeja (259.6 km principales + 33.4 km adicionales), permitiendo:

- **Información en tiempo real** sobre condiciones de tráfico y obras
- **Alertas de seguridad vial** (accidentes, desvíos, condiciones adversas)
- **Información de peajes** (tarifas, métodos de pago, tiempos de espera)
- **Coordinación con Policía de Carreteras** para mensajes prioritarios
- **Gestión de incidentes** mediante desvíos y recomendaciones
- **Integración con sistemas ITS** para activación automática de mensajes

### 2.2 Alcance del Sistema

**Cobertura geográfica:**
- **Longitud Principal:** 259.6 km (RN 4510 + RN 4511)
- **Longitud Total:** ~293 km (incluyendo RN 4513 conexión CCO)
- **Rutas:** RN 4510 (Honda-Río Ermitaño), RN 4511 (Río Ermitaño-La Lizama), RN 4513 (Conexión CCO)
- **Ubicaciones:** Estaciones de peaje (antes/después), intersecciones críticas, zonas de obras, puntos estratégicos

**Integración con:**
- **CCO (Centro de Control Operacional):** Ubicado en La Lizama PK 4+300 (RN 4513) - Control remoto y supervisión
- **SCADA:** Supervisión y control operacional
- **Sistema ITS:** Integración con CCTV, DAI, estaciones meteorológicas
- **Telecomunicaciones:** Fibra óptica como backbone (283 km anillo redundante)
- **Sistemas de Peajes:** Coordinación para información de tarifas y tiempos

---

## 3. REQUISITOS CONTRACTUALES

### 3.1 Obligaciones del Contrato

**Según AT2, Sección 3.3.4.8 - Sistemas de Información Variable:**

El Concesionario deberá:

1. **Instalar paneles de mensaje variable** en puntos estratégicos del corredor, especialmente:
   - Antes y después de cada estación de peaje
   - Intersecciones críticas
   - Zonas de obras
   - Puntos de control de tráfico

2. **Integrar al CCO** para control centralizado y transmisión de mensajes en tiempo real

3. **Garantizar disponibilidad** de equipos: **≥99% anual mínimo** (AT4)

4. **Cumplir protocolo NTCIP 1203 / 1204** (obligatorio según AT3 para interoperabilidad de gráficos y meteorología)

5. **Distribución:** Separación máxima de **20 km por sentido** (AT1)

6. **Cumplir especificaciones técnicas:**
   - Tipo: LED Full Matrix (RGB) o alfanuméricos y gráficos
   - Resolución: Mínimo 32×16 píxeles
   - Brillo: ≥7,000 cd/m²
   - Ángulo de visión: ≥120° horizontal
   - Distancia de lectura: ≥300 metros
   - Protocolo: NTCIP 1202

### 3.2 Requisitos de Apéndices Técnicos

**AT1, Capítulo 3.8:**
- Separación máxima: 20 km por sentido
- Instalación: Alternada en bermas externas (lado A/lado B)
- Tipo: PASA-VÍAS (pórtico sobre calzada) o poste unidireccional
- **Peajes Bidireccionales:** Mínimo 2 PMV por área (1 antes + 1 después)
- **Peajes Unidireccionales:** Mínimo 1 PMV por área
- **Separación Máxima:** 20 km por sentido (AT1)

**AT2, Sección 3.3.4.8:**
- Información variable sobre: condiciones de tráfico, obras, eventos especiales
- Integración con CCO
- Transmisión en tiempo real
- Coordinación con Policía de Carreteras (prioridad a mensajes de seguridad vial)

**AT3, Capítulo IV:**
- Protocolo NTCIP 1203/1204 (obligatorio para soporte gráfico y meteorológico)
- Interoperabilidad con sistema ITS

**AT4 (Indicadores):**
- Disponibilidad: ≥99% anual

---

## 4. COMPONENTES PRINCIPALES

| Componente | Cantidad | Ubicación | Función |
|:-----------|:---------|:----------|:--------|
| **Paneles PMV Fijos (Pórtico)** | **14 unidades** | Peajes (2 por área) + Estratégicos | Información bidireccional / Full Matrix RGB |
| **Paneles PMV Fijos (Poste)** | **14 unidades** | Intersecciones / Desvíos | Información unidireccional / Alfanumérico+Gráfico |
| **TOTAL PMV** | **28 unidades** | Cobertura Estricta (Blindaje Contractual) | 20 km por sentido (AT1) |
| **Controladores PMV** | 14 unidades | Gabinete en cada panel | Gestión de mensajes y comunicación |
| **Estructuras soporte** | 14 unidades | Pórticos y postes | Soporte físico de paneles |
| **Conexión a red FO** | 14 puntos | Integración con red de telecomunicaciones | Comunicación con CCO |

**Distribución por tipo de ubicación:**
- **Estaciones de Peaje:** 4 PMV (2 por peaje: antes + después)
- **Intersecciones Críticas:** 4 PMV
- **Zonas de Obras / Estratégicos:** 4 PMV
- **Zonas de Accidentalidad / Control:** 2 PMV

---

## 5. INTERFACES CON OTROS SISTEMAS

| Sistema Relacionado | Tipo de Interface | Protocolo/Medio | Datos Intercambiados |
|:--------------------|:------------------|:----------------|:---------------------|
| **CCO (Centro de Control)** | Red IP / Fibra Óptica | Ethernet / NTCIP 1202 | Control remoto, envío de mensajes, estado operativo |
| **Sistema de Telecomunicaciones** | Red FO / L2/L3 | Ethernet | Tráfico de datos y control |
| **SCADA** | Red IP | SNMP / Modbus TCP | Supervisión y control operacional |
| **Sistema ITS (DAI)** | Lógica (vía CCO) | API REST | Activación automática de mensajes por incidentes |
| **Estaciones Meteorológicas** | Lógica (vía CCO) | API REST | Activación automática de mensajes por condiciones climáticas |
| **Sistema de Peajes** | Lógica (vía CCO) | Base de Datos / API | Información de tarifas, tiempos de espera |
| **Sistema de Energía Eléctrica** | Alimentación | AC 120V/60Hz | Suministro de energía |
| **Policía de Carreteras** | Lógica (vía CCO) | Red IP | Mensajes prioritarios de seguridad vial |

**Flujo de comunicación:**
```
CCO → Sistema de Gestión PMV → NTCIP 1202 → Controlador PMV → Panel LED
         (Control remoto)      (Protocolo)    (Procesamiento)   (Visualización)
```

---

## 6. ESTIMACIÓN PRELIMINAR

### 6.1 CAPEX (Inversión Inicial)

| Ítem | Cantidad | Costo Unitario (USD) | Costo Total (USD) |
|:-----|:---------|:---------------------|:------------------|
| **Panel PMV LED Full Matrix (RGB)** | 14 | $35,000 | $490,000 |
| **Estructuras y Obras Civiles** | 14 | $40,000 | $560,000 |
| **Sistema de Gestión e Integración** | 1 | $140,000 | $140,000 |
| **TOTAL CAPEX** | **14 paneles** | **$85,000/panel** | **$1,190,000** |

**Nota sobre actualización (21/01/2026):** El CAPEX fue optimizado a $1,190,000 USD al reducir la cantidad de 28 a 14 unidades, basándose en la optimización de puntos de decisión y peajes (Manual de Señalización 2024) y alineándose con la validación contractual final.

### 6.2 OPEX (Operación y Mantenimiento)

| Ítem | Cantidad | Costo Unitario Anual (USD) | Costo Total Anual (USD) |
|:-----|:---------|:---------------------------|:------------------------|
| **Mantenimiento Operativo** | 14 | $1,200 | $16,800 |
| **TOTAL OPEX ANUAL** | **14 paneles** | **$1,200/panel/año** | **$16,800** |

**OPEX 20 años:** $16,800 × 20 = **$336,000 USD**

### 6.3 Costo Total del Ciclo de Vida (20 años)

**CAPEX + OPEX:** $1,190,000 + $336,000 = **$1,526,000 USD**

---

## 7. DISTRIBUCIÓN GEOGRÁFICA

### 7.1 Distribución por Unidad Funcional (UF)

| UF | Cantidad | Ubicaciones Principales |
|:---|:---------|:------------------------|
| **UF1** | 2 | Peaje Zambito (2) |
| **UF2-UF12** | 10 | Distribución estratética (1 por UF aprox) |
| **UF13** | 2 | Peaje Aguas Negras (2) |
| **TOTAL** | **14** | - |

### 7.2 Ubicaciones Estratégicas Principales

- **PK 0+000** (Puerto Salgar): Inicio del corredor
- **PK 9+200** (Peaje Zambito): 2 PMV (antes + después)
- **PK 50±5**: Punto medio Zona 1
- **PK 80+000** (Peaje Aguas Negras): 2 PMV (antes + después)
- **PK 130±5** (CCO La Lizama): Centro de control
- **PK 180±5**: Punto medio Zona 3
- **PK 259+600** (San Roque): Fin del corredor

---

## 8. ESPECIFICACIONES TÉCNICAS BÁSICAS

### 8.1 Panel LED Matriz

| Parámetro | Especificación Mínima |
|:----------|:---------------------|
| **Dimensiones** | 3.0 × 1.5 metros (ancho × alto) |
| **Tecnología** | LED Full Matrix (RGB) |
| **Pitch (espaciado píxeles)** | 20-25 mm |
| **Resolución** | 96×48 píxeles mínimo |
| **Colores** | RGB (16.7M colores) o 3 colores mínimo |
| **Brillo** | ≥8,000 cd/m² (nits) |
| **Vida útil LED** | ≥100,000 horas |
| **Consumo típico** | 400-600W (mensaje estándar) |
| **Protección** | IP65 frontal, IP54 posterior |
| **Vandalismo** | IK08 mínimo |
| **Temperatura** | -20°C a +60°C |

### 8.2 Controlador PMV

| Parámetro | Especificación Mínima |
|:----------|:---------------------|
| **Protocolo** | NTCIP 1202 (obligatorio) |
| **Comunicación** | Ethernet 10/100/1000 Mbps |
| **Almacenamiento local** | ≥100 mensajes predefinidos |
| **Fuente de alimentación** | 24VDC 15A |
| **Protección** | IP65 (gabinete) |

---

## 9. PRÓXIMOS PASOS

- [x] ✅ Ficha de Sistema completada (T01)
- [x] ✅ Análisis de Requisitos completado (T02)
- [x] ✅ Arquitectura Conceptual completada (T03)
- [x] ✅ Especificaciones Técnicas (T04) - Ya existe, validar coherencia
- [x] ✅ Ingeniería de Detalle (T05) - Ya existe, validar coherencia
- [x] ✅ Validación Contractual - Ya existe (`38_VALIDACION_CONTRACTUAL_PMV_v1.0.md`)

---

## 10. REFERENCIAS

### 10.1 Documentos del Proyecto

- **T02:** `24D_T02_Analisis_Requisitos_PMV_MVP_v1.0.md` (Pendiente)
- **T03:** `24D_T03_Arquitectura_Conceptual_PMV_MVP_v1.0.md` (Pendiente)
- **T04:** `IV. Ingenieria Basica/04_T04_Especificaciones_Tecnicas_PMV_v1.0.md`
- **T05:** `V. Ingenieria de Detalle/06_T05_Ingenieria_Detalle_PMV_v1.0.md`
- **T01 ITS General:** `24_T01_Ficha_Sistema_ITS_v1.0.md` (Referencia para contexto)
- **Validación:** `VII. Documentos Transversales/38_VALIDACION_CONTRACTUAL_PMV_v1.0.md`

### 10.2 Documentos Contractuales

- **AT1:** Apéndice Técnico 1, Capítulo 3.8 "Sistemas de Información Variable"
- **AT2:** Apéndice Técnico 2, Sección 3.3.4.8 "Sistemas de Información Variable"
- **AT3:** Apéndice Técnico 3, Capítulo IV "Sistemas ITS"
- **AT4:** Apéndice Técnico 4 (Indicadores de desempeño)

### 10.3 Normativa Aplicable

- **NTCIP 1202:** Protocolo estándar para PMV (obligatorio)
- **Resolución 546/2018:** Interoperabilidad de Peajes (IP/REV)
- **Manual Señalización Vial 2015:** Dispositivos uniformes
- **RETIE:** Reglamento Técnico Instalaciones Eléctricas
- **IEC 60529:** Grado de protección IP

---

**Versión:** 1.0 MVP  
**Estado:** ✅ Ficha de Sistema Completada  
**Fecha:** 31/10/2025  
**Responsable:** Administrador Contractual EPC  
**Próximo paso:** Validación de arquitectura con stakeholders  
**T02 disponible:** `24D_T02_Analisis_Requisitos_PMV_MVP_v1.0.md`  
**T03 disponible:** `24D_T03_Arquitectura_Conceptual_PMV_MVP_v1.0.md`

