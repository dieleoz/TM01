# SOLICITUD DE COTIZACIÓN (RFQ-007)
## SISTEMA MONITORES DE VELOCIDAD INFORMATIVOS – MEDICIÓN Y REPORTE DE VELOCIDADES PROMEDIO

**Proyecto:** APP Puerto Salgar - Barrancabermeja  
**RFQ No.:** RFQ-007-MONITORES-VELOCIDAD  
**Fecha de emisión:** 04 de noviembre de 2025  
**Versión:** 2.1 (Audit .42 Final)  
**Emitido por:** Administrador Contractual EPC

> **Trazabilidad contractual:** Este documento es derivado contractual del **Apéndice Técnico 2 §3.3.5.1** del Contrato APP Puerto Salgar–Barrancabermeja, con aplicación complementaria de los **Apéndices Técnicos 3 y 4**.

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

Solicitar oferta integral para el suministro, instalación, configuración, integración al CCO y puesta en marcha del **Sistema de Monitores de Velocidad Informativos** para **fines informativos** de la Policía de Carreteras y la ANI, conforme a **AT2 §3.3.5.1**, T04/T05 y validación contractual vigente.

**Base Contractual:** Apéndice Técnico 2 (AT2) §3.3.5.1 establece:

> *"El Concesionario debe instalar, en los sitios críticos de la vía, un sistema de monitores de velocidad que le permita evaluar, **para fines informativos propios de la Policía de Carreteras y de la ANI**, **velocidades promedio del tránsito** de la(s) vía(s)."*

---

## ⚠️ FUNCIÓN DEL SISTEMA (NO SANCIONATORIO)

**IMPORTANTE:** Este sistema tiene **fines informativos** y de gestión de seguridad vial. **NO es un sistema sancionatorio**.

**Usos de la información:**
- ✅ Evaluar velocidades promedio del tránsito
- ✅ Identificar puntos críticos de accidentalidad
- ✅ Planificar instalación de señalización adicional
- ✅ Coordinar movilización de Policía de Carreteras a zonas de riesgo
- ✅ Realizar intervenciones para disuadir exceso de velocidad
- ✅ Alimentar indicadores de nivel de servicio (AT4)
- ✅ Reportes mensuales a la ANI

**NO se usará para:**
- ❌ Emisión de comparendos
- ❌ Sanciones de tránsito
- ❌ Procesos sancionatorios
- ❌ Evidencia legal para multas

---

## 📦 ALCANCE DE LA COTIZACIÓN

El oferente deberá cotizar el paquete completo, incluyendo al menos:

### 1) Equipos principales (por punto monitor de velocidad)
- Sensor radar Doppler/microondas para medición de velocidad y flujo vehicular
- Cámaras equipadas para medir velocidad y toma de fotos de matrícula (respaldo de mediciones)
- Unidad de control y procesamiento con almacenamiento local
- Gabinete exterior IP65 con protección eléctrica
- Sistema de respaldo energético (UPS ≥4 horas)
- Accesorios de montaje y cableado

### 2) Integraciones y comunicaciones
- Integración con CCO/SCADA: transmisión de datos en tiempo real
- Compatibilidad con instrumentos metodológicos de Policía de Carreteras y ANI (SIINCO u otros)
- **Conectividad:** TCP/IP sobre fibra óptica (derivación desde troncal) - **OBLIGATORIO** (NO se aceptan soluciones inalámbricas)
- **Protocolos:** SNMP v3, API REST, MQTT
- **Software/API:** Software de gestión y API REST documentada para integración con CCO

### 3) Instalación y obras
- Obras y soportes para fijación en pórtico, poste o estructura existente
- Señalización informativa/preventiva conforme Manual de Señalización Vial
- Canalización local FO/energía (30 m promedio) y caja de derivación FO
- Configuración, pruebas FAT/SAT y comisionamiento

### 4) Energía
- Conexión a red eléctrica 120 VAC donde exista disponibilidad  
- Sistema de respaldo UPS ≥4 horas (incluido en gabinete)

---

## 📊 CANTIDADES A COTIZAR

- **Monitores de Velocidad Informativos - Lote 1: 2 unidades**  
  Referencia: `IV. Ingenieria Basica/02_T04_Especificaciones_Tecnicas_ETD_Radares_v2.1.md` y `V. Ingenieria de Detalle/07_T05_Ingenieria_Detalle_RADAR_ETD_v2.1.md`.

> **IMPORTANTE:** Estos monitores de velocidad tienen **fines informativos** para Policía de Carreteras y ANI. **NO son sistemas sancionatorios**. NO requieren homologación ONAC, autorización MinTransporte ni cumplimiento de Resolución 718/2018.
> 
> **Nota aclaratoria:** Los requisitos de homologación ONAC, autorización MinTransporte y cumplimiento de Resolución 718/2018 solo aplican a sistemas sancionatorios conforme la Resolución 718/2018 del Ministerio de Transporte. Al tratarse de monitores informativos según **AT2 §3.3.5.1**, que establece "sistema de monitores de velocidad que le permita evaluar, **para fines informativos** propios de la Policía de Carreteras y de la ANI", no se requieren dichas certificaciones. El sistema cumple exclusivamente con las especificaciones técnicas establecidas en AT2, AT3 y AT4 del contrato.

