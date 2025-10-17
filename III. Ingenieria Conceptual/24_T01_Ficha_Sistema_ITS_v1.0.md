# T01: FICHA DE SISTEMA - ITS (INTELLIGENT TRANSPORTATION SYSTEMS)
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 16/10/2025  
**Sistema:** ITS - Sistemas Inteligentes de Transporte  
**Responsable:** Ingeniero de Sistemas ITS  
**Versión:** 1.0  

---

## 1. IDENTIFICACIÓN DEL SISTEMA

| Campo | Valor |
|-------|-------|
| **Nombre del sistema** | ITS - Intelligent Transportation Systems (Sistema de Control de Tráfico) |
| **Categoría** | Sistemas de Control y Supervisión |
| **Prioridad** | 🔴 Alta |
| **Fase contractual** | Construcción y O&M |
| **AT relacionados** | AT2 (Sección 3.3.5.1), AT4 (Indicadores) |

---

## 2. DESCRIPCIÓN GENERAL

### 2.1 Propósito del Sistema

El Sistema ITS tiene como objetivo **controlar y monitorear el tránsito de vehículos** en el corredor vial Puerto Salgar - Barrancabermeja (259.6 km), proporcionando:

- **Supervisión en tiempo real** del flujo vehicular
- **Información variable** a usuarios de la vía
- **Detección automática** de incidentes y condiciones adversas
- **Control de velocidad** y seguridad vial
- **Datos estadísticos** para planificación y gestión del tráfico
- **Apoyo a la Policía de Carreteras** y equipos de emergencia

### 2.2 Alcance del Sistema

**Sistemas incluidos:**
- ✅ Paneles de Mensaje Variable (PMV)
- ✅ Circuito Cerrado de TV (CCTV)
- ✅ Estaciones de Pesaje en Movimiento (WIM)
- ✅ Estaciones Meteorológicas
- ✅ Teléfonos de Emergencia (SOS)
- ✅ Detectores Automáticos de Incidentes (DAI)
- ✅ Estaciones de Aforo Vehicular
- ✅ Sistemas de Control de Velocidad (Radares)
- ✅ Detectores de Altura
- ✅ Sensores de Pista/Carril

**Cobertura geográfica:**
- Longitud: 259.6 km (Puerto Salgar - San Roque)
- Departamentos: Cundinamarca, Boyacá, Santander
- Instalación en: Todas las Estaciones de Peaje + Áreas de Servicio + Puntos críticos

**Integración con:**
- **CCO (Centro de Control Operacional):** Transmisión de datos en tiempo real
- **Telecomunicaciones:** Fibra óptica como backbone
- **Peajes:** Información de flujo vehicular
- **Sistemas de Emergencia:** Activación de protocolos de atención
- **ANI:** Entrega de información (SIINCO, ANIscopio)

---

## 3. REQUISITOS CONTRACTUALES

### 3.1 Obligaciones del Contrato

**Según AT2, Sección 3.3.5.1 - Sistema de Control de Tráfico:**

El Concesionario deberá:

1. **Implantar** un Sistema de Control de Tráfico para controlar y monitorear el tránsito vehicular
2. **Instalar equipos en cada Estación de Peaje:**
   - Equipos de detección y sensores de pista
   - PMV: Mínimo 2 por área bidireccional, 1 por área unidireccional
   - Equipos meteorológicos (según Resolución 546/2018 + IDEAM)
   - Vehículos de inspección de tráfico
   - CCTV (circuito cerrado de TV)
   - Cámara panorámica (mínimo 1 por peaje)
   - Detectores de altura (tecnología láser)
   - Sistemas de control de velocidad
3. **Instalar CCTV adicional** en:
   - Áreas de Servicio
   - Zonas de seguridad/accidentalidad (definidas con Interventoría + Policía)
