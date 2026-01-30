# T02: PLANOS TÍPICOS DE INSTALACIÓN - CCTV (INPUT DIBUJANTE)
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 30 de Enero 2026  
**Sistema:** CCTV - Videovigilancia  
**Uso:** Guía para elaboración de planos constructivos (Taller de Diseño)  
**Versión:** 1.0 (Construction Ready)

---

## 1. UBICACIÓN EXACTA (COORDENADAS)

Para el plano de planta general (Topología), utilizar la **Tabla Maestra Georreferenciada**:
> 📂 **Fuente:** `VII. Documentos Transversales/43_TABLA_MAESTRA_LAYOUT_PROYECTO_v1.0.md`
> *Filtrar por Item: CCTV-001 a CCTV-009*

---

## 2. DETALLE DE MONTAJE (POSTE 12M + KIT SOLAR)

**Referencia Visual para Plano de Detalle:**

### 2.1 Alzado Frontal (Poste)
*   **Altura Total:** 12 metros (Sobre nivel de piso acabado).
*   **Material:** Acero Galvanizado en Caliente (Gris opaco).
*   **Elementos (De arriba a abajo):**
    1.  **Pararrayos (Punta Franklin):** En tope superior.
    2.  **Domo PTZ:** Brazo de 1.5m, saliente hacia la vía. Altura de lente: 11.5m.
    3.  **Panel Solar (540W):** Orientación SUR (Azimut 180°), Inclinación 15°. Altura base: 9m.
    4.  **Corona Anti-escalatoria:** Anillo de púas a 3m de altura.
    5.  **Gabinete:** 60x60x40cm, IP66. Altura base: 1.5m.

### 2.2 Detalle de Cimentación
*   **Zapata:** Concreto Cíclopeo 3000 PSI.
*   **Dimensiones:** 1.0m x 1.0m x 1.5m (profundidad).
*   **Pernos:** Canasta de 4 pernos de 1" x 1m.
*   **Salida de Ductos:** 2 tubos PVC 2" (1 Datos + 1 Energía/Tierra) por centro de zapata.

---

## 3. DIAGRAMA UNIFILAR (CONEXIÓN)

```mermaid
graph TD
    Solar[Panel Solar 540W] -->|DC 12V| Controlador[Controlador MPPT 40A]
    Bat[Batería GEL 200Ah] <-->|DC 12V| Controlador
    Controlador -->|DC 48V (Boost)| Switch[Switch Industrial PoE+]
    Switch -->|PoE+ (30W)| Camara[Cámara PTZ 32X]
    Switch -->|Fibra Óptica| ODF[ODF 6 Hilos]
    ODF -->|Cable ADSS 24h| Troncal[TRONCAL FIBRA ÓPTICA]
    
    subgraph GABINETE [Gabinete IP66 en Poste]
    Controlador
    Bat
    Switch
    ODF
    end
```

---

## 4. LISTA DE PLANOS A GENERAR

El dibujante debe entregar los siguientes DWG/PDF basados en este input:

| Código Plano | Nombre | Escala | Contenido |
|:-------------|:-------|:-------|:----------|
| **DWG-CCTV-001** | Planta General Distribución | 1:10,000 | Ubicación de las 9 cámaras en el corredor. |
| **DWG-CCTV-002** | Detalle Típico de Montaje | 1:25 | Alzado del poste, panel y cámara. |
| **DWG-CCTV-003** | Diagrama de Conexiones | S/E | Unifilar eléctrico y de datos. |
| **DWG-CCTV-004** | Obra Civil Zapata | 1:20 | Detalle de hierros y concretos. |

---

**Aprobado por:** Ingeniería de Detalle TM01
**Estado:** ✅ LISTO PARA DIBUJO
