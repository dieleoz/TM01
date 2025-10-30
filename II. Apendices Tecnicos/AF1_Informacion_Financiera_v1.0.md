title: AF1 - INFORMACIÓN FINANCIERA
project: APP PUERTO SALGAR - BARRANCABERMEJA
contract: Concesión APP
document: AF1 - Apéndice Financiero 1
type: Apéndice Financiero
version: 1.1
date: 2025-10-29
author: Administrador Contractual EPC
status: Actualizado con mapeo UF y cronograma contractual
---

# AF1 - INFORMACIÓN FINANCIERA
## APP PUERTO SALGAR - BARRANCABERMEJA

### INFORMACIÓN DEL DOCUMENTO

| **Campo**                | **Valor**                          |
|--------------------------|-----------------------------------|
| **Proyecto**            | APP Puerto Salgar - Barrancabermeja |
| **Contrato**            | Concesión APP                     |
| **Documento**           | AF1 - Apéndice Financiero 1       |
| **Tipo**                | Apéndice Financiero               |
| **Versión**             | 1.1                               |
| **Fecha de actualización** | 29/10/2025                       |
| **Responsable**         | Administrador Contractual EPC     |
| **Estado**              | Contenido completo                |
| **Próxima revisión**    | Según necesidad contractual       |

### TABLA DE CONTENIDO

