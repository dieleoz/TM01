# DT-TM01-RADIO-001: OPTIMIZACIÓN SISTEMA RADIO FM (MODELO SERVICIO)

## Decisión
Cambiar el modelo de cumplimiento del Sistema de Información al Usuario (Radio FM) de "Construcción de Infraestructura" (CAPEX) a "Modelo de Servicio/Arrendamiento" (OPEX).

## Justificación Técnica
1.  **Obligación Contractual (AT2 3.3.3.2.3):** El contrato exige "difundir información... por medio de uno o varios canales". No obliga a la *construcción* de emisoras propias, ni a la tenencia de activos de transmisión (torres, antenas).
2.  **Cobertura Geográfica:** Instalar una emisora propia con cobertura en 250km de topografía compleja requeriría múltiples repetidoras y licencias ANE costosas y demoradas. Las cadenas comerciales (RCN, Caracol, Olímpica) ya garantizan cobertura >95%.
3.  **Eficiencia Operativa:** El modelo de servicio (convenio de difusión) permite cumplimiento inmediato ("Puesta en Marcha") y elimina el mantenimiento de equipos RF.
4.  **Integración CCO:** Se mantiene la integración funcional para la "Interrupción Prioritaria" en casos de emergencia, gestionada vía enlaces de comunicaciones con las emisoras aliadas.

## Impacto Financiero
*   **Anterior (Estimado T05):** $200,000 USD (Construcción Emisora + Repetidoras).
*   **Nuevo (T05 v1.0):** **$0 USD** (0 Equipos de Construcción).
*   **Costo Operativo (OPEX):** Se traslada al presupuesto de O&M (Convenios de Difusión).
*   **Ahorro Neto CAPEX:** **$200,000 USD**.

## Estado
✅ APROBADO (Estrategia "Hard Deck" / Auditoría 6.0).

---

## 🔍 VERIFICACIÓN DE ALCANCE (28-Ene-2026)

**Pregunta de Auditoría:** ¿Se requiere Cable Radiante (Leaky Feeder) para cobertura en túneles?

**Respuesta:** ❌ **NO APLICA**

**Evidencia Contractual:**
- ✅ **AT1 (Alcance):** Tablas UF1-UF13 describen "vías a cielo abierto, puentes y viaductos" - **0 menciones de túneles**
- ✅ **AT2 (Operación):** Sección 3.3.3.2.3 requiere cobertura de radio FM - **NO menciona túneles**
- ✅ **AT3 (Especificaciones):** Capítulo III trata "Puentes, Viaductos y Otras Estructuras" - **NO hay capítulo de túneles**

**Conclusión Técnica:**
El trazado del proyecto TM01 es **100% a cielo abierto (Open Sky)** o pasos a desnivel menores (< 50 m), por lo que:
- ✅ La señal de radio comercial penetra naturalmente
- ✅ **NO se requiere infraestructura de re-radiación** (Leaky Feeder, amplificadores de túnel)
- ✅ El modelo OpEx (convenios de difusión) es **suficiente y contractualmente válido**

**Fuente:** Apéndice Técnico 1, Tablas UF1-UF13 (Características Geométricas)  
**Dictamen Forense:** Ver `DICTAMEN_CABLE_RADIANTE_NO_APLICA.md`  
**CAPEX Cable Radiante:** **$0 USD** (NO APLICA)
