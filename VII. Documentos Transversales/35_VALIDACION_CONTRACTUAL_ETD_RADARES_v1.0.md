# VALIDACIÓN CONTRACTUAL - ETD Y RADARES (ESTACIONES DE TOMA DE DATOS)
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 22/10/2025  
**Sistema:** ETD (Estaciones de Toma de Datos) + Radares Sancionatorios (Manual 2024)  
**Responsable:** Administrador Contractual EPC  
**Versión:** 2.0  
**Estado:** ✅ Auditoría Metodología .42 Completada

---

## 1. RESUMEN EJECUTIVO

### 1.1 Obligación Contractual Validada

**Cantidad Operativa Validada (Hard Deck):** 
- **14 ETD** (13 UF + 1 Spare / AT4 Indicators)
- **2 Radares SAST** (Sancionatorios / Res. 718)
- **2 Radares Pedagógicos** (Informativos / AT2 §3.3.5.1)
- **Total Lote EPC: 18 equipos** (Reconciliación Audit .42)

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

#### 2.1.2 Apéndice Técnico 2 - Sección 3.3.5.1 (Pedagogical)

> "El Concesionario debe instalar, en los sitios críticos de la vía, un sistema de monitores de velocidad que le permita evaluar velocidades promedio... servirá como base para evaluar la necesidad de instalar señalización adicional o movilizar a la Policía..."

#### 2.1.3 Apéndice Técnico 4 - Indicadores de Nivel de Servicio

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
| **ETD** | 14 | Medición velocidad promedio (13 UF + 1 Spare) | AT4 Indicadores |
| **SAST** | 2 | Detección infracciones en sitios críticos | AT2 §3.3.4.5 |
| **Pedagógicos** | 2 | Información colectiva y prevención | AT2 §3.3.5.1 |
| **TOTAL** | **18** | Cobertura Contractual & Repuestos | Contrato EPC |

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

| **Componente** | **Especificación 2024 / Res. 718** | **Fuente** |
|:---------------|:-------------------------------|:-----------|
| **Tipo ETD** | No Intrusivo (Radar/Microondas) | Proyecto Optimizado |
| **Precisión ETD** | ±3 km/h (Estadístico) | AT3 Cap. IV |
| **Tipo SAST** | Radar + Cámara ANPR (Full Matrix) | Res. 718/2018 |
| **Certificación** | ONAC (Solo SAST) / ISO TC-204 (Todos)| Metrología |
| **Integración** | SICC (ANI) + CCO | AT4 / Indicador O7 |

#### 4.2.2 Funciones Operativas
- **Detección infracciones:** Exceso velocidad, contrasentido, invasión carril
- **Certificación:** ONAC (OBLIGATORIA para SAST)

### 4.3 Radares Pedagógicos (SI-27B)
**Propósito:** Informativo / Educativo.
- **Señal:** SI-27B (Velocidad Registrada).
- **Display:** Matriz LED Ámbar/Bicolor.
- **Requisito:** AT2 §3.3.5.1.
- **Certificación:** NO requiere ONAC (fines informativos).

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

✅ **18 equipos totales (14 ETD + 2 SAST + 2 Pedagógicos)**  
✅ **ETD: Monitoreo estadístico con LPR (Compliance AT2)**  
✅ **SAST: Control sancionatorio con cámara ANPR + ONAC**  
✅ **Pedagógicos: Señal SI-27B Preventiva**

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

