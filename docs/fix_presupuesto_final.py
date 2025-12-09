import re

file_path = r'd:\onedrive\gdrive\TM1\0.1 ingenieria basica\0.0 FORMATOS PARA IA\docs\presupuesto.html'

with open(file_path, 'r', encoding='utf-8') as f:
    lines = f.readlines()

new_lines = []
skip = False
for i, line in enumerate(lines):
    # 1. Remove orphaned garbage lines (632-634 roughly)
    # They look like: <td class="right"><strong>${fm(rTotal / 4400, 'USD')}</strong></td>
    # inside the JS block but outside backticks.
    if '<td class="right"><strong>${fm(rTotal / 4400, \'USD\')}</strong></td>' in line and 'rows.push' not in lines[i-1]:
        # Check context: if previous line ends with `);` and this line starts with <td, it's garbage
        if i > 0 and lines[i-1].strip().endswith('`);'):
            print(f"Removing garbage line {i+1}: {line.strip()}")
            continue
    if '</tr >' in line and 'rows.push' not in lines[i-1] and i > 0 and lines[i-1].strip().endswith('</strong></td>'):
         print(f"Removing garbage line {i+1}: {line.strip()}")
         continue
    if '`);' in line and i > 0 and '</tr >' in lines[i-1]:
         # This is likely the closing of the garbage block, strictly if it follows the garbage tr
         print(f"Removing garbage line {i+1}: {line.strip()}")
         continue

    # 2. Fix Variable Names (ivaSum -> rIvaSum)
    # Only in the renderDesglose function (lines 540-673 approx)
    # We can do this globally for this file since ivaSum is only used in export or specific contexts
    # But be careful.
    # The erroneous lines are around 637, 640, 643.
    # Pattern: ${fm(ivaSum, 'COP')} -> ${fm(rIvaSum, 'COP')}
    if '${fm(ivaSum' in line and 'rIvaSum' not in line:
        line = line.replace('ivaSum', 'rIvaSum')
    if '${fm(ivaServ' in line and 'rIvaServ' not in line:
        line = line.replace('ivaServ', 'rIvaServ')
    if '${fm(ivaUtil' in line and 'rIvaUtil' not in line:
        line = line.replace('ivaUtil', 'rIvaUtil')
    
    # 3. Fix Tag Spacing
    # Fix < !DOCTYPE
    line = line.replace('< !DOCTYPE', '<!DOCTYPE')
    # Fix < tr -> <tr
    line = re.sub(r'<\s+tr', '<tr', line)
    # Fix < h2 -> <h2
    line = re.sub(r'<\s+h2', '<h2', line)
    # Fix < table -> <table
    line = re.sub(r'<\s+table', '<table', line)
    # Fix < div -> <div
    line = re.sub(r'<\s+div', '<div', line)
    
    # Fix closing tags: </ tr > -> </tr>
    line = re.sub(r'<\s*/\s*tr\s*>', '</tr>', line)
    line = re.sub(r'<\s*/\s*td\s*>', '</td>', line)
    line = re.sub(r'<\s*/\s*div\s*>', '</div>', line)
    line = re.sub(r'<\s*/\s*h2\s*>', '</h2>', line)
    line = re.sub(r'<\s*/\s*table\s*>', '</table>', line)
    line = re.sub(r'<\s*/\s*body\s*>', '</body>', line)
    line = re.sub(r'<\s*/\s*html\s*>', '</html>', line)
    
    new_lines.append(line)

with open(file_path, 'w', encoding='utf-8') as f:
    f.writelines(new_lines)

print("Fixed syntax errors, variable references, and tag spacing.")
