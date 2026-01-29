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

### 1.2 "Hard Deck" de Obra Civil (AT1 3.1)
**Ubicación Inmutable:** La Lizama PK 4+300 RN 4513. Se debe **adecuar la estructura existente**.
**Áreas Mínimas Obligatorias (>400 m² Construidos + ~400 m² Parqueo):**
*   **Oficina ANI/Interventoría:** 50 m² (CRÍTICO: Acceso Independiente + Terminal Espejo).
*   **Oficina Policía:** 50 m² (Uso exclusivo).
*   **Cafetería Pública:** 100 m² (Zona usuarios vía -> Clasifica como "Alta Afluencia" RETIE).
*   **Sala de Control:** 16 m² (Mínimo, recomendamos 40 m² para Videowall + 4 Consolas).
*   **Parqueo Visitantes:** 36 espacios de 11 m² c/u (Impacto Urbanístico masivo).
*   **Impacto:** Si la edificación actual no tiene estas áreas, se **DEBE AMPLIAR**. No es una simple remodelación cosmética.

---

<!-- SECCIÓN: technical_notes -->
## 2. BLINDAJE TÉCNICO Y OPERATIVO

### 2.1 Energía y Clima Crítico (RETIE 2024)
Para cumplir disponibilidad 99% (AT2) y RETIE (instalación vital):
1.  **Redundancia:** UPS Online (5-30 min) + Planta Eléctrica (Tanque 24h con dique de contención).
2.  **Cableado:** **LSZH** (Libre de Halógenos) obligatorio por afluencia de público (Cafetería 100m²).
3.  **Climatización:** Aire de Precisión/Confort Redundante (N+1) para Sala de Servidores y Operación 24/7.
4.  **Certificación:** Se requiere **Certificación Plena RETIE** (Diseño + Construcción + Inspección).

### 2.2 Integración de Software (La "Suite" CCO)
No es un solo software. Es una arquitectura de 3 capas:
1.  **Capa Operativa (SCADA/ITS):** Gestión TR (CCTV, SOS, PMV). Protocolos ONVIF/NTCIP.
2.  **Capa de Negocio (Peaje + Pesaje):** Back-Office IP/REV (Integración Colpass/SiGT). Cifrado AES-256.
3.  **Capa Auditoría (SICC):** "Caja Negra" contractual (AT4) que reporta indicadores a la ANI.

### 2.3 Visualización y Ergonomía
*   **Videowall:** Mínimo arreglo 2x2 o 3x2 (Monitores Industriales 24/7, bisel <3.5mm).
*   **Mobiliario:** Consolas ergonómicas certificadas 24/7 (No escritorios de oficina).

---

<!-- SECCIÓN: financial -->
## 💰 ANÁLISIS FINANCIERO (HARDWARE + OBRA CIVIL)

### 3.1 Presupuesto Validado (DT-TM01-CCO-019 + Civil)
El ahorro en servidores ($1.9M) permite cubrir la **Obra Civil Pesada** que se había subestimado.

| Ítem | Componente | Costo Estimado (USD) | Nota Validada |
|:-----|:-----------|:---------------------|:--------------|
| **1** | **Equipamiento IT (Hardware)** | **$425,000** | DT-019 (Servidores, Storage, Video) |
| **2** | **Adecuación Civil (>400m²)** | **$250,000** | Remodelación + Ampliación La Lizama |
| **3** | **Sistema Eléctrico (Potencia)** | **$120,000** | Planta, UPS, Tableros, RETIE |
| **4** | **Mobiliario Técnico** | **$50,000** | Consolas y sillas 24/7 |
| **TOTAL** | **CCO INTEGRAL** | **$845,000** | **Realista y Cumple AT1** |

**Nota:** Aunque sube vs la lista de solo hardware ($425k), sigue generando un ahorro masivo frente a los $2.4M originales, cubriendo los riesgos civiles y eléctricos.

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
