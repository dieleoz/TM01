# REVISIÓN: INFORMACIÓN DE ARQUITECTURA SOS EXISTENTE
## Análisis de Documentos T03, T04 y T05 para Postes SOS

**Fecha:** 31/10/2025  
**Objetivo:** Identificar información de arquitectura existente antes de crear T03 dedicado

---

## 📊 RESUMEN DE INFORMACIÓN EXISTENTE

### 1. T03 - Arquitectura Conceptual ITS (SOS incluido)

**Archivo:** `53_T03_Arquitectura_Conceptual_ITS_v1.0.md`

#### Información de SOS encontrada:

**1.1 Diagrama de Arquitectura de Alto Nivel:**
- SOS incluido como subsistema (88 unidades)
- Conectado a switches de acceso → Red troncal FO → CCO
- Ubicado en diagrama junto con CCTV, PMV, WIM, etc.

**1.2 Topología de Red:**
- SOS conectado a switches de acceso en Zona 2 (PK 90-180)
- Topología: Árbol jerárquico con redundancia en anillo
- Protocolo: TCP/IP (Ethernet sobre fibra óptica)
- Segmentación: VLAN dedicada para ITS

**1.3 Flujo de Datos:**
- **Captura:** SOS recibe llamadas de usuarios
- **Transmisión:** VoIP (SOS) por fibra óptica (5-10 Mbps)
- **Procesamiento:** CCO procesa llamadas, registra eventos
- **Visualización:** Alarmas automáticas (DAI, SOS, fallas) en CCO

**1.4 Tipos de Datos:**
- **Llamadas SOS:** Audio/VoIP, 50 MB/día, retención 1 año, < 5 Mbps ancho de banda

**1.5 Interfaces:**
- **IF-ITS-004:** ITS (SOS) ↔ Emergencias (VoIP, API)
- **IF-ITS-001:** ITS (SOS) ↔ CCO (Ethernet/IP, Fibra)
- **IF-ITS-002:** ITS (SOS) ↔ Telecomunicaciones (Fibra óptica)

**1.6 Tecnologías:**
- **VoIP (SOS):** SIP/RTP (RFC 3261) - Estándar abierto de telefonía IP

**1.7 Ubicaciones Principales:**
- **PK 50±5:** CCTV, Meteo, SOS (Punto medio Zona 1)
- **PK 180±5:** CCTV, Meteo, SOS (Punto medio Zona 3)

**1.8 Redundancia:**
- SOS depende de redundancia de red troncal (anillo de fibra óptica)
- No hay redundancia específica mencionada para SOS individual

---

### 2. T04 - Especificaciones Técnicas SOS

**Archivo:** `01_T04_Especificaciones_Tecnicas_Postes_SOS_v1.0.md`

#### Información de Arquitectura encontrada:

**2.1 Requisitos de Comunicaciones:**
- **Medio físico:** Fibra óptica monomodo 9/125 μm (ITU-T G.652)
- **Velocidad:** 100 Mbps mínimo (IEEE 802.3)
- **Protocolo de red:** TCP/IP (RFC 791, RFC 793)
- **Protocolo VoIP:** SIP / H.323 (ITU-T)
- **Codec de audio:** G.711 / G.729 (ITU-T)
- **Disponibilidad:** ≥99% anual (AT2, AT4)
- **Latencia máxima:** <150 ms
- **Jitter:** <30 ms

**2.2 Componentes del Poste SOS:**
- Poste metálico galvanizado
- Gabinete control IP65
- Teléfono resistente vandalismo
- Panel solar 150W (opcional)
- Batería 12V 100Ah (×2)
- Controlador solar MPPT
- Conversor FO/Ethernet
- Cableado control y energía
- Botón pulsador iluminado
- Sistema GPS/GNSS para geolocalización

**2.3 Requisitos Eléctricos:**
- Tensión nominal: 120 VAC, 60 Hz
- Consumo máximo: 50 W
- Consumo en espera: <10 W
- Respaldo UPS: 2 horas mínimo

---

### 3. T05 - Ingeniería de Detalle SOS

**Archivo:** `04_T05_Ingenieria_Detalle_Postes_SOS_v1.0.md`

#### Información de Arquitectura encontrada:

**3.1 Distribución Geográfica:**
- **RN 4510:** ~134 km → 33 postes (UF 0D, 1, 5.1, 5.2)
- **RN 4511:** ~149 km → 51 postes (UF 0D-12)
- **RN 4513:** ~10 km → 3 postes (UF 11, 13) - Acceso CCO/Báscula
- **Total:** 87 postes (según T05, pero validación dice 88)

**3.2 Sistema de Distribución:**
- **Sistema "Tres Bolillos":** Alternados en bermas externas
- Calzada Izquierda (berma externa): ~44 postes (SOS impares)
- Calzada Derecha (berma externa): ~43 postes (SOS pares)

**3.3 Componentes por Poste:**
- Equipo Poste SOS completo: $18,000 USD
- Instalación y montaje: $4,000 USD
- Obras civiles: $2,000 USD
- **Total por poste:** $24,000 USD

**3.4 Ubicaciones Específicas:**
- Tabla con PKR inicio, PKR fin por ruta
- Distribución por UF (Unidades Funcionales)

---

## 🔍 ANÁLISIS: ¿QUÉ FALTA PARA T03 DEDICADO?

### Información Disponible:
✅ Diagrama de arquitectura de alto nivel (incluido en T03 ITS)  
✅ Topología de red (incluida en T03 ITS)  
✅ Flujo de datos (incluido en T03 ITS)  
✅ Interfaces con otros sistemas (incluidas en T03 ITS)  
✅ Tecnologías y protocolos (incluidas en T03 ITS y T04)  
✅ Componentes del poste (detallados en T04)  
✅ Distribución geográfica (detallada en T05)  
✅ Requisitos de comunicaciones (detallados en T04)  

### Información que podría expandirse/crear:

❌ **Diagrama de arquitectura específico de SOS** (solo poste SOS, no todo ITS)  
❌ **Diagrama de flujo de llamada SOS detallado** (usuario → poste → red → CCO → emergencias)  
❌ **Arquitectura de componentes internos del poste SOS** (hardware, software, firmware)  
❌ **Arquitectura de red específica para SOS** (cómo se conectan los 88 postes a la red)  
❌ **Arquitectura de integración con CCO** (cómo se procesan las llamadas en CCO)  
❌ **Arquitectura de redundancia específica para SOS** (qué pasa si falla un poste, un switch, etc.)  
❌ **Arquitectura de seguridad específica para SOS** (cifrado, autenticación, etc.)  
❌ **Arquitectura de monitoreo y gestión** (SCADA específico para SOS)  
❌ **Diagrama de despliegue físico** (ubicación de postes en mapa/plano)  
❌ **Arquitectura de alimentación** (red eléctrica vs solar, respaldo)  

---

## 💡 RECOMENDACIÓN

### Opción 1: Crear T03 Dedicado Completo (Recomendado para MVP)

**Ventajas:**
- Documento dedicado completo siguiendo metodología Punto 42
- Diagramas específicos de arquitectura SOS
- Información consolidada en un solo lugar
- Facilita validación y aprobación
- Permite escalar metodología a otros sistemas

**Contenido sugerido:**
1. Arquitectura de alto nivel (diagrama específico SOS)
2. Arquitectura de componentes (hardware interno del poste)
3. Arquitectura de red (conexión de 88 postes)
4. Arquitectura de integración (SOS ↔ CCO ↔ Emergencias)
5. Flujo de datos detallado (llamada de emergencia)
6. Arquitectura de seguridad
7. Arquitectura de redundancia y disponibilidad
8. Arquitectura de monitoreo
9. Despliegue físico (mapa/plano)
10. Tecnologías y estándares

### Opción 2: Mantener Referencias Cruzadas

**Ventajas:**
- No duplicar información
- Mantener coherencia con arquitectura ITS general

**Desventajas:**
- No hay documento dedicado para validación
- Información dispersa
- Dificulta escalar metodología

---

## 📋 DECISIÓN SUGERIDA

**Crear T03 Dedicado Completo** porque:
1. ✅ Sigue metodología Punto 42 MVP (documento dedicado por sistema)
2. ✅ Permite validar arquitectura específica de SOS
3. ✅ Facilita escalar a otros sistemas
4. ✅ Consolida información dispersa
5. ✅ Crea diagramas específicos que no existen actualmente

---

**Última actualización:** 31/10/2025  
**Próximo paso:** Crear `24B_T03_Arquitectura_Conceptual_Postes_SOS_MVP_v1.0.md`

