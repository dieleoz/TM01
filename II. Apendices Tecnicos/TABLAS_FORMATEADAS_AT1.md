# TABLAS FORMATEADAS AT1 - Para Reemplazo en Archivo Original
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 17/10/2025  
**Propósito:** Tablas formateadas en markdown para reemplazar en AT1_Alcance_Proyecto_v1.0.md  
**Total de tablas:** 67 tablas (9 críticas + 58 de detalle por UF)

---

## TABLAS CRÍTICAS (1-9) - REEMPLAZAR PRIMERO

### Tabla 1 - Descripción de vías existentes comprendidas en el Proyecto

**REEMPLAZAR desde línea 320 hasta línea 416**

```markdown
**Tabla 1 - Descripción de vías existentes comprendidas en el Proyecto**

| Código de vía | Ente Competente | Origen (Nombre – PR) | Destino (Nombre – PR) | Longitud (Km) | Observaciones |
|:--------------|:----------------|:---------------------|:----------------------|:--------------|:--------------|
| **4510** | INVIAS | Puerto Salgar<br>PK 34+000<br>(PR 34+000)<br>E=935484.39 N=1096379.04 | Río Ermitaño<br>PK 134+328<br>(PR 134+470)<br>E=951366.98 N=1181480.10 | 100.33 | Vía primaria bidireccional pavimentada, desde el PK34+000 hasta PK39+080 (paso poblado Puerto Salgar). Del PK39+080 hasta el PK84+400 tramo en doble calzada. Del PK84+400 al PK134+456 hay sectores en construcción de la segunda calzada y otros terminados en par vial. |
| **4511** | INVIAS | Río Ermitaño<br>PK 00+000<br>(PR 00+000)<br>E=951366.98 N=1181480.10 | La Lizama<br>PK 149+142<br>(PR 149+484)<br>E=1050813.22 N=1278537.32 | 149.14 | Vía primaria en algunos sectores opera en sentido bidireccional y en otros donde ya se construyó la calzada espejo como par vial. |
| **4513** | INVIAS | La Lizama<br>PK 00+000<br>(PR 00+000)<br>E=1050813.22 N=1278537.32 | Río Sogamoso<br>PK 09+800<br>(PR 9+800)<br>E=1057840.18 N=1283507.47 | 9.80 | Vía primaria bidireccional pavimentada, con condiciones bajas desde el punto de vista geométrico. |

**Nota:** Las coordenadas y los PR incluidos son de referencia y podrán ser ajustados en campo al momento de la entrega de la infraestructura.
```

**Longitud total:** 259.27 km (100.33 + 149.14 + 9.80)

---

### Tabla 2 - Estaciones de Peaje actualmente Existentes

**REEMPLAZAR desde línea 431 hasta línea 451**

```markdown
**Tabla 2 - Estaciones de Peaje actualmente Existentes**

| Estación de Peaje | Ubicación (PR - Ruta) | Segmento | Sentido de Cobro | Observaciones |
|:------------------|:----------------------|:---------|:-----------------|:--------------|
| **Peaje Zambito** | PR 9+200<br>Ruta Nacional 4511 | Puerto Boyacá – Puerto Araujo | Bidireccional | Estación existente en operación |
| **Peaje Aguas Negras*** | PR 83+900<br>Ruta Nacional 4511 | Puerto Araujo – La Lizama | Bidireccional | *El peaje de Aguas Negras deberá ser reubicado al PR 80+000 RN 4511 de acuerdo a la sección 3.7 del presente anexo técnico. |

**Total:** 2 estaciones de peaje existentes
```

---

### Tabla 3 - Unidades Funcionales del Proyecto

**REEMPLAZAR desde línea 458 hasta línea 540 aproximadamente**

```markdown
**Tabla 3 - Unidades Funcionales del Proyecto**

| UF | Nombre de la Unidad Funcional | Tipo | Descripción Breve |
|:---|:------------------------------|:-----|:------------------|
| **UF0** | Operación y Mantenimiento | O&M | Tramos transitables al inicio del Proyecto (subdivisiones: UF0-D, UF0-T, UF0-P) |
| **UF1** | El Trique – Dos y Medio | Construcción | Primera unidad funcional de construcción |
| **UF2** | Dos y Medio – Quince Letras | Construcción | Segunda unidad funcional de construcción |
| **UF3** | PR 52 – Puerto Araujo | Construcción | Tercera unidad funcional de construcción |
| **UF4** | Puerto Araujo – Puerto Parra | Construcción | Cuarta unidad funcional de construcción |
| **UF5** | Puerto Salgar – Cimitarra | Construcción | Quinta unidad funcional de construcción |
| **UF6** | Puerto Parra – Aguas Negras | Construcción | Sexta unidad funcional de construcción |
| **UF7** | Aguas Negras – Puerto Nuevo | Construcción | Séptima unidad funcional de construcción |

**Total:** 1 UF de O&M (con 3 subdivisiones) + 7 UFs de Construcción = **14 Unidades Funcionales**

**Subdivisiones de UF0:**
- **UF0-D:** Operación y Mantenimiento Definitiva (tramos sin intervenciones de Mejoramiento/Rehabilitación)
- **UF0-T:** Operación y Mantenimiento Temporal (tramos que requieren Mejoramiento/Rehabilitación)
- **UF0-P:** Operación y Mantenimiento Provisional (Pasos Poblados hasta construcción de variantes)

**Ver detalle en:** Tablas 4-9 (Desgloses de UFs) y Tablas 10-67 (Características técnicas por UF)
```

---

## ⚠️ INSTRUCCIONES DE USO:

1. Abrir el archivo `AT1_Alcance_Proyecto_v1.0.md` en VS Code
2. Buscar cada tabla por su número de línea
3. Seleccionar el bloque completo de la tabla original (texto sin formato)
4. Reemplazar con el bloque de tabla formateada de este archivo
5. Guardar como nueva versión: `AT1_Alcance_Proyecto_v1.1.md`

---

**PRÓXIMO PASO:** Formatear Tablas 4-9 (Desgloses de Unidades Funcionales)

