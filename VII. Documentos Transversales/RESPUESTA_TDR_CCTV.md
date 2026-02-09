# 📋 RESPUESTA AL TDR CCTV - OBSERVACIONES Y CORRECCIONES

**Proyecto:** TM01 Troncal Magdalena  
**Documento Origen:** `def cctv.md` (TDR Asesor Externo)  
**Fecha:** 09 de Febrero de 2026  
**Preparado por:** Ingeniería TM01 (EPC)  
**Destinatario:** Asesor Externo / Interventoría

---

## 📌 RESUMEN EJECUTIVO

Se han identificado **16 observaciones críticas** en el TDR de CCTV que requieren corrección antes de proceder a licitación:

### Categorías de Observaciones:

| Categoría | Cantidad | Impacto |
|:----------|:---------|:--------|
| **Sobre-especificaciones técnicas** | 8 | Encarecen sin beneficio contractual |
| **Normas no aplicables** | 5 | Generan confusión y posible rechazo de equipos |
| **Ambigüedades de alcance** | 2 | Imposibilitan cotización precisa |
| **Riesgos contractuales** | 1 | Riesgo económico no presupuestado ($26K-188K USD) |

### Impacto Económico Estimado:

- **Ahorro por correcciones técnicas:** $35,000 - $40,000 USD
- **Riesgo eliminado (RETIE):** $26,600 - $188,000 USD
- **Total:** **$61,600 - $228,000 USD**

---

## 🔍 OBSERVACIONES DETALLADAS

### 1️⃣ ESPECIFICACIONES TÉCNICAS - CÁMARAS PTZ

#### Observación:
El TDR especifica características demasiado restrictivas que segmentan a marcas específicas.

#### Problemas Identificados:

| Especificación TDR | Problema | Corrección Propuesta |
|:-------------------|:---------|:---------------------|
| Sensor: **1/2.8" exacto** | Excluye 1/2.7", 1/2.5" | **1/2.8" o superior** |
| Alcance IR: **200m** | Encarece $300/cámara | **150m mínimo** |
| Alimentación: **24VAC Y PoE+** | Exige ambas simultáneamente | **PoE+ O 24VAC** |
| Protocolos: **Lista de 20+** | Ruido técnico (UDP, TCP, HTTP son obvios) | **Solo esenciales** (IPv4/6, HTTPS, RTSP, NTP, SNMP) |

#### Impacto:
- ✅ Ahorro: $300-800 por cámara
- ✅ Competencia abierta: Axis, Dahua, Hikvision, Bosch, Hanwha, Uniview

#### Texto Corregido:
```markdown
ESPECIFICACIONES CÁMARA PTZ:
• Sensor: 1/2.8" o superior, Progressive Scan CMOS
• Resolución: Mínimo 1920 x 1080 (2 MP)
• Zoom óptico: Mínimo 32X
• Iluminación IR: Alcance efectivo mínimo 150 metros
• Compresión: H.265 y H.264
• Pan: 360° continuo / Tilt: -15° a +90° mínimo
• Protección: IP66 / IK10 (cámara)
• Heater y Defog integrados
• Alimentación: PoE+ (IEEE 802.3at) O 24VAC
• ONVIF Profile S o superior (obligatorio)
```

---

### 2️⃣ SISTEMA DE VIDEOGRABACIÓN - ALMACENAMIENTO

#### Observación:
El TDR exige 90 días de grabación cuando el contrato solo requiere 1 semana.

#### Problemas Identificados:

| Aspecto | TDR | Contrato (AT2 3.3.11.1) | Propuesta |
|:--------|:----|:------------------------|:----------|
| **Período** | 90 días | **1 semana mínimo** | **30 días** (4.3x el mínimo) |
| **Capacidad** | 50 TB | - | **20-25 TB** |
| **Códecs** | MJPEG, MPEG-4, H.264 | - | **H.264 o H.265** (MJPEG/MPEG-4 obsoletos) |

#### Impacto:
- ✅ Ahorro en almacenamiento: $15,000 USD
- ✅ Cumple 4.3x el mínimo contractual

