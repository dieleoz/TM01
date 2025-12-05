# SOLICITUD DE COTIZACIÓN (RFQ-004)
## SISTEMA DE GÁLIBOS (DETECTORES DE ALTURA) – ITS

**Proyecto:** APP Puerto Salgar - Barrancabermeja  
**RFQ No.:** RFQ-004-GAL  
**Fecha de emisión:** 04 de noviembre de 2025  
**Versión:** 1.0  
**Emitido por:** Administrador Contractual EPC  

---

## 📋 INFORMACIÓN DEL PROYECTO

| Campo | Valor |
|:------|:------|
| **Longitud corredor** | 259.6 km |
| **Ubicación** | Puerto Salgar (Cundinamarca) – Barrancabermeja (Santander) |
| **Tipo de proyecto** | Concesión vial 4G |
| **Cliente final** | ANI |

---

## 📄 BASE CONTRACTUAL

📄 **Fuente:** Apéndice Técnico 2 – Operación y Mantenimiento (Adenda 2), numeral **3.3.5.1** – Sistema de Control de Tráfico.

El contrato obliga al Concesionario a:

- Instalar detectores de altura **de tecnología láser** antes de las Estaciones de Peaje, en ambos sentidos.
- Instalar detectores adicionales en **puentes, túneles e intersecciones a desnivel** que presenten restricciones de altura.
- Integrar dichos detectores al **Centro de Control de Operaciones (CCO)**, garantizando transmisión en tiempo real.
- Atender los requerimientos adicionales que la **Interventoría pueda exigir**, con base en criterios técnicos.

> **Nota:** El AT2 no fija una altura contractual específica (p. ej. 5.10 m). El valor de 5.10 m corresponde a un **criterio de ingeniería EPC** adoptado a partir de los estudios T04/T05 y del levantamiento topográfico.

---

## 🎯 OBJETIVO DE LA COTIZACIÓN

Solicitar oferta integral para el suministro, instalación, configuración, integración al CCO y puesta en marcha del **Sistema de Gálibos (detectores de altura)** del proyecto, conforme a T04/T05 de gálibos y validación contractual vigente.

---

## 📦 ALCANCE DE LA COTIZACIÓN

El oferente deberá cotizar el paquete completo, incluyendo al menos:

### 1) Equipos principales (por punto de gálibo)
- Sensor de detección óptico/láser clase 1, rango ≥50 m, precisión ±5 cm
- Controlador/PLC industrial con comunicación IP (SNMP/Modbus TCP)
- Gabinete exterior IP65 con DPS y protección eléctrica
- Panel LED local de alerta (1.2×0.8 m mínimo) + baliza ámbar + sirena 100 dB *(requisito T04/T05 EPC; no obligación explícita AT2)*
- Accesorios de montaje y cableado señal/energía

### 2) Integraciones y comunicaciones
- Integración con CCO/SCADA: alarmas, registro de eventos, monitoreo 24/7
- Integración operativa con PMV pre-aviso (mensaje 500 m antes) cuando aplique *(alineado a diseño ITS EPC)*
- Conectividad por fibra óptica (derivación desde troncal) o medio equivalente

### 3) Instalación y obras
- Obras y herrajes para fijación en pórtico/estructura/puente
- Canalización local FO/energía (30 m promedio) y caja de derivación FO
- Configuración, pruebas FAT/SAT y comisionamiento

### 4) Energía
- Conexión a red donde exista disponibilidad  
- Módulo solar autónomo donde no haya red (4 ubicaciones previstas)

---

## 📊 CANTIDADES A COTIZAR

- **Gálibos obligatorios (Lote 1): 8 unidades**  
  Referencia: `IV. Ingenieria Basica/06_T04_Especificaciones_Tecnicas_Galibos_v1.0.md` (Cantidad = 8) y `V. Ingenieria de Detalle/08_T05_Ingenieria_Detalle_Galibos_v1.0.md`.
- **Módulos solares adicionales: 4 unidades** (para ubicaciones sin red eléctrica), según T05.

> Si el oferente propone ajustes de cantidades, deberá anexar cómputo métrico y memoria de cálculo. La evaluación se basará principalmente en precios unitarios.
>
> **Nota EPC:** El contrato exige instalar detectores donde exista restricción. La cantidad de 8 puntos corresponde al estudio técnico T04/T05; la Interventoría puede solicitar detectores adicionales si identifica nuevas restricciones.

