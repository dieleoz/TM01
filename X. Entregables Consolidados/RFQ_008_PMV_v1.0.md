# SOLICITUD DE COTIZACIÓN (RFQ-008)  
## SISTEMA DE PANELES DE MENSAJERÍA VARIABLE (PMV)

**Proyecto:** APP Puerto Salgar - Barrancabermeja  
**RFQ No.:** RFQ-008-PMV  
**Fecha de emisión:** 11 de noviembre de 2025  
**Versión:** 1.0  
**Emitido por:** Administrador Contractual EPC  

---

## 📋 INFORMACIÓN DEL PROYECTO

| Campo | Valor |
|:------|:------|
| **Longitud corredor** | 259.6 km |
| **Ubicación** | Puerto Salgar (Cundinamarca) – Barrancabermeja (Santander) |
| **Tipo de proyecto** | Concesión vial 4G |
| **Cliente final** | Agencia Nacional de Infraestructura – ANI |

---

## 🎯 OBJETIVO DE LA COTIZACIÓN

Solicitar oferta integral para el **suministro, instalación, configuración, integración al CCO y puesta en marcha** del Sistema de Paneles de Mensajería Variable (PMV) del proyecto TM01, de acuerdo con las especificaciones de ingeniería (`T04/T05 PMV`) y la validación contractual vigente.

---

## 📦 ALCANCE DE LA COTIZACIÓN

El oferente deberá cotizar el paquete completo, que comprende como mínimo:

### 1) Equipos principales (por panel)
- Panel LED full-matrix 3.0 m × 1.5 m (mínimo) con capacidad gráfica y alfanumérica
- Controlador local / CPU industrial con redundancia (IEC 60870-5-104 / NTC 5927)
- Gabinete IP65 con sistema de ventilación y protección contra sobretensiones (datos/energía)
- Fuente de alimentación 24 VDC 15 A + cargador inteligente
- Conversor FO/Ethernet / switch industrial capa 2 para integración ITS

### 2) Accesorios y obras asociadas
- Estructura de soporte (pórtico/galga según emplazamiento) y herrajes galvanizados
- Cableado de potencia (RETIE) y datos (FO + cobre), conectores y accesorios de montaje
- Obras civiles menores: cimentación, ductos, cajas de paso, protecciones mecánicas
- Señalización temporal y Plan de Manejo de Tráfico (PMT) durante instalación

### 3) Integraciones y software
- Integración con plataforma SCADA/CCO (protocolos SNMP v3, HTTPS, Modbus TCP/IP)
- Sistema central de gestión de mensajes (CMS) con licencias perpetuas y API REST
- Integración con emisora IP/REV (para mensajes coordinados) y con sensores asociados (ETD, CCTV)

### 4) Servicios y entregables
- Pruebas FAT/SAT, comisionamiento y capacitación técnica
- Documentación “As-Built”, manuales de operación y mantenimiento
- Garantía de equipos (mínimo 24 meses) e instalación (12 meses)

---

## 📊 CANTIDADES A COTIZAR

- **Paneles PMV completos:** 28 unidades (con especificaciones full-matrix)  
  Referencia: `IV. Ingenieria Basica/04_T04_Especificaciones_Tecnicas_PMV_v1.0.md` y `V. Ingenieria de Detalle/05_T05_Ingenieria_Detalle_PMV_v1.0.md`.
- **Sistema central de gestión de mensajes:** 1 sistema (licencia perpetua + redundancia)
- **Documentación y capacitación:** 1 lote

> Si el oferente considera variaciones de cantidad, deberá adjuntar memoria justificativa y cómputo métrico. La evaluación priorizará precios unitarios y cumplimiento técnico.

---

## 📍 UBICACIONES DE REFERENCIA (PKR/PKD)

Los 28 PMV se localizan a lo largo de las rutas RN 4510 / RN 4511 / RN 4513 con separación ≤20 km, conforme a la Tabla Maestra Layout (`VII. Documentos Transversales/43_TABLA_MAESTRA_LAYOUT_PROYECTO_v1.0.md`).  

