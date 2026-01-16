# SOLICITUD DE COTIZACIÓN (RFQ-007)
## SISTEMA RADARES SANCIONATORIOS (SAST) – DETECCIÓN Y REGISTRO DE INFRACCIONES

**Proyecto:** APP Puerto Salgar - Barrancabermeja  
**RFQ No.:** RFQ-007-RADAR-SAST  
**Fecha de emisión:** 04 de noviembre de 2025  
**Versión:** 1.0  
**Emitido por:** Administrador Contractual EPC

---

## 📋 INFORMACIÓN DEL PROYECTO

| Campo | Valor |
|:------|:------|
| **Longitud corredor** | 293 km |
| **Unidades Funcionales (UF)** | 13 UFs |
| **Tipo de proyecto** | Concesión vial 4G |
| **Cliente final** | ANI |

---

## 🎯 OBJETIVO DE LA COTIZACIÓN

Solicitar oferta integral para el suministro, instalación, configuración, integración al CCO, certificación ONAC, habilitación ante MinTransporte y puesta en marcha del **Sistema de Radares Sancionatorios (SAST)** para detección y registro de infracciones de tránsito, conforme a **Resolución 718/2018**, T04/T05 de radares sancionatorios y validación contractual vigente.

---

## 📦 ALCANCE DE LA COTIZACIÓN

El oferente deberá cotizar el paquete completo, incluyendo al menos:

### 1) Equipos principales (por punto radar sancionatorio)
- Sensor radar Doppler/LIDAR de alta precisión (±2 km/h, homologado ONAC)
- Cámara ANPR (reconocimiento de placas) Full HD, ≥95% precisión, visión nocturna
- Unidad de procesamiento Edge Computing con almacenamiento ≥30 días
- Software de evidencia con encriptación, firma digital y trazabilidad
- Gabinete exterior IP65 con control de temperatura
- Sistema de respaldo energético (UPS ≥4 horas)
- Sincronización GPS (obligatoria para evidencia legal)
- Accesorios de montaje y cableado

### 2) Certificaciones y habilitaciones obligatorias
- Homologación ONAC (certificación metrológica)
- Calibración anual por laboratorio acreditado
- Habilitación ante Ministerio de Transporte (Res. 718/2018)
- Certificados de conformidad y trazabilidad metrológica

### 3) Integraciones y comunicaciones
- Integración con CCO/SCADA: transmisión de eventos en tiempo real
- Capacidad técnica de interoperabilidad SIMIT (habilitación, no activación obligatoria)
- Conectividad por fibra óptica (derivación desde troncal) o medio equivalente
- Protocolos abiertos: SNMP v3, API REST, MQTT

### 4) Instalación y obras
- Obras y soportes para fijación en pórtico o estructura existente
- Señalización preventiva conforme Res. 718/2018 (señales 500 m antes)
- Demarcación horizontal (líneas amarillas, leyenda "RADAR")
- Canalización local FO/energía (30 m promedio) y caja de derivación FO
- Configuración, pruebas FAT/SAT y comisionamiento

### 5) Energía
- Conexión a red eléctrica 120 VAC donde exista disponibilidad  
- Sistema de respaldo UPS ≥4 horas (incluido en gabinete)

---

## 📊 CANTIDADES A COTIZAR

- **Radares Sancionatorios (SAST) - Lote 1: 2 unidades**  
  Referencia: `IV. Ingenieria Basica/02_T04_Especificaciones_Tecnicas_ETD_Radares_v1.0.md` (Cantidad = 2 Radares) y `V. Ingenieria de Detalle/07_T05_Ingenieria_Detalle_RADAR_ETD_v1.0.md`.

> **IMPORTANTE:** Los radares sancionatorios son equipos de **detección y registro de infracciones**. **REQUIEREN cámara ANPR**, certificación ONAC, habilitación ante MinTransporte y cumplimiento estricto de **Resolución 718/2018**. Deben generar evidencia legal válida para procesos sancionatorios.

