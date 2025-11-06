#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Script para corregir emojis en botones de docs/wbs.html usando regex"""

import re

file_path = "docs/wbs.html"

# Leer archivo
with open(file_path, 'rb') as f:
    content_bytes = f.read()

# Decodificar con UTF-8, reemplazando errores
content = content_bytes.decode('utf-8', errors='replace')

print(f"Tamaño archivo: {len(content)} caracteres")

# Buscar y reemplazar emojis mal codificados usando regex
# Patrón para "ðŸ"‹ DT" o variantes
pattern1 = r'ðŸ["\'][^\s]*DT'
replacement1 = '📋 DT'
content_new = re.sub(pattern1, replacement1, content)
if content_new != content:
    print(f"✓ Reemplazado patrón de emoji DT")

# Patrón para "ðŸ'ï¸ Ver" o variantes  
pattern2 = r"ðŸ['\"][^\s]*ï¸[^\s]*Ver"
replacement2 = 'ℹ️ Ver'
content_new = re.sub(pattern2, replacement2, content_new)
if content_new != content:
    print(f"✓ Reemplazado patrón de emoji Ver")

# Patrón para "ðŸ'ï¸ Detalles"
pattern3 = r"ðŸ['\"][^\s]*ï¸[^\s]*Detalles"
replacement3 = 'ℹ️ Detalles'
content_new = re.sub(pattern3, replacement3, content_new)
if content_new != content:
    print(f"✓ Reemplazado patrón de emoji Detalles")

# Escribir archivo corregido
with open(file_path, 'w', encoding='utf-8', newline='') as f:
    f.write(content_new)

print(f"✅ Archivo corregido: {file_path}")

# Verificar resultado
if '📋 DT' in content_new:
    print("✓ Verificado: 📋 DT encontrado en archivo")
if 'ℹ️ Ver' in content_new:
    print("✓ Verificado: ℹ️ Ver encontrado en archivo")

