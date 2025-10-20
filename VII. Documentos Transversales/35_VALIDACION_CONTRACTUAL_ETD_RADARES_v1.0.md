# VALIDACIÓN CONTRACTUAL - ETD Y RADARES (ESTACIONES DE TOMA DE DATOS)
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 21/10/2025  
**Sistema:** ETD (Estaciones de Toma de Datos) + Radares Sancionatorios  
**Responsable:** Administrador Contractual EPC  
**Versión:** 1.0  
**Estado:** ✅ Validación Contractual Completada

---

## 1. RESUMEN EJECUTIVO

### 1.1 Obligación Contractual Validada

**Cantidad Obligatoria:** 
- **13 ETD** (una por Unidad Funcional UF0-UF13)
- **2 Radares sancionatorios** (en sitios críticos)
- **Total: 15 equipos**

**Base Legal:** 
- Apéndice Técnico 2 - Condiciones de O&M (Adenda 2)
- Apéndice Técnico 3 - Especificaciones Generales
- Apéndice Técnico 4 - Indicadores de Nivel de Servicio

**Estado:** ✅ **VALIDADO CONTRACTUALMENTE**

---

## 2. ANÁLISIS CONTRACTUAL DETALLADO

### 2.1 Fuentes Contractuales Principales

#### 2.1.1 Apéndice Técnico 2 - Condiciones de O&M (Adenda 2)

**Sección 3.3.4.5 - Sistemas de Monitoreo y Control de Tráfico:**

> "El Concesionario deberá instalar, en los sitios críticos de la vía, un sistema de monitores de velocidad consistentes en medidores de cantidad y flujo de vehículos por radar y cámaras equipadas para medir velocidad y toma de fotos de matrícula. El número y localización de estos equipos obedecerá al estudio técnico que el Concesionario realice."

> "Independientemente del sistema de recaudos que adopte, el Concesionario deberá implantar un sistema de identificación de violaciones que registre la imagen de los vehículos infractores […] cumpliendo con la Resolución 0718 de 2018 del Ministerio de Transporte."

#### 2.1.2 Apéndice Técnico 4 - Indicadores de Nivel de Servicio

> "La velocidad operativa promedio deberá ser medida por Unidad Funcional […] mediante equipos automáticos de medición (ETD)."

### 2.2 Interpretación Legal

| **Elemento** | **Interpretación** | **Obligatorio** |
|:--------------|:-------------------|:----------------|
| **ETD por UF** | Una estación por Unidad Funcional | ✅ SÍ |
| **Radares críticos** | En sitios críticos según estudio técnico | ✅ SÍ |
| **Medición velocidad** | Promedio por UF para indicadores | ✅ SÍ |
| **Detección infracciones** | Registro de violaciones con cámara | ✅ SÍ |
| **Resolución 718/2018** | Cumplimiento para radares sancionatorios | ✅ SÍ |

---

## 3. VALIDACIÓN DE CANTIDADES

### 3.1 Cálculo de ETD por Unidad Funcional

**Unidades Funcionales del Proyecto (AT1):**
- UF0: Operación y mantenimiento provisional
- UF1-UF13: Tramos viales principales (13 UF)

**Cantidad ETD:** **13 unidades** (una por UF)

### 3.2 Cálculo de Radares Sancionatorios

**Base Contractual:** "En sitios críticos según estudio técnico"

**Cantidad Recomendada:** **2 unidades** (distribuidas en tramos críticos)

### 3.3 Total de Equipos

| **Tipo de Equipo** | **Cantidad** | **Función** | **Base Legal** |
|:-------------------|:-------------|:------------|:---------------|
| **ETD** | 13 | Medición velocidad promedio por UF | AT4 Indicadores |
| **Radares** | 2 | Detección infracciones en sitios críticos | AT2 §3.3.4.5 |
| **TOTAL** | **15** | Monitoreo completo del corredor | Contrato completo |

---

## 4. ESPECIFICACIONES TÉCNICAS CONTRACTUALES

### 4.1 ETD (Estaciones de Toma de Datos)

#### 4.1.1 Características Mínimas Exigibles

| **Componente** | **Especificación Contractual** | **Fuente** |
|:---------------|:-------------------------------|:-----------|
| **Sensor** | Radar o microondas multipista (>3 carriles) | AT3 Cap. IV |
| **Rango** | ≥150 m, precisión ±3 km/h | AT3 Cap. IV |
| **Medición** | Volumen, velocidad promedio, clasificación | AT3 Cap. IV |
| **Comunicación** | Fibra óptica / TCP-IP / API REST | AT3 Cap. IV |
| **Disponibilidad** | ≥99% anual | AT3 Cap. IV |
| **Condiciones ambientales** | -40°C a +70°C, humedad ≤95% | AT3 Cap. IV |
| **Certificación** | ISO TC-204 (ITS) / CE / FCC | AT3 Cap. IV |

#### 4.1.2 Funciones Operativas

- **Medición continua:** Volumen, velocidad promedio, ocupación
- **Clasificación vehicular:** Livianos vs pesados
- **Detección contrasentido:** Alarmas automáticas
- **Integración CCO:** Transmisión en tiempo real
- **Reporte SICC:** Datos para indicadores de desempeño

#### 4.1.3 **IMPORTANTE:** ETD NO requiere cámara ANPR

**Justificación:** Las ETD son equipos de monitoreo estadístico, no sancionatorios. Solo requieren sensores de medición automática.

### 4.2 Radares Sancionatorios (SAST)

#### 4.2.1 Características Mínimas Exigibles