> **NOTA:** Los **ETD (Estaciones de Toma de Datos)** para monitoreo estadístico son un sistema separado y se cotizan mediante el **RFQ-006 (ETD)**. Los ETD NO requieren cámara ANPR ni certificación ONAC, solo sensores de medición automática.

> Si el oferente propone ajustes de cantidades, deberá anexar cómputo métrico y memoria de cálculo. La evaluación se basará principalmente en precios unitarios.

---

## 📍 UBICACIONES ESPECÍFICAS (PKD/PKR)

Las 2 unidades de radares sancionatorios se ubicarán en sitios críticos del corredor, determinados mediante estudio técnico de seguridad vial. Las ubicaciones definitivas serán confirmadas durante la fase de diseño detallado, con base en:

- Análisis de puntos críticos de infracciones
- Estudio de seguridad vial
- Coordinación con autoridades de tránsito
- Aprobación del Ministerio de Transporte

**Ubicaciones preliminares (sujetas a confirmación):**

| # | PKR (Preliminar) | Ruta | PKD (Preliminar) | UF | Tipo Instalación | Observaciones |
|:--|:-----------------|:-----|:-----------------|:---|:-----------------|:--------------|
| 1 | 143+900 | RN 4511 | 183+550 | UF-12 | Pórtico | Par bidireccional - Zona crítica |
| 2 | Por definir | - | Por definir | - | Pórtico | Segundo sitio crítico a confirmar |

**Referencia:** `VII. Documentos Transversales/43_TABLA_MAESTRA_LAYOUT_PROYECTO_v1.0.md` y estudio técnico de seguridad vial.

> **Nota:** El PKD (Punto Kilométrico de Diseño) es la distancia lineal en el anillo de fibra óptica desde el CCO (PKD 0+000). El PKR (Punto Kilométrico Real) es la progresiva kilométrica según los planos oficiales de la vía. Las ubicaciones definitivas requieren aprobación del Ministerio de Transporte según Res. 718/2018.

---

## 📐 ESPECIFICACIONES TÉCNICAS MÍNIMAS

Basadas en T04/T05, Resolución 718/2018 y validación contractual:

### Sensor radar de alta precisión
- **Tecnología:** Radar Doppler o LIDAR (homologado ONAC)  
- **Cobertura:** Multipista (≥3 carriles simultáneos)  
- **Rango de detección:** ≥150 m  
- **Precisión velocidad:** **±2 km/h** (calibración ONAC obligatoria)  
- **Rango de velocidad:** 10-250 km/h  
- **Frecuencia de medición:** ≤0.5 segundos  
- **Detección múltiple:** Hasta 32 vehículos simultáneos  
- **Certificación:** Homologación ONAC obligatoria

### Cámara ANPR (reconocimiento de placas)
- **Resolución:** **≥1920×1080 px (Full HD)**  
- **Tasa de captura:** ≥30 fps  
- **Reconocimiento de placa:** **≥95% acierto** (prueba con 100 vehículos)  
- **Visión nocturna:** IR o iluminación LED, hasta 50 m  
- **Velocidad de obturación:** 1/1000 seg mínimo  
- **Campo de visión:** Ajustable, 3 carriles mínimo  
- **Almacenamiento local:** **≥30 días** de evidencias

### Unidad de procesamiento (Edge Computing)
- **Procesador:** Intel Core i5 o superior (8ª gen mínimo)  
- **Memoria RAM:** 8 GB DDR4 mínimo  
- **Almacenamiento SSD:** 512 GB mínimo (evidencias 30 días)  
- **Sistema operativo:** Linux o Windows Server  
- **GPU:** Opcional pero recomendada (procesamiento IA)  
- **Interfaz de red:** Ethernet 1 Gbps (dual NIC)  
- **Sincronización horaria:** **GPS integrado + NTP** (precisión <1 segundo)

