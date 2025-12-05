# SOLICITUD DE COTIZACIÓN (RFQ-005)
## SISTEMA SCADA PARA CCO – SUPERVISIÓN ITS (SIN MARCA)

**Proyecto:** APP Puerto Salgar - Barrancabermeja  
**RFQ No.:** RFQ-005-SCADA  
**Fecha de emisión:** 04 de noviembre de 2025  
**Versión:** 1.0  
**Emitido por:** Administrador Contractual EPC

---

## 📋 INFORMACIÓN DEL PROYECTO

| Campo | Valor |
|:------|:------|
| Longitud corredor | 259.6 km |
| Sistemas ITS a integrar | SOS, CCTV, Gálibos, ETD/Radares, PMV, EM, WIM/Pesaje, Peajes |
| Centro de Control Operacional | 1 CCO con 2 puestos de operador (24/7) + 1 estación de desarrollo opcional |

---

## 🎯 OBJETIVO

Solicitar oferta integral para el suministro, instalación, configuración, integración y puesta en marcha de un **SCADA de Operación ITS para el CCO**, incluyendo licenciamiento, servidores, virtualización, respaldo, historización, clientes de operación, y servicios de ingeniería. Documento 100% basado en desempeño y sin marcas.

---

## 🔒 POLÍTICA SIN MARCA Y EQUIVALENCIAS

- Requisitos definidos por desempeño y estándares abiertos.  
- Se aceptan soluciones técnicamente equivalentes o superiores que cumplan con las especificaciones mínimas y normas citadas.  
- Adjuntar fichas técnicas y certificaciones para verificación de desempeño.

---

## 📦 ALCANCE DE SUMINISTRO

1) Plataforma SCADA/Historiador con capacidad de:  
   - ≥ 5,000 señales (IO) iniciales, escalable a ≥ 10,000 señales sin migración.  
   - Historizar ≥ 2,500 señales continuas, escalable a ≥ 6,000.  
   - 2 clientes operador concurrentes 24/7 + 1 cliente administración/desarrollo opcional.  
   - 2 drivers de comunicación mínimos (ampliables).  
   - Redundancia lógica de servidores SCADA/Historiador.

2) Servidores y virtualización (on‑premise en CCO):  
   - Clúster de virtualización con alta disponibilidad (HA) ≥ 2 nodos activos + 1 nodo de respaldo.  
   - Capacidad mínima por nodo activo: 16 vCPU (o 8 cores físicos/16 threads), 128 GB RAM, almacenamiento SSD para VMs SCADA/Historiador.  
   - Almacenamiento de respaldo dedicado ≥ 20 TB útiles para retención de historiales/copias.  
   - Conectividad de red ≥ 10 GbE para backend.

3) Software de respaldo y continuidad:  
   - Copias de seguridad completas/incrementales, retención ≥ 30 días, restauración bare‑metal y por VM.  
   - Licenciamiento por 3 años mínimo (incluye soporte y actualizaciones).

4) Integración y protocolos (mínimos):  
   - SNMP v3, HTTP/REST, Modbus TCP/IP, OPC UA (o equivalentes abiertos).  
   - Gestión de alarmas con jerarquías y prioridades; registro de eventos.  
   - Dashboards/ sinópticos por sistema: SOS, CCTV, PMV, Gálibos, ETD/Radar, EM, Peajes, WIM.  
   - APIs para consulta/ingesta de datos (documentadas).  
   - Usuario/roles; auditoría de operaciones.

5) Clientes de operación y video wall:  
   - 2 estaciones de operador 24/7 con monitores 32" (4 por operador).  
   - Envío/visualización de streams externos vía IFRAME/RTSP donde aplique (sin exigir VMS específico).  
   - Consola de ingeniería (opcional).

6) Servicios de ingeniería:  
   - Configuración HMI/SCADA, drivers, alarmas y historian.  
   - Integración por lotes de subsistemas (SOS, CCTV, PMV, etc.).  
   - FAT/SAT, documentación, capacitación, soporte remoto por 6 meses mínimo.  
   - Entrega As‑Built (proyecto, plantillas, manuales).

---

## 📐 REQUISITOS DE DESEMPEÑO

- Disponibilidad objetivo de plataforma: ≥ 99.5% anual.  
- Tiempo de conmutación ante falla del host principal: ≤ 5 minutos.  
- Tiempos objetivo de pantalla HMI: carga ≤ 3 s, actualización de puntos ≤ 1 s (según ancho de banda).  
- Retención mínima de historian: 12 meses en línea (resumido) + exportación programable.  
- Seguridad: autenticación por roles, cifrado en tránsito TLS, registro/auditoría.

---

## 🔗 INTERFACES Y PROTOCOLOS

| Sistema | Interfaz mínima |
|:--------|:----------------|
| SOS | REST/HTTP + SNMP v3 |
| CCTV | Estado por SNMP/REST; visualización por RTSP/IFRAME (sin control propietario) |
| Gálibos | Modbus TCP/REST + alarmas discretes |
| ETD/Radares | REST/HTTP + datos de conteo/velocidad |
| PMV | REST/HTTP o protocolo abierto documentado |
| EM (meteorol.) | REST/Modbus TCP |
| WIM/Pesaje | REST/HTTP/OPC UA |
| Peajes | API de eventos/estado (REST/OPC UA) |

