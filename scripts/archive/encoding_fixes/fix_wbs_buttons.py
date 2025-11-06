#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Script para corregir emojis en botones de docs/wbs.html"""

import sys
import re

file_path = "docs/wbs.html"

with open(file_path, 'rb') as f:
    content_bytes = f.read()

# Decodificar con UTF-8, reemplazando errores
content = content_bytes.decode('utf-8', errors='replace')

# Reemplazos específicos para emojis y caracteres mal codificados
replacements = {
    'ðŸ"‹ DT': '📋 DT',
    'ðŸ\'ï¸ Ver': 'ℹ️ Ver',
    'ðŸ\'ï¸ Detalles': 'ℹ️ Detalles',
    'CÃ³digo WBS': 'Código WBS',
    'DescripciÃ³n': 'Descripción',
    'Criterio TÃ©cnico': 'Criterio Técnico',
    'âŒ Error': '❌ Error',
    'âŒ No': '❌ No',
    'âœ…': '✅',
    'estÃ©': 'esté',
    'mÃ¡s': 'más',
    'estÃ¡n': 'están',
}

for old, new in replacements.items():
    content = content.replace(old, new)

# Escribir con UTF-8 sin BOM
with open(file_path, 'w', encoding='utf-8', newline='') as f:
    f.write(content)

print(f"✅ Corregidos emojis y caracteres en {file_path}")

