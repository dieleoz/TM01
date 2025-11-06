#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Script para corregir el emoji corrupto específico en analisis_riesgos.html"""

import re

file_path = "docs/analisis_riesgos.html"

print(f"Corrigiendo emoji corrupto en {file_path}...")

with open(file_path, 'rb') as f:
    content_bytes = f.read()

content = content_bytes.decode('utf-8', errors='replace')

# Patrones específicos para este emoji corrupto
fixes = [
    ('ðŸŽ›ï¸ Filtros', '🔍 Filtros'),
    (r'ðŸ[^\s]*Ž[^\s]*ï¸[^\s]*\s*Filtros', '🔍 Filtros'),
]

count = 0

for old, new in fixes:
    if isinstance(old, str):
        if old in content:
            occurrences = content.count(old)
            content = content.replace(old, new)
            count += occurrences
            print(f"[OK] Reemplazado directo: {len(old)} caracteres -> {new} ({occurrences} veces)")
    elif isinstance(old, str) and old.startswith('r'):
        # Regex pattern
        try:
            matches = re.findall(old, content)
            if matches:
                content = re.sub(old, new, content)
                count += len(matches)
                print(f"[OK] Reemplazado regex: {old[:50]} -> {new} ({len(matches)} veces)")
        except Exception as e:
            print(f"[ERROR] Error con regex {old}: {e}")

if count > 0:
    with open(file_path, 'w', encoding='utf-8', newline='') as f:
        f.write(content)
    print(f"\n[OK] Archivo corregido: {file_path} - {count} reemplazos")
else:
    print("\n[INFO] No se encontraron coincidencias exactas. Intentando reemplazo más agresivo...")
    # Reemplazo más agresivo - buscar cualquier patrón similar
    original_content = content
    # Buscar cualquier emoji corrupto antes de "Filtros"
    content = re.sub(r'ðŸ[^\s]*[^\s]*\s*Filtros', '🔍 Filtros', content)
    if content != original_content:
        with open(file_path, 'w', encoding='utf-8', newline='') as f:
            f.write(content)
        print(f"[OK] Archivo corregido usando patrón agresivo")