> **NOTA:** Los **ETD (Estaciones de Toma de Datos)** para monitoreo estadístico son un sistema separado y se cotizan mediante el **RFQ-006 (ETD)**. Los ETD miden velocidad promedio por Unidad Funcional.

> Si el oferente propone ajustes de cantidades, deberá anexar cómputo métrico y memoria de cálculo. La evaluación se basará principalmente en precios unitarios.

---

## 📍 UBICACIONES ESPECÍFICAS (PKD/PKR)

Las 2 unidades de monitores de velocidad se ubicarán en **sitios críticos de la vía**, determinados mediante **Estudio técnico** que el Concesionario realizará, conforme a AT2 §3.3.5.1.

**Ubicaciones preliminares (sujetas a confirmación mediante estudio técnico):**

| # | PKR (Preliminar) | Ruta | PKD (Preliminar) | UF | Tipo Instalación | Observaciones |
|:--|:-----------------|:-----|:-----------------|:---|:-----------------|:--------------|
| 1 | 143+900 | RN 4511 | 183+550 | UF-12 | Pórtico | Zona crítica - Par bidireccional |
| 2 | Por definir | - | Por definir | - | Pórtico | Segundo sitio crítico según estudio técnico |

**Referencia:** `VII. Documentos Transversales/43_TABLA_MAESTRA_LAYOUT_PROYECTO_v1.0.md`

> **Nota:** El PKD (Punto Kilométrico de Diseño) es la distancia lineal en el anillo de fibra óptica desde el CCO (PKD 0+000). El PKR (Punto Kilométrico Real) es la progresiva kilométrica según los planos oficiales de la vía. Las ubicaciones definitivas obedecerán al **Estudio técnico** que el Concesionario realice conforme AT2 §3.3.5.1.

---

## 📐 ESPECIFICACIONES TÉCNICAS MÍNIMAS

Basadas en AT2 §3.3.5.1, AT3 Cap. IV y T04/T05:

### FUNCIONES REQUERIDAS (Obligatorias)

Conforme AT2 §3.3.5.1, el sistema debe cumplir:
- ✅ **Medir velocidad promedio del tránsito** (función principal - fines informativos)
- ✅ Medir velocidad instantánea de vehículos (para cálculo de promedio)
- ✅ Medir cantidad de vehículos (flujo vehicular)
- ✅ Medir flujo por carril
- ✅ **Toma de imágenes/fotos** (registro y validación técnica de mediciones)
- ⚠️ **Las imágenes NO constituyen evidencia sancionatoria, solo registro informativo**

> **Nota sobre precisión:** Al ser sistema informativo (no sancionatorio), el margen de error en la medición de velocidad no es crítico. Lo importante es obtener **velocidad promedio representativa** del tránsito para fines de gestión de seguridad vial.

### OPCIONES TECNOLÓGICAS ACEPTABLES

El contrato menciona "medidores por radar y cámaras", pero se aceptan las siguientes **opciones tecnológicas** siempre que cumplan las funciones requeridas:

#### **OPCIÓN 1: Radar + Cámara OCR (Recomendada)**
- Sensor radar Doppler/microondas para medición de velocidad y flujo
- Cámara con OCR para toma de fotos de matrícula (respaldo técnico)
- **Ventaja:** Mayor precisión en medición de velocidad

#### **OPCIÓN 2: Cámara con Analítica de Video + OCR (Recomendada)**
- Cámara IP con analítica de video para medición de velocidad y flujo
- Máscaras virtuales por carril para medición individual
- OCR integrado para reconocimiento de placas
- **Ventaja:** Una sola tecnología, menor complejidad, entrega velocidad promedio y datos por carril
- **Funcionalidad:** La cámara mide velocidad mediante análisis de video (tracking de vehículos) y entrega datos por carril mediante máscaras virtuales

#### **OPCIÓN 3: Radar + LIDAR + Cámara OCR**
- Sensor radar para medición de velocidad
- LIDAR para medición de flujo y clasificación
- Cámara OCR para fotos de matrícula
- **Ventaja:** Mayor precisión y capacidades avanzadas

#### **OPCIÓN 4: Solo Radar (REQUIERE JUSTIFICACIÓN A INTERVENTORÍA)**
- Sensor radar para medición de velocidad y flujo
- **Limitación:** No cumple función de "toma de fotos de matrícula" requerida por contrato
- **⚠️ JUSTIFICACIÓN REQUERIDA:** Si se propone esta opción, el **Concesionario (EPC)** debe justificar ante la **Interventoría** por qué no incluye cámara y cómo se cumple la función de "toma de fotos de matrícula" requerida por AT2 §3.3.5.1

> **Nota importante:** El contrato establece "medidores por radar **y cámaras** equipadas para medir velocidad y toma de fotos de matrícula". Por lo tanto:
> - **Opción recomendada:** Incluir cámara (Opción 1, 2 o 3) para cumplir completamente con el contrato sin necesidad de justificación
> - **Opción con justificación:** Si se propone solo radar (Opción 4), el **Concesionario debe justificar ante Interventoría** por qué no incluye cámara y cómo se cumple la función de validación técnica mediante fotos de matrícula