---

## 📍 UBICACIONES ESPECÍFICAS (PKD/PKR)

Las 8 unidades de gálibos se ubicarán en los siguientes puntos kilométricos (PKD = Punto Kilométrico de Diseño, PKR = Punto Kilométrico Real):

| # | PKR | Ruta | PKD | UF | Ubicación Física | Gálibo medido (EPC) | Observaciones |
|:--|:----|:-----|:----|:---|:-----------------|:--------------------|:--------------|
| 1 | 41+350 | RN 4510 | 241+750 | UF-0D | Derecha | Valor T04/T05 – sujeto a verificación final en sitio | Intersección crítica |
| 2 | 116+200 | RN 4510 | 166+900 | UF-0D | Izquierda | Valor T04/T05 – sujeto a verificación final en sitio | Puente vehicular |
| 3 | 3+600 | RN 4511 | 146+900 | UF-0D | Derecha | Valor T04/T05 – sujeto a verificación final en sitio | Separador central |
| 4 | 16+550 | RN 4511 | 133+950 | UF-5.1 | Izquierda | Valor T04/T05 – sujeto a verificación final en sitio | Intersección a desnivel |
| 5 | 72+890 | RN 4511 | 77+610 | UF-5.1 | Derecha | Valor T04/T05 – sujeto a verificación final en sitio | Paso elevado |
| 6 | 82+800 | RN 4511 | 67+700 | UF-6 | Izquierda | Valor T04/T05 – sujeto a verificación final en sitio | Puente principal |
| 7 | 127+250 | RN 4511 | 23+250 | UF-11 | Derecha | Valor T04/T05 – sujeto a verificación final en sitio | Intersección compleja |
| 8 | 5+900 | RN 4513 | 278+100 | UF-13 | Izquierda | Valor T04/T05 – sujeto a verificación final en sitio | Acceso urbano |

**Referencia:** `VII. Documentos Transversales/43_TABLA_MAESTRA_LAYOUT_PROYECTO_v1.0.md`

> **Nota:** El PKD (Punto Kilométrico de Diseño) es la distancia lineal en el anillo de fibra óptica desde el CCO (PKD 0+000). El PKR (Punto Kilométrico Real) es la progresiva kilométrica según los planos oficiales de la vía.
>
> **Criterio EPC:** Los valores de gálibo provienen del levantamiento topográfico T04/T05. No constituyen un mandato explícito del contrato AT2; se adoptan para estandarizar el diseño y serán ajustados con la verificación topográfica final / Interventoría. La señalización vertical (señal R‑34 “Altura limitada”) deberá indicar la altura libre REAL definida en sitio.

---

## 📐 ESPECIFICACIONES TÉCNICAS MÍNIMAS

Basadas en **AT2 §3.3.5.1** (obligaciones contractuales) y en los diseños de ingeniería **T04/T05**:

### Sensor de detección
- Tecnología: láser clase 1 (o equivalente óptico)  
- Altura de detección: configurable según gálibo REAL medido en sitio; el valor preliminar EPC (5.10 m) será ajustado con la verificación topográfica final. La señalización vertical (R‑34 “Altura limitada”) indicará la altura libre definida en campo conforme al Manual de Señalización Vial 2015 (Resolución 1885/2015).  
- Precisión: ±5 cm; tiempo de respuesta <1 s  
- Cobertura: 2-3 carriles; protección IP66  

### Panel LED de alerta local
- Mensajes: “ALTO EXCESO ALTURA”/“PASO LIBRE” (requisito T04/T05 EPC)  
- Visibilidad ≥150 m; protección IP65  
- Baliza ámbar intermitente y sirena 100 dB

### Integración CCO/SCADA
- Alarmas automáticas; registro de eventos  
- Protocolos: SNMP v3 y/o Modbus TCP/IP  
- Enlace por FO (derivación 12 hilos) u otra solución equivalente

### Normativa de referencia
- AT2 §3.3.5.1 Sistema de Control de Tráfico (detectores de altura)  
- Manual de Señalización Vial – Dispositivos Uniformes para la Regulación del Tránsito (MinTransporte, Resolución 1885 de 2015) – señal reglamentaria R‑34 “Altura limitada”  
- IEC 60529 (grados IP); ISO TC-204 (ITS); RETIE (energía)  

---

## 🧩 ESTRUCTURA DE COTIZACIÓN (FORMULARIO)

