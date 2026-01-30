# T04: ESPECIFICACIONES TÉCNICAS - SISTEMA DE ENERGÍA ELÉCTRICA
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 30/01/2026
**Sistema:** Energía Eléctrica
**Responsable:** Auditoría Técnica (Agente 3)
**Versión:** 3.0 (VALIDACIÓN RETIE 2024)

---

## 1. DICTAMEN EJECUTIVO: 🟢 T04 VALIDADO (BAJO NORMA RETIE 2024)

**Resultado:** 🟢 **APROBADO PARA CONSTRUCCIÓN**

La especificación técnica es **ROBUSTA**, **LEGALMENTE BLINDADA** y **OPERATIVAMENTE SEGURA**. El documento reconoce correctamente que el sistema de energía no es solo "cables y postes", sino un subsistema crítico que debe ser monitoreado por el SCADA y certificado legalmente para poder operar.

**Punto Fuerte Validado:** La inclusión explícita de la **Integración SCADA** para UPS y Plantas Eléctricas [Fuente 440].

---

## 2. MATRIZ DE CUMPLIMIENTO "HARD DECK"

| Componente | Requisito Normativo / Contractual | Especificación T04 | Veredicto |
|:-----------|:----------------------------------|:-------------------|:----------|
| **Normativa Base** | RETIE 2024 (Res. 40117) [Fuente 254]. | RETIE 2024 + IEC | ✅ CUMPLE |
| **Respaldo Crítico** | IP-REV: Disponibilidad >99%. | UPS N+1 + Plantas | ✅ CUMPLE |
| **Monitoreo** | AT2 (3.1.7): Estado infraestructura. | Tarjeta SNMP/Modbus | ✅ CUMPLE |
| **Subestaciones** | Carga CCO + Peajes + ITS. | 3 Subestaciones + 45 Trafos | ✅ DIMENSIONADO |
| **Certificación** | RETIE Libro 4: Dictamen Uso Final. | **Dictamen Anexo 5 Obligatorio** | ✅ CRÍTICO |

---

## 3. ANÁLISIS DE RIESGOS Y "TRAMPAS" DEL RETIE 2024

### A. La Trampa de la "Certificación Plena"
*   **Norma:** Art. 4.3.2 RETIE 2024 exige Declaración de Diseñador, Constructor y Dictamen ONAC.
*   **Acción:** Pago final condicionado a la entrega del **Dictamen de Inspección**.

### B. Transferencias Automáticas (ATS)
*   **Norma:** Cumplimiento IEC 60947-6-1 o UL 1008.
*   **Acción:** Se rechazan transferencias "armadas" con contactores sueltos. Solo equipos de fábrica.

### C. Rotulado de Riesgo
*   **Norma:** Símbolo de riesgo eléctrico y advertencia "FUENTE FOTOVOLTAICA" en sistemas solares.

---

## 4. ESPECIFICACIÓN DE COMPRA (ANEXO TÉCNICO)

### ÍTEM 1: SUBESTACIONES Y TRANSFORMADORES (45 Unidades)
*   **Eficiencia:** Cumplimiento RETIE 2024 (Art. 2.3.32).
*   **Protecciones:** Cortacircuitos y DPS en MT/BT obligatorios.

### ÍTEM 2: SISTEMA DE RESPALDO (UPS Y PLANTAS)
*   **Generadores (3 Unidades):** 150-200 kW, Tanque 24h, Controlador Modbus.
*   **UPS CCO/Peajes:** Online Doble Conversión, **Configuración N+1** (Redundante).

### ÍTEM 3: TABLEROS DE DISTRIBUCIÓN
*   **Certificación:** Certificado de Conformidad de Producto RETIE 2024 obligatorio.
*   **Reserva:** 20% espacio libre en riel DIN.

### ÍTEM 4: INTEGRACIÓN SCADA (EL CEREBRO)
*   **Requisito:** Proveer Mapa de Registros Modbus / SNMP para:
    1.  Estado Transferencia.
    2.  Nivel Combustible / Alarmas Planta.
    3.  Estado UPS (Carga, Batería).

---

## 5. CONCLUSIÓN FINANCIERA

**Estado:** 🟢 APROBADO
**CAPEX:** **$4,449,400 USD** (Incluye Construcción de Redes MT/BT).
