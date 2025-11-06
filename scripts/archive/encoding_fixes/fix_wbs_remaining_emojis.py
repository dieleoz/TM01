#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Script para corregir emojis restantes mal codificados en docs/wbs.html"""

import re

file_path = "docs/wbs.html"

with open(file_path, 'rb') as f:
    content_bytes = f.read()

content = content_bytes.decode('utf-8', errors='replace')

print(f"Corrigiendo emojis restantes en {file_path}...")

# Reemplazos específicos por línea
replacements = [
    # Líneas con emojis mal codificados usando regex más amplio
    (r'ðŸ["\'][^\s]*Filtros', '🔍 Filtros'),
    (r'ðŸ["\'][^\s]*Aplicar', '🔍 Aplicar'),
    (r'ðŸ—[\'"]ï¸[^\s]*Limpiar', '🗑️ Limpiar'),
    (r'âŒ\s*Error', '❌ Error'),
    (r'âŒ\s*No', '❌ No'),
    (r"ðŸ['\"][^\s]*ï¸[^\s]*Detalles", 'ℹ️ Detalles'),
]

count = 0
for pattern, replacement in replacements:
    matches = re.findall(pattern, content)
    if matches:
        content = re.sub(pattern, replacement, content)
        count += len(matches)
        print(f"✓ Reemplazado: {pattern[:30]}... → {replacement} ({len(matches)} veces)")

# Escribir archivo
with open(file_path, 'w', encoding='utf-8', newline='') as f:
    f.write(content)

print(f"✅ Archivo corregido: {file_path}")
print(f"Total reemplazos: {count}")

# Verificar
verifications = ['📋 DT', 'ℹ️ Ver', '🔍', '📈', '🗑️', '❌', '✅']
for v in verifications:
    if v in content:
        print(f"✓ Verificado: {v} encontrado")