### ESPECIFICACIONES TÉCNICAS POR COMPONENTE

#### Sensor de medición (Radar, LIDAR o Video Analítico)

**Funciones requeridas:**
- ✅ Medir velocidad instantánea y promedio
- ✅ Medir cantidad de vehículos (flujo)
- ✅ Medir flujo por carril
- ✅ **Operación 24/7 (día y noche)** - conforme AT2 §3.3.4.5, disponibilidad ≥99% anual

**Especificaciones técnicas:**
- **Tecnología:** Radar Doppler, microondas, LIDAR o analítica de video  
- **Operación:** **24/7 (día y noche)** - debe funcionar en todas las condiciones de iluminación
- **Cobertura:** Multipista (≥3 carriles simultáneos)  
- **Rango de detección:** ≥150 m  
- **Precisión velocidad:** ±3 km/h (medición informativa - no crítica para fines informativos)  
- **Rango de velocidad:** 10-200 km/h  
- **Frecuencia de actualización:** ≤1 segundo  
- **Detección múltiple:** Hasta 32 vehículos simultáneos
- **Medición por carril:** Si es analítica de video, debe permitir máscaras virtuales por carril para entregar datos individuales
- **Condiciones ambientales:** Debe operar en condiciones de día y noche, con diferentes niveles de iluminación natural y artificial

#### Cámara para imágenes/registro (Recomendada/Opcional según tecnología)

**Función requerida (conforme AT2 §3.3.5.1):**
- ✅ **Toma de fotos de matrícula** (el contrato establece esta función pero no especifica el tipo de foto exacta)
- ✅ Las imágenes también pueden proporcionar medición de velocidad (si es analítica de video)
- ⚠️ **NO constituyen evidencia sancionatoria, solo registro informativo**

**Interpretación de "fotos de matrícula" (AT2 §3.3.5.1):**
El contrato establece "toma de fotos de matrícula" pero **NO especifica**:
- ❌ Si debe ser foto del vehículo completo donde se vea la matrícula
- ❌ Si debe ser foto solo de la matrícula (recorte/OCR)
- ❌ Si debe ser video/grabación continua
- ❌ Resolución mínima requerida
- ❌ Si la matrícula debe ser legible o solo visible

**Consideraciones técnicas y económicas:**
- ⚠️ **OCR enfocado solo en placa:** No muestra el vehículo completo, limitado para validación técnica
- ⚠️ **Foto completa + recorte de placa:** Más complejo de mantener, mayor costo
- ✅ **Foto del vehículo completo donde se vea la matrícula:** Solución simple, económica y suficiente para registro/validación técnica
- ⚠️ **Video/grabación continua:** El contrato NO menciona video, solo "fotos" - más complejo y costoso, no necesario

**El oferente debe:**
- ✅ Especificar qué tipo de foto captura su solución (recomendado: vehículo completo donde se vea la matrícula)
- ✅ Justificar técnicamente que su solución cumple la función de "toma de fotos de matrícula" según su interpretación
- ✅ Especificar la resolución y características técnicas de las fotos que captura
- ✅ Indicar si incluye OCR (opcional, no obligatorio) y si es así, si también captura foto del vehículo completo

**Especificaciones técnicas (si se incluye cámara):**
- **Función requerida (conforme AT2 §3.3.5.1):** Cámaras equipadas para medir velocidad y toma de fotos de matrícula
- **Operación:** **24/7 (día y noche)** - conforme AT2 §3.3.4.5, la disponibilidad de equipos de control de tráfico debe ser ≥99% anual
- **Tipo de foto:** El oferente debe especificar qué tipo de foto captura (vehículo completo, recorte de matrícula, etc.)
- **Resolución:** El oferente debe especificar la resolución mínima requerida según su tecnología para cumplir la función
- **Tasa de captura:** Suficiente para medir velocidad y capturar fotos (el oferente debe especificar)
- **Reconocimiento de placa (OCR):** Opcional - el oferente puede incluir OCR si su tecnología lo permite, pero no es obligatorio conforme al contrato
- **Visión nocturna/Iluminación:** **OBLIGATORIO** - el sistema debe funcionar día y noche (24/7), por lo tanto debe incluir:
  - Iluminación IR (infrarroja) o LED para visión nocturna, O
  - Sensores con capacidad de operación en condiciones de baja iluminación
  - El oferente debe especificar el rango de iluminación y las condiciones mínimas de operación
- **Velocidad de obturación:** Ajustable según condiciones de iluminación (día/noche)
- **Campo de visión:** Ajustable, debe cubrir todos los carriles según ubicación de instalación
- **Almacenamiento local:** Suficiente para almacenar imágenes de registro (el oferente debe especificar capacidad y tiempo de retención)
- **Analítica de video (si aplica):** Máscaras virtuales por carril para medición individual de velocidad y flujo

