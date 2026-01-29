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
## 2. ESPECIFICACIONES TÉCNICAS (HARD DECK)

### 2.1 El Cable (Backbone Trunk)
*   **Tipo:** Monomodo G.652.D (Bajo pico de agua, estándar ITU-T).
*   **Construcción:** Loose Tube (Tubo holgado), Gel-filled (Bloqueo de agua), Armadura metálica (Anti-roedores).
*   **Capacidad:** **48 Hilos** (24 Pares).
    *   *Uso:* 12 hilos ITS, 12 hilos Peaje, 12 hilos Admin/Voz, 12 Reserva Comercial (Dark Fiber).

### 2.2 Obra Civil (El Costo Real)
El 85% del CAPEX no es el vidrio, es la obra civil.
*   **Ductería:** Tritubo HDPE 4" (1 ducto para FO Proyecto, 1 ducto Rentabilidad Futura, 1 Mantenimiento).
*   **Cámaras:** Tipo Handhole 80x80x80 (Paso) y 1.2x1.2 (Empalme) cada 500-1000m.
*   **Cruces Especiales:** Perforación Dirigida (HDD) en ríos y adosamientos en puentes (22 estructuras).

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

**Validación de Mercado:** El costo de $27k USD/km es consistente con proyectos viales 4G que incluyen Tritubo y obra civil nueva (Greenfield). Reducir este valor implica riesgo de no poder construir en zonas rocosas.

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
