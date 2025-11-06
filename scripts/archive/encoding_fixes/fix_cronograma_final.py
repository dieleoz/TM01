#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Script completo para corregir TODOS los emojis y caracteres españoles mal codificados en cronograma.html"""

import re

file_path = "docs/cronograma.html"

print(f"Corrigiendo TODOS los problemas de encoding en {file_path}...")

# Leer archivo como bytes y decodificar
with open(file_path, 'rb') as f:
    content_bytes = f.read()

content = content_bytes.decode('utf-8', errors='replace')

# Reemplazos de caracteres españoles corruptos (orden específico primero, luego generales)
spanish_fixes = [
    ('DuraciÃ³n', 'Duración'),
    ('dÃ­as', 'días'),
    ('CrÃ­tica', 'Crítica'),
    ('CrÃ­tico', 'Crítico'),
    ('mÃ­nimos', 'mínimos'),
    ('mÃ­nimo', 'mínimo'),
    ('MÃ¡xima', 'Máxima'),
    ('MÃ¡ximas', 'Máximas'),
    ('MÃ¡ximo', 'Máximo'),
    ('Ã³ptica', 'óptica'),
    ('Ã³ptico', 'óptico'),
    ('energÃ­a', 'energía'),
    ('SecciÃ³n', 'Sección'),
    ('lÃ­mite', 'límite'),
    ('lÃ­mites', 'límites'),
    ('AÃ±adir', 'Añadir'),
    ('aÃ±adir', 'añadir'),
    ('PreparaciÃ³n', 'Preparación'),
    ('IngenierÃ­a', 'Ingeniería'),
    ('especÃ­ficas', 'específicas'),
    ('especÃ­fico', 'específico'),
]

# Reemplazos de emojis corruptos usando regex para capturar variantes
emoji_regex_fixes = [
    # Filtros - buscar cualquier emoji corrupto antes de "Filtros"
    (r'[\u00c3\u00f0\u00c2][^\s]*\s*Filtros', '🔍 Filtros'),
    (r'ð[^\s]*[Žï][^\s]*\s*Filtros', '🔍 Filtros'),
    # Plazos - buscar cualquier emoji corrupto antes de "Plazos Contractuales"
    (r'ð[^\s]*["\']?\s*Plazos Contractuales', '📋 Plazos Contractuales'),
    # Estados - buscar variantes de "Vencida/Vencidos/Error"
    (r'âŒ\s*Vencida', '❌ Vencida'),
    (r'âŒ\s*Vencidos', '❌ Vencidos'),
    (r'âŒ\s*Error:', '❌ Error:'),
    # En plazo
    (r'ð[^\s]*¡\s*En plazo', '✅ En plazo'),
    (r'ð[^\s]*[^\s]*\s*En plazo', '✅ En plazo'),
    # Otros emojis
    (r'âš\s*ï¸', '⚠️'),
]

# Reemplazos directos de emojis corruptos comunes (usando bytes donde sea necesario)
emoji_direct_fixes = [
    ('âŒ Vencida', '❌ Vencida'),
    ('âŒ Vencidos', '❌ Vencidos'),
    ('âŒ Error:', '❌ Error:'),
    ('âš ï¸', '⚠️'),
]

count = 0

# Aplicar reemplazos de caracteres españoles
print("\n--- Corrigiendo caracteres españoles ---")
for old, new in spanish_fixes:
    if old in content:
        occurrences = content.count(old)
        content = content.replace(old, new)
        count += occurrences
        print(f"✓ Reemplazado: {old} → {new} ({occurrences} veces)")

# Aplicar reemplazos directos de emojis primero
print("\n--- Corrigiendo emojis (reemplazos directos) ---")
for old, new in emoji_direct_fixes:
    if old in content:
        occurrences = content.count(old)
        content = content.replace(old, new)
        count += occurrences
        print(f"✓ Reemplazado: {old[:30]}... → {new} ({occurrences} veces)")

# Aplicar reemplazos de emojis usando regex
print("\n--- Corrigiendo emojis (regex) ---")
for pattern, replacement in emoji_regex_fixes:
    try:
        matches = re.findall(pattern, content)
        if matches:
            content = re.sub(pattern, replacement, content)
            count += len(matches)
            print(f"✓ Corregido con regex: {pattern[:50]}... → {replacement} ({len(matches)} veces)")
    except Exception as e:
        print(f"⚠ Error con regex {pattern[:50]}...: {e}")

print(f"\nTotal reemplazos: {count}")

# Escribir archivo con UTF-8 sin BOM
with open(file_path, 'w', encoding='utf-8', newline='') as f:
    f.write(content)

print(f"✅ Archivo corregido: {file_path}")

# Verificar
verifications = [
    '🔍 Filtros', '📋 Plazos', '❌ Vencida', '❌ Error', '✅ En plazo',
    'Duración', 'días', 'Crítica', 'Máxima', 'mínimos', 'Sección', 'límite'
]
found = [v for v in verifications if v in content]
print(f"✓ Correcciones verificadas: {len(found)}/{len(verifications)}")
if found:
    print(f"✓ Textos correctos encontrados: {', '.join(found[:5])}{'...' if len(found) > 5 else ''}")