**Requisitos de imágenes/registro (conforme AT2 §3.3.5.1):**
- ✅ **Función:** Toma de fotos de matrícula (el contrato NO menciona video/grabación, solo "fotos")
- ✅ **Tipo de foto recomendado:** Foto del vehículo completo donde se vea la matrícula (solución simple y económica)
- ✅ **Formato:** JPEG o PNG (el oferente debe especificar)
- ✅ **Metadatos asociados:** Fecha, hora, velocidad medida, carril, coordenadas GPS, PK (accesibles vía API)
- ⚠️ **OCR de placas:** NO es obligatorio conforme al contrato - el oferente puede incluirlo como valor agregado, pero debe considerar que si solo captura recorte de placa (OCR), no cumple completamente la función de registro del vehículo
- ⚠️ **Video/grabación:** El contrato NO menciona video ni grabación continua - solo "fotos" - no es necesario ni obligatorio
- ✅ **Acceso vía API:** Las imágenes deben ser accesibles mediante API REST con metadatos asociados
- ✅ **Almacenamiento:** Local + opción de almacenamiento remoto en CCO (el oferente debe especificar capacidad)
- ⚠️ **Propósito:** Las imágenes son para registro y validación técnica, NO para evidencia sancionatoria

> **Recomendación técnica:** La solución más simple y económica que cumple el contrato es **foto del vehículo completo donde se vea la matrícula**, con metadata asociada (velocidad, fecha, hora, etc.). Esto permite registro y validación técnica sin complejidades adicionales de OCR o video.

> **Nota importante:** 
> - El contrato (AT2 §3.3.5.1) establece "cámaras equipadas para medir velocidad y toma de fotos de matrícula" pero **NO especifica qué tipo de foto ni resolución mínima**.
> - El contrato **NO menciona video ni grabación continua**, solo "fotos".
> - **Solución recomendada (simple y económica):** Foto del vehículo completo donde se vea la matrícula, con metadata asociada. Esto cumple la función requerida sin complejidades adicionales.
> - El oferente debe justificar técnicamente que su solución cumple la función de "toma de fotos de matrícula" según su interpretación y tecnología propuesta.

> **Nota sobre cámara:** 
> - Si la solución es **cámara con analítica de video** (Opción 2): La misma cámara cumple ambas funciones (medición de velocidad mediante tracking de vehículos + imágenes para registro). Las máscaras virtuales por carril permiten entregar datos individuales por carril.
> - Si es **radar + cámara** (Opción 1): El radar mide velocidad y la cámara toma imágenes para registro.
> - Si es **solo radar** (Opción 4): Requiere justificación ante Interventoría por qué no incluye imágenes.

### Unidad de control y procesamiento

- **Procesador:** ARM Cortex-A9 o superior, ≥1.5 GHz  
- **Memoria RAM:** ≥2 GB  
- **Almacenamiento:** ≥32 GB flash (datos históricos 90 días mínimo)  
- **Sistema operativo:** Linux embebido o equivalente  
- **Interfaz de red:** Ethernet 1 Gbps (RJ45)  
- **Conectividad:** **TCP/IP sobre fibra óptica (OBLIGATORIO)** - NO se aceptan soluciones inalámbricas  
- **Protocolos:** TCP/IP, SNMP v3, API REST, MQTT  
- **Sincronización horaria:** NTP o GPS (precisión <1 segundo)

### Software de gestión y reporte

**Funciones requeridas (conforme AT2 §3.3.5.1):**
- ✅ Captura de datos de velocidad (instantánea y promedio)
- ✅ Captura de cantidad y flujo de vehículos
- ✅ Captura de imágenes de matrícula (respaldo validación)
- ✅ Almacenamiento de datos históricos
- ✅ Transmisión en tiempo real al CCO
- ✅ Generación de reportes para Policía de Carreteras y ANI
- ✅ Compatibilidad con instrumentos metodológicos (SIINCO u otros)
- ✅ Exportación de datos para informes mensuales

**Características técnicas:**
- **Transmisión CCO:** En tiempo real o batch (latencia <100 ms)
- **Almacenamiento local:** Buffer mínimo 72 horas si falla comunicación
- **Formato de datos:** Compatible con requerimientos Policía de Carreteras y ANI
- **Módulo administración:** Consulta, reporte, exportación
- **Auditabilidad:** Log de eventos, accesos, cambios

### Software/API de integración (OBLIGATORIO)

**El oferente debe entregar:**
- ✅ **Software de gestión** (aplicación web o desktop) para consulta de datos
- ✅ **API REST** documentada para integración con CCO
- ✅ **SDK/Librerías** (opcional pero recomendado) para desarrollo de integraciones

**Funcionalidades requeridas de la API:**
- ✅ **Consulta por punto de instalación:** Obtener datos de velocidad por carril para un punto específico
- ✅ **Consulta de imágenes:** Acceso a registro de imágenes por punto, fecha y hora
- ✅ **Datos en tiempo real:** Streaming de datos de velocidad y flujo
- ✅ **Datos históricos:** Consulta de promedios por período (hora, día, mes)
- ✅ **Metadatos de imágenes:** Información asociada a cada imagen (fecha, hora, velocidad, carril, coordenadas)

