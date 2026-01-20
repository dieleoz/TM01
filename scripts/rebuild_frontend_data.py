import re
import json
import datetime
import os

# CONFIG
SOURCE_FILE = r"docs/data/tm01_master_data.js"
TARGET_FILE = r"docs/datos_wbs_TM01_items.js"

def parse_js_object(content):
    # Try to find the WBS array
    # Look for "this.data.wbs = ["
    match = re.search(r'this\.data\.wbs\s*=\s*\[(.*?)\];', content, re.DOTALL)
    if not match:
        print("ERROR: Could not find this.data.wbs array in source file.")
        return []
    
    wbs_content = match.group(1)
    
    # Extract objects inside the array { ... }
    # This is a simple regex state machine or balanced brace finder would be better
    # But since the file is well formatted (one item per line block), we can use regex
    
    items = []
    # Regex to capture content between { and }
    # Assumption: No nested braces inside item values (usually true for this file structure)
    object_pattern = re.compile(r'\{\s*(.*?)\s*\}', re.DOTALL)
    
    for obj_match in object_pattern.finditer(wbs_content):
        raw_obj = obj_match.group(1)
        item = {}
        
        # Extract properties key: "value" or key: 'value'
        # id: '3.1.1'
        prop_pattern = re.compile(r'(\w+)\s*:\s*["\']([^"\']*)["\']')
        
        for prop_match in prop_pattern.finditer(raw_obj):
            key = prop_match.group(1)
            val = prop_match.group(2)
            item[key] = val
            
        if 'id' in item:
            items.append(item)
            
    return items

def main():
    print(f"Reading {SOURCE_FILE}...")
    if not os.path.exists(SOURCE_FILE):
        print("Source file not found!")
        return

    with open(SOURCE_FILE, 'r', encoding='utf-8') as f:
        content = f.read()

    items = parse_js_object(content)
    print(f"Found {len(items)} WBS items.")
    
    if len(items) == 0:
        print("No items found. Aborting.")
        return

    # Verify CCTV count
    cctv_items = [i for i in items if i.get('sistema') == 'CCTV' and i.get('tipo') == 'item']
    print(f"DEBUG: Found {len(cctv_items)} CCTV items.")
    
    # Generate Output JS
    # We need to reconstruct the JS objects as strings
    item_strings = []
    for item in items:
        # Reconstruct exactly as the JS file expects
        # { id: '...', ... }
        props = []
        for k, v in item.items():
            props.append(f"{k}: '{v}'")
        item_strings.append("{ " + ", ".join(props) + " }")
    
    joined_items = ",\n".join(item_strings)
    
    today = datetime.datetime.now().strftime("%Y-%m-%d")
    
    output_content = f"""window.wbsDataGlobal = window.datos_wbs = {{
    "fecha_actualizacion": "{today}",
    "total_items": {len(items)},
    "version": "2.3.0",
    "items": [
{joined_items}
    ]
}};
"""

    print(f"Writing {TARGET_FILE}...")
    with open(TARGET_FILE, 'w', encoding='utf-8') as f:
        f.write(output_content)
        
    print("SUCCESS: Frontend data updated.")

if __name__ == "__main__":
    main()