#### Texto Corregido:
```markdown
ALMACENAMIENTO:
• Período: 30 días de grabación continua (cumple AT2 3.3.11.1: mínimo 1 semana)
• Configuración: 1280 x 720 píxeles (720p) a 15 fps
• Compresión: H.264 o H.265
• Dual-stream: grabación local + visualización remota
```

---

### 3️⃣ HARDWARE NVR - SOBRE-DIMENSIONAMIENTO

#### Observación:
El TDR especifica un NVR enterprise de 128 canales cuando el proyecto tiene 7-16 cámaras.

#### Problemas Identificados:

| Especificación | TDR | Proyecto Real | Corrección |
|:---------------|:----|:--------------|:-----------|
| **Capacidad** | 128 cámaras | 7-16 cámaras | **Capacidad para proyecto** |
| **Resolución** | 8 MP | 2 MP (720p) | **Hasta 4 MP** |
| **Salida** | 4K (4096x2160) | - | **Full HD (1920x1080)** |
| **Bahías SATA** | 24 bahías | - | **4-8 bahías** |
| **Capacidad HDD** | 10 TB cada uno | - | **4-8 TB estándar** |

#### Impacto:
- ✅ Ahorro por NVR: $10,000 - $20,000 USD
- ✅ Competencia abierta entre múltiples marcas

#### Texto Corregido:
```markdown
ESPECIFICACIONES NVR:
• Soporte para el número de cámaras del proyecto (según alcance definido)
• Soporte de cámaras hasta 4 megapixeles
• Compresión: H.264 y H.265
• Capacidad para 30 días de grabación continua
• Bahías SATA: Mínimo 4, recomendado 8
• Salidas: HDMI y/o VGA, resolución mínima Full HD
```

---

### 4️⃣ ARQUITECTURA NVR - CENTRALIZADO VS DISTRIBUIDO

#### Observación:
El TDR puede interpretarse como NVR centralizado gigante en CCO, cuando la arquitectura correcta es NVRs locales.

#### Problema:
- NVR centralizado de 50 TB en CCO requiere transmitir grabación full-time por fibra óptica
- Sobrecarga de ancho de banda
- Costo elevado

#### Solución Propuesta:
**Arquitectura Distribuida:**
1. NVR local por sitio (30 días de grabación)
2. Transmisión TCP/IP vía fibra solo para visualización (no grabación)
3. Cliente VMS en CCO para acceso remoto

#### Impacto:
- ✅ Ahorro: $2,000 - $6,500 USD
- ✅ Reduce ancho de banda en 75%
- ✅ Mejora resiliencia (si CCO cae, grabación local continúa)

#### Texto Corregido:
```markdown
ARQUITECTURA NVR DISTRIBUIDA:
• NVR local por edificación (Área de Servicio, CCO, Pesaje)
• Almacenamiento: Mínimo 1 semana localmente
• Transmisión TCP/IP vía fibra óptica al CCO
• Dual-stream: grabación local + visualización remota
• Cliente VMS en mínimo 3 estaciones de trabajo en CCO
```

---

### 5️⃣ INTEGRACIÓN CON SCADA

#### Observación:
El TDR exige "integración total con CCO/SCADA" cuando no se conoce qué SCADA se contratará.

#### Problema:
- No se puede integrar con SCADA desconocido
- Integración con SCADA es responsabilidad del integrador de SCADA, no del proveedor de CCTV

#### Solución Propuesta:
- Proveedor de CCTV entrega sistema autónomo funcional
- Cumplimiento de protocolos estándar (ONVIF, RTSP)
- Documentación de API para integración futura

#### Texto Corregido:
```markdown
INTEROPERABILIDAD:
• ONVIF Profile S o superior (obligatorio)
• Protocolos: RTSP, RTP/RTCP para streaming
• Documentación completa de API REST y ONVIF
• Guía de integración con sistemas de terceros

RESPONSABILIDAD:
• Proveedor CCTV: Sistema autónomo funcional + documentación
• Integrador SCADA: Integración con SCADA (cuando se contrate)
```

---

### 6️⃣ VIDEO WALL Y VMS

#### Observación:
El TDR exige "controlador de video VMS a instalar en el SCADA".

#### Problema:
- No se puede instalar en SCADA desconocido
- Confunde VMS con controlador de Video Wall

