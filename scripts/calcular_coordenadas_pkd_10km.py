#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Script para calcular coordenadas de PKD cada 10km desde coordenadas_uf_tm01.json
y actualizar el archivo pkd_cada_10km.js con coordenadas reales
"""

import json
from pathlib import Path
from typing import Dict, List, Optional, Tuple

def parse_pk(pk_string: str) -> float:
    """Convertir PK formato '40+000' a kilómetros (40.0)"""
    if not pk_string or not isinstance(pk_string, str):
        return 0.0
    parts = pk_string.split('+')
    if len(parts) == 2:
        km = int(parts[0]) if parts[0] else 0
        metros = int(parts[1]) if parts[1] else 0
        return km + (metros / 1000.0)
    return float(pk_string) if pk_string.replace('.', '').isdigit() else 0.0

def calcular_coordenadas_pkd(
    pkd: float,
    coordenadas_uf: Dict,
    longitud_rn4510: float = 134.0,
    longitud_rn4511: float = 149.0
) -> Optional[Tuple[float, float, str, str, float]]:
    """
    Calcular coordenadas para un PKD dado
    
    Retorna: (lat, lng, ruta, uf, pkr) o None si no se puede calcular
    """
    if not coordenadas_uf or 'unidades_funcionales' not in coordenadas_uf:
        return None
    
    unidades = coordenadas_uf['unidades_funcionales']
    
    # Determinar ruta y PKR según PKD
    pkr = 0.0
    ruta = ''
    uf = ''
    
    if pkd <= longitud_rn4510:
        # RN 4510: PKD = PKR
        pkr = pkd
        ruta = 'RN 4510'
        # Determinar UF por PKR en RN 4510
        if pkd >= 84.4 and pkd <= 94.31:
            uf = 'UF1'
        elif pkd >= 34.04 and pkd <= 84.22:
            uf = 'UF5'
        else:
            uf = 'UF0'
    elif pkd <= longitud_rn4510 + longitud_rn4511:
        # RN 4511: PKD = PKR + 134
        pkr = pkd - longitud_rn4510
        ruta = 'RN 4511'
        # Determinar UF por PKR en RN 4511
        if pkr >= 0 and pkr <= 51.1:
            uf = 'UF2'
        elif pkr >= 51.1 and pkr <= 64.65:
            uf = 'UF3'
        elif pkr >= 64.65 and pkr <= 74.65:
            uf = 'UF4'
        elif pkr >= 74.65 and pkr <= 83.22:
            uf = 'UF6'
        elif pkr >= 83.22 and pkr <= 97.0:
            uf = 'UF7'
        elif pkr >= 97.0 and pkr <= 107.0:
            uf = 'UF8'
        elif pkr >= 107.0 and pkr <= 117.69:
            uf = 'UF9'
        elif pkr >= 117.69 and pkr <= 128.0:
            uf = 'UF10'
        elif pkr >= 74.65 and pkr <= 128.0:
            uf = 'UF11'
        elif pkr >= 128.0 and pkr <= 149.11:
            uf = 'UF12'
        else:
            uf = 'UF0'
    else:
        # RN 4513: PKD = PKR + 283
        pkr = pkd - longitud_rn4510 - longitud_rn4511
        ruta = 'RN 4513'
        uf = 'UF13'
    
    # Buscar UF en coordenadas
    uf_key = None
    uf_data = None
    
    # Intentar diferentes variantes del nombre de UF
    uf_variantes = [uf, uf.replace('UF', 'UF-'), uf.replace('-', ''), uf.upper(), uf.lower()]
    
    for uf_var in uf_variantes:
        for key in unidades.keys():
            data = unidades[key]
            if (data.get('uf') == uf_var or 
                data.get('uf') == uf_var.replace('UF', 'UF-') or
                data.get('uf') == uf_var.replace('-', '') or
                key.upper().find(uf_var.upper()) >= 0):
                uf_key = key
                uf_data = data
                break
        if uf_key:
            break
    
    if not uf_key or not uf_data:
        print(f"⚠️ No se encontró UF {uf} para PKD {pkd}")
        return None
    
    if not uf_data.get('coordenadas_consolidadas') or len(uf_data['coordenadas_consolidadas']) == 0:
        print(f"⚠️ UF {uf_key} no tiene coordenadas consolidadas")
        return None
    
    # Calcular porcentaje dentro de la UF según PKR
    pk_inicio = float(uf_data.get('pk_inicio', 0) or 0)
    pk_fin = float(uf_data.get('pk_fin', 0) or (pk_inicio + float(uf_data.get('distancia_total_km', 0) or 0)))
    distancia_total = float(uf_data.get('distancia_total_km', 0) or 0)
    
    porcentaje = 0.5  # Por defecto punto medio
    
    if pk_fin > pk_inicio and pk_inicio <= pkr <= pk_fin:
        porcentaje = (pkr - pk_inicio) / (pk_fin - pk_inicio)
    elif pkr < pk_inicio:
        porcentaje = 0
    elif pkr > pk_fin:
        porcentaje = 1
    elif distancia_total > 0:
        porcentaje = min(1, max(0, pkr / distancia_total))
    
    porcentaje = max(0, min(1, porcentaje))
    
    # Interpolar coordenadas
    total_puntos = len(uf_data['coordenadas_consolidadas'])
    if total_puntos == 0:
        return None
    
    index = int(porcentaje * (total_puntos - 1))
    coord_index = max(0, min(index, total_puntos - 1))
    coord = uf_data['coordenadas_consolidadas'][coord_index]
    
    if not coord or len(coord) < 2:
        return None
    
    # Las coordenadas en KML/JSON están en formato [longitud, latitud]
    lng = float(coord[0])
    lat = float(coord[1])
    
    if lat == 0 and lng == 0:
        return None
    
    return (lat, lng, ruta, uf, pkr)

def main():
    """Función principal"""
    base_path = Path(__file__).parent.parent
    json_path = base_path / 'docs' / 'data' / 'coordenadas_uf_tm01.json'
    js_path = base_path / 'docs' / 'data' / 'pkd_cada_10km.js'
    
    print(f"📂 Leyendo coordenadas UF desde: {json_path}")
    
    if not json_path.exists():
        print(f"❌ No se encontró el archivo: {json_path}")
        return
    
    # Leer coordenadas UF
    try:
        with open(json_path, 'r', encoding='utf-8') as f:
            coordenadas_uf = json.load(f)
        print(f"✅ Coordenadas UF cargadas: {len(coordenadas_uf.get('unidades_funcionales', {}))} UFs")
    except Exception as e:
        print(f"❌ Error leyendo coordenadas UF: {e}")
        return
    
    # Leer archivo JS actual
    if not js_path.exists():
        print(f"❌ No se encontró el archivo: {js_path}")
        return
    
    print(f"📂 Leyendo archivo JS: {js_path}")
    with open(js_path, 'r', encoding='utf-8') as f:
        js_content = f.read()
    
    # Calcular coordenadas para cada PKD cada 10km
    longitud_total = 293.0
    longitud_rn4510 = 134.0
    longitud_rn4511 = 149.0
    
    print(f"\n🔄 Calculando coordenadas para PKD cada 10km (0 a {longitud_total})...")
    
    coordenadas_calculadas = {}
    calculados = 0
    fallidos = 0
    
    for pkd in range(0, int(longitud_total) + 1, 10):
        resultado = calcular_coordenadas_pkd(pkd, coordenadas_uf, longitud_rn4510, longitud_rn4511)
        
        if resultado:
            lat, lng, ruta, uf, pkr = resultado
            coordenadas_calculadas[pkd] = {
                'lat': lat,
                'lng': lng,
                'ruta': ruta,
                'uf': uf,
                'pkr': pkr
            }
            calculados += 1
            print(f"  ✅ PKD {pkd:3d}: lat={lat:8.6f}, lng={lng:9.6f}, UF={uf}, PKR={pkr:6.2f}")
        else:
            fallidos += 1
            print(f"  ⚠️ PKD {pkd:3d}: No se pudo calcular")
    
    print(f"\n✅ {calculados} coordenadas calculadas, {fallidos} fallidos")
    
    # Actualizar archivo JS
    print(f"\n📝 Actualizando archivo JS: {js_path}")
    
    # Reemplazar coordenadas null con valores calculados
    # Necesitamos reemplazar cada instancia de forma más precisa
    lines = js_content.split('\n')
    new_lines = []
    current_pkd = None
    
    for i, line in enumerate(lines):
        # Detectar inicio de un bloque PKD
        if '// PKD' in line and '+' in line:
            # Extraer PKD del comentario
            try:
                pkd_str = line.split('PKD')[1].split('+')[0].strip()
                current_pkd = int(pkd_str)
            except:
                current_pkd = None
        
        # Reemplazar lat: null
        if 'lat: null,' in line and current_pkd in coordenadas_calculadas:
            coords = coordenadas_calculadas[current_pkd]
            indent = len(line) - len(line.lstrip())
            new_lines.append(' ' * indent + f'lat: {coords["lat"]:.6f},')
            continue
        
        # Reemplazar lng: null
        if 'lng: null' in line and current_pkd in coordenadas_calculadas:
            coords = coordenadas_calculadas[current_pkd]
            indent = len(line) - len(line.lstrip())
            new_lines.append(' ' * indent + f'lng: {coords["lng"]:.6f}')
            continue
        
        new_lines.append(line)
    
    js_content_updated = '\n'.join(new_lines)
    
    # Guardar archivo actualizado
    try:
        with open(js_path, 'w', encoding='utf-8') as f:
            f.write(js_content_updated)
        print(f"✅ Archivo JS actualizado con {calculados} coordenadas calculadas")
    except Exception as e:
        print(f"❌ Error guardando archivo JS: {e}")
        # Guardar en un archivo temporal para revisar
        temp_path = js_path.parent / f'{js_path.stem}_actualizado.js'
        with open(temp_path, 'w', encoding='utf-8') as f:
            f.write(js_content_updated)
        print(f"⚠️ Archivo guardado en: {temp_path}")
    
    # Generar resumen
    print(f"\n📊 RESUMEN:")
    print(f"  - PKD calculados: {calculados}")
    print(f"  - PKD fallidos: {fallidos}")
    print(f"  - Archivo actualizado: {js_path}")

if __name__ == '__main__':
    main()

