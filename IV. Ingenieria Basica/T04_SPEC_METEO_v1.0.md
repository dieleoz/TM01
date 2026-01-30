# T04: ESPECIFICACIONES TÉCNICAS - SISTEMA METEOROLÓGICO
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 30/01/2026
**Sistema:** Estaciones Meteorológicas (Modelo de Eficiencia)
**Responsable:** Auditoría Técnica (Agente 3)
**Versión:** 3.0 (ALINEACIÓN JURÍDICA - DAVIS + API)

---

## 1. DICTAMEN EJECUTIVO: 🟢 T04 VALIDADO (ESTRATEGIA JURÍDICA)

**Resultado:** 🟢 **APROBADO PARA CONSTRUCCIÓN**

Se adopta la **ESTRATEGIA DE VIRTUALIZACIÓN** definida por el Dictamen Jurídico. Se prioriza la optimización de CAPEX mediante el uso de estaciones compactas de alta precisión para variables base y la integración de **servicios de datos (API)** para la variable visibilidad/neblina.

*   **Costo Validado:** **$16,500 USD**.
*   **Tecnología Aprobada:** Davis Vantage Pro2 Plus / API Climática.
*   **Unidades:** 2 Unidades Físicas (Peajes Mandatorios).

---

## 2. MATRIZ DE CONFLICTO Y RESOLUCIÓN

| Variable | Estrategia Dictamen (Abogado) | Estrategia T04 (Ingeniería) | Veredicto Final |
|:---------|:------------------------------|:----------------------------|:----------------|
| **Sensor de Niebla** | Virtualizado (API). | Virtualizado (API). | ✅ CUMPLE |
| **Tipo de Estación** | Compacta (Davis). | Compacta (Davis). | ✅ CUMPLE |
| **Cantidad** | 2 Unidades (Peajes). | 2 Unidades (Peajes). | ✅ CUMPLE |
| **Presupuesto** | $16,500 USD. | $16,500 USD. | ✅ OPTIMIZADO |

---

## 3. ESPECIFICACIÓN TÉCNICA "HARD DECK"

### ÍTEM 1: ESTACIÓN METEOROLÓGICA COMPACTA (2 UNIDADES)
*   **Modelo:** Tipo Davis Vantage Pro2 Plus o equivalente funcional.
*   **Sensores Físicos:**
    *   Viento (Velocidad y Dirección).
    *   Precipitación (Pluviómetro de balancín).
    *   Temperatura y Humedad Relativa.
    *   Radiación Solar y UV (Cálculo de Evapotranspiración ETo para IDEAM).
*   **Transmisión:** Gateway Modbus TCP / NTCIP para SCADA CCO.

### ÍTEM 2: INTEGRACIÓN VIRTUAL DE VISIBILIDAD
*   **Método:** Webservice/API Rest integrado al software del CCO.
*   **Fuentes:** Datos locales de peajes + AccuWeather Pro / IDEAM.
*   **Lógica:** Disparo de alertas en PMV ante visibilidad < 200m reportada por el servicio.

---

## 4. UBICACIÓN GEORREFERENCIADA

1.  **Peaje Zambito:** K9+200 Ruta 4511.
2.  **Peaje Aguas Negras:** K81+800 Ruta 4511.

---

**ESTADO TÉCNICO:** 🟢 CERRADO (Estrategia Davis + API)
