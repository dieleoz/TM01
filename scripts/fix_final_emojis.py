#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Script final para corregir emojis corruptos específicos usando búsqueda y reemplazo directo"""

import re

files_to_fix = [
    ('docs/presupuesto.html', [
        ('ðŸ" ACTA DE OBRA', '📝 ACTA DE OBRA'),
    ]),
    ('docs/estado_sync.html', [
        ('ðŸ"Š Estado de Sincronización', '📊 Estado de Sincronización'),
        ('ðŸ" Archivos Generados', '📁 Archivos Generados'),
        ('â¯±ï¸ Duración', '⏱ Duración'),
        ('ðŸ"§ Acciones', '⚙ Acciones'),
        ('ðŸ"„ Volver al Menú', '🗑 Volver al Menú'),
        ('ðŸ"„ Refrescar Estado', '🗑 Refrescar Estado'),
        ('âŒ', '❌'),
    ]),
    ('docs/layout.html', [
        ('ðŸ"Š Equipos', '📊 Equipos'),
        ('ðŸ"Š Datos', '📊 Datos'),
        ('ðŸ" No se encontraron', '🔍 No se encontraron'),
    ]),
    ('docs/edt_detalle.html', [
        ('ðŸ"‹ ${item.item}', '📋 ${item.item}'),
    ]),
    ('docs/cronograma.html', [
        ('ðŸŽ›ï¸ Filtros', '🔍 Filtros'),
        ('ðŸ" Plazos Contractuales', '📋 Plazos Contractuales'),
    ]),
]

for file_path, replacements in files_to_fix:
    print(f"\nCorrigiendo: {file_path}...")
    
    try:
        with open(file_path, 'rb') as f:
            content_bytes = f.read()
        
        content = content_bytes.decode('utf-8', errors='replace')
        original_content = content
        count = 0
        
        for old, new in replacements:
            if old in content:
                occurrences = content.count(old)
                content = content.replace(old, new)
                count += occurrences
                print(f"  [OK] Reemplazado: '{old[:30]}...' -> '{new}' ({occurrences} veces)")
        
        # También intentar con regex más agresivo para emojis que no coincidan exactamente
        if content == original_content:
            # Buscar cualquier emoji corrupto antes de ciertas palabras
            content = re.sub(r'ðŸ[^\s]*["\']?\s*ACTA', '📝 ACTA', content)
            content = re.sub(r'ðŸ[^\s]*["\']?Š\s*Estado', '📊 Estado', content)
            content = re.sub(r'ðŸ[^\s]*["\']?Š\s*Equipos', '📊 Equipos', content)
            content = re.sub(r'ðŸ[^\s]*["\']?Š\s*Datos', '📊 Datos', content)
            content = re.sub(r'ðŸ[^\s]*["\']?\s*Archivos', '📁 Archivos', content)
            content = re.sub(r'ðŸ[^\s]*["\']?\s*No se encontraron', '🔍 No se encontraron', content)
            content = re.sub(r'â¯±ï¸\s*Duraci', '⏱ Duraci', content)
            content = re.sub(r'ðŸ[^\s]*["\']?§\s*Acciones', '⚙ Acciones', content)
            content = re.sub(r'ðŸ[^\s]*["\']?„\s*Volver', '🗑 Volver', content)
            content = re.sub(r'ðŸ[^\s]*["\']?„\s*Refrescar', '🗑 Refrescar', content)
            content = re.sub(r'ðŸ[^\s]*["\']?‹\s*\$\{item', '📋 ${item', content)
            content = re.sub(r'ðŸ[^\s]*Ž[^\s]*ï¸[^\s]*\s*Filtros', '🔍 Filtros', content)
            content = re.sub(r'ðŸ[^\s]*["\']?\s*Plazos Contractuales', '📋 Plazos Contractuales', content)
            
            if content != original_content:
                count = len(re.findall(r'ðŸ[^\s]*|â[^\s]*|â¯±ï¸', original_content)) - len(re.findall(r'ðŸ[^\s]*|â[^\s]*|â¯±ï¸', content))
                print(f"  [OK] Corregido usando regex agresivo ({count} patrones)")
        
        if content != original_content:
            with open(file_path, 'w', encoding='utf-8', newline='') as f:
                f.write(content)
            print(f"[OK] {file_path} - Archivo corregido")
        else:
            print(f"[SKIP] {file_path} - Sin cambios necesarios")
    
    except Exception as e:
        print(f"[ERROR] Error procesando {file_path}: {e}")

print("\n[OK] Proceso completado")