#### Solución Propuesta:
- Servidor VMS en CCO (no en SCADA)
- Controlador de Video Wall (hardware decoder)
- 3 Clientes VMS en estaciones de trabajo

#### Texto Corregido:
```markdown
VIDEO WALL Y ESTACIONES:
• Servidor VMS en CCO con licencias para todas las cámaras
• Controlador de Video Wall compatible con 6 pantallas existentes
• Mínimo 3 estaciones de trabajo con cliente VMS
• Funcionalidades: visualización 24/7, control PTZ, reproducción, exportación
• Documentación API/ONVIF para integración futura con SCADA
```

---

### 7️⃣ ALCANCE NVR - MULTIMARCA

#### Observación:
El TDR exige sistema "para cámaras de un sólo sistema o de varios de forma concentrada".

#### Problema:
- Obliga a VMS multimarca centralizado
- No es responsabilidad del proveedor de CCTV integrar cámaras de otros subsistemas

#### Solución Propuesta:
- Sistema específico para cámaras del proveedor de CCTV
- Integración multimarca (si se requiere) es responsabilidad del integrador de SCADA

#### Texto Corregido:
```markdown
ALCANCE:
• Sistema específico para cámaras suministradas por el proveedor de CCTV
• NO incluye integración con cámaras de otros subsistemas (peajes, otros proveedores)
• Integración multimarca (si se requiere) es responsabilidad del integrador de SCADA
```

---

### 8️⃣ NORMAS NO APLICABLES - UNE (ESPAÑOLAS)

#### Observación:
El TDR cita múltiples normas UNE (españolas) que NO son obligatorias en Colombia.

#### Normas UNE a ELIMINAR:

| Norma | Aplicación | Por qué NO aplica |
|:------|:-----------|:------------------|
| **UNE 4826** | Niebla salina (500h) | No exigida por RETIE, proyecto no es costa |
| **UNE-EN 2409** | Adherencia pintura | No exigida por RETIE |
| **UNE 20-501-2-34** | Vibraciones | No aplica para gabinetes CCTV |
| **UNE 20-550** | Choques eléctricos | Cubierto por RETIE + NTC 2050 |
| **UNE 20460-5-54** | Toma de tierra | Cubierto por RETIE 2024 |

#### Normas Colombianas CORRECTAS:
- ✅ **RETIE 2024** (Resolución 40117 de 2024)
- ✅ **NTC 2050** (Código Eléctrico Colombiano)

---

### 9️⃣ NORMAS NO APLICABLES - OTRAS

#### Normas a ELIMINAR:

| Norma | Aplicación | Por qué NO aplica |
|:------|:-----------|:------------------|
| **NTC 2031** | Iluminación | Es para sistemas de iluminación, NO para CCTV |
| **Res. 77506 (SIC)** | Productos de consumo | Es para productos de consumo, NO para sistemas ITS |
| **EIA/TIA-606** | Cableado estructurado | Es para telecomunicaciones, NO para CCTV |

---

### 🔟 GABINETES - SOBRE-ESPECIFICACIONES

#### Observación:
El TDR especifica gabinetes sin referencia concreta y con sobre-especificaciones.

#### Problemas Identificados:

| Aspecto | TDR | Problema | Corrección |
|:--------|:----|:---------|:-----------|
| **Especificación** | "Diferentes especificaciones" | Muy vago, imposible cotizar | **NEMA 4X / IP65 con dimensiones** |
| **Color** | RAL 7035 específico | No lo pide contrato | **Neutro (gris/beige)** |
| **Carga** | 400 Kg | Para subestaciones, no CCTV | **50-80 Kg** (equipos del proyecto) |

#### Texto Corregido:
```markdown
GABINETES:
• Tipo: NEMA 4X o IP65, montaje poste/pared
• Dimensiones: 400-500mm (ancho) x 600-800mm (alto) x 250-350mm (profundidad)
• Compartimentado: superior (comunicaciones) + inferior (potencia)
• Protección: IP65 mínimo, resistente a intemperie
• Eléctrica (RETIE 2024): barra de tierra, DPS Clase I+II, rotulado
• Capacidad: 50-80 Kg (equipos del proyecto)
• Color: Neutro (gris, beige)
```

---

### 1️⃣1️⃣ MONITOREO FOTOVOLTAICO