**Endpoints mínimos requeridos:**
```
GET /api/v1/points/{point_id}/speed-by-lane
GET /api/v1/points/{point_id}/images
GET /api/v1/points/{point_id}/flow-by-lane
GET /api/v1/points/{point_id}/average-speed
GET /api/v1/images/{image_id}/metadata
```

**Formato de respuesta:**
- JSON (preferido) o XML
- Documentación OpenAPI/Swagger
- Autenticación: API Key o OAuth2

### Gabinete y protección

- **Material:** Acero inoxidable AISI 304 o aluminio anodizado  
- **Protección IP:** **IP65 mínimo** (exterior)  
- **Control de temperatura:** Ventilación forzada o A/A, -10°C a +50°C interior  
- **Protección contra descargas:** DPS Clase I (40 kA) + Clase II (20 kA)  
- **Cerradura:** Antivandalismo, acceso restringido  
- **Dimensiones típicas:** 60×50×35 cm (alto×ancho×prof)

### Requisitos de instalación y ubicación

**Ubicación física:**
- ✅ **Instalación en costado de vía** (preferido) o **centro de vía** (si aplica)
- ✅ **Altura específica para analítica:** Según especificaciones del fabricante para óptimo funcionamiento de medición de velocidad y flujo
- ⚠️ **Altura para imágenes:** No es crítica (las imágenes son para registro, no para identificación sancionatoria)
- ✅ **Orientación:** Según especificaciones técnicas del fabricante para cobertura de todos los carriles

**Requisitos técnicos de instalación:**
- ✅ **Poste o estructura:** Poste metálico o estructura existente (según diseño)
- ✅ **Conexión fibra óptica:** Derivación desde troncal de fibra óptica del proyecto
- ✅ **Canalización:** HDPE 2" desde poste hasta caja de paso de fibra óptica
- ✅ **Protección:** Gabinete IP65 con protección contra vandalismo
- ✅ **Alimentación:** 110V AC o 220V AC según disponibilidad en sitio
- ✅ **UPS:** Sistema de respaldo de energía (mínimo 4 horas) para continuidad de operación

**Documentación de instalación:**
- ✅ Planos de ubicación (coordenadas GPS, PK)
- ✅ Especificaciones de altura y orientación
- ✅ Esquemas de conexión eléctrica y de fibra óptica
- ✅ Manual de instalación y puesta en marcha

### Señalización informativa/preventiva

**Conforme Manual de Señalización Vial vigente:**
- **Tipo:** Informativa o preventiva (NO sancionatoria)
- **Leyenda sugerida:** "Velocidad controlada electrónicamente" o similar
- **Ubicación:** Según Manual de Señalización Vial
- ⚠️ **NO se requiere** señalización sancionatoria conforme Res. 718/2018

### Normativa de referencia

- **AT2 §3.3.5.1** - Sistemas de monitoreo de velocidad (informativos)  
- **AT3 Cap. IV** - Especificaciones técnicas sistemas ITS  
- **AT4 Indicadores** - Velocidades promedio por UF  
- **ISO TC-204** - Intelligent Transport Systems  
- **IEC 60529** - Grados de protección IP (IP65 mínimo)  
- **RETIE** - Instalaciones eléctricas  
- **Manual de Señalización Vial** - INVIAS

---

## 📤 INFORMACIÓN QUE DEBE ENTREGAR EL SISTEMA

Conforme a AT2 §3.3.5.1, el sistema debe entregar:

### Datos de velocidad
- ✅ Velocidad instantánea de vehículos (km/h)
- ✅ Velocidad promedio del tránsito (km/h)
- ✅ Velocidad promedio por período (hora, día, mes)

### Datos de flujo vehicular
- ✅ Cantidad de vehículos por período
- ✅ Flujo vehicular por carril (veh/hora)
- ✅ Clasificación vehicular (livianos/pesados) - opcional

### Datos de imágenes
- ✅ **Fotos de matrícula** (conforme AT2 §3.3.5.1 - función requerida)
- ✅ **Tipo de foto:** El contrato NO especifica, pero se recomienda foto del vehículo completo donde se vea la matrícula (solución simple y económica)
- ✅ **Video/grabación:** NO es requerido por el contrato (solo menciona "fotos")
- ✅ Fecha y hora de captura
- ✅ Metadatos asociados (velocidad medida, carril, PK, coordenadas GPS)
- ⚠️ **OCR de placas:** NO es obligatorio conforme al contrato - el oferente puede incluirlo como valor agregado, pero debe considerar que si solo captura recorte de placa, no muestra el vehículo completo
- ✅ Acceso vía API REST por punto de instalación
- ⚠️ **Propósito:** Registro y validación técnica, NO evidencia sancionatoria

### Reportes y transmisión
- ✅ Transmisión en tiempo real al CCO
- ✅ Reportes mensuales para ANI
- ✅ Información para Policía de Carreteras cuando la requiera
- ✅ Compatibilidad con SIINCO u otros instrumentos metodológicos

