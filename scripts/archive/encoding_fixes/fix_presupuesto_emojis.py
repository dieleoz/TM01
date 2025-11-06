#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Script para corregir emojis corruptos específicos en presupuesto.html"""

import re

file_path = "docs/presupuesto.html"

print(f"Corrigiendo emojis corruptos en {file_path}...")

with open(file_path, 'rb') as f:
    content_bytes = f.read()

content = content_bytes.decode('utf-8', errors='replace')

# Buscar emojis corruptos específicos usando regex
fixes = [
    (r'ðŸ"Š', '📊'),  # Gráfico de barras
    (r'ðŸ"¤', '📊'),  # Gráfico de barras alternativo
    (r'ðŸ"', '📝'),  # Memo/nota
    # También buscar variantes sin las comillas correctas
    (r'ðŸ[^\s]*Š', '📊'),
    (r'ðŸ[^\s]*¤', '📊'),
]

count = 0

for pattern, replacement in fixes:
    matches = re.findall(pattern, content)
    if matches:
        content = re.sub(pattern, replacement, content)
        count += len(matches)
        print(f"[OK] Reemplazado: {pattern} -> [emoji] ({len(matches)} veces)")

if count > 0:
    with open(file_path, 'w', encoding='utf-8', newline='') as f:
        f.write(content)
    print(f"\n[OK] Archivo corregido: {file_path} - {count} reemplazos")
else:
    print("\n[SKIP] No se encontraron emojis corruptos para corregir")

