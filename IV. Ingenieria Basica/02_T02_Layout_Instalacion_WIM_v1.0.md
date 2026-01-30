# T02: LAYOUT INSTALACIÓN - SISTEMA DE PESAJE (WIM)
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 30 de Enero 2026  
**Sistema:** WIM (Weigh In Motion) + Báscula Estática  
**Ubicación:** UF4 - PR 45+000 (Sentido S-N y N-S)  
**Configuración:** Bidireccional (1 Estación Controla 2 Sentidos)  
**Versión:** 1.0 (Construction Ready)

---

## 1. ESQUEMA GENERAL (PLANTA)

La estación se compone de dos zonas funcionales:
1.  **Zona de Pre-selección (WIM Dinámico):** En la vía principal (Troncal).
2.  **Zona de Pesaje Estático (Báscula):** Dársena lateral de castigo.

```mermaid
graph TD
    subgraph VIA_PRINCIPAL [Corredor RN45]
        WIM_N[Sensor Piezoeléctrico N-S] -->|Detección Sobrepeso| CAM_N[Cámara LPR N-S]
        WIM_S[Sensor Piezoeléctrico S-N] -->|Detección Sobrepeso| CAM_S[Cámara LPR S-N]
        PMV_N[PMV Informa: "ENTRE A BÁSCULA"] 
        PMV_S[PMV Informa: "ENTRE A BÁSCULA"]
    end

    subgraph DARSENA_CONTROL [Zona Estática]
        BASCULA[Báscula Estática Camionera 80 Ton]
        EDIFICIO[Caseta de Control Operador]
        SEM[Semáforo Entrada/Salida]
    end

    WIM_N -->|Alerta > 52 Ton| PMV_N
    WIM_S -->|Alerta > 52 Ton| PMV_S
    PMV_N -->|Desvío| DARSENA_CONTROL
    PMV_S -->|Desvío| DARSENA_CONTROL
```

---

## 2. DETALLE DE INSTALACIÓN (INPUT DIBUJANTE)

### 2.1 Zona WIM (En Vía) - Por cada sentido:
*   **Sensores:** 2 Líneas de Quarzo/Piezo (Configuración Loop-Piezo-Loop).
*   **Corte Inductivo:** 2 Lazos de 2x2m (Entrada/Salida).
*   **Gabinete:** Tipo NEMA 4X (Acero Inox) en margen derecho.
*   **Cámara LPR:** Poste de 4.5m con brazo, ubicado a 15m del sensor.
*   **PMV de Desvío:** Estructura Bandera a 200m del sensor WIM.

### 2.2 Zona Estática (Dársena):
*   **Plataforma de Pesaje:** Foso de concreto reforzado (Longitud 21m x Ancho 3.5m).
*   **Obra Civil:** Losa de aproximación nivelada (ISO 100% plana) 40m antes y después.
*   **Caseta:** Estructura modular 12m² (Aire acondicionado + Vidrios 360°).
*   **Semáforos:** 2 Unidades (Rojo/Verde) tipo LED industrial.

---

## 3. DIAGRAMA UNIFILAR Y COMUNICACIONES

### 3.1 Energía
*   **Acometida:** 13.2kV -> Transformador 45kVA (Exclusivo Estación).
*   **Respaldo:** UPS Trifásica 10kVA (Autonomía 30 min) + Generador Diesel 20kW.
*   **Tablero:** T.G. con protecciones DPS Clase I+II.

### 3.2 Datos (Fibra Óptica)
*   **Enlace:** Acometida FO 4 hilos desde Backbone (Caja de Empalme Nivel N+1).
*   **Switch:** Industrial L3 Gestionable en Gabinete de Control.
*   **VLANs:**
    *   VLAN 20: WIM Data (Sensores)
    *   VLAN 30: CCTV (LPR + Panorámicas)
    *   VLAN 40: Gestión (PC Operador)

---

## 4. LISTA DE PLANOS A GENERAR

| Código Plano | Nombre | Escala | Contenido |
|:-------------|:-------|:-------|:----------|
| **DWG-WIM-001** | Planta General y Señalización | 1:500 | Ubicación PKs, PMVs y Dársena. |
| **DWG-WIM-002** | Detalle Losa Sensores WIM | 1:20 | Corte pavimento y resinas epóxicas. |
| **DWG-WIM-003** | Arquitectónico Caseta y Foso | 1:50 | Planta y alzados obra civil. |
| **DWG-WIM-004** | Unifilar Eléctrico y Datos | S/E | Diagrama bloques potencia y comms. |

---

**Aprobado por:** Ingeniería de Detalle TM01
**Estado:** ✅ LISTO PARA DIBUJO
