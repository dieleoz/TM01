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
| **Peaje Rio** | 4 | Monitoreo carriles y tesorería |
| **Peaje Caiman**| 4 | Monitoreo carriles y tesorería |
| **Pesaje WIM** | 1 | Supervisión báscula dinámica |
| **TOTAL** | **9** | **Coincide con Master Data** |

## 4. NORMATIVA APLICABLE
- **ONVIF:** Perfil S y G (Mandatorio).
- **RETIE:** Certificación de producto para fuentes de poder.
- **ISO 14001:** Gestión ambiental en instalación.

---
**Firmado Digitalmente:** Ingeniería de Detalle TM01
**Fecha:** 29-Ene-2026

---

## 5. DICTAMEN DE VALIDACIÓN (AUDITORÍA FORENSE)

**Resultado:** 🟢 **T04 VALIDADO (CUMPLE Y SUPERA NORMA)**

Basado en la auditoría cruzada entre esta especificación (Dahua DH-SD5A432GB-HNR) y los documentos contractuales (AT 2, Manual 2024, IP/REV):

### A. Matriz de Cumplimiento
1.  **Peajes (IP/REV):** ✅ **CUMPLE.** Zoom 32x y ONVIF (Req. Num 2.9.5).
2.  **Resolución:** ✅ **SUPERA.** 4MP vs 1080p requerido (Mejora analítica DAI).
3.  **Protección:** ✅ **SUPERA.** IP67 vs IP66 requerido (Ideal clima tropical).
4.  **Funcionalidad:** ✅ **VALIDADO.** Auto-tracking / WizSense reduce carga operativa (AT 2).

### B. Recomendaciones para T05 (Diseño Detallado)
1.  **Almacenamiento:** Calcular discos para 4MP H.265 x 30 días (Blindaje vs 8 días contractuales).
2.  **Ubicación:** Instalar en postes >12m o torres para aprovechar Zoom 32x (Evitar puntos ciegos).
3.  **Integración:** Exigir pruebas de envío de Metadatos (no solo video) al SICC.

**Conclusión:** Especificación "A prueba de balas". Unifica inventario (Vía/Peaje) y habilita IA.
