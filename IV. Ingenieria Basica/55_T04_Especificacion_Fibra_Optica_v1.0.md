# T04: ESPECIFICACIÓN TÉCNICA - CABLE DE FIBRA ÓPTICA
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 18/10/2025  
**Equipo:** Cable de Fibra Óptica Monomodo  
**Responsable:** Ing. de Telecomunicaciones  
**Versión:** 1.0  

---

## 1. INFORMACIÓN GENERAL

| Campo | Valor |
|:------|:------|
| **Equipo** | Cable de Fibra Óptica Monomodo SM OS2 |
| **Longitud estimada** | 280-300 km (anillo redundante + derivaciones) |
| **Ubicación** | Subterránea (ductos) a lo largo del corredor vial |
| **Sistema asociado** | Telecomunicaciones (Backbone) |
| **Criticidad** | 🔴 Crítica |
| **Documentos de Referencia** | `55_T03_Arquitectura_Conceptual_Telecomunicaciones_v1.0.md` |

---

## 2. ESPECIFICACIONES FUNCIONALES

### 2.1 Función Principal

Proporcionar la infraestructura de comunicaciones de alta capacidad y baja latencia para interconectar todos los sistemas ITS del corredor vial (CCTV, PMV, SOS, DAI, Peajes, CCO).

---

## 3. ESPECIFICACIONES TÉCNICAS

### 3.1 Cable de Fibra Óptica Principal (Troncal)

| Parámetro | Especificación Mínima |
|:----------|:----------------------|
| **Tipo de Fibra** | Monomodo (SM) OS2 según ITU-T G.652.D |
| **Número de Hilos** | 48 hilos (24 pares) - Escalable |
| **Longitud de Onda** | 1310 nm y 1550 nm |
| **Atenuación** | ≤ 0.35 dB/km @ 1310 nm, ≤ 0.25 dB/km @ 1550 nm |
| **Dispersión Cromática** | ≤ 18 ps/(nm·km) @ 1550 nm |
| **Ancho de Banda** | Soporte 10G, 40G, 100G Ethernet |
| **Tipo de Construcción** | ADSS (All-Dielectric Self-Supporting) para aéreo o Ducto para subterráneo |
| **Armadura** | Dieléctrica con elementos de refuerzo (FRP - Fiber Reinforced Plastic) |
| **Cubierta Externa** | MDPE (Medium Density Polyethylene), negro con protección UV |

**Recomendación:** Cable **subterráneo en ductos** para mayor protección

### 3.2 Cable de Fibra Óptica Secundario (Derivaciones)

| Parámetro | Especificación |
|:----------|:---------------|
| **Tipo** | Monomodo OS2 |
| **Número de Hilos** | 12-24 hilos |
| **Uso** | Conexiones a gabinetes ITS, áreas de servicio |

### 3.3 Ductos y Canalizaciones

| Parámetro | Especificación |
|:----------|:---------------|
| **Ducto Principal** | HDPE (High-Density Polyethylene), 4" (100 mm), corrugado |
| **Cantidad de Ductos** | 4-6 ductos (redundancia + futuras expansiones) |
| **Profundidad de Zanja** | 0.8 - 1.2 metros |
| **Cámaras de Inspección** | Cada 500-800 metros, prefabricadas de concreto o polietileno |
| **Señalización** | Cinta de advertencia "FIBRA ÓPTICA" a 30 cm sobre ductos |

---

## 4. CONECTORES Y EMPALMES

| Componente | Especificación |
|:-----------|:---------------|
| **Conectores** | SC/APC (Angle Polished Connector) para monomodo |
| **Pérdida de Inserción** | ≤ 0.3 dB por conector |
| **Pérdida de Retorno** | ≥ 60 dB |
| **Tipo de Empalme** | Fusión (splice), pérdida ≤ 0.05 dB |
| **Cajas de Empalme** | IP68, capacidad 24-96 fusiones |

---

## 5. ARQUITECTURA DE RED

