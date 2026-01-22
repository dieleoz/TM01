# DT-TM01-001: Reasignación de VMS y Videowall al CCO

> [!IMPORTANT]
> **Estado:** APROBADO
> **Fecha:** 2026-01-22
> **Impacto Presupuestal:** Neutro (Reasignación entre capítulos)

## 1. Antecedentes
El ítem **1.1.13** ("VMS, Videowall, Storage 90TB") con un valor de **$4.896.000.000 COP** se encontraba asignado al Capítulo 1 (CCTV). Esto causaba que el presupuesto del subsistema de cámaras pareciera desproporcionado ($6.177 MM) frente a la realidad de los equipos de campo (~$1.280 MM).

## 2. Justificación Técnica
Funcionalmente, el equipamiento descrito (Servidores, Almacenamiento Central, Pantallas de Videowall) reside física y operativamente en el **Centro de Control (CCO)**, Capítulo 11.

Mover este ítem permite:
1.  Reflejar el costo real de la infraestructura de campo del CCTV.
2.  Centralizar los costos de "Core Tecnológico" en el CCO.
3.  Evitar la dispersión de activos críticos de TI.

## 3. Instrucción de Cambio

### 3.1 Movimiento de Ítem
- **Origen:** Sistema CCTV (Capítulo 1), Ítem 1.1.13
- **Destino:** Sistema CCO (Capítulo 11), Ítem 11.1.2 (Nuevo)

### 3.2 Modificación de Datos
El ítem conservará sus características técnicas y de precio, solo cambiando su filiación en la WBS.

| Campo | Valor Anterior | Nuevo Valor |
|:------|:---------------|:------------|
| **Item** | 1.1.13 | 11.1.2 |
| **Sistema** | CCTV | Centro de Control (CCO) |
| **Padre** | SUMINISTROS CCTV | SUMINISTROS CCO |

## 4. Análisis de Riesgos
- **Duplicidad:** Se debe verificar que el ítem existente 11.1.1 ("CCO Sistema Completo", $5.126 MM) no incluya ya estas partidas. Esta DT asume que se mantendrán separados hasta validar el alcance del global CCO.
