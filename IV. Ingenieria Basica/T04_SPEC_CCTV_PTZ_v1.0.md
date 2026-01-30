# FICHA TÉCNICA (T04) - SISTEMA CCTV
**Proyecto:** Troncal Magdalena (TM01)  
**ID Especificación:** T04-CCTV-001  
**Versión:** 1.0 (Audit 6.0 Approved)  
**Estado:** ✅ PARA CONSTRUCCIÓN  

---

## 1. DESCRIPCIÓN GENERAL
Sistema de Circuito Cerrado de Televisión (CCTV) para monitoreo de puntos críticos de la concesión. Equipamiento "All-in-One" con analíticas de borde.

## 2. REQUISITOS TÉCNICOS (HARD DECK)

## 1. DESCRIPCIÓN GENERAL
Suministro, instalación, configuración y puesta en marcha de **9 Unidades de Cámara PTZ** para monitoreo de puntos críticos (Peajes y Pesaje), cumpliendo el estándar **IP/REV**.

> [!IMPORTANT]
> **AVISO AL OFERENTE:** Las especificaciones marcadas con (*) son obligaciones contractuales taxativas (Resolución IP/REV, Manual 2024, RETIE). **El incumplimiento de cualquiera de estos parámetros será causal de RECHAZO TÉCNICO de la oferta.**

## 2. REQUISITOS TÉCNICOS "DUROS" (HARD DECK)

### 2.1 Cámaras PTZ (Vía y Peajes)
| Parámetro | Especificación Requerida | Fuente de la Obligación (Causal de Rechazo) |
|:----------|:-------------------------|:--------------------------------------------|
| **Zoom Óptico** | **32X** (*) o superior | **IP/REV (Anexo 1, 2.9.5)**: No se aceptan de 25X. |
| **Resolución** | 4 MP (2560 × 1440) | **IP/REV**: Calidad probatoria superior a 1080p. |
| **Sensor** | Starlight (0.005 Lux) | **Seguridad Vial**: Visibilidad nocturna sin alumbrado. |
| **Analítica** | WizSense / IVS / DAI | **Manual 2024**: Detección Incidentes Automática. |
| **Compresión** | H.265+ / H.264H | **IP/REV**: Optimización ancho de banda. |
| **Protección** | **IP67** (Inmersión) + IK10 | **Clima**: Inundabilidad y Vandalismo. |
| **Ambiente** | **Heater/Defog** Integrado | **IP/REV**: Obligatorio anti-condensación. |
| **Protocolo** | ONVIF (Profile S/G/T) | **Integración**: Requisito CCO. |

### 2.2 Sistema de Grabación (El "Killer" Contractual)
| Parámetro | Especificación Requerida | Fuente de la Obligación (Causal de Rechazo) |
|:----------|:-------------------------|:--------------------------------------------|
| **Cifrado** | **AES-256** (*) | **IP/REV 2.9.5**: Encriptación de disco/archivo obligatoria. |
| **Retención** | **30 Días** Contínuos | **Auditoría**: Holgura superior a mínimo contractual. |
| **Disponibilidad**| **RAID 5** o superior | **IP/REV**: Redundancia de datos mecánica. |
| **Gestión** | Licencia VMS (DSS Pro) | **IP/REV**: Gestión centralizada sin pagos recurrentes. |

### 2.3 Instalación y Obra Civil (RETIE 2024)
| Componente | Especificación | Exigencia Normativa |
|:-----------|:---------------|:--------------------|
| **Gabinete** | Outdoor IP66 Metálico/Polimérico | **RETIE**: Protección intemperie certificada. |
| **Seguridad** | Sensor Apertura + Cerradura | **Seguridad**: Alarma de intrusión al CCO. |
| **Rotulado** | Simbolo "Riesgo Eléctrico" | **RETIE Art. 2.3.4.2**: Indeleble y visible. |
| **Protección** | **DPS Clase I+II** (Certificado) | **RETIE**: Protección contra sobretensiones. |
| **Puesta Tierra**| Equipotencial < 10 Ohmios | **RETIE**: Seguridad personal y de equipos. |
| **Señalización** | Señal SI-35A a 200m | **Manual 2024**: "Zona de Control Tecnológico". |