### Formato de entrega
- ✅ **Datos en tiempo real vía API REST** (TCP/IP sobre fibra óptica - OBLIGATORIO)
- ✅ **Consulta por punto de instalación:** API para obtener velocidad por carril por punto específico
- ✅ **Consulta de imágenes:** API para acceder a registro de imágenes por punto, fecha y hora
- ✅ Reportes exportables (CSV, Excel, JSON)
- ✅ Acceso web para consulta de datos históricos
- ✅ Almacenamiento mínimo 90 días (datos) y 30 días (imágenes)
- ✅ **Software de gestión** entregado por el proveedor
- ✅ **Documentación API** (OpenAPI/Swagger)

---

## 🧩 ESTRUCTURA DE COTIZACIÓN (FORMULARIO)

| Código | Descripción | Cantidad | Unidad | Precio Unit. COP | Total COP | Precio Unit. USD | Total USD |
|:-------|:------------|:---------|:-------|:-----------------|:-----------|:------------------|:-----------|
| **MON-001** | Monitor de velocidad completo (sensor radar + cámara velocidad/matrícula + unidad procesamiento + software gestión) | 2 | UND | | | | |
| **MON-002** | Gabinete IP65 con control temperatura + DPS + UPS ≥4 horas | 2 | UND | | | | |
| **MON-003** | Sincronización horaria (NTP/GPS) | 2 | UND | | | | |
| **MON-004** | Integración CCO/SCADA (transmisión datos tiempo real) | 2 | UND | | | | |
| **MON-005** | Compatibilidad instrumentos metodológicos (SIINCO u otros) | 2 | UND | | | | |
| **MON-006** | Señalización informativa/preventiva conforme Manual Señalización Vial | 2 | UND | | | | |
| **MON-007** | Canalización FO/energía + caja derivación FO | 2 | UND | | | | |
| **MON-008** | Obras civiles y herrajes de montaje (pórtico o estructura) | 2 | UND | | | | |
| **MON-009** | Configuración, pruebas FAT/SAT y comisionamiento | 2 | UND | | | | |
| **MON-010** | Capacitación operadores y documentación As-Built | 1 | LOT | | | | |
| **MON-011** | Garantía de equipos (24 meses) e instalación (12 meses) | 1 | LOT | | | | |
| **TOTAL** | SISTEMA MONITORES DE VELOCIDAD INFORMATIVOS | | | | | | |

Notas de diligenciamiento:
- Mantener las cantidades indicadas; diligenciar precios unitarios en **USD y COP**.  
- Incluir marcas/modelos propuestos y fichas técnicas.  
- Especificar capacidades de reporte y compatibilidad con SIINCO.  
- Tasa de referencia para evaluación: **4,400 COP/USD**.

---

## 🔧 PRUEBAS, COMISIONAMIENTO Y ACEPTACIÓN

### FAT (fábrica)
- Prueba de detección: ≥150 m, 3 carriles simultáneos  
- Prueba de precisión velocidad: ±3 km/h con patrón calibrado  
- Prueba de medición de flujo: precisión ±2% en conteo vehicular  
- Prueba de captura de imágenes: calidad Full HD verificada  
- Prueba de comunicación: API funcional, latencia <100 ms  
- Prueba de sincronización horaria: precisión <1 segundo

### SAT (sitio)
- Calibración técnica: precisión ±3 km/h verificada  
- Prueba de detección real: tráfico real del corredor, 100% detección  
- Prueba de medición velocidad promedio: cálculo correcto verificado  
- Integración CCO: datos visibles en tiempo real  
- Prueba de reportes: formato correcto para Policía de Carreteras y ANI  
- Compatibilidad SIINCO: verificación de formato de datos  
- Prueba de disponibilidad: ≥99% durante 30 días piloto

### Criterios de aceptación
- 100% puntos operativos; velocidad promedio calculada correctamente  
- Integración CCO funcional; disponibilidad ≥99%  
- Reportes generados correctamente para Policía de Carreteras y ANI  
- Datos transmitidos en tiempo real al CCO  
- Compatibilidad con instrumentos metodológicos verificada  
- Entregables As-Built completos (planos, protocolos, manuales de operación)

---

## 📋 REQUISITOS DE DISPONIBILIDAD Y OPERACIÓN

Conforme AT2 §3.3.5.1:

### Disponibilidad
- **Disponibilidad mínima:** ≥99% anual
- **MTBF (Tiempo Medio Entre Fallas):** ≥8,760 horas (1 año)
- **MTTR (Tiempo Medio de Reparación):** ≤24 horas

### Transmisión de datos
- **Transmisión en tiempo real:** Datos al CCO sin demora significativa
- **Almacenamiento local:** Buffer mínimo 72 horas si falla comunicación
- **Registro de eventos:** Base de datos inviolable e integral

### Acceso a información
- **Policía de Carreteras:** Acceso cuando lo requiera
- **ANI:** Acceso en cualquier momento
- **Formato:** Compatible con instrumentos metodológicos (SIINCO u otros)

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
2) Experiencia específica en sistemas de monitoreo de velocidad informativos (últimos 5 años, mínimo 3 proyectos similares)  
3) Propuesta técnica: metodología de instalación, integración CCO, plan de pruebas y capacidades de reporte  
4) Datasheets y certificaciones:
   - ISO TC-204 (ITS)
   - CE, FCC (equipos electrónicos)
   - IP65 (protección)
   - Certificados de conformidad técnica
