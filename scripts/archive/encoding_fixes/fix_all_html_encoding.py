#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Script para corregir encoding UTF-8 en TODOS los archivos HTML del proyecto"""

import os
import re

# Directorios a procesar
directories = ['docs', 'Sistema_Validacion_Web']

# Diccionario de reemplazos: caracteres mal codificados → correctos
replacements = {
    # Caracteres españoles mal codificados
    'ValidaciÃ³n': 'Validación',
    'validaciÃ³n': 'validación',
    'DinÃ¡mica': 'Dinámica',
    'dinÃ¡mica': 'dinámica',
    'GESTIÃ"N': 'GESTIÓN',
    'GestiÃ³n': 'Gestión',
    'gestiÃ³n': 'gestión',
    'CapÃ­tulos': 'Capítulos',
    'capÃ­tulos': 'capítulos',
    'SubcapÃ­tulos': 'Subcapítulos',
    'subcapÃ­tulos': 'subcapítulos',
    'CÃ¡lculos': 'Cálculos',
    'cÃ¡lculos': 'cálculos',
    'anÃ¡lisis': 'análisis',
    'AnÃ¡lisis': 'Análisis',
    'EstratÃ©gicas': 'Estratégicas',
    'IngenierÃ­a': 'Ingeniería',
    'ingenierÃ­a': 'ingeniería',
    'CÃ³digo': 'Código',
    'cÃ³digo': 'código',
    'descripciÃ³n': 'descripción',
    'DescripciÃ³n': 'Descripción',
    'DecisiÃ³n': 'Decisión',
    'TÃ©cnica': 'Técnica',
    'tÃ©cnica': 'técnica',
    'tÃ©cnicos': 'técnicos',
    'TÃ©cnicos': 'Técnicos',
    'TÃ©cnico': 'Técnico',
    'tÃ©cnico': 'técnico',
    'DiseÃ±o': 'Diseño',
    'diseÃ±o': 'diseño',
    'JustificaciÃ³n': 'Justificación',
    'justificaciÃ³n': 'justificación',
    'OptimizaciÃ³n': 'Optimización',
    'optimizaciÃ³n': 'optimización',
    'VerificaciÃ³n': 'Verificación',
    'verificaciÃ³n': 'verificación',
    'ImplementaciÃ³n': 'Implementación',
    'implementaciÃ³n': 'implementación',
    'exportaciÃ³n': 'exportación',
    'ExportaciÃ³n': 'Exportación',
    'BÃºsqueda': 'Búsqueda',
    'bÃºsqueda': 'búsqueda',
    'automÃ¡ticos': 'automáticos',
    'AutomÃ¡ticos': 'Automáticos',
    'MenÃº': 'Menú',
    'menÃº': 'menú',
    'Ã­tem': 'ítem',
    'Ãtems': 'Ítems',
    'Ãtems': 'Ítems',
    'estÃ¡n': 'están',
    'estÃ©': 'esté',
    'mÃ¡s': 'más',
    'estÃ¡': 'está',
    'Ã­ndice': 'Índice',
    'Ã­ndice': 'Índice',
}

# Patrones regex para emojis mal codificados
emoji_replacements = [
    # Emojis comunes
    (r'ðŸ["\'][^\s]*DT', '📋 DT'),
    (r"ðŸ['\"][^\s]*ï¸[^\s]*Ver", 'ℹ️ Ver'),
    (r"ðŸ['\"][^\s]*ï¸[^\s]*Detalles", 'ℹ️ Detalles'),
    (r'ðŸ"', '🔍'),
    (r'ðŸ"—', '📈'),
    (r'ðŸ"—\'ï¸', '🗑️'),
    (r'ðŸ"—ï¸', '🗑️'),
    (r'ðŸ"—\'ï¸', '🗑️'),
    (r'ðŸ"Š', '📊'),
    (r'ðŸ"„', '📋'),
    (r'ðŸ"ˆ', '📄'),
    (r'ðŸ—ºï¸', '🗺️'),
    (r'ðŸ—ºï¸', '🗺️'),
    (r'ðŸŒ', '🗺️'),
    (r'ðŸŒ', '🗺️'),
    (r'ðŸš€', '🚀'),
    (r'ðŸ'°', '💰'),
    (r'ðŸ§¾', '🧾'),
    (r'ðŸŽ¯', '✅'),
    (r'âŒ', '❌'),
    (r'âœ…', '✅'),
    (r'â†', '←'),
    (r'â†', '→'),
    (r'â­', '✳'),
    (r'âš ï¸', '⚙️'),
    (r'âšï¸', '⚙️'),
]

def fix_html_encoding(file_path):
    """Corregir encoding en un archivo HTML"""
    try:
        # Leer archivo como bytes
        with open(file_path, 'rb') as f:
            content_bytes = f.read()
        
        # Decodificar con UTF-8, reemplazando errores
        content = content_bytes.decode('utf-8', errors='replace')
        original = content
        
        # Aplicar reemplazos simples
        for old, new in replacements.items():
            if old in content:
                content = content.replace(old, new)
        
        # Aplicar reemplazos regex para emojis
        for pattern, replacement in emoji_replacements:
            matches = re.findall(pattern, content)
            if matches:
                content = re.sub(pattern, replacement, content)
        
        # Solo escribir si hubo cambios
        if content != original:
            # Escribir con UTF-8 sin BOM
            with open(file_path, 'w', encoding='utf-8', newline='') as f:
                f.write(content)
            return True
        return False
    except Exception as e:
        print(f"  ❌ Error procesando {file_path}: {e}")
        return False

def main():
    """Procesar todos los archivos HTML"""
    total_files = 0
    fixed_files = 0
    
    print("=" * 60)
    print("Corrigiendo encoding UTF-8 en TODOS los archivos HTML")
    print("=" * 60)
    
    for directory in directories:
        if not os.path.exists(directory):
            print(f"\n⚠️  Directorio no encontrado: {directory}")
            continue
        
        print(f"\n📁 Procesando: {directory}/")
        
        # Buscar todos los archivos HTML
        html_files = []
        for root, dirs, files in os.walk(directory):
            for file in files:
                if file.endswith('.html'):
                    html_files.append(os.path.join(root, file))
        
        print(f"   Encontrados {len(html_files)} archivos HTML")
        
        for html_file in html_files:
            total_files += 1
            rel_path = os.path.relpath(html_file)
            
            if fix_html_encoding(html_file):
                fixed_files += 1
                print(f"   ✅ Corregido: {rel_path}")
            else:
                print(f"   ○ Sin cambios: {rel_path}")
    
    print("\n" + "=" * 60)
    print(f"✅ Procesamiento completado:")
    print(f"   Total archivos: {total_files}")
    print(f"   Archivos corregidos: {fixed_files}")
    print(f"   Archivos sin cambios: {total_files - fixed_files}")
    print("=" * 60)

if __name__ == '__main__':
    main()

