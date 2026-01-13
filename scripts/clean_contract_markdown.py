import os
import re

# Directories to clean
DIRECTORIES = [
    r"d:\onedrive\gdrive\TM1\0.1 ingenieria basica\0.0 FORMATOS PARA IA\I. Contrato General",
    r"d:\onedrive\gdrive\TM1\0.1 ingenieria basica\0.0 FORMATOS PARA IA\II. Apendices Tecnicos"
]

# Regex Patterns
PATTERNS = [
    # 1. Headers/Footers & Pagination (Delete line)
    (re.compile(r'^\s*Página\s+\d+\s+de\s+\d+\s*$', re.IGNORECASE), ''),
    (re.compile(r'^\s*Page\s+\d+\s+of\s+\d+\s*$', re.IGNORECASE), ''),
    (re.compile(r'^\s*REPÚBLICA DE COLOMBIA MINISTERIO DE TRANSPORTE\s*$', re.IGNORECASE), ''),
    (re.compile(r'^\s*AGENCIA NACIONAL DE INFRAESTRUCTURA\s*$', re.IGNORECASE), ''),
    (re.compile(r'^\s*Manual de Señalización Vial / Colombia / 2024.*$', re.IGNORECASE), ''),
    (re.compile(r'^\s*Apéndice Técnico \d+ – .*$', re.IGNORECASE), ''),
    (re.compile(r'^\s*Concesión PUERTO SALGAR – BARRANCABERMEJA.*$', re.IGNORECASE), ''),

    # 2. TOC Page Numbers (Replace part of line)
    # Matches dots followed by digits at end of line: "....... 19"
    (re.compile(r'\.{2,}\s*\d+\s*$'), ''), 
    
    # 3. Roman Numerals Fused (CAPÍTULO XVTEXTO -> CAPÍTULO XV TEXTO)
    # Matches CAPÍTULO followed by Roman, then immediate uppercase/text
    (re.compile(r'(CAPÍTULO\s+[IVXLCDM]+)([A-ZÁÉÍÓÚÑ])'), r'\1 \2'),
    
    # 4. Broken Numerals (Start of line: "10 1 " -> "10.1 ")
    # Strict pattern to avoid false positives: Start of line, digits space digits space UpperCase
    (re.compile(r'^(\s*\d+)\s+(\d+)(\s+[A-Z])'), r'\1.\2\3'),
]

def process_line_content(line):
    # 5. Placeholders
    # Concesionario specific
    if "Concesionario:" in line and "[•]" in line:
        line = line.replace("[•]", "Autopista Magdalena Medio S.A.S.")
    
    # General dates/variables with specific context
    # "No [•] DE [•]" -> "No [VARIABLE] DE [VARIABLE]"
    # This covers "CONTRATO ... No [•] DE [•]"
    if "No [" in line and "DE [" in line:
        line = line.replace("[•]", "[VARIABLE]")
        line = line.replace("[*]", "[VARIABLE]")
        
    return line

def clean_file(filepath):
    print(f"Cleaning: {filepath}")
    try:
        with open(filepath, 'r', encoding='utf-8') as f:
            lines = f.readlines()
    except Exception as e:
        print(f"Error reading {filepath}: {e}")
        return

    new_lines = []
    
    for line in lines:
        # Apply Regex Deletions/Replacements
        skip_line = False
        for pattern, replacement in PATTERNS:
            if pattern.search(line):
                # Check for delete vs replace
                if replacement == '': 
                    # If pattern is a full-line match (start ^ end $), delete line
                    if pattern.pattern.startswith('^') and pattern.pattern.endswith('$'):
                        skip_line = True
                        break
                    else:
                        # Partial replacement (like TOC removal)
                        line = pattern.sub(replacement, line)
                else:
                    # Substitution (Roman fixes)
                    line = pattern.sub(replacement, line)
        
        if skip_line:
            continue
            
        # Context Aware Replacements
        line = process_line_content(line)
        
        new_lines.append(line)

    # Post-processing: Collapse excessive blank lines
    final_lines = []
    blank_count = 0
    for line in new_lines:
        stripped = line.strip()
        if not stripped:
            blank_count += 1
            if blank_count <= 2: # Max 2 consecutive blank lines
                final_lines.append(line)
        else:
            blank_count = 0
            final_lines.append(line)

    try:
        with open(filepath, 'w', encoding='utf-8') as f:
            f.writelines(final_lines)
    except Exception as e:
        print(f"Error writing {filepath}: {e}")

def main():
    for directory in DIRECTORIES:
        if not os.path.exists(directory):
            print(f"Dir not found: {directory}")
            continue
            
        for root, _, files in os.walk(directory):
            for file in files:
                if file.endswith(".md"):
                    clean_file(os.path.join(root, file))
    
    print("Cleanup Complete.")

if __name__ == "__main__":
    main()
