# T04: ESPECIFICACIONES TÉCNICAS - CCTV PTZ
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 30/01/2026
**Sistema:** Circuito Cerrado de TV (CCTV) - Cámaras PTZ
**Responsable:** Auditoría Técnica (Agente 3)
**Versión:** 3.0 (VALIDACIÓN IP/REV + RETIE)

---

## 1. DICTAMEN EJECUTIVO: 🟢 T04 VALIDADO (CUMPLE IP/REV Y RETIE)

**Resultado:** 🟢 **APROBADO PARA CONSTRUCCIÓN**

La especificación técnica es **ROBUSTA**, **NORMATIVAMENTE CORRECTA** y **CONTRACTUALMENTE SEGURA**. El documento define un alcance de **9 Cámaras PTZ** de alto rendimiento, cubriendo estrictamente los "Puntos Obligatorios" (Peajes, Pesaje, CCO e Intersecciones).

**Fase 1 (Mandatoria):** 9 Unidades (Evita sobrecostos iniciales).

---

## 2. MATRIZ DE CUMPLIMIENTO "HARD DECK"

| Parámetro Crítico | Requisito Normativo / Contractual | Especificación T04 | Veredicto |
|:------------------|:----------------------------------|:-------------------|:----------|
| **Zoom Óptico** | IP/REV (Art 2.9.5): Mínimo **32X**. | 32X (Dahua SD5A o eq.) | ✅ CUMPLE (Bloqueante) |
| **Resolución** | AT2: QVGA (Obs). Dictamen: Mejora. | **4 MP** (2560×1440) | ✅ SUPERA |
| **Ciberseguridad**| IP/REV: Cifrado. | AES-256 / HTTPS / TLS 1.2 | ✅ CUMPLE |
| **Retención** | AT2: 1 Semana. Dictamen: Seguridad. | **30 Días** (Raid 5) | ✅ CUMPLE |
| **Analítica** | Manual 2024: DAI. | WizSense / IVS (Borde) | ✅ CUMPLE |
| **Instalación** | RETIE 2024. | DPS Clase I+II + Dictamen | ✅ CUMPLE |

---

## 3. ANÁLISIS DE RIESGOS TÉCNICOS

### A. El "Killer" del Zoom (32X vs 25X)
*   **Norma:** IP/REV exige 32X.
*   **Acción:** "Cámaras inferiores a 32X no serán evaluadas".

### B. Condensación (Heater/Defog)
*   **Requisito:** Función Defog óptica/digital y calefactor automático para zonas húmedas (Magdalena Medio).

### C. Cumplimiento RETIE
*   **Requisito:** Rotulado de Riesgo Eléctrico y Certificados de Producto (Cables, DPS) obligatorios para pago final.

---

## 4. ESPECIFICACIÓN DE COMPRA (ANEXO TÉCNICO)

### ÍTEM 1: CÁMARA PTZ TIPO DOMO (9 Unidades)
*   **Sensor:** 4MP Starlight (0.005 Lux).
*   **Lente:** **Zoom Óptico 32X** (4.8-154mm).
*   **Inteligencia:** Protección perimetral, Detección Rostros, SMD (Filtro humanos/vehículos).
*   **Protección:** IP67 / IK10 / TVS 6000V.
*   **Protocolo:** ONVIF S/G/T.

### ÍTEM 2: INFRAESTRUCTURA DE SOPORTE
*   **Poste:** Concreto/Acero 12m.
*   **Gabinete:** NEMA 4X / IP66.
*   **Protección Eléctrica:** DPS Clase I+II Certificado RETIE.

### ÍTEM 3: INTEGRACIÓN CCO
*   **Licenciamiento:** Canal de video para VMS Central.
*   **Almacenamiento:** Espacio en servidor para **30 días continuos** (H.265).

---

## 5. CONCLUSIÓN FINANCIERA

**Estado:** 🟢 APROBADO
**Presupuesto Objetivo:** **$116,100 USD** (9 Cámaras + Postes + Inst).