5) APUs principales y formulario de precios diligenciado  
6) Cronograma de ejecución (máx. 12 semanas para 2 puntos)  
7) Plan de compatibilidad con instrumentos metodológicos (SIINCO u otros)  
8) Garantías ofrecidas y pólizas

---

## 🧪 CRITERIOS DE EVALUACIÓN

| Criterio | Ponderación | Descripción |
|:---------|:-----------:|:------------|
| **Precio** | **40%** | Competitividad (precios unitarios) |
| **Calidad técnica** | **30%** | Cumplimiento AT2 §3.3.5.1 + T04/T05 + certificaciones técnicas |
| **Experiencia** | **20%** | Proyectos de monitoreo de velocidad informativos (últimos 5 años) |
| **Capacidades de reporte** | **5%** | Compatibilidad con SIINCO y formatos requeridos por Policía/ANI |
| **Programa** | **5%** | Plazo y coherencia de ejecución |

Requisitos Pasa/No Pasa:
- Cumplimiento de especificaciones mínimas (velocidad promedio, flujo vehicular)
- Integración CCO funcional
- Disponibilidad ≥99% garantizada
- Compatibilidad con instrumentos metodológicos (SIINCO u otros)
- Plan de pruebas y certificaciones técnicas
- Validez oferta ≥90 días

---

## 📍 CONDICIONES DEL SITIO Y COORDENADAS

Las ubicaciones específicas serán confirmadas con base en **Estudio técnico** que el Concesionario realizará conforme AT2 §3.3.5.1. El oferente debe prever:
- Trabajo en altura (pórticos)
- PMT (Permiso de Manejo de Tránsito)
- Restricciones de vía en operación
- Coordinación con Policía de Carreteras para acceso a información

---

## 📎 ANEXOS Y REFERENCIAS

- `II. Apendices Tecnicos/AT2_Operacion_Mantenimiento_v1.0.md` - §3.3.5.1
- `IV. Ingenieria Basica/02_T04_Especificaciones_Tecnicas_ETD_Radares_v1.0.md`  
- `V. Ingenieria de Detalle/07_T05_Ingenieria_Detalle_RADAR_ETD_v1.0.md`  
- Manual de Señalización Vial (INVIAS)

---

## 📞 CONTACTO Y ENTREGA

**Envío de ofertas:** licitaciones@proyecto.com  
**Asunto:** "OFERTA RFQ-007 MONITORES VELOCIDAD INFORMATIVOS – [EMPRESA]"  
**Formato:** PDF firmado + Excel de precios  
**Plazo de validez:** ≥90 días  

---

**Fin del documento – RFQ-007 Monitores de Velocidad Informativos v2.1**



