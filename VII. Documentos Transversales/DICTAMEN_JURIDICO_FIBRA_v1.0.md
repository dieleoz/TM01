# DICTAMEN JURÍDICO-TÉCNICO: FIBRA ÓPTICA (BACKBONE)
## Proyecto TM01 Troncal Magdalena

**Versión:** 1.0 (FORENSIC AUDIT)  
**Fecha:** 29 de Enero 2026  
**Tipo de Análisis:** Validación de Alcance y Unidad de Medida  
**Destinatario:** Gerencia de Proyecto + Presupuestos  
**Metodología:** Contract-First Architecture (Punto 42 v3.0)

---

<!-- SECCIÓN: full -->
## 📋 RESUMEN EJECUTIVO (HARD DECK)

**Veredicto:** 🟢 **VALIDADO (ALCANCE FÍSICO)**

Se certifica el alcance del **Backbone de Comunicaciones** necesario para integrar los 6 Subsistemas ITS (CCTV, SOS, PMV, Peajes, WIM, Radio).

**Parámetros de Validación (Hard Deck):**
1.  **Longitud Física:** **322 km de CABLE** (293 km Corredor + 10% Holgura/Reservas).
2.  **Capacidad:** **48 Hilos Monomodo** (G.652.D).
3.  **Unidad de Control:** **Metro Lineal de CABLE (ML-C)**. Se prohíbe terminantemente cotizar o pagar por "km-hilo" o "km-par", práctica que infla el presupuesto en 48x.

**CAPEX Validado:** **$7,980,000 USD** (Incluye Obra Civil Pesada: Tritubo, Cámaras 80x80, Cruces Subfluviales).

---

<!-- SECCIÓN: contractual -->
## 1. FUNDAMENTO CONTRACTUAL

### 1.1 Obligación de Conectividad (AT1)
**Fuente:** Apéndice Técnico 1, Alcance General.
*   **Requisito:** "Interconexión de todos los elementos del sistema ITS con el Centro de Control de Operaciones (CCO)".
*   **Interpretación:** La única tecnología viable para 293 km de transmisión de video HD (CCTV) y datos críticos (Peaje) es la **Fibra Óptica**. Enlaces de radio no garantizan el ancho de banda ni la estabilidad requerida.

### 1.2 Aclaración Forense #1: "322 km"
**Fuente:** Nota Técnica Aclaratoria 322KM.
*   **Confusión:** Riesgo de interpretar 322 km como suma de hilos.
*   **Dictamen:** Los 322 km corresponden a la **Zanja/Tendido Físico**.
    *   Corredor: 293 km.
    *   Reservas Técnicas (Bucles): 29 km (10%).
    *   **Total Cable:** 322 km.

---

<!-- SECCIÓN: technical_notes -->
## 2. BLINDAJE TÉCNICO (FORENSIC SPECS)

### 2.1 La Regla de los 48 Hilos (AT3 4.2.xiii)
**Hallazgo Forense:** El contrato define explícitamente la capacidad mínima.
**Mandato:** Todo cable troncal debe tener **48 Hilos**.
*   *Restricción:* Cables de 24 o 12 hilos serán rechazados como "No Conformidad" de producto, independientemente de que "sobre capacidad".
*   *Cita:* "La red troncal de fibra óptica deberá contar con una capacidad mínima de 48 hilos" (AT3 Numeral 4.2.xiii).

### 2.2 Estrategia Anti-RETIE (Cable Dieléctrico)
**Fuente:** RETIE 2024, Art 2.3.10 (Función Dual).
**Riesgo:** Cables con armadura metálica (acero) requieren certificación RETIE y sistemas de puesta a tierra complejos en cada empalme.
**Solución:** Especificar **Fibra Óptica 100% Dieléctrica** (Armadura FRP/Aramida).
*   *Beneficio:* Al no ser conductor, no aplica RETIE sobre el cable de datos, simplificando la legalización.

### 2.3 Protección de Infraestructura (Obra Civil)
Para evitar cortes por maquinaria (el mayor riesgo operativo):
1.  **Cinta de Señalización:** Obligatoria a 30cm sobre el ducto ("PELIGRO FIBRA ÓPTICA").
2.  **Profundidad:** Mínima 1.2m en cruces de vía / 0.8m en bermas.

### 2.4 El Cable (Backbone Trunk)
*   **Tipo:** Monomodo G.652.D (Bajo pico de agua).
*   **Construcción:** Loose Tube, Gel-filled, **Dieléctrico**.
*   **Capacidad:** **48 Hilos** (Mandatorio).

---

<!-- SECCIÓN: financial -->
## 💰 ANÁLISIS FINANCIERO

### Presupuesto Consolidado (Civil + Pasiva)

| Ítem | Descripción | Cantidad (km) | Unitario (USD/km) | Total (USD) | Notas |
|:-----|:------------|:--------------|:------------------|:------------|:------|
| **1** | **Suministro Cable FO 48H** | 322 | $3,500 | $1,127,000 | Material |
| **2** | **Obra Civil (Tritubo+Zanja)** | 293 | $20,000 | $5,860,000 | Excavación en zona blanda/dura |
| **3** | **Instalación y Empalmería** | 322 | $2,000 | $644,000 | Mano de obra especializada |
| **4** | **Accesorios (Cámaras/ODF)** | 1 (Glb) | $349,000 | $349,000 | Cajas de empalme, Racks |
| **TOTAL** | **BACKBONE FIBRA** | | | **$7,980,000** | **$27k / km (Promedio)** |

**Validación de Mercado:** El costo de $27k USD/km es consistente con proyectos viales 4G (Greenfield).
**Nota de Compra:** La Orden de Compra debe decir explícitamente: *"Cable de Fibra Óptica Monomodo G.652.D, 48 Hilos, Dieléctrico"*. Cualquier desviación en hilos o metal es causal de rechazo.

---

<!-- SECCIÓN: risks -->
## ⚠️ MATRIZ DE RIESGOS

1.  **Error de Unidad (Catastrófico):**
    *   *Riesgo:* Cotizar "km de fibra" en lugar de "km de cable".
    *   *Impacto:* Multiplica el costo de material por 48.
    *   *Mitigación:* RFQ debe especificar "Bobinas de Cable de 48 hilos".
2.  **Vandalismo/Cortes:**
    *   *Riesgo:* Cortes de fibra por terceros.
    *   *Mitigación:* Profundidad mínima 1.2m y cinta de señalización obligatoria. Cámaras de empalme con tapas de seguridad (bloqueo mecánico o lógico).

---

**Estado:** ✅ VALIDADO  
**Firma:** Consultoría Forense de Sistemas ITS
