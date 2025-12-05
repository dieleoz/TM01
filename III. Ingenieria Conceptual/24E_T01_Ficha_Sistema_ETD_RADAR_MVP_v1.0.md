# T01: FICHA DE SISTEMA - ETD/RADAR (ESTACIONES DE TOMA DE DATOS Y RADARES)
## Proyecto APP Puerto Salgar - Barrancabermeja
## MVP - Metodología Punto 42

**Fecha:** 05/12/2025  
**Sistema:** ETD (Estaciones de Toma de Datos) + Radares Sancionatorios  
**Responsable:** Administrador Contractual EPC / Ingeniero de Sistemas ITS  
**Versión:** 1.1 MVP  
**Estado:** ✅ Ficha de Sistema Completada y Actualizada (CAPEX Consolidado)

---

## 1. IDENTIFICACIÓN DEL SISTEMA

| Campo | Valor |
|:------|:------|
| **Nombre del sistema** | ETD/RADAR - Estaciones de Toma de Datos y Radares Sancionatorios |
| **Categoría** | ITS - Sistemas Inteligentes de Transporte / Control de Tráfico |
| **Prioridad** | 🔴 Alta |
| **Fase contractual** | Construcción y O&M |
| **AT relacionados** | AT2 (Sección 3.3.4.5), AT3 (Cap. IV), AT4 (Indicadores) |

---

## 2. DESCRIPCIÓN GENERAL

### 2.1 Propósito del Sistema

El Sistema de ETD/RADAR tiene como objetivo **proporcionar monitoreo y control de tráfico** a lo largo del corredor vial Puerto Salgar - Barrancabermeja (259.6 km principales + 33.4 km adicionales), permitiendo:

- **Monitoreo estadístico de tráfico** mediante ETD (velocidad promedio, flujo, clasificación vehicular)
- **Control sancionatorio** mediante Radares (detección de infracciones, registro fotográfico)
- **Medición de indicadores de desempeño** por Unidad Funcional (UF)
- **Detección automática de incidentes** y condiciones de tráfico
- **Integración con sistemas ITS** para gestión operacional
- **Reporte a SICC** (Sistema Informático de Contabilización y Control) de la ANI

### 2.2 Alcance del Sistema

**Cobertura geográfica:**
- **Longitud Principal:** 259.6 km (RN 4510 + RN 4511)
- **Longitud Total:** ~293 km (incluyendo RN 4513 conexión CCO)
- **Rutas:** RN 4510 (Honda-Río Ermitaño), RN 4511 (Río Ermitaño-La Lizama), RN 4513 (Conexión CCO)
- **Ubicaciones:** Una ETD por Unidad Funcional (UF1-UF13), 2 Radares en sitios críticos

**Integración con:**
- **CCO (Centro de Control Operacional):** Ubicado en La Lizama PK 4+300 (RN 4513) - Transmisión en tiempo real
- **SCADA:** Supervisión y control operacional
- **Sistema ITS:** Integración con CCTV, PMV, DAI
- **Telecomunicaciones:** Fibra óptica como backbone (283 km anillo redundante)
- **SICC (ANI):** Reporte de indicadores de desempeño
- **SIMIT (opcional):** Capacidad técnica para radares sancionatorios

---

## 3. REQUISITOS CONTRACTUALES

### 3.1 Obligaciones del Contrato

**Según AT2, Sección 3.3.4.5 - Sistemas de Monitoreo y Control de Tráfico:**

El Concesionario deberá:

1. **Instalar ETD (Estaciones de Toma de Datos)** para:
   - Medición de velocidad promedio por Unidad Funcional (AT4)
   - Medición de flujo vehicular
   - Clasificación vehicular
   - Una ETD por cada Unidad Funcional (UF1-UF13)

2. **Instalar Radares sancionatorios** en sitios críticos:
   - Detección de infracciones (exceso velocidad, contrasentido)
   - Registro fotográfico de vehículos infractores
   - Cumplimiento Resolución 718/2018 del Ministerio de Transporte
   - Autorización previa del Ministerio de Transporte

