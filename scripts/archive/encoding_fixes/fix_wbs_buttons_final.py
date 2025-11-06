#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Script final para corregir emojis en botones de docs/wbs.html"""

file_path = "docs/wbs.html"

# Leer archivo como bytes
with open(file_path, 'rb') as f:
    content_bytes = f.read()

# Decodificar con UTF-8, reemplazando errores
content = content_bytes.decode('utf-8', errors='replace')

# Reemplazos específicos para emojis mal codificados
# Buscar patrones corruptos y reemplazarlos con emojis correctos
replacements = [
    # Emojis mal codificados en botones
    ('ðŸ"‹ DT', '📋 DT'),
    ("ðŸ'ï¸ Ver", 'ℹ️ Ver'),
    ("ðŸ'ï¸ Detalles", 'ℹ️ Detalles'),
    # Caracteres mal codificados
    ('CÃ³digo WBS', 'Código WBS'),
    ('DescripciÃ³n', 'Descripción'),
    ('Criterio TÃ©cnico', 'Criterio Técnico'),
    ('estÃ©', 'esté'),
    ('mÃ¡s', 'más'),
    ('estÃ¡n', 'están'),
]

# Aplicar reemplazos
for old, new in replacements:
    if old in content:
        content = content.replace(old, new)
        print(f"✓ Reemplazado: {old[:20]}... → {new}")

# Escribir con UTF-8 sin BOM
with open(file_path, 'w', encoding='utf-8', newline='') as f:
    f.write(content)

print(f"✅ Archivo corregido: {file_path}")

