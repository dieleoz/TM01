#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Script general para corregir caracteres españoles y emojis corruptos en todos los archivos HTML"""

import os
import re

# Directorios a procesar
directories = ['docs', 'Sistema_Validacion_Web']

# Reemplazos directos de caracteres españoles corruptos
spanish_fixes = [
    # Caracteres con tilde comunes
    ('MÃ¡xima', 'Máxima'), ('MÃ¡ximas', 'Máximas'), ('MÃ¡ximo', 'Máximo'),
    ('AÃ±adir', 'Añadir'), ('aÃ±adir', 'añadir'),
    ('mÃ­nimos', 'mínimos'), ('mÃ­nimo', 'mínimo'), ('mÃ­nima', 'mínima'),
    ('dÃ­as', 'días'),
    ('DuraciÃ³n', 'Duración'),
    ('CrÃ­tica', 'Crítica'), ('CrÃ­tico', 'Crítico'),
    ('SecciÃ³n', 'Sección'),
    ('energÃ­a', 'energía'),
    ('Ã³ptica', 'óptica'), ('Ã³ptico', 'óptico'),
    ('PreparaciÃ³n', 'Preparación'),
    ('IngenierÃ­a', 'Ingeniería'),
    ('especÃ­ficas', 'específicas'), ('especÃ­fico', 'específico'),
    # Otros patrones
    ('CategorÃ­a', 'Categoría'), ('categorÃ­a', 'categoría'),
    ('MitigaciÃ³n', 'Mitigación'), ('mitigaciÃ³n', 'mitigación'),
    ('IntegraciÃ³n', 'Integración'), ('integraciÃ³n', 'integración'),
    ('EjecuciÃ³n', 'Ejecución'), ('ejecuciÃ³n', 'ejecución'),
    ('OperaciÃ³n', 'Operación'), ('operaciÃ³n', 'operación'),
    ('fÃ­sica', 'física'), ('fÃ­sico', 'físico'),
    ('vandÃ¡lico', 'vandálico'), ('vandÃ¡lica', 'vandálica'),
    ('podrÃ­amos', 'podríamos'), ('podrÃ­a', 'podría'),
    ('ValidaciÃ³n', 'Validación'), ('validaciÃ³n', 'validación'),
    ('descripciÃ³n', 'descripción'), ('DescripciÃ³n', 'Descripción'),
    # Patrones específicos encontrados en presupuesto.html
    ('Ñšltima', 'Última'), ('Ãšltima', 'Última'),
    ('CAPÑTULO', 'CAPÍTULO'), ('CAPÑTULOS', 'CAPÍTULOS'),
    ('ÑTEM', 'ÍTEM'), ('ÑTEM', 'ÍTEM'),
    ('DESCRIPCIÑ"N', 'DESCRIPCIÓN'), ('DESCRIPCIÑ"n', 'DESCRIPCIÓN'),
    ('Ñ—', '×'),  # Símbolo de multiplicación
    ('Ñ"', 'í'),  # i con tilde corrupta
    ('TÃ©cnico', 'Técnico'), ('tÃ©cnico', 'técnico'),
    ('cÃ³digo', 'código'), ('CÃ³digo', 'Código'),
    ('lÃ­mite', 'límite'), ('lÃ­mites', 'límites'),
    # Reemplazos generales (al final para evitar conflictos)
    ('Ã¡', 'á'), ('Ã©', 'é'), ('Ã­', 'í'), ('Ã³', 'ó'), ('Ãº', 'ú'),
    ('Ã±', 'ñ'), ('Ã', 'Ñ'),
]

# Reemplazos directos de emojis corruptos
emoji_fixes = [
    ('âŒ Vencida', '❌ Vencida'),
    ('âŒ Vencidos', '❌ Vencidos'),
    ('âŒ Error:', '❌ Error:'),
    ('âŒ ', '❌ '),  # Error genérico
    ('ðŸŸ¡ En plazo', '✅ En plazo'),
    ('âš ï¸', '⚠️'),
    ('ðŸŽ›ï¸ Filtros', '🔍 Filtros'),
    ('ðŸ"Š', '📊'),  # Gráfico de barras
    ('ðŸ"¤', '📊'),  # Gráfico de barras alternativo
    ('ðŸ"', '📝'),  # Memo/nota
    # Patrones adicionales de emojis corruptos
    (r'ðŸ[^\s]*Žï¸[^\s]*\s*Filtros', '🔍 Filtros'),
]

def fix_file(file_path):
    """Corrige un archivo HTML específico"""
    print(f"\nProcesando: {file_path}")
    
    # Leer archivo como bytes
    with open(file_path, 'rb') as f:
        content_bytes = f.read()
    
    content = content_bytes.decode('utf-8', errors='replace')
    original_content = content
    count = 0
    
    # Aplicar reemplazos de caracteres españoles
    for old, new in spanish_fixes:
        if old in content:
            occurrences = content.count(old)
            content = content.replace(old, new)
            count += occurrences
    
    # Aplicar reemplazos directos de emojis
    for fix in emoji_fixes:
        if isinstance(fix, tuple) and len(fix) == 2:
            old, new = fix
            if not old.startswith('r') and old in content:
                occurrences = content.count(old)
                content = content.replace(old, new)
                count += occurrences
    
    # Aplicar reemplazos de emojis usando regex
    for fix in emoji_fixes:
        if isinstance(fix, tuple) and len(fix) == 2:
            pattern, replacement = fix
            if isinstance(pattern, str) and pattern.startswith('r'):
                # Es un string raw, convertirlo a regex
                try:
                    matches = re.findall(pattern, content)
                    if matches:
                        content = re.sub(pattern, replacement, content)
                        count += len(matches)
                except Exception:
                    pass
    
    # Solo escribir si hubo cambios
    if content != original_content:
        with open(file_path, 'w', encoding='utf-8', newline='') as f:
            f.write(content)
        print(f"[OK] {file_path} - {count} reemplazos")
        return count
    else:
        print(f"[SKIP] {file_path} - sin cambios")
        return 0

# Procesar todos los archivos HTML
total_files = 0
total_replacements = 0

for directory in directories:
    if not os.path.exists(directory):
        print(f"[SKIP] Directorio no encontrado: {directory}")
        continue
    
    print(f"\n=== Procesando directorio: {directory} ===")
    
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith('.html'):
                file_path = os.path.join(root, file)
                total_files += 1
                replacements = fix_file(file_path)
                total_replacements += replacements

print(f"\n=== RESUMEN ===")
print(f"Archivos procesados: {total_files}")
print(f"Total reemplazos: {total_replacements}")
print(f"[OK] Proceso completado")

