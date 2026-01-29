# DICTAMEN JURÍDICO-TÉCNICO: CENTRO DE CONTROL (CCO)
## Proyecto TM01 Troncal Magdalena

**Versión:** 1.0 (FORENSIC AUDIT)  
**Fecha:** 29 de Enero 2026  
**Tipo de Análisis:** Validación de Alcance y Optimización Financiera  
**Destinatario:** Gerencia de Proyecto + Presupuestos  
**Metodología:** Contract-First Architecture (Punto 42 v3.0)

---

<!-- SECCIÓN: full -->
## 📋 RESUMEN EJECUTIVO (HARD DECK)

**Veredicto:** 🟢 **VALIDADO (OPTIMIZACIÓN MAYOR)**

Se certifica el alcance del **Centro de Control de Operaciones (CCO)** bajo la nueva directriz de "Equipamiento Específico" (DT-TM01-CCO-019), rechazando el modelo anterior de "Solución Llave en Mano" que inflaba el costo.

**Parámetros de Validación (Hard Deck):**
1.  **Modelo de Compra:** Adquisición directa de Hardware (Servidores, Storage, Videowall) + Licencias. No "Cajas Negras".
2.  **Optimización:** Eliminación de duplicidad en Video Central (VMS). El almacenamiento se maneja con cabinas iSCSI estándar, no con NVRs propietarios costosos.
3.  **Ubicación:** Edificio Administrativo (Cuarto Técnico + Sala Operación).

**CAPEX Validado:** **$425,000 USD** (Ahorro neto de **$1,964,000 USD** vs estimación original de $2.4M).

---

<!-- SECCIÓN: contractual -->
## 1. FUNDAMENTO CONTRACTUAL

### 1.1 Obligación Central (AT1)
**Fuente:** Apéndice Técnico 1, Numeral 3.
*   **Texto:** "El Concesionario deberá proveer... un Centro de Control de Operaciones (CCO)... que centralice la información de los subsistemas".
*   **Interpretación:** La obligación es **funcional** (centralizar y visualizar). No obliga a contratar "Suites Enterprise" ni marcas específicas. La propuesta de Hardware COTS (Commercial Off-The-Shelf) cumple legalmente.

### 1.2 Justificación de la Reducción (Forensic)
El presupuesto anterior ($2.38M) asumía un costo de "Obra Civil Video" y "Licenciamiento Enterprise" desproporcionado.
*   **Corrección:** El Hardware ofertado (Servidores Dell/HP, Storage iSCSI, Videowall 4x2) es suficiente para procesar las 100 cámaras y los datos SCADA del proyecto, según las cargas validadas en CCO v1.0.

---

<!-- SECCIÓN: technical_notes -->
## 2. ESPECIFICACIONES TÉCNICAS (HARD DECK)

### 2.1 Equipamiento Mayor (Lista DT-019)
Se valida la siguiente arquitectura de hardware:
*   **Servidores SCADA (x1):** Procesamiento de señales SOS, PMV, WIM, Peaje.
*   **Servidores Aplicaciones (x2):** Base de Datos SQL, Servidor Web, ITS Core.
*   **Almacenamiento (CABINA iSCSI):** Capacidad de *Storage* centralizado para video (Retención Contractual). Sustituye a los NVRs distribuidos.
*   **Backup (CABINA):** Respaldo de datos críticos (Cobros de Peaje + Incidentes).

### 2.2 Visualización
*   **Videowall:** Configuración 4x2 (8 Pantallas 70") con Controlador Gráfico Independiente. Suficiente para visualizar "Matriz de Interés" (Cámaras SOS + Túneles si hubiera + Peajes).

---

<!-- SECCIÓN: financial -->
## 💰 ANÁLISIS FINANCIERO

### Presupuesto Validado (DT-TM01-CCO-019)

| Ítem | Descripción | Cantidad | Total Estimado (USD) |
|:-----|:------------|:---------|:---------------------|
| **1** | **Servidores (SCADA + Apps)** | 3 | $68,429 |
| **2** | **Almacenamiento (iSCSI + Backup)** | 2 | $69,733 |
| **3** | **Video (Grabadores + VMS)** | Global | $23,458 |
| **4** | **Visualización (Videowall + Ctrl)** | 1 | $14,238 |
| **5** | **Licenciamiento y Virtualización** | Global | $150,000 |
| **6** | **Mobiliario Técnico + Estaciones** | Global | $99,142 |
| **TOTAL** | **CCO (HARDWARE + SOFT)** | | **$425,000** |

**Nota de Validación:** Este presupuesto se alinea con precios de mercado para infraestructura IT de rango medio-alto, adecuada para una concesión de esta envergadura.

---

<!-- SECCIÓN: risks -->
## ⚠️ MATRIZ DE RIESGOS

1.  **Integración de Subsistemas:**
    *   *Riesgo:* Que el software SCADA no "hable" con los PMV o SOS de terceros.
    *   *Mitigación:* Exigir protocolos estándar (ONVIF para video, NTCIP para PMV, SIP para SOS) en todos los subsistemas periféricos.
2.  **Ciberseguridad:**
    *   *Riesgo:* Ataque al servidor central.
    *   *Mitigación:* Firewall perimetral físico (no incluido en esta lista, debe estar en Networking) y segmentación de VLANs (Red Operativa vs Red Administrativa).

---

**Estado:** ✅ VALIDADO (OPTIMIZADO)  
**Firma:** Consultoría Forense de Sistemas ITS
