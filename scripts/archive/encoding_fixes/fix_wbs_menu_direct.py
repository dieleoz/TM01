#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Script para corregir emojis directamente en líneas específicas de WBS_Menu_Principal.html"""

file_path = "docs/WBS_Menu_Principal.html"

with open(file_path, 'rb') as f:
    content_bytes = f.read()

content = content_bytes.decode('utf-8', errors='replace')
lines = content.split('\n')

print(f"Corrigiendo emojis en líneas específicas de {file_path}...")

# Correcciones directas por línea
fixes = {
    525: (r'ðŸ[^\s]*ï¸[^\s]*EDT DETALLADO', '📈 EDT DETALLADO'),
    543: (r'ðŸ[^\s]*CRONOGRAMA DE TRABAJO', '📅 CRONOGRAMA DE TRABAJO'),
    561: (r'âš\s*ï¸[^\s]*ANÁLISIS', '⚙️ ANÁLISIS'),
    580: (r'ðŸ[^\s]*SERVIR INGENIER', '🛠️ SERVIR INGENIER'),
    582: (r'ðŸ[^\s]*Consolida', '🍳 Consolida'),
    590: (r'ðŸ[^\s]*ï¸[^\s]*SERVIR DOCUMENTOS', '🛠️ SERVIR DOCUMENTOS'),
}

import re
for line_num, (pattern, replacement) in fixes.items():
    idx = line_num - 1  # Convertir a índice 0-based
    if idx < len(lines):
        original = lines[idx]
        # Aplicar regex
        fixed = re.sub(pattern, replacement, original)
        if fixed != original:
            lines[idx] = fixed
            print(f"✓ Línea {line_num} corregida")

# También corregir "IngenierÃ­a" en línea 580
if len(lines) > 579:
    if 'IngenierÃ­a' in lines[579]:
        lines[579] = lines[579].replace('IngenierÃ­a', 'Ingeniería')
        print(f"✓ Línea 580: Ingeniería corregido")

content = '\n'.join(lines)

# Escribir archivo
with open(file_path, 'w', encoding='utf-8', newline='') as f:
    f.write(content)

print(f"✅ Archivo corregido: {file_path}")

