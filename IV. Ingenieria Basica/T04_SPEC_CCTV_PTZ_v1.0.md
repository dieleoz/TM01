# FICHA TÉCNICA (T04) - SISTEMA CCTV
**Proyecto:** Troncal Magdalena (TM01)  
**ID Especificación:** T04-CCTV-001  
**Versión:** 1.0 (Audit 6.0 Approved)  
**Estado:** ✅ PARA CONSTRUCCIÓN  

---

## 1. DESCRIPCIÓN GENERAL
Sistema de Circuito Cerrado de Televisión (CCTV) para monitoreo de puntos críticos de la concesión. Equipamiento "All-in-One" con analíticas de borde.

## 2. REQUISITOS TÉCNICOS (HARD DECK)

| Parámetro | Especificación Requerida | Referencia (T05) |
|:----------|:-------------------------|:-----------------|
| **Marca/Modelo** | Dahua WizMind Series 7 o superior | Item 5.01 |
| **Resolución** | 4 Megapíxeles (2688 × 1520) | AT3 Spec |
| **Zoom Óptico** | 40x (o superior) | Cobertura 2km |
| **Visión Nocturna** | Starlight + IR 200m | Operación 24/7 |
| **Protección** | IP67 (Agua/Polvo) + IK10 (Vandalismo) | Cláusula 4.2 |
| **Analíticas** | Cruce de línea, Intrusión, Objeto abandonado | Edge AI |
| **Alimentación** | Hi-PoE / 24VAC | Respaldo UPS |

## 3. CANTIDADES A INSTALAR (POR TRAMO)

| Ubicación | Cantidad | Descripción |
|:----------|:--------:|:------------|
| **Peaje Zambito** | 4 | Monitoreo carriles y tesorería |
| **Peaje Aguas Negras**| 4 | Monitoreo carriles y tesorería |
| **Estación Pesaje (PR4)** | 1 | Supervisión báscula dinámica |
| **TOTAL** | **9** | **Coincide con Master Data** |

## 4. NORMATIVA APLICABLE
- **ONVIF:** Perfil S y G (Mandatorio).
- **RETIE:** Certificación de producto para fuentes de poder.
- **ISO 14001:** Gestión ambiental en instalación.

---
**Firmado Digitalmente:** Ingeniería de Detalle TM01
**Fecha:** 29-Ene-2026

---

## 5. DICTAMEN DE VALIDACIÓN (AUDITORÍA FORENSE v2.0)

**Resultado:** 🟢 **VALIDADO (CUMPLE ESTÁNDAR IP/REV)**

La especificación propuesta (Cámara PTZ, Zoom 32X, 4MP, IP67) es **TÉCNICAMENTE CORRECTA** y cumple con los requisitos obligatorios tanto para la Vía (AT2) como para los Peajes (Resolución 20213040035125).

### A. Matriz de Cumplimiento "Hard Deck"
| Requisito Técnico | Fuente (IP/REV / AT2) | Especificación TM01 | Veredicto |
|:------------------|:----------------------|:--------------------|:----------|
| **Zoom Óptico** | Obligatorio: 32X | 32X | ✅ CUMPLE (Crítico) |
| **Resolución** | Mínimo 1920x1080 (2MP) | 4MP (2560×1440) | ✅ SUPERA |
| **Sensibilidad** | Mínima 0.2 lux | 0.005 lux (Starlight) | ✅ SUPERA |
| **Compresión** | H.264 / MPEG-4 | H.265 / H.264 | ✅ CUMPLE |
| **Protección** | Grado IP66 | IP67 (Inmersión) | ✅ SUPERA |
| **Disponibilidad** | MTBF > 40,000 horas | MTBF > 100,000 horas | ✅ CUMPLE |

### B. Alertas para Ingeniería de Detalle (T05)
1.  **Candado Digital (AES-256):** Verifique que el VMS/NVR active el cifrado AES-256 (Req. IP/REV 2.9.5).
2.  **Retención de Video:** Calcular almacenamiento para **30 días** (~40 TB) para cubrir holgura de auditoría (AT2 exige 1 semana, pero auditoría suele pedir más).
3.  **Calefacción (Heater):** Confirmar que la cámara incluya función *Heater* o *Defog* para cumplir el requisito de "sistema calefactor" por normativa, aunque sea clima cálido (condensación).

**Conclusión:** La especificación TM01-CCTV-SPEC-002 es VÁLIDA para construcción. Al estandarizar una cámara que cumple la norma más estricta para todo el proyecto, se simplifica el mantenimiento.