1. [INTRODUCCIÓN](#1-introducción)
2. [OBJETIVO](#2-objetivo)
3. [ALCANCE](#3-alcance)
4. [ESTRUCTURA FINANCIERA](#4-estructura-financiera)
   - [4.1 Fuentes de Financiamiento](#41-fuentes-de-financiamiento)
   - [4.2 Esquema de Inversión](#42-esquema-de-inversión)
5. [PROYECCIONES FINANCIERAS](#5-proyecciones-financieras)
   - [5.1 Ingresos](#51-ingresos)
   - [5.2 Egresos](#52-egresos)
   - [5.3 Flujo de Caja](#53-flujo-de-caja)
6. [INDICADORES FINANCIEROS](#6-indicadores-financieros)
7. [ANEXOS](#7-anexos)

---

## 1. INTRODUCCIÓN

Documento que contiene la información financiera del proyecto de la Concesión APP Puerto Salgar - Barrancabermeja, incluyendo la estructura de financiamiento, proyecciones financieras y análisis de indicadores.







REPÚBLICA DE COLOMBIA


MINISTERIO DE TRANSPORTE


AGENCIA NACIONAL DE INFRAESTRUCTURA




CONTRATO DE CONCESIÓN BAJO EL ESQUEMA DE APP No     


APÉNDICE FINANCIERO 1: INFORMACIÓN FINANCIERA


Entre: Concedente:
Agencia Nacional de Infraestructura


Concesionario:
[ • ]

El Concesionario entregará y complementará las 2 tablas de datos financieros en el formato Excel adjunto al presente Apéndice, según lo establecido en el Contrato.

Se precisa lo siguiente:

- Todas las cifras de la tabla serán debidamente auditadas por una firma de interventores de reconocida reputación que preste sus servicios de interventoría para entidades bancarias, o prestamistas, que cumplan con las condiciones descritas para los Prestamistas en el Contrato de Concesión, en por lo menos dos países diferentes a Colombia.

- Dicha interventoría consistirá en la confirmación de que la integralidad de las cifras de las tablas de datos financieros (para la Etapa Preoperativa y para la Etapa de Operación y Mantenimiento) corresponden a los valores que utilizó el Concesionario para estructurar el Proyecto en su oferta y a los que han sido integrados a la debida diligencia independiente del Proyecto llevada a cabo por los Prestamistas en el marco del Cierre Financiero. Cada rubro mencionado tendrá que reflejar de manera exacta y exhaustiva las cifras del rubro correspondiente para el Proyecto, en concordancia con los Apéndices Técnicos y con los documentos de debida diligencia independiente dirigidos a los Prestamistas.

- La entrega de las tablas de datos financieros completas y auditadas por el interventor independiente deberá presentarse al Interventor y a la ANI dentro del mismo plazo establecido para acreditar el Cierre Financiero, previsto en el Contrato.


---

## 3. CONTROL DE VERSIONES

| Version | Fecha | Responsable | Descripcion |
|:---:|:---:|:---|:---|
| **v1.0** | 16/10/2025 | Administrador Contractual EPC | Conversion inicial a Markdown - Metodologia Punto 42 |
| **v1.1** | 29/10/2025 | Administrador Contractual EPC | Integración de mapeo PK→UF (AT1 Tablas 4–7), cronograma contractual por UF (C1 §5.2) y alineación con Arquitectura 4 capas (`docs/data/uf_pk_map.js`, `docs/cronograma.html`, `docs/presupuesto.html`, `docs/layout.html`). |

---

**Estado del documento:** Contenido completo  
**Version:** 1.0  
**Responsable:** Administrador Contractual EPC  
**Proxima actualizacion:** Segun necesidad contractual

---

## ANEXO A. Cronograma contractual por Unidad Funcional (C1 Sección 5.2)

Base contractual: Acta de Inicio Fase de Construcción (T0) = 26/11/2024. Los plazos se cuentan desde T0. Se indica fecha máxima de inicio de operación por UF y, entre paréntesis, la fecha con Plazo de Cura (+20%).

| UF | Plazo (meses) | Fecha Máxima | Fecha con Cura (+20%) |
|---|---:|---:|---:|
| UF6 | 9  | 26/08/2025 | 26/10/2025 |
| UF1 | 11 | 26/10/2025 | 26/12/2025 |
| UF8 | 12 | 26/11/2025 | 26/01/2026 |
| UF2 | 19 | 26/06/2026 | 26/10/2026 |
| UF7 | 19 | 26/06/2026 | 26/10/2026 |
| UF12| 20 | 26/07/2026 | 26/11/2026 |
| UF9 | 21 | 26/08/2026 | 26/12/2026 |
| UF10| 24 | 26/11/2026 | 26/04/2027 |
| UF3 | 26 | 26/01/2027 | 26/06/2027 |
| UF13| 26 | 26/01/2027 | 26/06/2027 |
| UF4 | 30 | 26/05/2027 | 26/11/2027 |
| UF11| 38 | 26/01/2028 | 26/09/2028 |
| UF5 | 47 | 26/10/2028 | 26/07/2029 |

UF0 – Referencias (AT4): indicadores mínimos desde D+180 (25/05/2025) y cumplimiento de valores mínimos en mes 36 (26/11/2027).

> Nota (29/10/2025): Estas fechas están integradas en `tm01_master_data.js → data.cronogramaUF` y consumidas por `docs/cronograma.html` para visualización y estado (OK/Urgente/Crítica) con base en días restantes.

---

## ANEXO B. Integración con el Sistema de Validación Web (Arquitectura 4 capas)

- Capa 1 – Fuente: Parte Especial C1, Sección 5.2; AT1 Tablas 3–7 (rangos por UF); AT4 (indicadores UF0). Documentos fuente sin modificación.
- Capa 2 – Transformación: extracción de rangos PK→UF desde AT1 y generación del artefacto intermedio `docs/data/uf_pk_map.js` (tabla de mapeo). Script recomendado: `scripts/generar_mapa_UF_desde_AT1.ps1`.
- Capa 3 – Datos intermedios: `tm01_master_data.js` aplica el mapeo PK→UF para etiquetar `data.layout[*].uf`. También expone `data.cronogramaUF` con las fechas del cuadro anterior.
- Capa 4 – Visualización: `docs/cronograma.html` muestra Gantt por UF (Ingeniería ITS, Suministros ITS, Obra/FO/Energía, FAT/SAT, Acta UF) y permite filtrar por UF. `docs/presupuesto.html` y `docs/layout.html` agregan filtros por UF para conteos de equipos (incl. SOS por UF).

### Referencias cruzadas
- `docs/data/uf_pk_map.js` (mapa PK→UF vigente).
- `docs/data/tm01_master_data.js` (asignación automática de `uf` en layout y arreglo `cronogramaUF`).
- `docs/cronograma.html` (plazos por UF con estado y días restantes).
- `docs/presupuesto.html` (filtro y columna UF; desglose por capítulos con AIU/IVA en vista dedicada).
- `docs/layout.html` (filtro y resumen por UF).

### Formato de `docs/data/uf_pk_map.js`
```js
// Rango PK a UF (ejemplo, completar con rangos AT1 Tablas 4–7)
window.tm01UFMap = [
  { uf: 'UF1', ruta: 'RN4510', pk_ini: 84400, pk_fin: 87585 },
  // ... completar por cada fila de AT1
];
```

### Aplicación del mapeo en `TM01MasterData`
- Al cargar `data.layout`, si existe `window.tm01UFMap`, se asigna `item.uf` comparando el PK de cada elemento con los rangos del mapa.
- Esto habilita conteos por UF en Reporte, Presupuesto y Layout, y el Gantt por UF en Cronograma.

### Ruta Crítica ITS
- Se identifica el backbone FO (594 km) como camino crítico que condiciona FAT/SAT y UF de cierre tardío (UF5). Su barra se resalta en `cronograma.html`.

> Nota: Toda esta implementación sigue la arquitectura del proyecto y evita duplicaciones fuera de la Capa 3 (datos intermedios).