### Software de gestión y evidencia
- **Captura de evidencias:** Imagen con datos superpuestos (fecha, hora, velocidad, placa, PK, coordenadas GPS)  
- **Reconocimiento de placa (OCR):** Algoritmo ANPR ≥95% precisión  
- **Generación de eventos:** Infracciones automáticas con evidencia  
- **Almacenamiento encriptado:** Hash SHA-256, firma digital  
- **Transmisión a CCO:** En tiempo real o batch  
- **Módulo administración:** Consulta, reporte, exportación  
- **Interoperabilidad SIMIT:** **Capacidad técnica** (protocolo webservice) - habilitación, no activación obligatoria  
- **Auditabilidad:** Log de eventos, accesos, cambios  
- **Encriptación:** TLS 1.2 o superior para transmisión

### Gabinete y protección
- **Material:** Acero inoxidable AISI 304 o aluminio anodizado  
- **Protección IP:** **IP65 mínimo** (exterior)  
- **Control de temperatura:** Ventilación forzada o A/A, -10°C a +50°C interior  
- **Protección contra descargas:** DPS Clase I (40 kA) + Clase II (20 kA)  
- **Cerradura:** Antivandalismo, acceso restringido  
- **Dimensiones típicas:** 80×60×40 cm (alto×ancho×prof)

### Señalización obligatoria (Res. 718/2018)
- **Señal preventiva "Control Electrónico":** 500 m antes del radar (75×75 cm, retrorefléctiva Tipo IX)  
- **Señal informativa "Velocidad Máxima":** 500 m antes del radar (según Manual Señalización Vial)  
- **Demarcación horizontal:** Líneas amarillas, leyenda "RADAR" en zona de detección

### Normativa de referencia
- **Resolución 718/2018** (OBLIGATORIA) - Criterios técnicos para instalación y operación de SAST  
- **Resolución 20223040040565/2022** - Complemento Res. 718 en calibración y certificación  
- **Ley 769/2002** - Código Nacional de Tránsito  
- **Ley 1581/2012** - Protección de Datos Personales  
- **AT2 §3.3.4.5** - Sistemas de monitoreo y control de tráfico  
- **AT3 Cap. IV** - Especificaciones técnicas sistemas ITS  
- **ISO TC-204** - Intelligent Transport Systems  
- **IEC 60529** - Grados de protección IP (IP65 mínimo)  
- **RETIE** - Instalaciones eléctricas

---

## 🧩 ESTRUCTURA DE COTIZACIÓN (FORMULARIO)

| Código | Descripción | Cantidad | Unidad | Precio Unit. COP | Total COP | Precio Unit. USD | Total USD |
|:-------|:------------|:---------|:-------|:-----------------|:-----------|:------------------|:-----------|
| **RAD-001** | Radar sancionatorio completo (sensor radar ONAC + cámara ANPR + unidad procesamiento + software evidencia) | 2 | UND | | | | |
| **RAD-002** | Gabinete IP65 con control temperatura + DPS + UPS ≥4 horas | 2 | UND | | | | |
| **RAD-003** | Sincronización GPS integrada (obligatoria evidencia legal) | 2 | UND | | | | |
| **RAD-004** | Homologación ONAC (certificación metrológica) | 2 | UND | | | | |
| **RAD-005** | Calibración inicial por laboratorio acreditado | 2 | UND | | | | |
| **RAD-006** | Habilitación ante Ministerio de Transporte (Res. 718/2018) | 2 | UND | | | | |
| **RAD-007** | Señalización preventiva conforme Res. 718/2018 (señales 500 m antes + demarcación horizontal) | 2 | UND | | | | |
| **RAD-008** | Integración CCO/SCADA (transmisión eventos tiempo real) | 2 | UND | | | | |
| **RAD-009** | Habilitación interoperabilidad SIMIT (capacidad técnica, no activación) | 2 | UND | | | | |
| **RAD-010** | Canalización FO/energía + caja derivación FO | 2 | UND | | | | |
| **RAD-011** | Obras civiles y herrajes de montaje (pórtico o estructura) | 2 | UND | | | | |
| **RAD-012** | Configuración, pruebas FAT/SAT y comisionamiento | 2 | UND | | | | |
| **RAD-013** | Capacitación operadores y documentación As-Built | 1 | LOT | | | | |
| **RAD-014** | Garantía de equipos (24 meses) e instalación (12 meses) | 1 | LOT | | | | |
| **RAD-015** | Calibración anual (primer año incluido, años siguientes a cotizar por separado) | 2 | UND | | | | |
| **TOTAL** | SISTEMA RADARES SANCIONATORIOS (SAST) | | | | | | |

