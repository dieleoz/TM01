import os

FILE_PATH = r"d:\onedrive\gdrive\TM1\0.1 ingenieria basica\0.0 FORMATOS PARA IA\II. Apendices Tecnicos\AT4_Indicadores_v1.0.md"

# Range to separate:
# We want to remove lines 2279 to 2849 (1-based).
# In 0-based index: 2278 to 2849 (exclusive).
START_INDEX = 2278
END_INDEX = 2849

NEW_CONTENT = r"""### Tabla 4 - Pesos de los Indicadores
Corresponden al valor base para ponderar cada indicador según la Unidad Funcional (UF).

| IDT | INDICADOR | UF0-D | UF1 a UF5 | UF6 | UF7 | UF8 a UF10 | UF11 | UF12 | UF13 |
|:---:|:---|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| **E1** | IRI | 4,0 | 4,0 | 4,0 | 4,0 | 4,0 | 4,0 | 4,0 | 4,0 |
| **E2** | Ahuellamiento | 2,5 | 3,5 | 3,5 | 3,5 | 3,5 | 3,5 | 3,5 | 3,5 |
| **E3** | Fisuras / Grietas | 2,5 | 2,5 | 2,5 | 2,5 | 2,5 | 2,5 | 2,5 | 2,5 |
| **E4** | Coef. Fricción | 2,0 | 2,0 | 2,0 | 2,0 | 2,0 | 2,0 | 2,0 | 2,0 |
| **E5** | Textura | 2,5 | 2,5 | 2,5 | 2,5 | 2,5 | 2,5 | 2,5 | 2,5 |
| **E6** | Baches | 2,5 | 2,5 | 2,5 | 2,5 | 2,5 | 2,5 | 2,5 | 2,5 |
| **E7** | Hundimientos | 2,0 | 2,0 | 2,0 | 2,0 | 2,0 | 2,0 | 2,0 | 2,0 |
| **E8** | Márgenes / Separador | 1,0 | 1,0 | 0,5 | 0,5 | 1,0 | 0,5 | 1,0 | 1,0 |
| **E10** | Drenajes Superficiales | 1,0 | 1,5 | 1,0 | 1,0 | 1,5 | 1,0 | 1,5 | 1,5 |
| **E11** | Señalización Vertical | 2,0 | 2,0 | 2,0 | 2,0 | 2,0 | 2,0 | 2,0 | 2,0 |
| **E12** | Señalización Horizontal | 2,0 | 2,0 | 2,0 | 2,0 | 2,0 | 2,0 | 2,0 | 2,0 |
| **E13** | Barreras de Contención | 1,5 | 1,5 | 1,5 | 1,5 | 1,5 | 1,5 | 1,5 | 1,5 |
| **E14** | Iluminación | 1,0 | 1,5 | 1,0 | 1,5 | 1,5 | 1,0 | 1,5 | 1,5 |
| **E15** | Puentes y Estructuras | 1,5 | 1,5 | 1,5 | 1,5 | 1,5 | 1,5 | 1,5 | 1,5 |
| **E16** | Capacidad Estructural | 1,5 | 1,5 | 1,5 | 1,5 | 1,5 | 1,5 | 1,5 | 1,5 |
| **E17** | Disponibilidad de Vía | 65,0 | 65,0 | 65,0 | 65,0 | 65,0 | 65,0 | 65,0 | 65,0 |
| **O1** | Mortalidad (Nota 1) | 0,5 | 0,5 | 0,5 | 0,5 | 0,5 | 0,5 | 0,5 | 0,5 |
| **O2** | Ocupación de Carriles | 1,0 | 1,0 | 0,5 | 0,5 | 1,0 | 0,5 | 1,0 | 1,0 |
| **O3** | Cola de Peaje | - | - | 1,5 | 1,5 | - | 0,5 | - | - |
| **O4** | Atención Incidentes | 1,0 | 1,0 | 1,0 | 1,0 | 1,0 | 1,0 | 1,0 | 1,0 |
| **O5** | Atención Accidentes | 1,0 | 1,0 | 1,0 | 1,0 | 1,0 | 1,0 | 1,0 | 1,0 |
| **O6** | Disponibilidad SICC | 1,0 | 1,0 | 1,0 | 1,0 | 1,0 | 1,0 | 1,0 | 1,0 |

*Nota: El símbolo "-" indica que el indicador no aplica o tiene peso cero para esa UF específica.*

### Tabla 5 - Valor Ponderado de cada Indicador (VPI)
Esta tabla define la lógica matemática para aplicar los pesos anteriores. El marcador `[•]` debe ser reemplazado por el valor correspondiente de la Tabla 4 arriba expuesta.

| IDT | Indicadores | Fórmula del Valor Ponderado ($VPI_i$) |
|:---:|:---|:---|
| **E1 a E14 / E16 / E17** | Estado de la vía y disponibilidad | $$ VPI_i = \left( \frac{Km_c}{Km_t} \right) \times [•] $$ |
| **E15** | Puentes y Estructuras | $$ VPI_i = \left( \frac{P_t}{P_c} \right) \times [•] $$ |
| **O2 / O3 / O6** | Operación y SICC | $$ VPI_i = R \times [•] $$ |
| **O4** | Tiempo Atención Incidentes | $$ VPI_i = \left( \frac{I_{tiempo}}{I_{total}} \right) \times [•] $$ |
| **O5** | Tiempo Atención Accidentes | $$ VPI_i = \left( \frac{Eventos_{tiempo}}{Eventos_{total}} \right) \times [•] $$ |
| **O1** | Índice de Mortalidad | $$ VPI_i = R \times [•] $$ |

**Variables clave:**
• $Km_c$: Kilómetros que cumplen el Valor de Aceptación.
• $Km_t$: Kilómetros totales de la Unidad Funcional.
• $R$: Resultado binario (1 si cumple, 0 si incumple).
• $[•]$: Peso obtenido de la Tabla 4.

"""

def patch_file():
    print(f"Reading {FILE_PATH}...")
    with open(FILE_PATH, 'r', encoding='utf-8') as f:
        lines = f.readlines()
    
    print(f"Total lines: {len(lines)}")
    
    # Slice
    # Keep up to START_INDEX
    prefix = lines[:START_INDEX]
    # Keep from END_INDEX to end
    suffix = lines[END_INDEX:]
    
    # Construct complete text
    # Ensure NEW_CONTENT has newlines
    final_content = "".join(prefix) + NEW_CONTENT + "\n\n" + "".join(suffix)
    
    print(f"Writing patched file...")
    with open(FILE_PATH, 'w', encoding='utf-8') as f:
        f.write(final_content)
    
    print("Done.")

if __name__ == "__main__":
    patch_file()