```
┌──────────────────────────────────────────────────┐
│   Anillo Principal (Redundante) - 260 km        │
│                                                  │
│   PK 0 ───► PK 130 (CCO) ───► PK 259.6          │
│   Puerto     Centro       San Roque              │
│   Salgar                                         │
│     │                           │                │
│     └───────────────────────────┘                │
│        Anillo de Retorno                         │
│                                                  │
│   Derivaciones a:                                │
│   ├─ 2 Peajes                                    │
│   ├─ 150+ Gabinetes ITS                          │
│   └─ 14 Áreas de Servicio                        │
└──────────────────────────────────────────────────┘

Topología: Anillo SONET/SDH o Metro Ethernet
```

---

## 6. EQUIPOS ACTIVOS (OLT, Switches)

| Equipo | Especificación |
|:-------|:---------------|
| **Switches Core** | 10 GbE SFP+ (CCO, Peajes) |
| **Switches Acceso** | 1 GbE SFP (Gabinetes ITS) |
| **Módulos SFP** | 1000BASE-LX, 10GBASE-LR (10-40 km) |
| **Media Converters** | Fibra a Cobre (para equipos legacy) |

---

## 7. CUMPLIMIENTO Y ESTÁNDARES

| Norma | Descripción |
|:------|:------------|
| **ITU-T G.652.D** | Fibra monomodo estándar |
| **TIA-568.3-D** | Estándar de cableado de fibra óptica |
| **IEC 60794** | Cables de fibra óptica |
| **Telcordia GR-20** | Cables de fibra óptica para exteriores |

---

## 8. PROVEEDORES SUGERIDOS

| Proveedor | Producto | Observaciones |
|:----------|:---------|:--------------|
| **Corning** | OptiTip, ClearCurve | Líder mundial en fibra óptica |
| **Prysmian** | Cables ADSS y ducto | Fabricante italiano, alta calidad |
| **AFL (Fujikura)** | Cables y equipos de empalme | Excelente para fusiones |
| **CommScope** | Fiber to Anywhere | Soluciones completas |
| **Furukawa** | Laserway | Amplia presencia en Latam |

---

## 9. COSTOS ESTIMADOS

| Ítem | Cantidad | Costo Unitario | Costo Total (USD) |
|:-----|:---------|:---------------|:------------------|
| Cable FO 48 hilos (troncal) | 280 km | $2,500/km | $700,000 |
| Ductos HDPE 4" + zanja | 280 km | $50/m | $14,000,000 |
| Cajas de empalme | 350 | $500 | $175,000 |
| Conectores y accesorios | - | - | $150,000 |
| Fusiones (mano de obra) | 5,000 | $15 | $75,000 |
| Pruebas OTDR | 280 km | $10/km | $2,800 |
| **TOTAL** | - | - | **$15,102,800** |

**Nota:** La zanja y ductos representan ~93% del costo total

---

## 10. PRUEBAS Y CERTIFICACIÓN

| Prueba | Descripción |
|:-------|:------------|
| **OTDR** | Optical Time Domain Reflectometer - Mapa completo de pérdidas |
| **Medición de Potencia** | Power meter para verificar atenuación end-to-end |
| **Inspección Visual** | Microscopio de fibra para conectores |
| **Reflectometría** | Verificación de pérdidas de retorno |

**Criterio de Aceptación:** Atenuación total ≤ 0.5 dB/km promedio

---

## 11. PRÓXIMOS PASOS

- [ ] Levantamiento topográfico detallado de ruta
- [ ] Diseño de red lógica (VLAN, segmentación)
- [ ] Solicitar cotizaciones a Corning, Prysmian, AFL
- [ ] Permisos ambientales para excavación

---

## 12. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 18/10/2025 | Administrador Contractual EPC | Especificación técnica inicial de fibra óptica |

---

**Fin del documento - T04 Especificación Técnica Fibra Óptica**  
*Metodología Punto 42 v1.0*

