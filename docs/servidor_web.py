#!/usr/bin/env python3
"""
Servidor web simple para el mapa TM01
Uso: python servidor_web.py
"""

import http.server
import socketserver
import os
import webbrowser
from pathlib import Path

# Puerto del servidor
PORT = 8000

# Directorio base (donde está este script)
BASE_DIR = Path(__file__).parent

class MyHTTPRequestHandler(http.server.SimpleHTTPRequestHandler):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, directory=str(BASE_DIR), **kwargs)
    
    def end_headers(self):
        # Agregar headers CORS
        self.send_header('Access-Control-Allow-Origin', '*')
        self.send_header('Access-Control-Allow-Methods', 'GET, OPTIONS')
        self.send_header('Access-Control-Allow-Headers', 'Content-Type')
        super().end_headers()

def main():
    os.chdir(BASE_DIR)
    
    with socketserver.TCPServer(("", PORT), MyHTTPRequestHandler) as httpd:
        url = f"http://localhost:{PORT}/mapa_troncal_tm01.html"
        print(f"🚀 Servidor web iniciado en http://localhost:{PORT}")
        print(f"📂 Directorio: {BASE_DIR}")
        print(f"🌐 Abriendo: {url}")
        print(f"\n⚠️  Presiona Ctrl+C para detener el servidor\n")
        
        # Abrir navegador automáticamente
        try:
            webbrowser.open(url)
        except:
            print(f"⚠️  No se pudo abrir el navegador automáticamente")
            print(f"   Abre manualmente: {url}")
        
        try:
            httpd.serve_forever()
        except KeyboardInterrupt:
            print("\n\n🛑 Servidor detenido")

if __name__ == "__main__":
    main()

