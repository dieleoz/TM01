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
| **Longitud corredor** | 293 km |
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

- **Paneles PMV completos:** 14 unidades (con especificaciones full-matrix Manual 2024)  
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

| **PMV-001** | Panel LED full-matrix 3×2.0 m (Manual 2024) | 14 | UND | | | | |
| **PMV-002** | Estructura Pórtico (CCP-14 / AASHTO) | 14 | UND | | | | |
| **PMV-003** | RETIE 2024 + Obra Civil + Defensas | 14 | UND | | | | |
| **PMV-004** | Integración CCO + Puesta en Servicio | 14 | UND | | | | |
| **PMV-005** | CMS Central + Licencias | 1 | SIS | | | | |
| **TOTAL** | SISTEMA PMV – LOTE ÚNICO (Optimizado) | | | | | | |

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




<!-- BLOQUE AUTOMATICO INICIO: PMV -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - 28 PMV | Ing. ITS |
| 1.1 | 22/10/2025 | Revisión con información oficial | Ing. ITS |
| 2.0 | 22/10/2025 | **Optimización Manual 2024:** 14 unidades (400mm). Estructura CCP-14. Grid-Powered. | Ing. ITS |
| 2.1 | 21/01/2026 | **Forensic Update:** Total 39 Unds (25 Mainline + 14 Toll). RGB Full. | Ing. Forensic |
| Parámetro | Valor | Referencia |
| **Cantidad total** | **39 paneles** | 25 Mainline + 14 Toll Lanes (IP/REV) |
| **Separación** | 20 km por sentido | Requisito AT1 |
| **Peajes** | 14 PMV (1 por carril) | Obligatorio AT2 (Tarifa/Usuario) |
| **Estratégicos** | 25 PMV en corredor | Puntos de Decisión + Blindaje |
| **CAPEX estimado** | **USD $2,360,000** | Reconciliado Phase 19 |
| **OPEX Anual** | **$33,600 USD** | ~1.3% del CAPEX |
| **OPEX 20 años** | **$672,000 USD** | Mantenimiento + Repuestos |
| **1. PANEL PMV FULL MATRIX (Mainline)** | **25 und** | **$45,000** | **$1,125,000** | **47.6%** |
| Matriz 2024 (Carácter 400mm), L3, RGB | 25 und | $45,000 | $1,125,000 | - |
| **2. PANEL PMV PEAJE (Canopy)** | **14 und** | **$5,000** | **$70,000** | **3.0%** |
| Tarifario/Mensaje (1x1m aprox), RGB | 14 und | $5,000 | $70,000 | - |
| **3. ESTRUCTURA (Pórticos Mainline)**| **25 und** | **$35,000** | **$875,000** | **37.1%** |
| Diseño sismo-resistente + Cimentación | 25 und | $35,000 | $875,000 | - |
| **4. ACOMETIDA Y GESTIÓN** | **1 glb** | **$290,000** | **$290,000** | **12.3%** |
| Red + UPS + Software Central | 1 glb | $290,000 | $290,000 | - |
| **TOTAL CAPEX** | **39 und** | **Prom. $60.5k** | **$2,360,000** | **100%** |
| Parámetro | Especificación Mínima | Cumplimiento |
| **Dimensiones Totales** | 5.120 mm (L) × 1.440 mm (A) (Área Texto) | Modelo P20 1G |
| **Dimensiones Gráfica** | 1.280 mm × 1.280 mm | RGB |
| **Tecnología** | LED SMD Full Matrix RGB | - |
| **Pitch** | 20 mm | - |
| **Resolución** | 256×72 px (Texto) / 64x64 px (Gráfico) | - |
| **Líneas/Caracteres** | 3 líneas de 12 caracteres (H: 450 mm) | - |
| **Colores** | FULL RGB (16.7M Total) | - |
| **Brillo** | Luminosidad L3 (Según EN 12966) | - |
| **Ángulo Visión** | Clase B6 | - |
| **Peso** | 810 KG | Requiere estructura reforzada |
| **Consumo** | Max 1.7 KW / Promedio 720W | - |
| **Protección** | IP65, EN 12966 | - |
| **Temp. Operación** | -50°C a +65°C | - |
| **Comunicación** | Ethernet IP, ModBus RS485/TCP, NTCIP 1203 | - |
| **Alimentación** | 110-220 VAC 60Hz | - |
| Parámetro | Especificación |
| **Protocolo** | NTCIP 1203 v3 (estándar ITS) |
| **Interfaz red** | Ethernet 10/100 Mbps |
| **Gestión remota** | Web + SNMP + API REST |
| **Mensajes almacenables** | ≥256 mensajes preprogramados |
| **Memoria** | ≥4 GB flash |
| **Edición en tiempo real** | ✅ Desde CCO |
| **Fuentes** | Mínimo 5 fuentes de texto |
| **Gráficos** | Soporte de iconos/símbolos |
| **Multilingüe** | Español + pictogramas |
| **Alimentación** | 12-24 VDC |
| **Protección** | Gabinete IP65 |
| Sentido | Cantidad | Tipo Estructura | Observaciones |
| **Izquierda** | 14 | 7 bidireccionales + 7 unidireccionales | Calzada Izquierda |
| **Derecha** | 14 | 7 bidireccionales + 7 unidireccionales | Calzada Derecha |
| **TOTAL** | **28** | 14 pórticos + 14 postes | - |
| **Panel PMV P20** | $45,000.00 |
| **Estructura Pórtico** | $40,000.00 |
| **Sistema de Energía y Enlace** | $15,000.00 |
| **TOTAL APU-PMV-001 (Pórtico)** | **$100,000.00/panel** |
| **Panel PMV P20** | $35,000.00 |
| **Estructura Poste** | $15,000.00 |
| **Sistema de Energía y Enlace** | $10,000.00 |
| **TOTAL APU-PMV-002 (Poste)** | **$60,000.00/panel** |
| PMV P20 1G 64x64 (Suministro) | 28 | $26,180.00 | $733,040.00 |
| Factor Imprevistos + AIU (Panel) | 28 | $17,174.08 | $480,874.24 |
| Estructura Pórtico (Soporte PMV) | 28 | $72,167.24 | $2,020,682.72 |
| Kit Solar Off-Grid | 28 | $18,162.00 | $508,536.00 |
| Factor Imprevistos + AIU (Solar) | 28 | $11,914.62 | $333,609.36 |
| Sistema Puesta a Tierra (SPT) | 28 | $2,384.00 | $66,752.00 |
| Factor Imprevistos + AIU (SPT) | 28 | $1,563.94 | $43,790.32 |
| **TOTAL SISTEMA PMV** | **-** | **-** | **$4,187,284.64** |
| Parámetro | Especificación |
| **Tipo** | Full Matrix LED (RGB 2024) |
| **Dimensiones activas** | 4.5 × 1.8 metros (Aprox) |
| **Píxeles** | Matriz completa (Mín 64x32 para 400mm) |
| **Brillo** | L3 (≥8,500 cd/m² típico en sol directo) |
| **Colores** | RGB Full Color |
| **Caracteres** | 3 líneas |
| **Altura caracteres** | **400 mm** (Mínimo Manual 2024) |
| **Legibilidad** | ≥410 metros |
| **Ángulo visión** | Clase B6 / B7 |
| **Consumo** | Max 2.5 KW (Pico) / Promedio 900W |
| **Vida útil LED** | ≥100,000 horas |
| **Protocolo** | NTCIP 1202 / 1203 |
| **Protección** | IP65 / IK08 |
| **Sismo** | **CCP-14** |
| Tipo | Ejemplo | Aplicación |
| **Advertencia** | "ATENCIÓN / ACCIDENTE / PK 85+370" | Eventos en vía |
| **Información** | "VELOCIDAD / MÁXIMA / 80 KM/H" | Regulación tráfico |
| **Clima** | "LLUVIA / REDUZCA / VELOCIDAD" | Condiciones meteorológicas |
| **Desvíos** | "DESVÍO / PRÓXIMA / SALIDA" | Rutas alternas |
| **Peajes** | "PEAJE / 15 KM / PREPÁRESE" | Antes de peaje |
| **Genéricos** | "BUEN VIAJE / CONDUZCA / SEGURO" | Información general |
| # | PKR | Ruta | UF | Ubicación | Tipo |
| 1 | 9+200 | 4510 | 1 | Peaje Zambito | Pórtico |
| 2 | 11+000 | 4510 | 1 | Peaje Zambito | Poste |
| 3 | 40+000 | 4510 | 2 | Estratégico | Pórtico |
| 4 | 70+000 | 4510 | 3 | Estratégico | Poste |
| 5 | 80+200 | 4510 | 4 | Peaje Aguas Negras | Pórtico |
| 6 | 82+000 | 4510 | 4 | Peaje Aguas Negras | Poste |
| 7 | 110+000 | 4510 | 5 | Estratégico | Pórtico |
| 8 | 10+000 | 4511 | 6 | Estratégico | Poste |
| 9 | 40+000 | 4511 | 7 | Estratégico | Pórtico |
| 10 | 70+000 | 4511 | 8 | Estratégico | Poste |
| 11 | 100+000 | 4511 | 9 | Estratégico | Pórtico |
| 12 | 130+000 | 4511 | 10 | Centro de Control | Poste |
| 13 | 146+580 | 4511 | 12 | Final Ruta | Pórtico |
| 14 | 5+900 | 4513 | 11 | Conexión CCO | Poste |
| PKR | Ruta | Equipo | Observación |
| 106+580 | 4511 | PMV Izquierda + ETD | Pórtico compartido |
| 126+580 | 4511 | PMV Izquierda + ETD | Pórtico compartido |
| Día | Actividad |
| **1-2** | Excavación + fundición cimentación |
| **3** | Fraguado concreto (espera) |
| **4** | Montaje estructura pórtico (grúa) |
| **5** | Montaje panel LED + conexiones |
| **6** | Pruebas y comisionamiento |
| # | Prueba | Criterio de Aceptación |
| 1 | **Inspección estructura** | Vertical, estable, pintura completa |
| 2 | **Inspección panel** | Sin píxeles muertos (<0.5%) |
| 3 | **Brillo diurno** | ≥8,000 cd/m² (medido con luxómetro) |
| 4 | **Legibilidad** | Legible a 200m (prueba campo) |
| 5 | **Conexión red** | Ping desde CCO <20 ms |
| 6 | **Protocolo NTCIP** | Comandos NTCIP 1203 funcionales |
| 7 | **Mensajes** | Desplegar 10 mensajes tipo |
| 8 | **Respuesta remota** | Cambio mensaje desde CCO <5s |
| 9 | **Puesta a tierra** | <10Ω |
| 10 | **As-Built** | Coordenadas GPS + foto |
| Categoría | Cantidad | Ejemplos |
| **Emergencias** | 50 | Accidentes, cierres vía, ambulancias |
| **Meteorológicas** | 30 | Lluvia, niebla, viento, deslizamientos |
| **Regulatorias** | 40 | Velocidades, desvíos, restricciones |
| **Informativas** | 60 | Distancias, peajes, áreas servicio |
| **Eventos** | 40 | Obras, mantenimientos, eventos especiales |
| **Genéricas** | 36 | Saludos, consejos, buen viaje |
| Actividad | Frecuencia | Costo Anual |
| **Limpieza panel** | Trimestral | $5,600 |
| **Verificación LEDs** | Semestral | $4,200 |
| **Prueba mensajes** | Mensual | $2,800 |
| **Revisión estructural** | Anual | $2,100 |
| **Actualización firmware** | Según fabricante | $1,400 |
| **Reparaciones** | Según necesidad | $700 |
| **TOTAL OPEX** | - | **$16,800/año** |
| Concepto | Valor (USD) |
| **CAPEX (14 paneles)** | $1,190,000.00 | 78.0% |
| **OPEX (20 años)** | $336,000.00 | 22.0% |
| **TOTAL 20 AÑOS** | **$1,526,000.00** | **100%** |
> Actualizado: 2026-01-27
<!-- BLOQUE AUTOMATICO FIN -->

---
> CERTIFICACION DE COMPRAS: Sincronizado con T05. Cantidades oficiales.
