# DT-TM01-002: Eliminación Sistema Radio FM

## 1. Información General
- **ID Cambio:** DT-TM01-002
- **Fecha:** 22/01/2026
- **Solicitante:** Gerencia de Proyecto / Cliente
- **Sistema Afectado:** Subsistema 12 - Radio FM
- **Estado:** Aprobado para Implementación

## 2. Descripción del Cambio
Se elimina del alcance el **Subsistema de Radio FM** (Estación Base + Repetidoras).
- **Alcance Anterior:** 1 Estación + 5 Repetidoras.
- **Alcance Nuevo:** 0 Unidades.

## 3. Justificación Técnica y Contractual

### 3.1 Interpretación Normativa del Requisito
El **Apéndice Técnico 2, Sección 3.3.3.2.3** establece textualmente:

> "El Concesionario deberá difundir al menos 4 veces en una hora [...] la siguiente información de la vía **por medio de uno o varios canales de emisora de radio**."

**Análisis Jurídico:**
- El contrato exige **difundir información** vía radio, NO la **instalación de una emisora propia**.
- La obligación es de **resultado** (información disponible), no de **medio** (infraestructura de radiodifusión).
- El texto permite cumplir mediante "uno o varios canales", lo que incluye:
  - Convenios con emisoras comerciales existentes (FM locales)
  - Servicios de difusión contratados (Radio Tráfico, RCN Radio, etc.)
  - Integración con plataformas de información vial (Waze, Google Maps con audio)

### 3.2 Justificación de la Eliminación de Infraestructura Propia

1.  **Cumplimiento Contractual Alternativo:**
    - El concesionario cumplirá la obligación mediante **convenios con emisoras FM comerciales** que cubren el corredor (293 km).
    - Cobertura verificada: Emisoras en Barrancabermeja, Puerto Boyacá y municipios intermedios cubren >95% del trazado.
    - Costo de convenios: ~$30M COP/año vs. $880M COP CAPEX + $120M COP/año OPEX de emisora propia.

2.  **Redundancia Tecnológica:**
    - **PMV (28 unidades):** Información visual en tiempo real.
    - **Postes SOS (cada 3 km):** Comunicación directa con CCO.
    - **Página Web + Apps:** Información meteorológica y estado de vía 24/7.
    - **Redes Sociales:** Alertas push en eventos críticos.

3.  **Viabilidad Económica:**
    - **Ahorro CAPEX:** $880M COP (~$231k USD) en infraestructura.
    - **Ahorro OPEX:** $120M COP/año en operación, mantenimiento y licencias.
    - **ROI Negativo:** Inversión no justificable vs. alternativas de difusión.

4.  **Complejidad Regulatoria Eliminada:**
    - Licencias de espectro ante MinTIC (12-18 meses de trámite).
    - Permisos de instalación de antenas ante ANE.
    - Cumplimiento de normativa de radiodifusión (Res. 415/2010 MinTIC).

### 3.3 Validación con Interventoría
- **Fecha de Consulta:** 15/01/2026
- **Concepto Interventoría:** Favorable. Confirma que el contrato exige difusión, no infraestructura propia.
- **Aprobación Cliente:** 22/01/2026 (Ver Acta de Comité Técnico #47)

## 4. Impacto Económico (Ahorro)
| Ítem | Descripción | Valor Anterior | Valor Nuevo | Ahorro |
|:-----|:------------|:---------------|:------------|:-------|
| 12.1 | Sistema Radio FM | $880,000,000 | $0 | **$880,000,000** |
| - | AIU/Imprevistos | N/A (Suministro) | $0 | $0 |
| - | IVA (19%) | $167,200,000 | $0 | **$167,200,000** |
| **TOTAL** | **CAPEX Radio** | **$1,047,200,000** | **$0** | **~$1.05 Mil M COP** |

## 5. Documentos Afectados
- `tm01_master_data.js`
- `datos_wbs_TM01_items.js`
- `README.md` (Matriz de Alcance)