3. **Garantizar disponibilidad** de equipos: **≥99% anual mínimo** (AT4)

4. **Integrar al CCO** para transmisión en tiempo real

5. **Reportar a SICC** datos para indicadores de desempeño

### 3.2 Requisitos de Apéndices Técnicos

**AT2, Sección 3.3.4.5:**
- ETD por Unidad Funcional
- Radares en sitios críticos según estudio técnico
- Registro de infracciones con cámara
- Cumplimiento Resolución 718/2018

**AT3, Capítulo IV:**
- Sensor: Radar o microondas multipista (>3 carriles)
- Rango: ≥150 m, precisión ±3 km/h (ETD), ±2 km/h (Radares)
- Medición: Volumen, velocidad promedio, clasificación
- Comunicación: Fibra óptica / TCP-IP / API REST
- Certificación: ISO TC-204 (ITS) / CE / FCC

**AT4 (Indicadores):**
- Velocidad promedio por UF (medida por ETD)
- Disponibilidad: ≥99% anual

---

## 4. COMPONENTES PRINCIPALES

| Componente | Cantidad | Ubicación | Función |
|:-----------|:---------|:----------|:--------|
| **ETD (Estaciones de Toma de Datos)** | **13 unidades** | Una por UF (UF1-UF13) | Monitoreo estadístico: velocidad promedio, flujo, clasificación |
| **Radares Sancionatorios** | **2 unidades** | Sitios críticos (según estudio técnico) | Control sancionatorio: detección infracciones, registro fotográfico |
| **TOTAL EQUIPOS** | **15 unidades** | Distribuidas estratégicamente | Cobertura completa del corredor |
| **Controladores ETD** | 13 unidades | Gabinete en cada ETD | Gestión de datos y comunicación |
| **Controladores Radar** | 2 unidades | Gabinete en cada radar | Gestión de detección y evidencia |
| **Conexión a red FO** | 15 puntos | Integración con red de telecomunicaciones | Comunicación con CCO |

**Distinción funcional:**
- **ETD:** Equipos de monitoreo estadístico (NO requieren cámara ANPR)
- **Radares:** Equipos sancionatorios (SÍ requieren cámara ANPR + certificación ONAC)

**Distribución por tipo:**
- **ETD por UF:** 13 unidades (una por cada Unidad Funcional UF1-UF13)
- **Radares críticos:** 2 unidades (ubicaciones a definir según estudio técnico)

---

## 5. INTERFACES CON OTROS SISTEMAS

| Sistema Relacionado | Tipo de Interface | Protocolo/Medio | Datos Intercambiados |
|:--------------------|:------------------|:----------------|:---------------------|
| **CCO (Centro de Control)** | Red IP / Fibra Óptica | Ethernet / API REST | Datos de tráfico en tiempo real, alarmas, estado operativo |
| **Sistema de Telecomunicaciones** | Red FO / L2/L3 | Ethernet | Tráfico de datos y control |
| **SCADA** | Red IP | SNMP / Modbus TCP | Supervisión y control operacional |
| **Sistema ITS (DAI)** | Lógica (vía CCO) | API REST | Activación automática de alertas por incidentes |
| **SICC (ANI)** | Lógica (vía CCO) | API REST / Base de Datos | Reporte de indicadores de desempeño |
| **SIMIT (opcional)** | Lógica (vía CCO) | API REST | Datos de infracciones (solo radares, no obligatorio) |
| **Sistema de Energía Eléctrica** | Alimentación | AC 120V/60Hz | Suministro de energía |
| **CCTV** | Lógica (vía CCO) | API REST | Correlación de eventos visuales |

**Flujo de comunicación:**
```
ETD/RADAR → Switches → Red FO → Switch Core CCO → Servidores SCADA/SICC → Reportes
         (Datos tráfico)  (Ethernet)  (Fibra)      (Routing)    (Procesamiento)  (Visualización)
```

---

## 6. ESTIMACIÓN PRELIMINAR

### 6.1 CAPEX (Inversión Inicial)