Notas de diligenciamiento:
- Mantener las cantidades indicadas; diligenciar precios unitarios en **USD y COP**.  
- Incluir marcas/modelos propuestos y fichas técnicas.  
- Especificar si incluyen o no homologación ONAC y habilitación MinTransporte.  
- Tasa de referencia para evaluación: **4,400 COP/USD**.

---

## 🔧 PRUEBAS, COMISIONAMIENTO Y ACEPTACIÓN

### FAT (fábrica)
- Prueba de detección: ≥150 m, 3 carriles simultáneos  
- Prueba de precisión: ±2 km/h con patrón calibrado (preparación para ONAC)  
- Prueba de reconocimiento ANPR: ≥95% acierto con 100 vehículos de prueba  
- Prueba de software evidencia: encriptación, firma digital, trazabilidad  
- Prueba de comunicación: API funcional, latencia <5 segundos  
- Prueba de sincronización GPS: precisión <1 segundo

### SAT (sitio)
- Calibración ONAC: precisión ±2 km/h verificada por laboratorio acreditado  
- Prueba de detección real: tráfico real del corredor, 100% detección  
- Prueba de reconocimiento ANPR: ≥95% precisión con tráfico real  
- Integración CCO: eventos visibles en tiempo real  
- Prueba de evidencia legal: formato conforme Res. 718/2018  
- Prueba de disponibilidad: ≥99% durante 30 días piloto  
- Verificación señalización: señales preventivas e informativas instaladas

### Criterios de aceptación
- 100% puntos operativos con certificación ONAC vigente  
- Habilitación ante MinTransporte obtenida  
- Reconocimiento ANPR ≥95% verificado  
- Evidencia legal generada conforme Res. 718/2018  
- Integración CCO funcional; disponibilidad ≥99%  
- Entregables As-Built completos (planos, protocolos, certificados ONAC, habilitación MinTransporte)

---

## 📋 CERTIFICACIONES Y HABILITACIONES OBLIGATORIAS

### Homologación ONAC (Obligatoria)
- Certificación metrológica para equipos de medición de velocidad  
- Validez: debe mantenerse vigente durante operación  
- Renovación: según normativa ONAC vigente

### Habilitación Ministerio de Transporte (Obligatoria)
- Conforme Resolución 718/2018  
- Requisitos: estudio técnico, señalización, certificación ONAC  
- Validez: según normativa MinTransporte

### Calibración Anual (Obligatoria)
- Por laboratorio acreditado  
- Trazabilidad metrológica  
- Certificado de calibración actualizado

---

## 🔄 INTEROPERABILIDAD SIMIT (Capacidad Técnica)

**Cláusula de Interoperabilidad:**

> "Los equipos Radar–SAST deberán incluir **capacidad técnica** de conexión al sistema nacional de gestión de infracciones (SIMIT) conforme a la Resolución 718 de 2018 del Ministerio de Transporte. No obstante, la transmisión efectiva de información sancionatoria o datos personales al SIMIT **no será obligatoria**, y solo se efectuará si el Concesionario o la ANI lo determinan posteriormente, previo análisis de costos y responsabilidades. El contratista deberá garantizar que los equipos y software queden **habilitados** para dicha interoperabilidad, sin que implique su activación inmediata ni costos adicionales automáticos para el Concesionario."

**Requisitos técnicos de capacidad:**
- Protocolo webservice: SOAP o REST según especificaciones SIMIT  
- Formato de datos: XML o JSON según SIMIT  
- Campos obligatorios: Placa, fecha/hora, velocidad, foto, ubicación GPS  
- Encriptación: TLS 1.2 o superior  
- Autenticación: Certificado digital

