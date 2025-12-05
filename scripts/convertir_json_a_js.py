#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Script para convertir coordenadas_uf_tm01.json a un archivo JavaScript
que se puede cargar directamente sin problemas de CORS
"""

import json
from pathlib import Path

def convertir_json_a_js():
    """Convertir JSON a archivo JS"""
    base_path = Path(__file__).parent.parent
    json_path = base_path / 'docs' / 'data' / 'coordenadas_uf_tm01.json'
    js_path = base_path / 'docs' / 'data' / 'coordenadas_uf_tm01.js'
    
    print(f"📂 Leyendo JSON: {json_path}")
    
    if not json_path.exists():
        print(f"❌ No se encontró el archivo: {json_path}")
        return
    
    try:
        # Leer JSON
        with open(json_path, 'r', encoding='utf-8') as f:
            data = json.load(f)
        
        print(f"✅ JSON leído correctamente")
        print(f"   - Keys: {list(data.keys())}")
        if 'unidades_funcionales' in data:
            print(f"   - UFs: {len(data['unidades_funcionales'])}")
        
        # Crear archivo JS
        print(f"📝 Creando archivo JS: {js_path}")
        
        js_content = f"""// COORDENADAS UF TM01 - CARGADO DESDE JSON
// Archivo: docs/data/coordenadas_uf_tm01.js
// Generado automáticamente desde coordenadas_uf_tm01.json
// Propósito: Evitar problemas de CORS al cargar desde file://
// Patrón: Igual que en "0.0 Formatos para IA - copia" (coordenadas_kml.js)

const coordenadasUFData = {json.dumps(data, ensure_ascii=False, indent=2)};

// Exponer globalmente (patrón igual que coordenadas_kml.js en carpeta copia)
if (typeof window !== 'undefined') {{
    window.coordenadasUFData = coordenadasUFData;
}}

// Función para obtener coordenadas UF
function obtenerCoordenadasUF() {{
    return coordenadasUFData;
}}

// Exportar para uso en otros archivos
if (typeof module !== 'undefined' && module.exports) {{
    module.exports = {{
        coordenadasUFData,
        obtenerCoordenadasUF
    }};
}}

console.log('✅ Coordenadas UF cargadas desde JS:', coordenadasUFData.total_ufs || 13, 'UFs');
"""
        
        with open(js_path, 'w', encoding='utf-8') as f:
            f.write(js_content)
        
        print(f"✅ Archivo JS creado: {js_path}")
        print(f"   - Tamaño: {len(js_content)} caracteres")
        
    except Exception as e:
        print(f"❌ Error: {e}")
        import traceback
        traceback.print_exc()

if __name__ == '__main__':
    convertir_json_a_js()