4. **Garantizar disponibilidad** de equipos: **99% anual mínimo**
5. **Transmitir información en tiempo real** al CCO
6. **Registrar** datos de forma inviolable e integral en bases de datos
7. **Entregar información** a ANI (compatible con SIINCO y otros sistemas ANI)
8. **Definir sistemas** en el Manual de Operación y Mantenimiento

### 3.2 Requisitos de Apéndices Técnicos

**AT2, Sección 3.3.5.1:**
- PMV alfanuméricos y gráficos
- Detectores de altura: tecnología láser, antes de peajes, puentes con restricción, túneles, intersecciones a desnivel
- Radares: medidores de velocidad + toma de fotos de matrícula
- CCTV: Cámara panorámica por peaje + cámaras en Áreas de Servicio + zonas críticas
- Estaciones meteorológicas: según especificaciones IDEAM
- Disponibilidad: 99% anual

**AT4 (Indicadores - Por validar):**
- Disponibilidad de sistemas ITS
- Tiempo de respuesta ante incidentes
- Calidad de información entregada a ANI

### 3.3 Normativa Aplicable

| Norma | Descripción | Alcance |
|:------|:------------|:--------|
| **Resolución 546/2018** | Especificaciones ITS del Ministerio de Transporte | Paneles de Mensaje Variable, Equipos Meteorológicos |
| **NEMA TS-2** | Controladores de Tráfico | Control de PMV y semáforos |
| **ISO 14823** | Señalización Gráfica Variable | Diseño de mensajes en PMV |
| **INVIAS** | Manual de Señalización Vial | Señalización complementaria |
| **ASTM E2213** | Pesaje en Movimiento (WIM) | Estaciones de pesaje dinámico |
| **IDEAM** | Especificaciones Técnicas Meteorológicas | Estaciones meteorológicas |
| **ONVIF** | Interoperabilidad de CCTV | Cámaras IP y sistemas de video |
| **IEC 62676** | Sistemas CCTV de Seguridad | Diseño de sistemas de videovigilancia |

---

## 4. COMPONENTES PRINCIPALES

| Componente | Cantidad Estimada | Ubicación | Función |
|:-----------|:------------------|:----------|:--------|
| **PMV** (Paneles de Mensaje Variable) | 20-30 unidades | Peajes + puntos críticos | Información variable a usuarios (clima, incidentes, tiempos) |
| **CCTV** (Cámaras de Vigilancia) | 100-150 cámaras | Cada 2-3 km + peajes + áreas servicio | Vigilancia 24/7, detección incidentes, evidencia |
| **Cámaras Panorámicas** | 10-15 unidades | 1 por Estación de Peaje | Visión global del área de peaje |
| **WIM** (Pesaje en Movimiento) | 5-10 estaciones | Puntos estratégicos | Control de peso de vehículos sin detenerlos |
| **Estaciones Meteorológicas** | 8-12 estaciones | Distribuidas en corredor | Precipitación, temperatura, viento, visibilidad |
| **Teléfonos SOS** | 50-80 unidades | Cada 3-5 km | Comunicación de emergencias |
| **DAI** (Detectores Automáticos Incidentes) | 30-50 unidades | Zonas críticas | Detección automática de accidentes/congestión |
| **Estaciones de Aforo** | 10-15 estaciones | Puntos representativos | Conteo y clasificación vehicular |
| **Radares de Velocidad** | 15-25 unidades | Zonas críticas | Medición velocidad + foto matrícula |
| **Detectores de Altura** | 20-30 unidades | Antes de peajes, puentes, túneles | Detección de vehículos sobredimensionados |
| **Sensores de Pista/Carril** | Por definir | Todas las estaciones de peaje | Detección de paso vehicular |

**NOTA:** Cantidades preliminares sujetas a Estudio de Detalle. Se actualizarán con información de AT1 (Alcance).

---

## 5. INTERFACES CON OTROS SISTEMAS

