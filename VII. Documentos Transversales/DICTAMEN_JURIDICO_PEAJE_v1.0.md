# DICTAMEN JURÍDICO-TÉCNICO: SISTEMA PEAJES
## Proyecto TM01 Troncal Magdalena

**Versión:** 1.0 (FORENSIC AUDIT)  
**Fecha:** 29 de Enero 2026  
**Tipo de Análisis:** Jurídico-Técnico Integrado  
**Destinatario:** Gerencia de Proyecto + Abogado Contractual  
**Metodología:** Contract-First Architecture (Punto 42 v3.0)

---

<!-- SECCIÓN: full -->
## 📋 RESUMEN EJECUTIVO

**Alcance Validado:**  
El sistema de Peajes se compone de **2 Estaciones** (Zambito y Aguas Negras) con un total de **14 Carriles** equipados para recaudo mixto (Efectivo/Telepeaje) y control fiscal (WIM-DAC).

**Segregación Crítica (Dictamen PMV):**
- **Incluido en Peaje:** 14 Displays de Tarifas (1 por carril) y equipamiento de cobro.
- **Excluido (Movido a ITS):** 4 PMV de Aproximación (Grandes) que ahora residen en WBS 3.01.

**Datos Clave:**
- **Estaciones:** 2 (Zambito PK 9+200, Aguas Negras PK 80+000).
- **Carriles:** 14 (3+1+3 por estación).
- **Integración:** WIM-DAC (Pesaje en carril) obligatorio por Resolución IP/REV.
- **CAPEX Validado:** **$2,086,577.24 USD**.

---

<!-- SECCIÓN: contractual -->
## 1. FUNDAMENTO CONTRACTUAL

### 1.1 Obligación de Recaudo (Apéndice Técnico 2)
**Referencia:** AT2 Numeral 3.3 (Gestión de Recaudo).
- **Obligación:** Implementar sistema de cobro en todas las estaciones existentes y nuevas.
- **Tecnología:** IP/REV (Interoperabilidad de Peajes con Recaudo Electrónico Vehicular).
- **Nivel de Servicio:** Disponibilidad 99.8%, Tiempo de transacción < 5 segundos.

### 1.2 Integración Pesaje-Peaje (WIM-DAC)
**Referencia:** AT2 Numeral 3.3.4.2 / Resolución IP/REV Art 2.9.
- **Texto:** "El sistema de peaje debe integrar la información de pesaje dinámico para la clasificación vehicular automática".
- **Impacto:** Se requiere instalar sensores WIM (Piezoeléctricos/Cuarzo) en los carriles de peaje, integrados al controlador de carril (DAC).
- **Costo:** $280,358.30 USD (Reconciliado desde Sistema WIM).

### 1.3 Segregación PMV
**Referencia:** Dictamen PMV v2.2 (29/01/2026).
- **Decisión:** Los PMV de aproximación (AT2 3.3.5.1) son activos ITS. Los Displays de Tarifa (Res. IP/REV) son activos de Peaje.
- **Acción:** Presupuesto de 4 PMV ($220k) transferido a ITS. Presupuesto de 14 Displays ($35k) permanece en Peaje.

---

<!-- SECCIÓN: technical -->
## 2. ESPECIFICACIONES TÉCNICAS (HARD DECK)

### 2.1 Equipamiento por Carril (14 Carriles)
| Componente | Especificación | Norma |
|:-----------|:---------------|:------|
| **Antena TAG** | ISO 18000-6C (RFID) | IP/REV |
| **Cámara ANPR** | Frontal + Trasera (OCR) | >95% Precisión |
| **Clasificación** | Sensor WIM (Pesaje) + Volumétrico | AT2 / IP/REV |
| **Barrera** | Alta velocidad (<0.7s) | MTBF > 5M ciclos |
| **Display Tarifa** | LED P10 (640x320mm) | Visible a 50m |

### 2.2 Equipamiento de Estación (2 Estaciones)
- **Servidores:** Redundancia local (Cluster).
- **Comunicaciones:** Anillo de Fibra Óptica (L3).
- **Energía:** UPS Online + Planta Eléctrica (Autonomía > 24h).

---

<!-- SECCIÓN: financial -->
## 💰 ANÁLISIS FINANCIERO

### Presupuesto Reconciliado (USD)

| Ítem | Fuente | Valor |
|:-----|:-------|:------|
| **1. Equipamiento FTS (Base)** | Cotización Oficial | $1,806,218.94 |
| **2. Integración WIM-DAC** | T05 Pesaje | $280,358.30 |
| **3. PMV Aproximación** | *Movido a ITS* | ($220,000.00) |
| **TOTAL CAPEX PEAJE** | **Hard Deck** | **$2,086,577.24** |

**Nota:** Este valor excluye Obra Civil de casetas y marquesinas (Parte del EPC Civil), solo incluye Tecnología.

---

<!-- SECCIÓN: risks -->
## ⚠️ MATRIZ DE RIESGOS

1.  **Integración IP/REV:**
    *   *Riesgo:* Rechazo de la homologación por el Ministerio.
    *   *Mitigación:* Exigir al proveedor (FTS) certificado de homologación vigente antes de la compra.
2.  **Fallas WIM-DAC:**
    *   *Riesgo:* Discrepancias entre categoría detectada y cobrada.
    *   *Mitigación:* Calibración trimestral según norma ONAC.
3.  **Obra Civil:**
    *   *Riesgo:* Retraso en entrega de islas para montaje de equipos.
    *   *Mitigación:* Cronograma integrado Civil-ITS.

---

**Estado:** ✅ VALIDADO PARA COMPRA  
**Documento Fuente:** T05 Ingeniería de Detalle v1.0
