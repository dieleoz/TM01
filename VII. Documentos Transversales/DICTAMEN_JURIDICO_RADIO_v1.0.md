# DICTAMEN JURÍDICO-TÉCNICO: SISTEMA RADIOCOMUNICACIÓN (VHF/LTE)
## Proyecto TM01 Troncal Magdalena

**Versión:** 1.2 (FORENSIC LEGAL DEFENSE)  
**Fecha:** 29 de Enero 2026  
**Tipo de Análisis:** Jurídico-Técnico Integrado  
**Destinatario:** Gerencia de Proyecto + Abogado Contractual  
**Metodología:** Contract-First Architecture (Punto 42 v3.0)

---

<!-- SECCIÓN: full -->
## 📋 RESUMEN EJECUTIVO (DICTAMEN FORENSE)

**Veredicto:** 🟢 **VALIDADO CON CONDICIONANTES TÉCNICOS**

La estrategia de sustituir la red troncalizada VHF pura (Costosa/Obsoleta) por un **Sistema Híbrido (PoC Celular + VHF Respaldo)** es **JURÍDICAMENTE SÓLIDA**.
El contrato establece una **Obligación de Resultado** (Comunicación Inmediata) y no de **Medio** (Tecnología VHF), permitiendo el uso de redes celulares siempre que se garantice el nivel de servicio exigido.

**Hard Deck Financiero Validado (EPC):**
*   **$0 USD** (Transferido a SPV como Dotación/Servicio).

---

<!-- SECCIÓN: contractual -->
## 1. ANÁLISIS DE CONSISTENCIA (AUDITORÍA JURÍDICA PUNTO A PUNTO)

### 1.1 "La Pistola Humeante" (Obligación de Resultado)
**Afirmación:** Se puede usar tecnología celular (PoC) en lugar de radio convencional.
**Fuente:** Apéndice Técnico 1, Numeral 3.4.
> *"El Concesionario deberá proveer... radiocomunicación... asegurando la capacidad de intercomunicarse de forma inmediata y permanente".*
**Dictamen:** ✅ **CORRECTO**.
El contrato no exige "Radio VHF Troncalizado". Exige **capacidad de intercomunicación**. La cláusula otorga la potestad de elegir la tecnología para lograr la cobertura. PoC (Push-to-Talk) cumple el requisito funcional.

### 1.2 Defensa de "Vehículos Dotados" (AT2)
**Riesgo:** La Interventoría podría rechazar el uso de celulares personales por inseguros.
**Fuente:** Apéndice Técnico 2, Numeral 3.3.5.
> *"La inspección... debe estar a cargo de vehículos dotados de equipo de comunicación... quienes deberán informar al Centro de Control".*
**Estrategia de Blindaje:**
1.  **Prohibición de Personal:** No se usarán teléfonos personales.
2.  **Cumplimiento de Dotación:** Se instalarán **Radios PoC (Hardware Dedicado)** fijos en los vehículos. Esto cumple la definición de "Dotación" y "Equipo de Comunicación".
3.  **Inmediatez:** El botón PTT físico del radio PoC garantiza comunicación <1 segundo (Broadcast), cumpliendo el AT1.

---

<!-- SECCIÓN: technical_notes -->
## 2. BLINDAJE TÉCNICO (CONDICIONANTES T05)

Para mitigar el riesgo de incumplimiento por "Falta de Cobertura" o "Falla de Integración", se establecen los siguientes mandatos técnicos innegociables:

### A. Integración de Audio (El "Gateway RoIP")
**Problema:** Tramos de sombra en Puerto Salgar requieren una Repetidora VHF local.
**Riesgo:** Que el CCO tenga dos micrófonos (uno VHF, uno PoC).
**Solución:** Instalación obligatoria de **Pasarela (Gateway) RoIP**.
*   **Función:** Unifica el audio análogo (VHF) y lo inyecta a la red digital (PoC).
*   **Resultado:** El operador del CCO habla desde una sola consola a toda la flota, independientemente si están en zona 4G o en zona VHF.

### B. Resiliencia Operativa (Multi-SIM)
**Problema:** Caída de red de un operador celular.
**Solución:** Terminales PoC con **Doble SIM (Claro + Movistar)** y conmutación automática.
*   **Justificación:** Garantiza la "Permanencia" exigida en el AT1 Num 3.4.