---

## 🧪 PRUEBAS Y ACEPTACIÓN

### FAT
- Pruebas de drivers, tags de ejemplo, alarmas, historian, seguridad/roles.

### SAT
- Integración en campo por sistema; tiempos de actualización; failover/restore; checklists de alarmas; exportes CSV/SQL.

### Criterios de aceptación
- 100% de los puntos priorizados operativos; failover validado; documentación y capacitación entregadas.

---

## 🗓️ CRONOGRAMA DE LICITACIÓN

| Fecha | Hito |
|:------|:-----|
| 04-Nov-2025 | Emisión RFQ |
| 11-Nov-2025 | Límite de consultas |
| 14-Nov-2025 | Respuesta a consultas |
| 21-Nov-2025 | Cierre ofertas (12:00) |
| 24-29 Nov-2025 | Evaluación |
| 02-Dec-2025 | Adjudicación |

---

## 📄 DOCUMENTOS A ENTREGAR EN LA OFERTA

1. Propuesta técnica (≤ 50 págs.) con arquitectura, dimensionamiento y cumplimiento de desempeño.  
2. Lista de señales/IO soportadas y plan de escalabilidad.  
3. Fichas técnicas y certificaciones.  
4. Cronograma y plan de calidad.  
5. Experiencia (3 proyectos similares ITS/SCADA).  
6. Propuesta económica y APUs principales.  
7. Condiciones comerciales, garantías y soporte.

---

## 💰 ESTRUCTURA DE COTIZACIÓN (FORMULARIO)

| Código | Descripción | Cant. | Unidad | Precio Unit. COP | Total COP | Precio Unit. USD | Total USD |
|:------|:------------|:-----:|:------:|:-----------------|:---------:|:------------------|:---------:|
| SCADA-001 | Licencias plataforma SCADA + Historian (≥5K IO, esc. ≥10K; ≥2 drivers; ≥2 clientes operador) | 1 | LOT | | | | |
| SCADA-002 | Software respaldo/continuidad (lic. ≥3 años) | 1 | LOT | | | | |
| SCADA-003 | Clúster virtualización HA (2 nodos activos + 1 respaldo) | 1 | LOT | | | | |
| SCADA-004 | Almacenamiento de respaldo ≥20 TB útiles | 1 | LOT | | | | |
| SCADA-005 | Estaciones de operador (2) + monitores | 1 | LOT | | | | |
| SCADA-006 | Integración SOS | 1 | LOT | | | | |
| SCADA-007 | Integración CCTV (estado/visualización) | 1 | LOT | | | | |
| SCADA-008 | Integración PMV | 1 | LOT | | | | |
| SCADA-009 | Integración Gálibos | 1 | LOT | | | | |
| SCADA-010 | Integración ETD/Radares | 1 | LOT | | | | |
| SCADA-011 | Integración EM | 1 | LOT | | | | |
| SCADA-012 | Integración WIM/Pesaje | 1 | LOT | | | | |
| SCADA-013 | Integración Peajes | 1 | LOT | | | | |
| SCADA-014 | Configuración, FAT, SAT, documentación, capacitación | 1 | LOT | | | | |
| TOTAL | SISTEMA SCADA CCO COMPLETO | | | | | | |

Notas:  
- Diligenciar precios en USD y COP; incluir desglose por ítem y AIU.  
- Indicar claramente límites de alcance y supuestos.  
- Adjuntar hoja de cálculo de señales propuesta (consolidado de tags por sistema).

---

## 📊 CRITERIOS DE EVALUACIÓN

| Criterio | Ponderación | Descripción |
|:---------|:-----------:|:------------|
| Precio | 40% | Competitividad total y claridad de AIU |
| Calidad técnica | 25% | Cumplimiento de desempeño y estándares abiertos |
| Experiencia | 20% | Proyectos similares ITS/CCO |
| Programa | 10% | Cronograma y puesta en marcha |
| Garantías/soporte | 5% | Cobertura, tiempos de respuesta |

Requisitos Pasa/No Pasa: Cumplimiento sin marca; protocolos abiertos; seguridad; plan de pruebas; validez de oferta ≥90 días.

---

## 📎 ANEXOS DE REFERENCIA

- Resumen de señales estimadas para dimensionamiento (no vinculante):  
  ~4,600 tags totales (IO) considerando 193 periféricos actuales + anexos.  
- Diagramas de arquitectura de referencia (adjuntos al expediente).  
- Políticas de ciberseguridad del proyecto (se entregan en aclaraciones).

---

## 📞 CONTACTO Y ENTREGA

**Envío de ofertas:** licitaciones@proyecto.com  
**Asunto:** "OFERTA RFQ-005 SCADA CCO – [EMPRESA]"  
**Formato:** PDF + Excel de precios  
**Validez de la oferta:** ≥ 90 días

---

**Fin del documento – RFQ-005 SCADA CCO v1.0**