#### Observación:
El TDR exige "Monitoreo del sistema fotovoltaico desde CCO/SCADA".

#### Problema:
- El contrato NO exige telemetría del sistema solar
- Solo exige autonomía de 48 horas (funcionalidad, no monitoreo remoto)

#### Solución:
**ELIMINAR** este requisito.

---

### 1️⃣2️⃣ POSTES - ALTURA

#### Observación:
El TDR exige postes de 14 metros sin fundamento contractual.

#### Problema:
- Contrato exige funcionalidad ("visión global"), NO altura específica
- 12 metros es estándar comercial suficiente

#### Impacto:
- ✅ Ahorro: $800 por poste

#### Corrección:
**12 metros** (estándar comercial)

---

### 1️⃣3️⃣ CIMENTACIÓN

#### Observación:
El TDR especifica cimentación de 80x80x80 cm para postes de 14m.

#### Problema:
- Sobredimensionada para postes de 12m
- Algunos postes no requieren cimentación

#### Impacto:
- ✅ Ahorro: $200 por poste

#### Corrección:
**60x60x60 cm** para poste de 12m (o según diseño del poste)

---

### 1️⃣4️⃣ GABINETES - CANTIDAD

#### Observación:
El TDR exige 2 gabinetes separados (electrónica + baterías).

#### Problema:
- RETIE 2024 (Res. 40117) permite 1 gabinete compartimentado
- 2 gabinetes encarecen instalación

#### Impacto:
- ✅ Ahorro: $400 por instalación

#### Corrección:
**1 gabinete compartimentado** (RETIE permite separación interna)

---

### 1️⃣5️⃣ UBICACIONES Y CANTIDADES

#### Observación:
El TDR lista 7 ubicaciones pero dimensiona para 16 cámaras.

#### Problema:
- Inconsistencia interna
- No especifica tipo de instalación (Peaje, Área de Servicio, CCO, Pesaje)

#### Solución Requerida:
1. **Estandarizar cantidad** (7, 10, 12, o 16)
2. **Clasificar ubicaciones** por tipo y fundamento contractual
3. **Confirmar PKs exactos** de Áreas de Servicio, CCO, Pesaje

---

### 1️⃣6️⃣ 🚨 CERTIFICACIÓN RETIE - RIESGO CRÍTICO

#### Observación:
El TDR exige certificación RETIE "bajo cuenta y riesgo del instalador".

#### Problema CRÍTICO:
Sin estudio de suelos y condiciones pre-existentes conocidas, **NO es posible garantizar certificación RETIE**.

#### Riesgos Identificados:

| Riesgo | Costo Estimado | Observación |
|:-------|:---------------|:------------|
| **Estudio de resistividad** | $2,100-5,000 | Si no lo provee concesión |
| **SPT complejo** (suelo >100 Ω·m) | $14,000-150,000 | 7-10 sitios |
| **Certificación ONAC** | $10,500-30,000 | Si se exige organismo acreditado |
| **TOTAL RIESGO** | **$26,600-188,000 USD** | No presupuestado |

#### Preguntas URGENTES:

1. **¿Quién realiza el estudio de resistividad del suelo?**
   - a) ¿Proveedor de CCTV?
   - b) ¿Concesión como información de entrada?
   - c) ¿Ítem adicional?

2. **¿Quién paga la adecuación del SPT si resistividad >100 Ω·m?**
   - a) ¿Incluido en precio CCTV?
   - b) ¿Ítem adicional según condiciones reales?
   - c) ¿Concesión provee SPT pre-existente?

3. **¿Qué tipo de certificación se requiere?**
   - a) Declaración de Conformidad del instalador RETIE (sin costo adicional)
   - b) Certificación de Organismo Acreditado ONAC ($1,500-3,000/sitio)

4. **¿Quién adecúa instalaciones eléctricas pre-existentes no conformes?**
   - a) ¿Proveedor de CCTV?
   - b) ¿Concesión provee instalaciones conformes a RETIE?

