#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Script para corregir TODOS los emojis mal codificados en docs/wbs.html"""

import re

file_path = "docs/wbs.html"

# Leer archivo
with open(file_path, 'rb') as f:
    content_bytes = f.read()

content = content_bytes.decode('utf-8', errors='replace')

print(f"Corrigiendo emojis en {file_path}...")

# Lista de reemplazos: (patrón_antiguo, patrón_nuevo)
replacements = [
    # Emojis en botones y títulos
    (r'ðŸ["\'][^\s]*DT', '📋 DT'),
    (r"ðŸ['\"][^\s]*ï¸[^\s]*Ver", 'ℹ️ Ver'),
    (r"ðŸ['\"][^\s]*ï¸[^\s]*Detalles", 'ℹ️ Detalles'),
    (r'ðŸ"—', '📈'),
    (r'ðŸ"—\'ï¸', '🗑️'),
    (r'ðŸ"—ï¸', '🗑️'),
    (r'ðŸ"', '🔍'),
    (r'âŒ', '❌'),
    (r'âœ…', '✅'),
]

# Aplicar reemplazos con regex
for pattern, replacement in replacements:
    matches = re.findall(pattern, content)
    if matches:
        content = re.sub(pattern, replacement, content)
        print(f"✓ Reemplazado: {pattern[:20]}... → {replacement} ({len(matches)} veces)")

# Reemplazos simples adicionales
simple_replacements = [
    ('CÃ³digo', 'Código'),
    ('DescripciÃ³n', 'Descripción'),
    ('TÃ©cnico', 'Técnico'),
    ('estÃ©', 'esté'),
    ('mÃ¡s', 'más'),
    ('estÃ¡n', 'están'),
]

for old, new in simple_replacements:
    if old in content:
        count = content.count(old)
        content = content.replace(old, new)
        print(f"✓ Reemplazado: {old} → {new} ({count} veces)")

# Escribir archivo
with open(file_path, 'w', encoding='utf-8', newline='') as f:
    f.write(content)

print(f"✅ Archivo corregido: {file_path}")

# Verificar emojis correctos
if '📋 DT' in content:
    print("✓ Verificado: 📋 DT encontrado")
if 'ℹ️ Ver' in content:
    print("✓ Verificado: ℹ️ Ver encontrado")
if 'ℹ️ Detalles' in content:
    print("✓ Verificado: ℹ️ Detalles encontrado")

