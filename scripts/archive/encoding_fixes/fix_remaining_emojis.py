#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Script para corregir emojis corruptos restantes en presupuesto.html y estado_sync.html"""

import re

files = ['docs/presupuesto.html', 'docs/estado_sync.html']

# Patrones de emojis corruptos y sus reemplazos - usando reemplazos más agresivos
fixes = [
    # Reemplazos directos más simples
    ('ðŸ" ACTA', '📝 ACTA'),
    ('ðŸ"Š Estado', '📊 Estado'),
    ('ðŸ"Š', '📊'),     # Gráfico de barras genérico
    ('ðŸ"', '📝'),      # Memo/nota genérico
    # Regex para capturar variantes
    (r'ðŸ[^\s]*"Š', '📊'),     # Variantes de gráfico
    (r'ðŸ[^\s]*"', '📝'),     # Variantes de memo
    (r'ðŸ[^\s]*"‚', '📋'),    # Variantes de clipboard
    (r'ðŸ[^\s]*"„', '🗑'),    # Variantes de papelera
    (r'ðŸ[^\s]*"§', '⚙'),    # Variantes de engranaje
    (r'âŒ', '❌'),             # X roja
    (r'â¯±ï¸', '⏱'),          # Reloj
]

for file_path in files:
    print(f"\nCorrigiendo: {file_path}...")
    
    with open(file_path, 'rb') as f:
        content_bytes = f.read()
    
    content = content_bytes.decode('utf-8', errors='replace')
    original_content = content
    count = 0
    
    for pattern, replacement in fixes:
        try:
            matches = re.findall(pattern, content)
            if matches:
                content = re.sub(pattern, replacement, content)
                count += len(matches)
                print(f"  [OK] {pattern[:20]}... -> [emoji] ({len(matches)} veces)")
        except Exception as e:
            print(f"  [ERROR] Error con patrón {pattern}: {e}")
    
    if content != original_content:
        with open(file_path, 'w', encoding='utf-8', newline='') as f:
            f.write(content)
        print(f"[OK] {file_path} - {count} reemplazos")
    else:
        print(f"[SKIP] {file_path} - sin cambios")

print("\n[OK] Proceso completado")

