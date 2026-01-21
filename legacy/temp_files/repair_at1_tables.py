
import os

def robust_replace(file_path, start_line, end_line, new_content):
    with open(file_path, 'r', encoding='utf-8') as f:
        lines = f.readlines()
    
    # Line indices are 0-based in Python, but 1-indexed in the tool
    # However, when the tool gives us range 187-197, we want to replace those lines.
    # We will be careful.
    
    start_idx = start_line - 1
    end_idx = end_line # end_line inclusive means end_line-1 is the last line to replace
    
    new_lines = new_content.splitlines(keepends=True)
    if not new_lines[-1].endswith('\n'):
        new_lines[-1] += '\n'
        
    lines[start_idx:end_idx] = new_lines
    
    with open(file_path, 'w', encoding='utf-8') as f:
        f.writelines(lines)

file_at1 = r'd:\onedrive\gdrive\TM1\0.1 ingenieria basica\0.0 FORMATOS PARA IA\II. Apendices Tecnicos\AT1_Alcance_Proyecto_v1.0.md'

# Table 1 & 2 Replacement (Lines 187 to 221)
# Note: Based on previous view, Table 1 starts at 187, Table 2 ends at 221.
# I will replace the whole block to be safe.

table1_2_content = """**Tabla 1 - Descripción de vías existentes comprendidas en el Proyecto**

| Código de vía | Ente Competente | Origen (Nombre – PR) | Destino (Nombre – PR) | Longitud (Km) | Observaciones |
|:--------------|:----------------|:---------------------|:----------------------|:--------------|:--------------|
| **4510** | INVÍAS | Puerto Salgar PK 34+000 (PR 34-000) E=935484.39 N=1096379.05 | Río Ermitaño PK 134+328 (PR 134-470) E= 951366.98 N= 1181480.10 | 100.29 | Vía primaria bidireccional pavimentada, desde el PK34+000 hasta PK39+080 (paso poblado Puerto Salgar). Del PK39+080 hasta el PK84+400 tramo en doble calzada. Del PK84+400 al PK134+456 hay sectores en construcción de la segunda calzada y otros terminados en par vial. |
| **4511** | INVÍAS | Río Ermitaño PK 00+000 (PR 00+000) E= 951366.98 N= 1181480.10 | La Lizama PK 149+142 (PR 149-484) E= 1050813.22 N= 1278537.32 | 149.07 | Vía primaria en algunos sectores opera en sentido bidireccional y en otros donde ya se construyó la calzada espejo como par vial. |
| **4513** | INVÍAS | La Lizama PK 00+000 (PR 00+000) E= 1050813.22 N= 1278537.32 | Río Sogamoso PK 09+800 (PR 17+689) E= 1057840.18 N= 1283507.47 | 10.25 | Vía primaria bidireccional pavimentada, con condiciones bajas desde el punto de vista geométrico. |

**Longitud total:** 259.61 km (100.29 + 149.07 + 10.25)

**Nota:** Las coordenadas y los PR incluidos son de referencia y podrán ser ajustados en campo al momento de la entrega de la infraestructura.

---

## 2.4 Estaciones de Peaje

El Concesionario recibirá las estaciones descritas en la **Tabla 2**, conforme al Numeral 2.4.

**Tabla 2 - Estaciones de Peaje actualmente Existentes**

| Estación de Peaje | Ubicación (PR - Ruta) | Segmento | Sentido de Cobro | Observaciones |
|:------------------|:----------------------|:---------|:-----------------|:--------------|
| **Peaje Zambito** | PR 9+200 - Ruta Nacional 4511 | Puerto Boyacá – Puerto Araujo | Bidireccional | Estación existente en operación |
| **Peaje Aguas Negras*** | PR 83+900 - Ruta Nacional 4511 | Puerto Araujo – La Lizama | Bidireccional | *El peaje de Aguas Negras deberá ser reubicado al PR 80+000 RN 4511 de acuerdo a la sección 3.7 del presente anexo técnico. |

**Total:** 2 estaciones de peaje existentes
"""

robust_replace(file_at1, 187, 221, table1_2_content)