| Sistema Relacionado | Tipo de Interface | Protocolo/Medio | Datos Intercambiados |
|:--------------------|:------------------|:----------------|:---------------------|
| **CCO** | Red IP | Ethernet/Fibra Óptica | Video en tiempo real, alarmas, datos de sensores, eventos |
| **Telecomunicaciones** | Física | Fibra Óptica Monomodo | Backbone de comunicaciones (todos los datos) |
| **Peajes** | Lógica | Base de Datos / API | Aforo vehicular, correlación tráfico/recaudo |
| **Sistemas de Emergencia** | Lógica | Red IP | Notificación de incidentes, activación de protocolos |
| **ANI (SIINCO)** | Lógica | Web/API HTTPS | Reportes de tráfico, información operacional |
| **Policía de Carreteras** | Lógica | Red IP/Web | Datos de velocidad, infracciones, incidentes |
| **Iluminación** | Control | Red IP/Industrial | Activación automática según condiciones (túneles) |

---

## 6. ESTIMACIÓN PRELIMINAR

### 6.1 CAPEX (Inversión Inicial)

| Ítem | Cantidad | Costo Unitario (USD) | Costo Total (USD) |
|:-----|:---------|:---------------------|:------------------|
| PMV (Paneles Mensaje Variable) | 25 | $35,000 | $875,000 |
| CCTV IP PTZ Exteriores | 120 | $8,000 | $960,000 |
| Cámaras Panorámicas | 12 | $15,000 | $180,000 |
| Estaciones WIM (Pesaje) | 8 | $150,000 | $1,200,000 |
| Estaciones Meteorológicas | 10 | $25,000 | $250,000 |
| Teléfonos SOS | 65 | $3,500 | $227,500 |
| Detectores Automáticos Incidentes | 40 | $12,000 | $480,000 |
| Estaciones de Aforo | 12 | $30,000 | $360,000 |
| Radares de Velocidad | 20 | $25,000 | $500,000 |
| Detectores de Altura (Láser) | 25 | $8,000 | $200,000 |
| Sensores de Pista | 100 | $2,500 | $250,000 |
| Instalación y Puesta en Marcha | - | - | $800,000 |
| Software SCADA ITS | 1 sistema | $250,000 | $250,000 |
| Integración con CCO | 1 sistema | $150,000 | $150,000 |
| Contingencias (10%) | - | - | $668,250 |
| **TOTAL CAPEX** | | | **$7,350,750** |

**Conversión a COP (TRM: 4,000):** ~$29,403 millones COP

### 6.2 OPEX (Operación y Mantenimiento - Anual)

| Ítem | Costo Anual (USD) |
|:-----|:------------------|
| Mantenimiento preventivo (trimestral) | $180,000 |
| Mantenimiento correctivo (estimado) | $120,000 |
| Repuestos y consumibles | $150,000 |
| Personal operación CCO (ITS) | $240,000 |
| Energía y servicios | $60,000 |
| Licencias de software | $50,000 |
| Calibraciones y certificaciones | $40,000 |
| Actualización tecnológica | $80,000 |
| **TOTAL OPEX/año** | **$920,000** |

**Conversión a COP (TRM: 4,000):** ~$3,680 millones COP/año

---

## 7. RIESGOS IDENTIFICADOS

| Riesgo | Probabilidad | Impacto | Mitigación |
|:-------|:-------------|:--------|:-----------|
| **Vandalismo de equipos en campo** | Media | Alto | Carcasas antivandalismo IK10, CCTV secundario, señalización disuasiva |
| **Falla de comunicaciones (fibra cortada)** | Baja | Alto | Redundancia en anillo de fibra óptica, enlaces de respaldo |
| **Obsolescencia tecnológica** | Media | Medio | Especificaciones abiertas (ONVIF, NEMA), proveedores múltiples |
| **Falta de interoperabilidad con sistemas ANI** | Baja | Alto | Desarrollo temprano de APIs, validación con SIINCO |
| **Condiciones climáticas extremas** | Media | Medio | Equipos con protección IP66, temperatura -30°C a +60°C |
| **Disponibilidad <99%** | Media | Alto | Redundancia en componentes críticos, stock de repuestos, SLA con proveedores |
| **Datos imprecisos de WIM/Aforo** | Media | Medio | Calibración periódica, validación cruzada con peajes |
| **Fallas de energía** | Media | Medio | UPS en puntos críticos, generadores de respaldo |