> **⚠️ IMPORTANTE:** La habilitación de la conexión SIMIT es **opcional** y queda sujeta a decisión futura del Concesionario/ANI. El costo de operación SIMIT (si se activa) NO está incluido en CAPEX.

---

## 📅 CRONOGRAMA DE LICITACIÓN

| Fecha | Actividad |
|:------|:----------|
| 04-Nov-2025 | Emisión RFQ |
| 11-Nov-2025 | Límite consultas |
| 14-Nov-2025 | Respuesta a consultas |
| 21-Nov-2025 | Cierre ofertas (12:00) |
| 24-29 Nov-2025 | Evaluación |
| 02-Dec-2025 | Adjudicación |

---

## 📄 DOCUMENTOS A PRESENTAR

1) Documentos administrativos y legales (registro, RUT, estados financieros)  
2) Experiencia específica en sistemas RADAR-ANPR sancionatorios (últimos 5 años, mínimo 3 proyectos similares con Res. 718/2018)  
3) Propuesta técnica: metodología de instalación, integración CCO, plan de pruebas y obtención certificaciones ONAC/habilitación MinTransporte  
4) Datasheets y certificaciones:
   - Homologación ONAC (si ya existe para el modelo propuesto)
   - ISO TC-204 (ITS)
   - CE, FCC (equipos electrónicos)
   - IP65 (protección)
   - Certificados de conformidad metrológica
5) APUs principales y formulario de precios diligenciado  
6) Cronograma de ejecución (incluye tiempo para homologación ONAC y habilitación MinTransporte)  
7) Plan de calibración y mantenimiento metrológico  
8) Garantías ofrecidas y pólizas

---

## 🧪 CRITERIOS DE EVALUACIÓN

| Criterio | Ponderación | Descripción |
|:---------|:-----------:|:------------|
| **Precio** | **35%** | Competitividad (precios unitarios) |
| **Calidad técnica** | **30%** | Cumplimiento T04/T05 + Res. 718/2018 + certificaciones ONAC |
| **Experiencia** | **20%** | Proyectos RADAR-ANPR sancionatorios con Res. 718/2018 (Colombia preferible) |
| **Certificaciones** | **10%** | Homologación ONAC existente o capacidad demostrada para obtenerla |
| **Programa** | **5%** | Plazo y coherencia de ejecución (incluye tiempo certificaciones) |

Requisitos Pasa/No Pasa:
- Capacidad de obtener homologación ONAC (o tenerla ya)
- Cumplimiento estricto Res. 718/2018
- Cámara ANPR ≥95% precisión
- Software evidencia con encriptación y firma digital
- Plan de pruebas y certificaciones
- Validez oferta ≥90 días

---

## 📍 CONDICIONES DEL SITIO Y COORDENADAS

Las ubicaciones específicas serán confirmadas con base en estudio técnico de seguridad vial y coordinación con autoridades. El oferente debe prever:
- Trabajo en altura (pórticos)
- PMT (Permiso de Manejo de Tránsito)
- Restricciones de vía en operación
- Coordinación con autoridades de tránsito
- Instalación de señalización preventiva conforme Res. 718/2018

---

## 📎 ANEXOS Y REFERENCIAS

- `IV. Ingenieria Basica/02_T04_Especificaciones_Tecnicas_ETD_Radares_v1.0.md`  
- `V. Ingenieria de Detalle/07_T05_Ingenieria_Detalle_RADAR_ETD_v1.0.md`  
- `VII. Documentos Transversales/35_VALIDACION_CONTRACTUAL_ETD_RADARES_v1.0.md`
- **Resolución 718/2018** del Ministerio de Transporte
- **Resolución 20223040040565/2022** del Ministerio de Transporte
- Manual de Señalización Vial (INVIAS)

---

## 📞 CONTACTO Y ENTREGA

**Envío de ofertas:** licitaciones@proyecto.com  
**Asunto:** "OFERTA RFQ-007 RADARES SANCIONATORIOS – [EMPRESA]"  
**Formato:** PDF firmado + Excel de precios  
**Plazo de validez:** ≥90 días  

---

**Fin del documento – RFQ-007 Radares Sancionatorios v1.0**

