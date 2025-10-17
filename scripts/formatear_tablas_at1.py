#!/usr/bin/env python3
"""
Script: formatear_tablas_at1.py
Propósito: Formatear TODAS las tablas de AT1 a formato markdown
Fecha: 17 de octubre de 2025
Versión: 1.0
"""

import re
import sys

def formatear_tabla1(lineas_originales):
    """
    Formatea la Tabla 1 - Descripción de vías existentes
    """
    tabla_markdown = """**Tabla 1 - Descripción de vías existentes comprendidas en el Proyecto**

| Código de vía | Ente Competente | Origen (Nombre – PR) | Destino (Nombre – PR) | Longitud (Km) | Observaciones |
|:--------------|:----------------|:---------------------|:----------------------|:--------------|:--------------|
| **4510** | INVIAS | Puerto Salgar<br>PK 34+000<br>(PR 34+000) E=935484.39 N=1096379.04 | Río Ermitaño<br>PK 134+328<br>(PR 134+470) E=951366.98 N=1181480.10 | 100.33 | Vía primaria bidireccional pavimentada, desde el PK34+000 hasta PK39+080 (paso poblado Puerto Salgar). Del PK39+080 hasta el PK84+400 tramo en doble calzada. Del PK84+400 al PK134+456 hay sectores en construcción de la segunda calzada y otros terminados en par vial. |
| **4511** | INVIAS | Río Ermitaño<br>PK 00+000<br>(PR 00+000) E=951366.98 N=1181480.10 | La Lizama<br>PK 149+142<br>(PR 149+484) E=1050813.22 N=1278537.32 | 149.14 | Vía primaria en algunos sectores opera en sentido bidireccional y en otros donde ya se construyó la calzada espejo como par vial. |
| **4513** | INVIAS | La Lizama<br>PK 00+000<br>(PR 00+000) E=1050813.22 N=1278537.32 | Río Sogamoso<br>PK 09+800<br>(PR 9+800) E=1057840.18 N=1283507.47 | 9.80 | Vía primaria bidireccional pavimentada, con condiciones bajas desde el punto de vista geométrico. |

**Longitud total:** 259.27 km (100.33 + 149.14 + 9.80)  
**Nota:** Las coordenadas y los PR incluidos son de referencia y podrán ser ajustados en campo al momento de la entrega de la infraestructura.
"""
    return tabla_markdown

def formatear_tabla2(lineas_originales):
    """
    Formatea la Tabla 2 - Estaciones de Peaje
    """
    tabla_markdown = """**Tabla 2 - Estaciones de Peaje actualmente Existentes**

| Estación de Peaje | Ubicación (PR - Ruta) | Segmento | Sentido de Cobro | Observaciones |
|:------------------|:----------------------|:---------|:-----------------|:--------------|
| **Peaje Zambito** | PR 9+200<br>Ruta Nacional 4511 | Puerto Boyacá – Puerto Araujo | Bidireccional | Estación existente en operación |
| **Peaje Aguas Negras*** | PR 83+900<br>Ruta Nacional 4511 | Puerto Araujo – La Lizama | Bidireccional | *El peaje de Aguas Negras deberá ser reubicado al PR 80+000 RN 4511 de acuerdo a la sección 3.7 del presente anexo técnico. |

**Total:** 2 estaciones de peaje existentes
"""
    return tabla_markdown

def main():
    archivo_entrada = "II. Apendices Tecnicos/AT1_Alcance_Proyecto_v1.0.md"
    archivo_salida = "II. Apendices Tecnicos/AT1_Alcance_Proyecto_v1.1_TABLAS_FORMAT.md"
    
    print("="*60)
    print("  FORMATEADOR DE TABLAS AT1 - Python")
    print("="*60)
    
    try:
        with open(archivo_entrada, 'r', encoding='utf-8') as f:
            lineas = f.readlines()
        
        print(f"✅ Archivo leído: {len(lineas)} líneas")
        
        # Procesar línea por línea y formatear tablas
        resultado = []
        i = 0
        tablas_formateadas = 0
        
        while i < len(lineas):
            linea = lineas[i]
            
            # Detectar inicio de Tabla 1
            if "Tabla 1 - Descripción de vías" in linea:
                print(f"  📊 Formateando Tabla 1 en línea {i+1}...")
                resultado.append(formatear_tabla1(lineas[i:i+100]))
                # Saltar las líneas de la tabla original (aproximadamente 96 líneas)
                i += 96
                tablas_formateadas += 1
                
            # Detectar inicio de Tabla 2
            elif "Tabla 2 - Estaciones de Peaje" in linea:
                print(f"  📊 Formateando Tabla 2 en línea {i+1}...")
                resultado.append(formatear_tabla2(lineas[i:i+30]))
                # Saltar las líneas de la tabla original
                i += 20
                tablas_formateadas += 1
                
            else:
                resultado.append(linea)
                i += 1
        
        # Guardar archivo formateado
        with open(archivo_salida, 'w', encoding='utf-8') as f:
            f.writelines(resultado)
        
        print(f"\n✅ Proceso completado:")
        print(f"   - Tablas formateadas: {tablas_formateadas}")
        print(f"   - Archivo de salida: {archivo_salida}")
        print(f"   - Líneas procesadas: {len(resultado)}")
        
    except FileNotFoundError:
        print(f"❌ ERROR: Archivo no encontrado: {archivo_entrada}")
    except Exception as e:
        print(f"❌ ERROR: {str(e)}")

if __name__ == "__main__":
    main()