### 2.4 Infraestructura de Soporte (Poste 12m)
| Parámetro | Especificación Requerida | Referencia / Justificación |
|:----------|:-------------------------|:---------------------------|
| **Tipo** | Poste Hexagonal/Circular 12m | Galvanizado en Caliente (ASTM A123) |
| **Cimentación** | Concreto 3000 PSI (1x1x1.5m) | Norma NSR-10 (Sismorresistencia) |
| **Seguridad** | Corona de Púas / Anti-escalatorio | Protección antivandálica |
| **Acceso** | Ventana de inspección con llave | Acceso a conexiones internas |
| **Protección** | Barrera Vehicular (New Jersey/Metálica) | Si está en Zona Despejada |

### 2.5 Sistema de Energía Autónomo (Solar)
*Aplica para puntos definidos con Kit Solar en T05.*

| Parámetro | Especificación Requerida (Hard Deck) | Fuente: DT-001 (Ahorro + Eficiencia) |
|:----------|:-------------------------------------|:-------------------------------------|
| **Panel Solar** | **540W Monocristalino** (Alta Eficiencia) | Garantizar recarga en 4h de sol. |
| **Batería** | **GEL 200Ah @ 12V** (Ciclo Profundo) | Autonomía > 48 horas sin sol. |
| **Controlador** | **MPPT 40A** Industrial | Eficiencia de conversión > 98%. |
| **Gabinete** | IP66 Acero Inoxidable / Poliéster | Alojamiento exclusivo baterías. |
| **Respaldo** | Conexión híbrida (Red + Solar) | Si hay red disponible (Redundancia). |

## 3. TABLA DE UBICACIONES (GEORREFERENCIADAS)
**Fuente: Ingeniería de Detalle (Validación en Campo)**

| RUTA | UF | EJE VIAL | PK (Abscisa) | DESCRIPCIÓN SITIO |
|:-----|:---|:---------|:-------------|:------------------|
| 4510 | 0D | Separador | 69+000 | Peatonal / Cruce |
| 4510 | 0D | Separador | 97+030 | Intersección Pto Boyacá |
| 4510 | 0D | Separador | 104+150 | Área Servicio Zambito |
| 4511 | 5.1| Izquierda | 61+675 | Peatonal |
| 4511 | 9 | Separador | 113+300 | A.S. Aguas Negras |
| 4511 | 9 | Separador | 115+800 | Peatonal |
| 4513 | 11 | Separador | 0+320 | Intersección Lizama |
| 4513 | 13 | Separador | 3+875 | Báscula Izquierda (WIM) |
| 4513 | 11 | Separador | 4+400 | CCO Izquierda (Control) |

**TOTAL: 9 UNIDADES**

## 4. ENTREGABLES PARA RECIBO (CONDICIÓN DE PAGO)
1.  **Datasheet Fabricante:** Resaltando Zoom 32X y AES-256.
2.  **Certificado ONVIF:** Verificable en web oficial.
3.  **Certificados RETIE:** Breakers, DPS, Cables y Tablero.
4.  **Cálculo Storage:** Demostrar 30 días en 4MP H.265.
5.  **Garantía:** Mínimo 2 años en sitio.

---
**Firmado Digitalmente:** Ingeniería de Detalle TM01
**Fecha:** 29-Ene-2026

---

## 5. DICTAMEN DE VALIDACIÓN (AUDITORÍA FORENSE DEFINITIVA v3.1)

**Resultado:** 🟢 **T04 VALIDADO (LISTO PARA COMPRAS)**

El documento mantiene las cantidades oficiales (9 Unidades) pero aplica el estándar técnico **v3.0 (Defensive)**, exigiendo **Zoom 32X** y **AES-256**.

### Matriz de Blindaje (Risk Management)
| Riesgo Detectado | Acción de Mitigación (T04) | Resultado |
|:-----------------|:---------------------------|:----------|
| **Cámaras "Ciegas"** | Exigencia Bloqueante **Zoom 32X** | ✅ MITIGADO |
| **Ilegalidad Evidencia**| Exigencia **Cifrado AES-256** | ✅ MITIGADO |
| **Rechazo Eléctrico** | Exigencia **DPS + Rotulado RETIE** | ✅ MITIGADO |
| **Cantidad** | 9 Unidades (Master Data) | ✅ CONSISTENTE |

**Conclusión:** ANEXO TÉCNICO APROBADO. El proveedor debe cotizar 9 unidades cumpliendo estricto estándar IP/REV.