#### Redacción Propuesta:
```markdown
CERTIFICACIÓN RETIE:

RESPONSABILIDADES:
1. Proveedor de CCTV:
   • Instalación conforme a RETIE 2024 y NTC 2050
   • Conexión a SPT existente en cada sitio
   • Declaración de Conformidad RETIE (incluida en precio)

2. Concesión (Condiciones de Entrada):
   • Proveer estudio de resistividad del suelo
   • Proveer SPT existente con resistencia ≤25 Ω
   • Si SPT no cumple, adecuación se paga como ítem adicional

CONDICIONES ESPECIALES:
• Si se detectan condiciones pre-existentes que impiden cumplir RETIE,
  se notificará y acordará alcance/costo de adecuación.
```

---

## 💰 RESUMEN DE IMPACTO ECONÓMICO

### Ahorros por Correcciones:

| Optimización | Ahorro Unitario | Cantidad | Ahorro Total |
|:-------------|:----------------|:---------|:-------------|
| Postes 14m → 12m | $800 | 7-10 | $5,600 - $8,000 |
| Zoom 200m → 150m IR | $300 | 7-10 | $2,100 - $3,000 |
| Cimentación 80³ → 60³ | $200 | 7-10 | $1,400 - $2,000 |
| 2 Gabinetes → 1 | $400 | 7-10 | $2,800 - $4,000 |
| Grabación 90d → 30d | - | Sistema | $15,000 |
| NVR 24 bahías → 8 | - | Sistema | $8,000 |
| **SUBTOTAL AHORROS** | - | - | **$35,000 - $40,000** |

### Riesgos Eliminados:

| Riesgo | Monto |
|:-------|:------|
| Certificación RETIE sin condiciones claras | $26,600 - $188,000 |

### **IMPACTO TOTAL: $61,600 - $228,000 USD**

---

## ✅ RECOMENDACIONES FINALES

### Para el Asesor Externo:

1. **Eliminar normas UNE** (españolas, no aplicables)
2. **Eliminar normas no aplicables** (NTC 2031, Res. 77506, EIA/TIA-606)
3. **Ajustar especificaciones técnicas** a estándares comerciales genéricos
4. **Clasificar ubicaciones** por tipo y fundamento contractual
5. **Estandarizar cantidades** entre ubicaciones y dimensionamiento
6. **Unificar gabinetes** según RETIE 2024
7. **Aclarar alcance de integración SCADA**
8. **Definir responsabilidades de certificación RETIE**

### Para Revisión Interna (Concesión):

1. **Confirmar ubicaciones exactas (PKs)** de:
   - Áreas de Servicio
   - CCO
   - Pesaje (si se incluye)

2. **Definir segregación** entre:
   - Cámaras ITS (este alcance)
   - Cámaras de Peaje (integrador de Peaje)

3. **Validar cantidad final** de cámaras

4. **Aclarar condiciones de entrada para RETIE:**
   - Estudio de suelos
   - SPT pre-existente
   - Tipo de certificación requerida

---

## 📎 ANEXOS

Los siguientes documentos de soporte están disponibles:

1. `tabla_observaciones_tdr_cctv.md` - Tabla comparativa completa
2. `specs_camara_genericas.md` - Especificaciones de cámara corregidas
3. `arquitectura_nvr_distribuida.md` - Arquitectura NVR propuesta
4. `requisitos_vms_genericos.md` - Requisitos VMS funcionales
5. `correccion_video_wall.md` - Especificación Video Wall y clientes
6. `specs_grabacion_simplificadas.md` - Requisitos de grabación
7. `correccion_nvr_alcance.md` - Alcance NVR clarificado
8. `correccion_specs_nvr_hardware.md` - Hardware NVR genérico
9. `correccion_gabinetes_completa.md` - Especificaciones de gabinetes
10. `correccion_etiquetado.md` - Normativa de etiquetado
11. `aclaracion_certificacion_retie.md` - Análisis de riesgo RETIE

---

**Preparado por:** Ingeniería TM01  
**Metodología:** Punto 42 v3.0 (Contract-First Architecture)  
**Estado:** ✅ LISTO PARA ENVÍO AL ASESOR EXTERNO

---

**NOTA IMPORTANTE:** Este documento consolida todas las observaciones identificadas durante la revisión técnica y contractual del TDR de CCTV. Se requiere respuesta del asesor externo y aclaraciones de la concesión antes de proceder a licitación.
