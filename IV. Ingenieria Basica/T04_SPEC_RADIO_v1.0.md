# T04: ESPECIFICACIONES TÉCNICAS - RADIOCOMUNICACIONES
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 30/01/2026
**Sistema:** Radiocomunicaciones (Voz y Datos)
**Responsable:** Auditoría Técnica (Agente 3)
**Versión:** 1.0 (VALIDACIÓN RaaS)

---

## 1. DICTAMEN EJECUTIVO: 🟢 T04 VALIDADO (MODELO "RADIO AS A SERVICE")

**Resultado:** 🟢 **APROBADO (CAPEX $0)**

El documento T04 es **FINANCIERAMENTE ÓPTIMO**. Valida la decisión estratégica de **NO COMPRAR** infraestructura propietaria (Torres/Repetidoras), transfiriendo la obligación a un modelo de Servicio Gestionado (OPEX) mediante **Radio PoC (Celular)**.

**Alerta Operativa:** Aunque no se compren radios, el EPC **DEBE instalar la integración en el CCO (Gateway RoIP)** para que las consolas de despacho funcionen.

---

## 2. MATRIZ DE CONSISTENCIA

| Requisito | Fuente Obligación | Estrategia T04 | Veredicto |
|:----------|:------------------|:---------------|:----------|
| **Cobertura** | AT1 (3.4): Inmediata y Permanente. | Red Celular (PoC) + Multi-SIM. | ✅ CUMPLE |
| **Tecnología** | AT1: Resultado. | PoC sobre LTE. | ✅ VALIDADO |
| **Dotación** | AT2: Vehículos dotados. | Radios PoC Vehiculares. | ✅ CUMPLE |
| **Integración** | AT1: Interconexión CCO. | **Gateway RoIP**. | ⚠️ VERIFICAR T05 |
| **Zona Sombra** | Dictamen: Puerto Salgar. | Gap-Filler (Proveedor). | ✅ RIESGO TRANSFERIDO |

---

## 3. ESPECIFICACIÓN DE "NO COMPRA" (INSTRUCCIÓN DIRECTOR)

### DIRECTRIZ DE PROCURA - SUBSISTEMA DE RADIO:

1.  **Infraestructura Exterior:** Se **ELIMINAN** del alcance EPC todas las torres, casetas y repetidoras. **CAPEX: $0**.
2.  **Equipos Terminales:** Se **ELIMINAN** la compra de radios. Suministrados por Operador SPV (Arrendamiento).
3.  **Alcance Mantenido (EPC):**
    *   **Integración CCO:** Suministro de licencia Software de Despacho o Gateway RoIP.
    *   **Red de Datos:** Internet Redundante en CCO.

---

## 4. ANÁLISIS DE RIESGOS TÉCNICOS

### A. Gateway RoIP
*   **Requisito:** Puente de audio digital entre el mundo IP (PoC) y las consolas de operador.

### B. Zona Sombra (Puerto Salgar)
*   **Acción:** Contrato de servicio debe exigir **"Garantizar cobertura 100%"**. El proveedor instala repetidoras de relleno si es necesario.

### C. Latencia y QoS
*   **Exigencia:** SIMs M2M con APN Privado o QCI prioritario para voz.

---

## 5. CONCLUSIÓN FINANCIERA

**Estado:** 🟢 APROBADO
**Ahorro CAPEX Estimado:** **$1.5M USD** (Migrado a OPEX).