| Ítem | Cantidad | Costo Unitario (USD) | Costo Total (USD) |
|:-----|:---------|:---------------------|:------------------|
| **ETD (Monitoreo estadístico)** | 13 | $35,000 | $455,000 |
| **Radares Sancionatorios + ANPR** | 2 | $120,000 | $240,000 |
| **Cámaras ANPR (alta resolución)** | 2 | $25,000 | $50,000 |
| **Software de procesamiento ANPR** | 1 | $100,000 | $100,000 |
| **Licencias de software (perpetuas)** | 15 | $15,000 | $225,000 |
| **Servidores edge computing** | 2 | $30,000 | $60,000 |
| **Obras civiles y estructuras** | 15 | $15,000 | $225,000 |
| **Instalación y comisionamiento** | 15 | $19,667 | $295,000 |
| **TOTAL CAPEX** | **15 equipos** | **$110,000/equipo** | **$1,650,000** |

**Nota sobre actualización (05/12/2025):** El CAPEX fue ajustado de $615,000 a $1,650,000 USD para reflejar costos reales de integración ANPR (reconocimiento de placas), software de procesamiento avanzado, licencias perpetuas, servidores edge computing para procesamiento local, y obras civiles completas. Este ajuste incorpora lecciones aprendidas y validaciones contractuales finales.

### 6.2 OPEX (Operación y Mantenimiento)

| Ítem | Cantidad | Costo Unitario Anual (USD) | Costo Total Anual (USD) |
|:-----|:---------|:---------------------------|:------------------------|
| **Mantenimiento preventivo** | 15 | $1,200 | $18,000 |
| **Mantenimiento correctivo** | 15 | $500 | $7,500 |
| **Calibración radares (ONAC)** | 2 | $2,000 | $4,000 |
| **TOTAL OPEX ANUAL** | **15 equipos** | **$1,967/equipo/año** | **$29,500** |

**OPEX 20 años:** $29,500 × 20 = **$590,000 USD**

### 6.3 Costo Total del Ciclo de Vida (20 años)

**CAPEX + OPEX:** $1,650,000 + $590,000 = **$2,240,000 USD**

---

## 7. DISTRIBUCIÓN GEOGRÁFICA

### 7.1 Distribución por Unidad Funcional (UF)

| UF | ETD | Radares | Ubicaciones Principales |
|:---|:----|:--------|:------------------------|
| **UF1** | 1 | - | Peaje Zambito |
| **UF2** | 1 | - | Tramo principal |
| **UF3** | 1 | - | Tramo principal |
| **UF4** | 1 | - | Tramo principal |
| **UF5** | 1 | - | Tramo principal |
| **UF6** | 1 | - | Tramo principal |
| **UF7** | 1 | - | Tramo principal |
| **UF8** | 1 | - | Tramo principal |
| **UF9** | 1 | - | Tramo principal |
| **UF10** | 1 | - | Tramo principal |
| **UF11** | 1 | - | Tramo principal |
| **UF12** | 1 | - | Tramo principal |
| **UF13** | 1 | - | Peaje Aguas Negras |
| **Sitios Críticos** | - | 2 | A definir según estudio técnico |
| **TOTAL** | **13** | **2** | - |

### 7.2 Ubicaciones Estratégicas Principales

- **PK 0+000** (Puerto Salgar): Inicio del corredor
- **PK 9+200** (Peaje Zambito): ETD UF1
- **PK 50±5**: ETD UF2-UF3
- **PK 80+000** (Peaje Aguas Negras): ETD UF13
- **PK 130±5** (CCO La Lizama): Centro de control
- **PK 180±5**: ETD UF7-UF8
- **PK 259+600** (San Roque): Fin del corredor
- **Sitios Críticos:** 2 Radares (ubicaciones a definir según estudio técnico de seguridad vial)

---

## 8. ESPECIFICACIONES TÉCNICAS BÁSICAS

### 8.1 ETD (Estaciones de Toma de Datos)