---

## 8. INDICADORES DE DESEMPEÑO (KPIs)

**Según AT2 y AT4:**

| Indicador ID | Descripción | Valor Mínimo Aceptación | Frecuencia Medición |
|:-------------|:------------|:------------------------|:--------------------|
| **DISP-ITS-01** | Disponibilidad de equipos ITS | ≥ 99% anual | Mensual |
| **RESP-ITS-01** | Tiempo de reparación de equipos | ≤ 24 horas (críticos) | Por evento |
| **PREC-WIM-01** | Precisión de estaciones WIM | ≥ 95% | Mensual (calibración) |
| **TRANS-CCO-01** | Transmisión de video en tiempo real | ≥ 99% del tiempo | Continuo |
| **INFO-ANI-01** | Entrega de información a ANI | 100% mensual | Mensual |
| **CONF-PMV-01** | Disponibilidad de PMV | ≥ 99% | Mensual |

**Penalizaciones (AT4):**
- No disponibilidad de sistemas críticos: Deducciones en Retribución mensual
- Falta de entrega de información a ANI: Sanciones contractuales

---

## 9. PRÓXIMOS PASOS

- [ ] Desarrollar análisis de requisitos detallado (Template T02)
- [ ] Extraer cantidades exactas de AT1 (Alcance del Proyecto)
- [ ] Definir arquitectura conceptual (Template T03)
  - Topología de red ITS
  - Redundancia y disponibilidad
  - Arquitectura SCADA ITS
- [ ] Elaborar especificaciones técnicas por componente (Template T04)
  - Especificación Cámaras CCTV PTZ
  - Especificación PMV
  - Especificación Estaciones WIM
  - Especificación Estaciones Meteorológicas
- [ ] Estimar costos detallados con cotizaciones reales (Template T05)
- [ ] Preseleccionar proveedores:
  - CCTV: Axis, Hikvision, Dahua, Bosch
  - PMV: Daktronics, SWARCO, Messagemaker
  - WIM: Kistler, Intercomp, Cardinal Scale
- [ ] Validar especificaciones con ANI e Interventoría
- [ ] Desarrollar Estudio de Detalle (ubicaciones precisas)

---

## 10. OBSERVACIONES Y SUPUESTOS

### 10.1 Supuestos Técnicos

- **Supuesto 1:** Las cantidades de equipos se basarán en:
  - PMV: 1 cada 10-15 km + 2-3 por peaje
  - CCTV: 1 cada 2-3 km + puntos críticos
  - WIM: 1 cada 30-50 km (según estudios de tráfico)
  - Estaciones Meteo: 1 cada 25-30 km
  - Teléfonos SOS: 1 cada 3-5 km
  
- **Supuesto 2:** Tecnología IP sobre fibra óptica como estándar de comunicación

- **Supuesto 3:** Interoperabilidad ONVIF para CCTV (compatibilidad multi-fabricante)

- **Supuesto 4:** Integración con sistemas existentes de ANI (SIINCO, ANIscopio)

- **Supuesto 5:** Centro de Control Operaciones (CCO) centralizado con operación 24/7/365

- **Supuesto 6:** Mantenimiento preventivo trimestral para equipos en campo

### 10.2 Dependencias

- **Dependencia 1:** Este sistema depende de **Telecomunicaciones** (fibra óptica) para transmisión de datos
- **Dependencia 2:** Depende de **CCO** para visualización, control y almacenamiento de información
- **Dependencia 3:** Depende de **Energía** (UPS/Generadores) para operación continua
- **Dependencia 4:** Depende de **Infraestructura Civil** (postes, canalizaciones) para montaje de equipos
- **Dependencia 5:** Requiere **Estudios de Detalle** para ubicación precisa de equipos
- **Dependencia 6:** Requiere definición de **Estaciones de Peaje** y **Áreas de Servicio** (AT1)

