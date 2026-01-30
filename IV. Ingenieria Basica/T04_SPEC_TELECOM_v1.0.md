# T04: ESPECIFICACIONES TÉCNICAS - SISTEMA DE TELECOMUNICACIONES
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 30/01/2026
**Sistema:** Telecomunicaciones (Fibra Óptica y Radio)
**Responsable:** Auditoría Técnica (Agente 3)
**Versión:** 1.0 (VALIDACIÓN DEFINITIVA)

---

## 1. DICTAMEN EJECUTIVO: 🟢 VALIDADO (CON EXCLUSIÓN CRÍTICA)

**Resultado:** 🟢 **APROBADO CON CONDICIONES**

La especificación es **TÉCNICAMENTE SÓLIDA** para el Backbone de Fibra Óptica, pero se ha **ELIMINADO** cualquier referencia a "Cable Radiante" (Leaky Feeder) para evitar un falso positivo presupuestal, dado que el proyecto es 100% a cielo abierto.

### Estrategia Aprobada
*   **Backbone:** Fibra Óptica Monomodo 48 Hilos (322 km de cable físico).
*   **Radio:** Híbrido PoC/VHF (Modelo de Servicio OPEX).
*   **Túneles:** **NO APLICA** tecnología de re-radiación.

---

## 2. MATRIZ DE CUMPLIMIENTO "HARD DECK"

| Componente | Requisito Contractual / Dictamen | Especificación T04 | Veredicto |
|:-----------|:---------------------------------|:-------------------|:----------|
| **Medio de Transmisión** | AT3 (4.2.xiii): Fibra Monomodo G.652.D [Fuente 19]. | G.652.D | ✅ CUMPLE |
| **Capacidad** | AT3 (4.2.xiii): Mínimo 48 Hilos [Fuente 123]. | 48 Hilos | ✅ CUMPLE |
| **Longitud Física** | Dictamen Fibra: 293 km + Reservas = 322 km. | 322 km | ✅ CUMPLE |
| **Cable Radiante** | Dictamen Túneles: NO APLICA [Fuente 95]. | **ELIMINADO** | ✅ CORRECTO |
| **Redundancia** | AT2: Anillo lógico o físico. | Cierre por tercero | ✅ ESTRATEGIA VÁLIDA |
| **Instalación** | AT5: Tritubo (Canalización). | Tritubo HDPE | ✅ CUMPLE |

---

## 3. ALERTAS DE INGENIERÍA Y COMPRAS

### A. La Exclusión del "Cable Radiante"
*   **Dictamen:** El proyecto es 100% cielo abierto.
*   **Acción:** Se eliminan los ítems de "Cable Leaky Feeder" y "Amplificadores de Túnel".

### B. La Trampa de la "Unidad de Medida"
*   **Riesgo:** Cotizar "km de Hilo" en lugar de "km de Cable".
*   **Acción:** El RFQ exige **"Metro Lineal de CABLE DE FIBRA ÓPTICA de 48 Hilos"**.

---

## 4. ESPECIFICACIÓN DE COMPRA (ANEXO TÉCNICO)

### ÍTEM 1: CABLE DE FIBRA ÓPTICA (SUMINISTRO)
*   **Norma:** ITU-T G.652.D (Bajo pico de agua).
*   **Construcción:** Dieléctrico (ADSS/PKP), Tubo Holgado, Gel-filled.
*   **Capacidad:** 48 Hilos (Cores) norma TIA-598.
*   **Chaqueta:** HDPE resistente a UV y abrasión.
*   **Marcación:** Indeleble cada metro.

### ÍTEM 2: ACCESORIOS DE PLANTA EXTERNA (ODN)
*   **Cámaras:** Policoncreto/Fibra de Vidrio, marcadas "CONCESIÓN - FIBRA ÓPTICA".
*   **Empalmes:** Tipo Domo IP68, capacidad 48 fusiones.
*   **Reservas:** 30 metros cada 1.5 km (Mantenimiento).

### ÍTEM 3: DUCTERÍA (OBRA CIVIL)
*   **Tubería:** Tritubo HDPE 40mm o 3x PVC DB.
*   **Profundidad:** 1.20m (Cruces), 0.80m (Berma).
*   **Señalización:** Cinta de advertencia a 30cm de profundidad.

---

## 5. CONCLUSIÓN FINANCIERA

**Estado:** 🟢 APROBADO (Sin Cable Radiante)
**Presupuesto Objetivo (Backbone):** **$7,980,000 USD** (Material + Obra Civil Pesada).
