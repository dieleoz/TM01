# T04: ESPECIFICACIONES TÉCNICAS - SISTEMA DE GÁLIBO
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 30/01/2026
**Sistema:** Control de Altura (Gálibo)
**Responsable:** Auditoría Técnica (Agente 3)
**Versión:** 1.0 (VALIDACIÓN CON ALERTAS)

---

## 1. DICTAMEN EJECUTIVO: 🟢 T04 VALIDADO (CON ALERTA DE INTERFAZ CIVIL)

**Resultado:** 🟢 **APROBADO PARA CONSTRUCCIÓN**

La especificación técnica es **ROBUSTA** para el componente tecnológico (Láser + PMV), alineándose con la estrategia de protección de los 8 puentes críticos.

**Advertencia de Alcance:** Se valida la exclusión del "Pórtico de Sacrificio" (Viga física) de este presupuesto ITS, pero se genera la **ALERTA CRÍTICA** de que este elemento debe existir en el presupuesto de **Estructuras/Civil** para cumplir con el Manual de Señalización 2024 (Numeral 9.3.3.4).

---

## 2. MATRIZ DE CUMPLIMIENTO "HARD DECK"

| Requisito Técnico | Fuente Obligación | Especificación T04 | Veredicto |
|:------------------|:------------------|:-------------------|:----------|
| **Ubicación** | AT2 / Layout T02. | 8 Unidades (Coordenadas OK) | ✅ CUMPLE |
| **Tecnología** | Manual 2024. | Láser Clase 1 / Cortina Óptica | ✅ CUMPLE |
| **Aviso Conductor** | Manual 2024 (Señal Oculta). | **PMV Local ("PARE")** | ✅ CUMPLE |
| **Altura** | AT2. | Configurable (5.10m) | ✅ CUMPLE |
| **Integración** | AT4. | SNMP v3 / SCADA | ✅ CUMPLE |
| **Energía** | RETIE 2024. | Solar Autónomo 72h | ✅ CUMPLE |

---

## 3. ANÁLISIS DE RIESGOS TÉCNICOS

### A. La "Señal Oculta" (PMV Local)
*   **Norma:** Manual 2024 exige leyenda "GÁLIBO EXCEDIDO DETÉNGASE".
*   **Requisito:** Clase L3 (EN 12966) para visibilidad a 200m bajo sol.

### B. Falsos Positivos
*   **Riesgo:** Activación por aves o ramas.
*   **Mitigación:** Algoritmo de discriminación de objetos pequeños / Filtro temporal.

### C. Infraestructura Soporte
*   **Norma:** Columnas con cinta retrorreflectiva amarillo/negro (Marcador de Obstáculo).

---

## 4. ESPECIFICACIÓN DE COMPRA (ANEXO TÉCNICO)

### ÍTEM 1: SISTEMA DE DETECCIÓN (SENSOR)
*   **Tecnología:** Escáner Láser (LiDAR) o Barrera IR.
*   **Clasificación:** Clase 1 (Seguro vista humana).
*   **Cobertura:** Ancho de calzada completo (mín 7.3m).
*   **Prestaciones:** Filtro de falsas alarmas IP65+.

### ÍTEM 2: SISTEMA DE AVISO (PMV LOCAL)
*   **Tipo:** Panel LED Alfanumérico (Evento).
*   **Dimensiones:** Mínimo 1.50 m x 1.00 m.
*   **Mensaje:** Configurable (Rojo "ALTO EXCESO ALTURA").
*   **Norma:** UNE-EN 12966.

### ÍTEM 3: CONTROL Y ENERGÍA
*   **Controlador:** Gabinete Industrial con coms 4G/Fibra.
*   **Energía:** Sistema Fotovoltaico Off-Grid (Autonomía 72h).
*   **RETIE:** Dictamen de Inspección + Rotulado "Fuente Fotovoltaica".

---

## 5. CONCLUSIÓN FINANCIERA

**Estado:** 🟢 APROBADO
**Presupuesto Validado:** **$280,000 USD** ($35k/unidad).