### 10.3 Restricciones

- **Restricción 1:** Disponibilidad mínima 99% anual (requisito contractual estricto)
- **Restricción 2:** PMV deben cumplir Resolución 546/2018 (normativa obligatoria)
- **Restricción 3:** Detectores de altura deben ser tecnología láser (especificación contractual)
- **Restricción 4:** CCTV obligatorio en 100% de Estaciones de Peaje y Áreas de Servicio
- **Restricción 5:** Información debe ser compatible con sistemas ANI (SIINCO, etc.)
- **Restricción 6:** Equipos meteorológicos según especificaciones IDEAM
- **Restricción 7:** Transmisión en tiempo real obligatoria (no diferido)
- **Restricción 8:** Registro inviolable e integral de todas las operaciones

---

## 11. DEFINICIONES PENDIENTES (A resolver en Estudios de Detalle)

| Ítem | Descripción | Responsable | Plazo |
|:-----|:------------|:------------|:------|
| **Cantidades exactas** | Número preciso de cada componente | Ing. ITS + AT1 | Fase Preoperativa |
| **Ubicaciones PKs** | Ubicación exacta de cada equipo | Ing. Civil + Ing. ITS | Estudios de Detalle |
| **Modelos específicos** | Selección de fabricantes y modelos | Ing. ITS | Post-cotizaciones |
| **Arquitectura de red** | Topología detallada de red ITS | Ing. Telecomunicaciones | Ingeniería Básica |
| **Protocolos de integración** | APIs y protocolos con CCO/ANI | Ing. Software | Ingeniería Básica |
| **Zonas críticas** | Identificación con Policía/Interventoría | Gerente Operaciones | Fase Preoperativa |

---

## 12. REFERENCIAS CRUZADAS

### Documentos Relacionados:
- [AT1 - Alcance del Proyecto](../II.%20Apendices%20Tecnicos/AT1_Alcance_Proyecto_v1.0.md) - Ubicaciones y UFs
- [AT2 - Operación y Mantenimiento](../II.%20Apendices%20Tecnicos/AT2_Operacion_Mantenimiento_v1.0.md) - Sección 3.3.5.1
- [AT4 - Indicadores](../II.%20Apendices%20Tecnicos/AT4_Indicadores_v1.0.md) - KPIs del sistema
- [Parte General](../I.%20Contrato%20General/1_Parte_General_v1.0.md) - Sección 9.1 y 9.2 (O&M)
- [Listado Maestro de Sistemas](23_ListadoMaestro_Sistemas_Vehiculares_v1.0.md) - Categoría 1 (ITS)

### Próximos Documentos a Crear:
- `25_T02_Analisis_Requisitos_ITS_v1.0.md` - Análisis detallado de requisitos
- `26_T03_Arquitectura_ITS_v1.0.md` - Arquitectura conceptual del sistema
- `27_T04_Especificacion_CCTV_v1.0.md` - Especificación técnica de cámaras
- `28_T04_Especificacion_PMV_v1.0.md` - Especificación técnica de PMV
- `29_T04_Especificacion_WIM_v1.0.md` - Especificación técnica de WIM
- `30_T05_Estimacion_Costos_ITS_v1.0.md` - Estimación detallada de costos

---

## 13. CHANGELOG

| Versión | Fecha | Autor | Descripción |
|:-------:|:------|:------|:------------|
| **v1.0** | 16/10/2025 | Administrador Contractual EPC | Versión inicial - Ficha de Sistema ITS creada con Template T01 |

---

**Versión:** 1.0  
**Estado:** ✅ Ficha de Sistema Completada  
**Fecha:** 16/10/2025  
**Responsable:** Ingeniero de Sistemas ITS  
**Próxima actualización:** Tras Estudios de Detalle (cantidades y ubicaciones exactas)

---

**Fin del documento - T01 Sistema ITS**  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*