| # | PKR | Ruta | PKD | UF | Observaciones |
|:--|:----|:-----|:----|:---|:--------------|
| 1 | 41+000 | RN 4510 | 242+100 | UF-0D | Pórtico existente |
| 2 | 41+200 | RN 4510 | 242+000 | UF-0D | Bidireccional |
| 3 | 57+350 | RN 4510 | 225+750 | UF-0D | Sector norte TM01 |
| … | … | … | … | … | … |
| 28 | 5+900 | RN 4513 | 278+100 | UF-13 | Acceso CCO La Lizama |

*(Se adjunta listado completo en anexo técnico; el oferente debe realizar visita de campo previa.)*

---

## 📐 ESPECIFICACIONES TÉCNICAS MÍNIMAS

### Panel PMV
- Tipo: Full matrix RGB/LED ámbar alta potencia, paso ≤20 mm  
- Brillo: ≥6000 cd/m² con control automático (sensor luminosidad)  
- Visibilidad: ≥250 m, ángulo horizontal ≥120°  
- Vida útil LED: ≥100,000 h (L70/B10)  
- Protección: IP65 frontal / IP54 posterior, antivandálico IK08  
- Temperatura operación: -20 °C a +60 °C  
- Soporta mensajes gráficos y texto (código MUTCD / Manual ITS INVÍAS)

### Controlador y comunicaciones
- CPU industrial con redundancia, almacenamiento ≥32 GB, SO embebido seguro  
- Protocolos: NTC 5927, SNMP v3, HTTPS, TLS 1.2, NTCIP 1203 opcional  
- Interfaz FO y cobre, soporte IPv4/IPv6, alarmas por pérdida de comunicación  
- Integración con CMS central mediante API REST/WebSocket

### Energía y protección
- Fuente 110/220 VAC con UPS interna ≥15 minutos  
- Protección contra sobretensiones (categoría II) y puesta a tierra RETIE  
- Gabinete de control IP65, acero inoxidable con recubrimiento anticorrosivo

---

## 🧩 ESTRUCTURA DEL FORMULARIO DE PRECIOS

| Código | Descripción | Cantidad | Unidad | Precio Unit. COP | Total COP | Precio Unit. USD | Total USD |
|:-------|:------------|:---------|:-------|:-----------------|:-----------|:------------------|:-----------|
| **PMV-001** | Panel LED full-matrix 3×1.5 m (incluye fuente redundante) | 28 | UND | | | | |
| **PMV-002** | Controlador local + gabinete IP65 + DPS | 28 | UND | | | | |
| **PMV-003** | Conversor FO/Ethernet + switch industrial capa 2 | 28 | UND | | | | |
| **PMV-004** | Fuente alimentación 24 VDC 15 A + cargador inteligente | 28 | UND | | | | |
| **PMV-005** | Accesorios estructurales / herrajes / cables | 28 | UND | | | | |
| **PMV-006** | Instalación, canalizaciones y obras civiles menores | 28 | UND | | | | |
| **PMV-007** | Pruebas FAT/SAT, comisionamiento e integración CCO | 28 | UND | | | | |
| **PMV-008** | Sistema central CMS + licencias y API | 1 | SISTEMA | | | | |
| **PMV-009** | Documentación As-Built + capacitación | 1 | LOT | | | | |
| **PMV-010** | Garantías (equipos 24 m / instalación 12 m) | 1 | LOT | | | | |
| **TOTAL** | SISTEMA PMV – LOTE ÚNICO | | | | | | |

Notas para diligenciamiento:
- Presentar precios en **COP y USD**, aplicando tasa de referencia **4,400 COP/USD**.  
- Incluir marca, modelo, origen, ficha técnica y certificaciones.  
- Señalar tiempos de entrega y disponibilidad de stock.

---

## 🔧 PRUEBAS Y ACEPTACIÓN

### FAT
- Verificación luminancia, uniformidad y contraste  
- Ensayos de protección IP/IK, protocolos de comunicación y redundancia