<!-- BLOQUE AUTOMATICO INICIO: ETD/RADAR -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - 16 equipos base | Ing. ITS |
| 1.1 | 31/10/2025 | Revisión con información oficial: 15 equipos (13 ETD + 2 SAST) | Ing. ITS |
| 1.2 | 15/01/2026 | Inclusión de Radares Pedagógicos (2) según AT2. Total: 17 operativos. | Adm. Contractual EPC |
| 1.5 | 20/01/2026 | Reconciliación: 18 unidades (
.7M) | Adm. Contractual EPC |
| **2.0** | **27/01/2026** | **OPTIMIZACIÓN CERO ALCANCE (AUDIT 6.0):** Se elimina el 100% del CAPEX ITS. Funcionalidades cubiertas por Peaje (Conteo) y Dotación Policial (SAST). Radares fijos diferidos a O&M (Puntos Críticos). | **Adm. Contractual EPC** |
| Parámetro | Valor | Referencia |
| **Cantidad ETD (ITS Fijo)** | **0** | Cubierto por Peaje / Diferido |
| **Cantidad SAST (ITS Fijo)** | **0** | Dotación Policial (Suministros) |
| **Cantidad Pedagógicos**| **0** | Diferido a O&M |
| **Total equipos Proyecto** | **0** | Estrategia Hard Deck |
| **CAPEX Total ITS** | **<!-- BLOQUE AUTOMATICO INICIO: ETD/RADAR -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - 16 equipos base | Ing. ITS |
| 1.1 | 31/10/2025 | Revisión con información oficial: 15 equipos (13 ETD + 2 SAST) | Ing. ITS |
| 1.2 | 15/01/2026 | Inclusión de Radares Pedagógicos (2) según AT2. Total: 17 operativos. | Adm. Contractual EPC |
| 1.5 | 20/01/2026 | Reconciliación: 18 unidades (
.7M) | Adm. Contractual EPC |
| **2.0** | **27/01/2026** | **OPTIMIZACIÓN CERO ALCANCE (AUDIT 6.0):** Se elimina el 100% del CAPEX ITS. Funcionalidades cubiertas por Peaje (Conteo) y Dotación Policial (SAST). Radares fijos diferidos a O&M (Puntos Críticos). | **Adm. Contractual EPC** |
| Parámetro | Valor | Referencia |
| **Cantidad ETD (ITS Fijo)** | **0** | Cubierto por Peaje / Diferido |
| **Cantidad SAST (ITS Fijo)** | **0** | Dotación Policial (Suministros) |
| **Cantidad Pedagógicos**| **0** | Diferido a O&M |
| **Total equipos Proyecto** | **0** | Estrategia Hard Deck |
| **CAPEX Total ITS** | **<!-- BLOQUE AUTOMATICO INICIO: ETD/RADAR -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - 16 equipos base | Ing. ITS |
| 1.1 | 31/10/2025 | Revisión con información oficial: 15 equipos (13 ETD + 2 SAST) | Ing. ITS |
| 1.2 | 15/01/2026 | Inclusión de Radares Pedagógicos (2) según AT2. Total: 17 operativos. | Adm. Contractual EPC |
| 1.5 | 20/01/2026 | Reconciliación: 18 unidades (
.7M) | Adm. Contractual EPC |
| **2.0** | **27/01/2026** | **OPTIMIZACIÓN CERO ALCANCE (AUDIT 6.0):** Se elimina el 100% del CAPEX ITS. Funcionalidades cubiertas por Peaje (Conteo) y Dotación Policial (SAST). Radares fijos diferidos a O&M (Puntos Críticos). | **Adm. Contractual EPC** |
| Parámetro | Valor | Referencia |
| **Cantidad ETD (ITS Fijo)** | **0** | Cubierto por Peaje / Diferido |
| **Cantidad SAST (ITS Fijo)** | **0** | Dotación Policial (Suministros) |
| **Cantidad Pedagógicos**| **0** | Diferido a O&M |
| **Total equipos Proyecto** | **0** | Estrategia Hard Deck |
| **CAPEX Total ITS** | **<!-- BLOQUE AUTOMATICO INICIO: ETD/RADAR -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - 16 equipos base | Ing. ITS |
| 1.1 | 31/10/2025 | Revisión con información oficial: 15 equipos (13 ETD + 2 SAST) | Ing. ITS |
| 1.2 | 15/01/2026 | Inclusión de Radares Pedagógicos (2) según AT2. Total: 17 operativos. | Adm. Contractual EPC |
| 1.5 | 20/01/2026 | Reconciliación: 18 unidades (
.7M) | Adm. Contractual EPC |
| **2.0** | **27/01/2026** | **OPTIMIZACIÓN CERO ALCANCE (AUDIT 6.0):** Se elimina el 100% del CAPEX ITS. Funcionalidades cubiertas por Peaje (Conteo) y Dotación Policial (SAST). Radares fijos diferidos a O&M (Puntos Críticos). | **Adm. Contractual EPC** |
| Parámetro | Valor | Referencia |
| **Cantidad ETD (ITS Fijo)** | **0** | Cubierto por Peaje / Diferido |
| **Cantidad SAST (ITS Fijo)** | **0** | Dotación Policial (Suministros) |
| **Cantidad Pedagógicos**| **0** | Diferido a O&M |
| **Total equipos Proyecto** | **0** | Estrategia Hard Deck |
| **CAPEX Total ITS** | **<!-- BLOQUE AUTOMATICO INICIO: ETD/RADAR -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - 16 equipos base | Ing. ITS |
| 1.1 | 31/10/2025 | Revisión con información oficial: 15 equipos (13 ETD + 2 SAST) | Ing. ITS |
| 1.2 | 15/01/2026 | Inclusión de Radares Pedagógicos (2) según AT2. Total: 17 operativos. | Adm. Contractual EPC |
| 1.5 | 20/01/2026 | Reconciliación: 18 unidades ($1.7M) | Adm. Contractual EPC |
| **2.0** | **27/01/2026** | **OPTIMIZACIÓN CERO ALCANCE (AUDIT 6.0):** Se elimina el 100% del CAPEX ITS. Funcionalidades cubiertas por Peaje (Conteo) y Dotación Policial (SAST). Radares fijos diferidos a O&M (Puntos Críticos). | **Adm. Contractual EPC** |
| Parámetro | Valor | Referencia |
| **Cantidad ETD (ITS Fijo)** | **0** | Cubierto por Peaje / Diferido |
| **Cantidad SAST (ITS Fijo)** | **0** | Dotación Policial (Suministros) |
| **Cantidad Pedagógicos**| **0** | Diferido a O&M |
| **Total equipos Proyecto** | **0** | Estrategia Hard Deck |
| **CAPEX Total ITS** | **$0 USD** | DT-TM01-ETD-001 |
> Actualizado: 2026-01-27
<!-- BLOQUE AUTOMATICO FIN --> USD** | DT-TM01-ETD-001 |
> Actualizado: 2026-01-28
<!-- BLOQUE AUTOMATICO FIN --> USD** | DT-TM01-ETD-001 |
> Actualizado: 2026-02-02
<!-- BLOQUE AUTOMATICO FIN --> USD** | DT-TM01-ETD-001 |
> Actualizado: 2026-02-02
<!-- BLOQUE AUTOMATICO FIN --> USD** | DT-TM01-ETD-001 |
> Actualizado: 2026-02-03
<!-- BLOQUE AUTOMATICO FIN -->

---
> CERTIFICACION DE COMPRAS: Sincronizado con T05. Cantidades oficiales.