| Código | Descripción | Cantidad | Unidad | Precio Unit. COP | Total COP | Precio Unit. USD | Total USD |
|:-------|:------------|:---------|:-------|:-----------------|:-----------|:------------------|:-----------|
| **GAL-001** | Gálibo completo (sensor+control+gabinete+DPS+alertas) | 8 | UND | | | | |
| **GAL-002** | Panel LED local + baliza + sirena (por punto) | 8 | UND | | | | |
| **GAL-003** | Integración CCO/SCADA (alarmas/eventos) | 8 | UND | | | | |
| **GAL-004** | Canalización FO/energía + caja derivación FO | 8 | UND | | | | |
| **GAL-005** | Obras civiles y herrajes de montaje | 8 | UND | | | | |
| **GAL-006** | Configuración, pruebas FAT/SAT y comisionamiento | 8 | UND | | | | |
| **GAL-007** | Módulo solar autónomo (solo 4 ubicaciones) | 4 | UND | | | | |
| **GAL-008** | Capacitación y documentación As-Built | 1 | LOT | | | | |
| **GAL-009** | Garantía de equipos (24 meses) e instalación (12 meses) | 1 | LOT | | | | |
| **TOTAL** | SISTEMA DE GÁLIBOS – LOTE 1 | | | | | | |

Notas de diligenciamiento:
- Mantener las cantidades indicadas; diligenciar precios unitarios en **USD y COP**.  
- Incluir marcas/modelos propuestos y fichas técnicas.  
- Tasa de referencia para evaluación: **4,400 COP/USD**.

---

## 🔧 PRUEBAS, COMISIONAMIENTO Y ACEPTACIÓN

### FAT (fábrica)
- Precisión ±5 cm; respuesta <1 s; verificación de protocolos de comunicación

### SAT (sitio)
- Calibración a 5.10 m ±5 cm; activación panel/baliza/sirena;  
- Alarma y registro en CCO <2 s; OTDR derivación FO <0.5 dB adicional

### Criterios de aceptación
- 100% puntos operativos; mensajes legibles; integración CCO funcional;  
- Entregables As-Built completos (planos, protocolos, listados de alarmas).

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
2) Experiencia específica en sistemas de gálibos/ITS (últimos 5 años)  
3) Propuesta técnica: metodología de instalación, integración CCO y plan de pruebas  
4) Datasheets y certificaciones (CE/FCC/ISO) de sensores y paneles  
5) APUs principales y formulario de precios diligenciado  
6) Cronograma de ejecución (máx. 8 semanas para 8 puntos)  
7) Garantías ofrecidas y pólizas

---

## 🧪 CRITERIOS DE EVALUACIÓN

| Criterio | Ponderación | Descripción |
|:---------|:-----------:|:------------|
| **Precio** | **40%** | Competitividad (precios unitarios) |
| **Calidad técnica** | **25%** | Cumplimiento T04/T05 + certificaciones |
| **Experiencia** | **20%** | Proyectos ITS/gálibos similares |
| **Programa** | **10%** | Plazo y coherencia de ejecución |
| **Garantías** | **5%** | Cobertura/equipos e instalación |

Requisitos Pasa/No Pasa: certificación fabricante, cumplimiento de specs mínimas, plan de pruebas, validez oferta ≥90 días.

---

## 📍 CONDICIONES DEL SITIO Y COORDENADAS

Las ubicaciones específicas serán confirmadas con base en `T05 Gálibos` y la `Tabla Maestra Layout`. El oferente debe prever trabajo en altura, PMT y restricciones de vía en operación.

---

## 📎 ANEXOS Y REFERENCIAS

- `IV. Ingenieria Basica/06_T04_Especificaciones_Tecnicas_Galibos_v1.0.md`  
- `V. Ingenieria de Detalle/08_T05_Ingenieria_Detalle_Galibos_v1.0.md`  
- `VII. Documentos Transversales/36_VALIDACION_CONTRACTUAL_GALIBOS_v1.0.md`

---

## 📞 CONTACTO Y ENTREGA

**Envío de ofertas:** licitaciones@proyecto.com  
**Asunto:** "OFERTA RFQ-004 GÁLIBOS – [EMPRESA]"  
**Formato:** PDF firmado + Excel de precios  
**Plazo de validez:** ≥90 días  

---

**Fin del documento – RFQ-004 Gálibos v1.0**


