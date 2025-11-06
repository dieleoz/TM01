#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Script para corregir caracteres mal codificados en mensajes JavaScript de HTML"""

import re
import os

files_to_fix = [
    'docs/WBS_Menu_Principal.html',
    'docs/cronograma.html',
    'docs/analisis_riesgos.html',
]

print("=" * 60)
print("Corrigiendo caracteres mal codificados en mensajes JavaScript")
print("=" * 60)

# Diccionario de reemplazos para mensajes JavaScript
replacements = {
    # Mensajes comunes en JavaScript
    'funciÃ³n': 'función',
    'consolidarÃ¡': 'consolidará',
    'generarÃ¡': 'generará',
    'consolidarÃ¡ los documentos': 'consolidará los documentos',
    'generarÃ¡ documentos': 'generará documentos',
    'Esta pÃ¡gina': 'Esta página',
    'IngenierÃ­a': 'Ingeniería',
    'Servir IngenierÃ­a': 'Servir Ingeniería',
    'En desarrollo': 'En desarrollo',
    'consolidarÃ¡': 'consolidará',
    'pÃ¡ginas': 'páginas',
    'documentaciÃ³n': 'documentación',
    'informaciÃ³n': 'información',
    'validaciÃ³n': 'validación',
    'ejecuciÃ³n': 'ejecución',
    'configuraciÃ³n': 'configuración',
    'aplicaciÃ³n': 'aplicación',
    'descripciÃ³n': 'descripción',
    'confirmaciÃ³n': 'confirmación',
}

for file_path in files_to_fix:
    if not os.path.exists(file_path):
        print(f"\n⚠️  Archivo no encontrado: {file_path}")
        continue
    
    print(f"\n📁 Procesando: {file_path}")
    
    with open(file_path, 'rb') as f:
        content_bytes = f.read()
    
    content = content_bytes.decode('utf-8', errors='replace')
    original = content
    
    # Aplicar reemplazos simples
    count = 0
    for old, new in replacements.items():
        if old in content:
            occurrences = content.count(old)
            content = content.replace(old, new)
            count += occurrences
            if occurrences > 0:
                print(f"   ✓ {old[:30]}... → {new[:30]}... ({occurrences} veces)")
    
    # Correcciones específicas para mensajes de alert/confirm
    # Buscar patrones como: alert('...funciÃ³n...') o confirm('...consolidarÃ¡...')
    js_message_fixes = [
        (r"alert\(['\"]([^'\"]*funciÃ³n[^'\"]*)['\"]\)", lambda m: f"alert('{m.group(1).replace('funciÃ³n', 'función')}')"),
        (r"confirm\(['\"]([^'\"]*consolidarÃ¡[^'\"]*)['\"]\)", lambda m: f"confirm('{m.group(1).replace('consolidarÃ¡', 'consolidará')}')"),
        (r"alert\(['\"]([^'\"]*generarÃ¡[^'\"]*)['\"]\)", lambda m: f"alert('{m.group(1).replace('generarÃ¡', 'generará')}')"),
    ]
    
    # Reemplazos más simples y directos en strings JavaScript
    content = re.sub(r"'([^']*funciÃ³n[^']*)'", lambda m: f"'{m.group(1).replace('funciÃ³n', 'función')}'", content)
    content = re.sub(r'"([^"]*funciÃ³n[^"]*)"', lambda m: f'"{m.group(1).replace("funciÃ³n", "función")}"', content)
    
    content = re.sub(r"'([^']*consolidarÃ¡[^']*)'", lambda m: f"'{m.group(1).replace('consolidarÃ¡', 'consolidará')}'", content)
    content = re.sub(r'"([^"]*consolidarÃ¡[^"]*)"', lambda m: f'"{m.group(1).replace("consolidarÃ¡", "consolidará")}"', content)
    
    content = re.sub(r"'([^']*generarÃ¡[^']*)'", lambda m: f"'{m.group(1).replace('generarÃ¡', 'generará')}'", content)
    content = re.sub(r'"([^"]*generarÃ¡[^"]*)"', lambda m: f'"{m.group(1).replace("generarÃ¡", "generará")}"', content)
    
    # Solo escribir si hubo cambios
    if content != original:
        with open(file_path, 'w', encoding='utf-8', newline='') as f:
            f.write(content)
        print(f"   ✅ Archivo corregido: {file_path} ({count} reemplazos)")
    else:
        print(f"   ○ Sin cambios: {file_path}")

print("\n" + "=" * 60)
print("✅ Procesamiento completado")
print("=" * 60)