### SAT
- Calibración de brillo automático, mensajes de prueba (texto/gráfico)  
- Integración con CCO: envío/recepción de mensajes, alarmas, registro eventos  
- Inspección de obras civiles y documentación As-Built

### Criterios de aceptación
- 100% de PMV operativos con conexión CCO  
- Documentación entregada (planos, fichas, manuales)  
- Garantías registradas y soporte técnico disponible localmente

---

## 📅 CRONOGRAMA DEL PROCESO

| Fecha | Actividad |
|:------|:----------|
| 11-Nov-2025 | Emisión RFQ |
| 18-Nov-2025 | Límite recepción consultas |
| 22-Nov-2025 | Respuesta oficial a consultas |
| 29-Nov-2025 | Cierre recepción ofertas (12:00) |
| 02-06 Dic-2025 | Evaluación técnica y económica |
| 09-Dec-2025 | Adjudicación / Carta de intención |

---

## 📄 DOCUMENTACIÓN REQUERIDA

1. Carta de presentación y vigencia de oferta (≥90 días)  
2. Documentos legales: Cámara de Comercio, RUT, estados financieros auditados  
3. Experiencia en proyectos ITS / PMV en autopistas (últimos 5 años)  
4. Propuesta técnica: memoria descriptiva, metodología de instalación, plan de pruebas  
5. Fichas técnicas y certificaciones (CE/FCC/UL/NTC 5927/ISO) de panel y controlador  
6. APUs principales y formulario de precios diligenciado  
7. Cronograma detallado de ejecución (máx. 12 semanas para 28 puntos)  
8. Garantías ofrecidas y pólizas (cumplimiento, calidad, estabilidad)

---

## 🧪 CRITERIOS DE EVALUACIÓN

| Criterio | Ponderación | Descripción |
|:---------|:-----------:|:------------|
| **Precio** | **35%** | Competitividad económica (COP / USD) |
| **Cumplimiento técnico** | **30%** | Conformidad con T04/T05, AT1/AT2 y validación contractual |
| **Experiencia específica PMV** | **15%** | Proyectos en corredores viales/ITS |
| **Programa de ejecución** | **10%** | Plazo y coherencia con plan de trabajo |
| **Garantías y soporte** | **10%** | Cobertura, stock de repuestos, soporte local |

Requisitos “pasa / no pasa”: cumplimiento specs mínimas, plan de pruebas, disponibilidad de soporte en Colombia, oferta en COP y USD.

---

## 📍 CONDICIONES DEL SITIO

- Instalaciones en corredor en operación – se requiere PMT aprobado  
- Coordinación con Interventoría y CCO para cortes/energización  
- Altura libre y estructuras existentes a verificar en visita técnica previa  
- El oferente debe incluir logística, izaje y equipos de seguridad en trabajo en altura

---

## 📎 ANEXOS Y REFERENCIAS

- `IV. Ingenieria Basica/04_T04_Especificaciones_Tecnicas_PMV_v1.0.md`  
- `V. Ingenieria de Detalle/05_T05_Ingenieria_Detalle_PMV_v1.0.md`  
- `VII. Documentos Transversales/38_VALIDACION_CONTRACTUAL_PMV_v1.0.md`  
- `VII. Documentos Transversales/43_TABLA_MAESTRA_LAYOUT_PROYECTO_v1.0.md`

---

### 📬 ENVÍO DE OFERTAS

- **Correo:** adquisiciones.its@epc-tm01.co  
- **Asunto:** “OFERTA RFQ-008 PMV – [Nombre del Oferente]”  
- **Formato:** PDF firmado + Excel formulario precios (editable)  
- **Consulta técnica:** pmv.ingenieria@epc-tm01.co  
- **Consulta comercial:** compras@epc-tm01.co

Se agradece confirmar recibo y participación antes del 15-Nov-2025.

---

**Administrador Contractual ITS – Proyecto TM01**  
EPC Concesión TM01 Troncal Magdalena