# Table 3, 4, 5 Replacement
table3_content = """**Tabla 3 - Unidades Funcionales del Proyecto**

| UF | Origen | Destino | Longitud (km) | Tipo de Intervención |
|:---|:-------|:--------|:--------------|:---------------------|
| **UF0** | Puerto Salgar | Rio Sogamoso | 259.61 | O&M Inicial (Estructura de par vial) |
| **UF1** | El Trique | Dos y Medio | 9.83 | Construcción de calzada nueva |
| **UF2** | Dos y Medio | Quince Letras | 25.45 | Construcción de calzada nueva |
| **UF3** | PR 52 | Puerto Araujo | 13.61 | Construcción de calzada nueva |
| **UF4** | Puerto Araujo | Puerto Parra | 10.98 | Construcción de calzada nueva |
| **UF5** | Puerto Salgar | Cimitarra | 70.94 | Rehabilitación y Mejoramiento + O&M |
| **UF6** | Puerto Parra | Aguas Negras | 8.57 | Construcción de calzada nueva |
| **UF7** | Aguas Negras | Puerto Nuevo | 13.78 | Construcción de calzada nueva |
| **UF8** | Puerto Nuevo (PK 97+000) | PR 107+000 RN 4511 | 10.00 | Construcción de calzada nueva |
| **UF9** | PR 107+000 RN 4511 | Campo 23 | 11.74 | Construcción de calzada nueva |
| **UF10** | Campo 23 (PK 117+690) | Rancho Camacho (PK 128+000) | 10.31 | Construcción de calzada nueva |
| **UF11** | Puerto Parra (PK 74+650) | Rio Sogamoso (PK 09+800) | 82.01 | Rehabilitación y Mejoramiento |
| **UF12** | Barrancabermeja | La Lizama | 21.10 | Construcción de calzada nueva |
| **UF13** | La Lizama | Rio Sogamoso | 9.82 | Construcción de calzada nueva |

**Total Proyecto:** 14 Unidades Funcionales

---

## 2.5.3 Desglose de Unidades Funcionales

**Tabla 4 – Desglose UF (Calzada Sentido Norte)**

| RUTA | HITO | ABSCISA INICIO | ABSCISA FIN | LONGITUD | INTERVENCIÓN | UF FINAL |
|:-----|:-----|:---------------|:------------|:---------|:-------------|:---------|
| 4510 | H01VN | PK 39+080 | PK 39+320 | 0.24 km | Operación | UF0 |
| 4510 | H07VA | PK 84+400 | PK 87+500 | 3.10 km | Construcción | UF1 |
| 4510 | H07VB | PK 91+485 | PK 94+328 | 2.84 km | Construcción | UF1 |
| 4510 | H11VE | PK 124+328 | PK 125+580 | 1.25 km | Mejoramiento | UF5 |
| 4510 | H11VN | PK 125+580 | PK 126+369 | 0.79 km | Construcción | UF2 |

**Tabla 5 – Desglose UF (Calzada Sentido Sur)**

| RUTA | HITO | ABSCISA INICIO | ABSCISA FIN | LONGITUD | INTERVENCIÓN | UF FINAL |
|:-----|:-----|:---------------|:------------|:---------|:-------------|:---------|
| 4510 | H07VE | PK 84+220 | PK 84+310 | 0.09 km | Mejoramiento | UF5 |
| 4510 | H07VA | PK 85+400 | PK 87+040 | 1.64 km | Construcción | UF1 |
| 4510 | H07VB | PK 91+860 | PK 93+920 | 2.06 km | Construcción | UF1 |
| 4511 | H13VA | PK 13+395 | PK 14+620 | 1.23 km | Construcción | UF2 |

**Resumen de Intervención por UF (Tablas 8 y 9)**

- **UF0:** Operación y Mantenimiento Inicial (374.24 km-calzada total).
- **UF1:** Construcción de calzada nueva (9.83 km).
- **UF2:** Construcción de calzada nueva (25.45 km).
- **UF3:** Construcción de calzada nueva (13.61 km).
- **UF4:** Construcción de calzada nueva (10.98 km).
- **UF5:** Rehabilitación y Mejoramiento + O&M (70.94 km).
"""

robust_replace(file_at1, 222, 500, table3_content)

print("Tables 1, 2, and 3 updated successfully.")
