import os

dirs = ['docs', 'Sistema_Validacion_Web']
for d in dirs:
    if not os.path.exists(d): continue
    for f in os.listdir(d):
        if f.endswith('.html'):
            path = os.path.join(d, f)
            try:
                with open(path, 'r', encoding='utf-8') as file:
                    content = file.read()
                # If reads ok, maybe ensure it is saved as utf-8
            except UnicodeDecodeError:
                print(f"Fixing {path}")
                with open(path, 'r', encoding='latin-1') as file:
                    content = file.read()
            
            with open(path, 'w', encoding='utf-8') as file:
                file.write(content)
print("Encoding fix complete.")