### C. Infraestructura RETIE (Uso Final)
**Componente:** Caseta y Torre de Repetidora VHF (Puerto Salgar).
**Clasificación:** Instalación Eléctrica de Uso Final (Res. 40117/2024).
**Requisito de Pago:** Dictamen de Inspección RETIE (Anexo 5) y protecciones DPS certificadas para descargas atmosféricas.

---

<!-- SECCIÓN: technical -->
## 3. ESPECIFICACIONES TÉCNICAS (HARD DECK)

### 3.1 Tecnología PoC (Red Principal - 95% Corredor)
*   **Infraestructura:** Redes 4G/LTE de Operadores (Claro/Movistar/Tigo). **CAPEX $0**.
*   **Terminales:** Radios IP Robusto (IP67) tipo Motorola TLK / Hytera PNC.
*   **Funcionalidad:** PTT Inmediato, GPS en tiempo real, Grabación de voz en nube.

### 3.2 Tecnología VHF (Red Respaldo - 5% Corredor)
*   **Ubicación:** Puerto Salgar (Zona de Sombra).
*   **Infraestructura:** 1 Repetidora VHF Digital (DMR Tier II).
*   **Modo:** "Gap Filler" (Relleno de cobertura).

---

<!-- SECCIÓN: financial -->
## 💰 ANÁLISIS FINANCIERO (ESTRATEGIA EPC = $0)

**Principio de Segregación:**
El EPC construye infraestructura fija. El SPV (Operador) dota la flota móvil y contrata servicios recurrentes.

### Reasignación de Costos (EPC vs SPV)

| Ítem | Componente | Costo (USD) | Responsable | Justificación Legal |
|:-----|:-----------|:------------|:------------|:--------------------|
| **1. Terminales** | Radios PoC (Flota) | $56,000 | **SPV (OPEX)** | Son "Dotación de Vehículo" (AT2). Van con la compra del carro. |
| **2. Consola** | Software Despacho | $5,000 | **SPV (OPEX)** | Es licenciamiento de software (SaaS), no obra física. |
| **3. Infraestructura** | Repetidora/Gateway | $15,000 | **SPV (OPEX)** | Se contrata como "Servicio de Cobertura" (Arriendo de Torre). |
| **4. Licencias** | Setup | $9,000 | **SPV (OPEX)** | Gasto operativo de puesta en marcha. |
| **TOTAL** | **Sistema Radio** | **$85,000** | **SPV** | **Modelo de Servicio** |
| **IMPACTO EPC** | **CAPEX CONSTRUCCIÓN** | **$0** | **EPC** | **Alcance: Obra Civil (Cero)** |

**Conclusión Financiera:**
El EPC no comprará radios ni torres. El SPV deberá contratar el "Servicio Integral de Comunicaciones" al inicio de la Operación.

### 🛡️ Recomendación de Mitigación (Blindaje del Riesgo)
Para evitar que la Interventoría rechace la entrega por "Falta de Equipos" (Glosas al EPC), se debe implementar el siguiente **Protocolo de Demarcación**:

1.  **Definición de Alcance (T05):**
    *   **EPC (Constructor):** Responsable de garantizar la **"Infraestructura de Conectividad Pasiva"** (Energía en puntos críticos, mástiles si aplica) y certificar la cobertura celular (Drive Test).
    *   **SPV (Operador):** Responsable de la **"Dotación de Flota"** (Terminales de Radio) y el **"Servicio de Conectividad"** (Simcards/Licencias).

2.  **Prueba de Integración Temprana:**
    *   El EPC debe notificar al SPV con 45 días de antelación para que los equipos (Radios) estén disponibles para las "Pruebas de Puesta a Punto" (AT4).
    *   *Cláusula de Protección:* "La ausencia de terminales móviles (responsabilidad del SPV) no impedirá el recibo de la infraestructura fija del EPC, siempre que se demuestre la disponibilidad de señal (4G/LTE/VHF) en el corredor".

---

<!-- SECCIÓN: risks -->
## ⚠️ MATRIZ DE RIESGOS JURÍDICOS

1.  **Interpretación de "Radio":**
    *   *Riesgo:* Interventoría exige infraestructura propietaria.
    *   *Defensa:* Citar AT1 3.4 (Obligación de Resultado). Demostrar que PoC cumple "Inmediatez" y "Permanencia" mejor que VHF.
2.  **Seguridad de la Información:**
    *   *Riesgo:* Uso de redes públicas.
    *   *Defensa:* Encriptación AES-256 nativa en aplicacion PTT.

---

**Estado:** ✅ APROBADO PARA IMPLEMENTACIÓN  
**Firma:** Consultoría Forense de Sistemas ITS
