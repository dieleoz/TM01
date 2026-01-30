# T04: ESPECIFICACIONES TÉCNICAS - CENTRO DE CONTROL (CCO)
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 30/01/2026
**Sistema:** Centro de Control Operacional (CCO La Lizama)
**Responsable:** Auditoría Técnica (Agente 3)
**Versión:** 3.0 (VALIDACIÓN FORENSE)

---

## 1. DICTAMEN EJECUTIVO: 🟢 T04 VALIDADO (LISTO PARA LICITACIÓN)

**Resultado:** 🟢 **APROBADO PARA CONSTRUCCIÓN**

El documento T04 es **TÉCNICAMENTE CORRECTO** y **CONTRACTUALMENTE SEGURO**. Valida la estrategia de **Hardware COTS** (Commercial Off-The-Shelf), eliminando sobrecostos de software propietario y redirigiendo el presupuesto a la **Adecuación Civil Eléctrica** que es crítica por la clasificación de "Alta Concentración de Personas".

**Ahorro Estratégico:** Se aprueba el cambio de modelo "Llave en Mano" a "Equipamiento Específico", alineado con el Dictamen Jurídico.

---

## 2. MATRIZ DE CONSISTENCIA: T04 vs. OBLIGACIÓN

| Requisito / Variable | Fuente Obligación | Especificación T04 | Veredicto |
|:---------------------|:------------------|:-------------------|:----------|
| **Ubicación** | AT1 (2.3): La Lizama PR 4+100. | La Lizama (Adecuación) | ✅ CUMPLE |
| **Infraestructura Civil** | Cafetería, Policía, Comunidad. | Áreas Públicas Incluidas | ✅ CUMPLE |
| **Tecnología** | Dictamen CCO: Hardware COTS. | Servidores Estándar | ✅ CUMPLE |
| **Visualización** | AT1: Sala monitoreo 24h. | Video Wall (Industrial) | ✅ CUMPLE |
| **Seguridad Eléctrica**| **RETIE 2024 (Alta Concentración)**. | **Cableado LSZH** + Certificación | ✅ CRÍTICO |

---

## 3. ALERTAS DE INGENIERÍA (EL "CANDADO" RETIE)

### A. Cableado y Alta Concentración
*   **Hecho:** El CCO incluye Cafetería (100m²). Clasifica como "Alta Concentración".
*   **Consecuencia:** Obligatorio **Cableado LSZH (Libre de Halógenos)** en todo el edificio (datos y potencia).
*   **Riesgo:** Si instalan PVC, no habrá Dictamen RETIE y no se podrá energizar.

### B. Arquitectura de Software (3 Capas)
1.  **Capa Operativa:** Gestión TR (CCTV, SOS).
2.  **Capa Negocio:** Peaje/IP-REV (Seguridad bancaria).
3.  **Capa Auditoría:** SICC (Reportes ANI).

---

## 4. ESPECIFICACIÓN DE COMPRA (ANEXO TÉCNICO)

### ÍTEM 1: CABLEADO ESTRUCTURADO Y ELÉCTRICO
*   **Tipo:** **LSZH (Low Smoke Zero Halogen)** obligatorio.
*   **Prohibición:** No se acepta PVC en áreas comunes o rutas de evacuación.

### ÍTEM 2: CLIMATIZACIÓN (DATA CENTER)
*   **Tipo:** Aire de Precisión o Industrial (Mochila/Cassette).
*   **Redundancia:** Configuración **N+1**.
*   **Restricción:** No se aceptan Mini-Splits de confort doméstico para el cuarto de racks.

### ÍTEM 3: VISUALIZACIÓN (VIDEO WALL)
*   **Pantallas:** Monitores Industriales 24/7 (Bisel < 1.8mm).
*   **Controlador:** Workstation Gráfica independiente o embebida.
*   **Restricción:** No monitores comerciales (TV).

### ÍTEM 4: ENERGÍA
*   **Respaldo:** UPS Online Doble Conversión (Autonomía > 30 min).
*   **Emergencia:** Planta Eléctrica con tanque para 24h de operación.

---

## 5. CONCLUSIÓN FINANCIERA

**Estado:** 🟢 APROBADO
**Acción Inmediata:** Verificar que el presupuesto civil contemple el sobrecosto del cable LSZH (+20%).
