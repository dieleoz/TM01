#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Script para corregir emojis y caracteres mal codificados en docs/reporte_gerencial.html"""

import re

file_path = "docs/reporte_gerencial.html"

with open(file_path, 'rb') as f:
    content_bytes = f.read()

content = content_bytes.decode('utf-8', errors='replace')

print(f"Corrigiendo emojis y caracteres mal codificados en {file_path}...")

# Reemplazos de caracteres españoles
replacements = {
    'Ãšlt. act.': 'Últ. act.',
    'Ãšltima': 'Última',
    'actualizaciÃ³n': 'actualización',
    'CÃ¡lculos': 'Cálculos',
    'anÃ¡lisis': 'análisis',
    'AnÃ¡lisis': 'Análisis',
    'justificaciÃ³n': 'justificación',
    'JustificaciÃ³n': 'Justificación',
    'supuestos': 'supuestos',
    'tÃ©cnicos': 'técnicos',
    'comerciales': 'comerciales',
    'riesgos': 'riesgos',
    'estrategias': 'estrategias',
    'mitigaciÃ³n': 'mitigación',
    'recomendaciones': 'recomendaciones',
    'estratÃ©gicas': 'estratégicas',
}

count = 0
for old, new in replacements.items():
    if old in content:
        occurrences = content.count(old)
        content = content.replace(old, new)
        count += occurrences
        print(f"✓ Reemplazado: {old} → {new} ({occurrences} veces)")

# Correcciones de emojis con regex
emoji_fixes = [
    # REPORTE GERENCIAL EJECUTIVO
    (r'ðŸ[^\s]*\s*REPORTE GERENCIAL', '📋 REPORTE GERENCIAL'),
    (r'ðŸ[^\s]*\s*REPORTE GERENCIAL EJECUTIVO', '📋 REPORTE GERENCIAL EJECUTIVO'),
    # Pareto
    (r'ðŸ[^\s]*\s*Pareto', '📊 Pareto'),
    (r'ðŸ[^\s]*Ž\s*Pareto', '📊 Pareto'),
    # Otros emojis comunes
    (r'ðŸ[^\s]*\s*Presupuesto', '💰 Presupuesto'),
    (r'ðŸ[^\s]*\s*Items WBS', '📋 Items WBS'),
    (r'ðŸ[^\s]*\s*Sistemas', '🔧 Sistemas'),
]

for pattern, replacement in emoji_fixes:
    matches = re.findall(pattern, content)
    if matches:
        content = re.sub(pattern, replacement, content)
        count += len(matches)
        print(f"✓ Corregido emoji: {pattern[:40]}... → {replacement} ({len(matches)} veces)")

print(f"Total reemplazos: {count}")

# Escribir archivo
with open(file_path, 'w', encoding='utf-8', newline='') as f:
    f.write(content)

print(f"✅ Archivo corregido: {file_path}")

# Verificar que los emojis correctos están presentes
verifications = ['📋 REPORTE GERENCIAL', '📊 Pareto', 'Últ. act.', 'actualización']
found = []
for v in verifications:
    if v in content:
        found.append(v)
        print(f"✓ Verificado: {v} encontrado")

if len(found) == len(verifications):
    print("✅ Todos los emojis y caracteres están correctos")
else:
    print(f"⚠️  Solo se encontraron {len(found)}/{len(verifications)} verificaciones esperadas")