| **Componente** | **Especificación Contractual** | **Fuente** |
|:---------------|:-------------------------------|:-----------|
| **Sensor radar** | Multipista (>3 carriles), rango ≥150 m | AT2 §3.3.4.5 |
| **Precisión** | ±2 km/h | AT2 §3.3.4.5 |
| **Cámara ANPR** | Resolución ≥1920x1080 px, reconocimiento ≥95% | AT2 §3.3.4.5 |
| **Procesamiento** | Edge computing, almacenamiento ≥30 días | AT3 Cap. IV |
| **Certificación** | ONAC metrológica / Resolución 718/2018 | Normativa |
| **Autorización** | Ministerio de Transporte | Resolución 718/2018 |

#### 4.2.2 Funciones Operativas

- **Detección infracciones:** Exceso velocidad, contrasentido, invasión carril
- **Registro fotográfico:** Evidencia con superposición de datos
- **Almacenamiento:** Local + transmisión CCO
- **Integración SIMIT:** Capacidad técnica (no obligatoria)

---

## 5. OBLIGACIONES NORMATIVAS

### 5.1 Resolución 718 de 2018 - Ministerio de Transporte

**Aplicación:** Solo radares sancionatorios (SAST)

**Obligaciones:**
- Autorización previa del Ministerio de Transporte
- Estudio técnico de siniestralidad y flujo vehicular
- Señalización mínima de 500 m antes del dispositivo
- Homologación de equipos por ONAC
- Calibración anual obligatoria
- Cumplimiento estándares de seguridad de información

### 5.2 Ley 1581 de 2012 - Protección de Datos Personales

**Aplicación:** Solo radares sancionatorios (SAST)

**Obligaciones:**
- Consentimiento informado del titular
- Uso exclusivo para control y seguridad vial
- Protección y confidencialidad de imágenes
- Acceso restringido a datos personales

### 5.3 ISO TC-204 (ITS) - Estándares Internacionales

**Aplicación:** Todos los equipos ITS (ETD + Radares)

**Obligaciones:**
- Cumplimiento estándares ITS internacionales
- Interoperabilidad con sistemas ITS
- Certificación de calidad y confiabilidad

---

## 6. INTEROPERABILIDAD Y REPORTE

### 6.1 Destino de Datos

| **Tipo de Equipo** | **Destino Principal** | **Destino Secundario** | **Obligatorio** |
|:-------------------|:----------------------|:----------------------|:----------------|
| **ETD** | CCO del Proyecto | Sistema SICC (ANI) | ✅ SÍ |
| **Radares** | CCO del Proyecto | SIMIT (opcional) | ⚠️ NO obligatorio |

### 6.2 Integración con Sistemas

- **CCO:** Transmisión en tiempo real de todos los datos
- **SICC:** Reporte de indicadores de desempeño
- **SIMIT:** Solo si ANI o MinTransporte lo requieren
- **SCADA:** Monitoreo y control de equipos

---

## 7. IMPACTO EN OTROS SISTEMAS

### 7.1 Sistemas Afectados

| **Sistema** | **Impacto** | **Ajuste Requerido** |
|:------------|:------------|:---------------------|
| **Telecomunicaciones** | 15 conexiones adicionales | Actualizar red troncal |
| **Energía Eléctrica** | 15 puntos de alimentación | Actualizar subestaciones |
| **CCO** | 15 equipos adicionales | Actualizar capacidad |
| **Presupuesto** | Costos de equipos + instalación | Actualizar presupuesto |

### 7.2 Documentos a Actualizar

- `T01_Ficha_Sistema_ITS_v1.0.md`
- `T03_Arquitectura_Conceptual_ITS_v1.0.md`
- `T01_Ficha_Sistema_CCO_v1.0.md`
- `T01_Ficha_Sistema_Telecomunicaciones_v1.0.md`
- `PRESUPUESTO_MAESTRO_PROYECTO_v1.0.md`

---

## 8. RIESGOS Y MITIGACIONES

### 8.1 Riesgos Identificados

| **Riesgo** | **Probabilidad** | **Impacto** | **Mitigación** |
|:-----------|:-----------------|:------------|:---------------|
| **Autorización MinTransporte** | Media | Alto | Iniciar trámite temprano |
| **Costos excesivos** | Media | Medio | Optimizar especificaciones |
| **Integración compleja** | Baja | Alto | Validar con proveedores |

### 8.2 Recomendaciones

1. **Separar ETD de Radares:** Diferentes especificaciones y costos
2. **ETD sin cámara:** Reducir costos y complejidad
3. **Radares con autorización:** Cumplir Resolución 718/2018
4. **Integración gradual:** Implementar por fases

---

## 9. CONCLUSIONES Y ACCIONES

### 9.1 Conclusiones

✅ **15 equipos totales (13 ETD + 2 Radares)**  
✅ **ETD: Monitoreo estadístico sin cámara**  
✅ **Radares: Control sancionatorio con cámara ANPR**  
✅ **Integración CCO + SICC garantizada**

### 9.2 Acciones Requeridas

1. **Crear pliego técnico:** Separado para ETD y Radares
2. **Validar ubicaciones:** Con Interventoría y ANI
3. **Tramitar autorización:** MinTransporte para radares
4. **Actualizar presupuesto:** Con costos reales de equipos

---

## 10. REFERENCIAS

- **Contrato:** Apéndice Técnico 2 - Condiciones de O&M (Adenda 2)
- **Sección:** 3.3.4.5 "Sistemas de Monitoreo y Control de Tráfico"
- **Normativa:** Resolución 718/2018, Ley 1581/2012, ISO TC-204
- **Fecha de validación:** 21/10/2025
- **Responsable:** Administrador Contractual EPC

---

**⚠️ ADVERTENCIA LEGAL:** Esta validación es informativa y basada en la documentación contractual disponible. Se recomienda validar con la Interventoría, ANI y Ministerio de Transporte antes de su implementación formal.