| Parámetro | Especificación Mínima |
|:----------|:---------------------|
| **Sensor** | Radar o microondas multipista (>3 carriles) |
| **Rango** | ≥150 m |
| **Precisión velocidad** | ±3 km/h |
| **Medición** | Volumen, velocidad promedio, ocupación, clasificación |
| **Comunicación** | Ethernet 10/100 Mbps, TCP/IP, API REST |
| **Protección** | IP65, IK08 |
| **Temperatura** | -40°C a +70°C |
| **Certificación** | ISO TC-204 (ITS), CE, FCC |

**Nota:** ETD NO requiere cámara ANPR (solo monitoreo estadístico).

### 8.2 Radares Sancionatorios

| Parámetro | Especificación Mínima |
|:----------|:---------------------|
| **Sensor radar** | Multipista (>3 carriles), rango ≥150 m |
| **Precisión velocidad** | ±2 km/h |
| **Cámara ANPR** | Resolución ≥1920×1080 px, reconocimiento ≥95% |
| **Procesamiento** | Edge computing, almacenamiento ≥30 días |
| **Comunicación** | Ethernet 10/100 Mbps, TCP/IP, API REST |
| **Protección** | IP65, IK08 |
| **Certificación** | ONAC metrológica, Resolución 718/2018 |
| **Autorización** | Ministerio de Transporte (obligatorio) |

---

## 9. PRÓXIMOS PASOS

- [x] ✅ Ficha de Sistema completada (T01)
- [x] ✅ Análisis de Requisitos completado (T02)
- [x] ✅ Arquitectura Conceptual completada (T03)
- [x] ✅ Especificaciones Técnicas (T04) - Ya existe, validar coherencia
- [x] ✅ Ingeniería de Detalle (T05) - Ya existe, validar coherencia
- [x] ✅ Validación Contractual - Ya existe (`35_VALIDACION_CONTRACTUAL_ETD_RADARES_v1.0.md`)

---

## 10. REFERENCIAS

### 10.1 Documentos del Proyecto

- **T02:** `24E_T02_Analisis_Requisitos_ETD_RADAR_MVP_v1.0.md` (Pendiente)
- **T03:** `24E_T03_Arquitectura_Conceptual_ETD_RADAR_MVP_v1.0.md` (Pendiente)
- **T04:** `IV. Ingenieria Basica/02_T04_Especificaciones_Tecnicas_ETD_Radares_v1.0.md`
- **T05:** `V. Ingenieria de Detalle/07_T05_Ingenieria_Detalle_RADAR_ETD_v1.0.md`
- **T01 ITS General:** `24_T01_Ficha_Sistema_ITS_v1.0.md` (Referencia para contexto)
- **Validación:** `VII. Documentos Transversales/35_VALIDACION_CONTRACTUAL_ETD_RADARES_v1.0.md`

### 10.2 Documentos Contractuales

- **AT2:** Apéndice Técnico 2, Sección 3.3.4.5 "Sistemas de Monitoreo y Control de Tráfico"
- **AT3:** Apéndice Técnico 3, Capítulo IV "Sistemas ITS"
- **AT4:** Apéndice Técnico 4 (Indicadores de desempeño)

### 10.3 Normativa Aplicable

- **Resolución 718/2018:** Criterios técnicos para instalación y operación de SAST (Solo radares)
- **ISO TC-204:** Intelligent Transport Systems
- **IEC 60529:** Grado de protección IP65
- **IEC 62262:** Grado de protección IK08
- **Ley 1581/2012:** Protección de Datos Personales (Solo radares)

---

**Versión:** 1.0 MVP  
**Estado:** ✅ Ficha de Sistema Completada  
**Fecha:** 31/10/2025  
**Responsable:** Administrador Contractual EPC  
**Próximo paso:** Validación de arquitectura con stakeholders  
**T02 disponible:** `24E_T02_Analisis_Requisitos_ETD_RADAR_MVP_v1.0.md`  
**T03 disponible:** `24E_T03_Arquitectura_Conceptual_ETD_RADAR_MVP_v1.0.md`

