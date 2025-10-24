# T04: ESPECIFICACIONES TÉCNICAS - CENTRO DE CONTROL OPERACIONAL (CCO)
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 21/10/2025  
**Sistema:** Centro de Control Operacional  
**Responsable:** Ing. ITS / Ing. Sistemas  
**Versión:** 1.1  
---

## 📋 **CONTROL DE CAMBIOS**

| Versión | Fecha | Cambios | Autor |
|:--------|:------|:--------|:------|
| 1.0 | 21/10/2025 | Creación inicial - PK 130 | Ing. ITS |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** La Lizama PK 4+300 | Ing. ITS |

---

## 1. IDENTIFICACIÓN

| Campo | Valor |
|:------|:------|
| **Sistema** | Centro de Control Operacional (CCO) |
| **Ubicación** | La Lizama PK 4+300 (RN 4513) |
| **CAPEX** | **USD $1,286,050** (COP $5,144,199,115) |

---

## 2. COMPONENTES PRINCIPALES

### 2.1 Infraestructura Física

| Componente | Especificación |
|:-----------|:---------------|
| **Edificio** | 200 m², 2 pisos |
| **Sala de control** | 100 m², climatizada |
| **Sala técnica** | 50 m², climatizada |
| **UPS** | 2×100 kVA redundante |
| **Generador** | 200 kW diésel |
| **Climatización** | 2×15 TR redundante |

### 2.2 Sistemas de Comunicación

| Sistema | Especificación |
|:--------|:---------------|
| **Switches Core** | 2×Cisco C9200-48T-E (STACK) |
| **Router WAN** | FortiGate 1000D |
| **PBX VoIP** | 100 extensiones |
| **Radio base** | UHF/VHF troncalizado |

---

## 3. ESPECIFICACIONES TÉCNICAS

### 3.1 Servidores SCADA

| Parámetro | Especificación |
|:----------|:---------------|
| **Servidor principal** | Dell PowerEdge R750, 2×CPU, 64GB RAM |
| **Servidor respaldo** | Dell PowerEdge R750, 2×CPU, 64GB RAM |
| **Almacenamiento** | 10TB RAID 6 |
| **Sistema operativo** | Windows Server 2022 |
| **Software SCADA** | Wonderware System Platform |

### 3.2 Consolas de Operación

| Parámetro | Especificación |
|:----------|:---------------|
| **Pantallas** | 6×55" LED 4K |
| **PCs operador** | 3×Dell OptiPlex 7090 |
| **Software** | Wonderware InTouch HMI |
| **Redundancia** | Hot standby |

### 3.3 Sistema de Videowall

| Parámetro | Especificación |
|:----------|:---------------|
| **Configuración** | 3×2 pantallas |
| **Resolución total** | 11520×2160 px |
| **Controlador** | Datapath x4 |
| **Fuentes** | CCTV, SCADA, mapas |

---

## 4. FUNCIONALIDADES

### 4.1 Monitoreo ITS

- ✅ CCTV (30 cámaras)
- ✅ PMV (28 paneles)
- ✅ Postes SOS (87 unidades)
- ✅ Radares/ETD (15 equipos)
- ✅ WIM (1 estación)
- ✅ Gálibos (25 unidades)

### 4.2 Control Operacional

- ✅ Gestión de incidentes
- ✅ Coordinación emergencias
- ✅ Monitoreo peajes
- ✅ Reportes automáticos
- ✅ Integración SICC

---

## 5. PRESUPUESTO

## 5. PRESUPUESTO DETALLADO (REFERENCIA)

| Ítem | Descripción | Cantidad | Costo Unit. (COP) | Total (COP) | Total (USD) |
|:-----|:------------|:---------|:------------------|:------------|:-------------|
| **11.01** | Servidores | 3 | $276,476,873 | $829,430,619 | $207,358 |
| **11.02** | Almacenamiento | 1 | $276,476,873 | $276,476,873 | $69,119 |
| **11.03** | Servidor Backup | 1 | $276,476,873 | $276,476,873 | $69,119 |
| **11.04** | Servidor SCADA | 1 | $276,476,873 | $276,476,873 | $69,119 |
| **11.05** | KVM | 1 | $27,647,687 | $27,647,687 | $6,912 |
| **11.06** | Licenciamiento General | 1 | $135,535,863 | $135,535,863 | $33,884 |
| **11.07** | Licenciamiento Avanzado | 1 | $677,679,315 | $677,679,315 | $169,420 |
| **11.09** | Software Gestión Video | 1 | $135,535,863 | $135,535,863 | $33,884 |
| **11.10** | Workstations Operadores | 3 | $55,295,375 | $165,886,125 | $41,472 |
| **11.11** | Joystick Control | 3 | $13,823,844 | $41,471,532 | $10,368 |
| **11.12** | VideoWall | 1 | $97,851,196 | $97,851,196 | $24,463 |
| **11.13** | Controlador VideoWall | 1 | $27,647,687 | $27,647,687 | $6,912 |
| **11.14** | Monitores Operación | 6 | $13,823,844 | $82,943,064 | $20,736 |
| **11.15** | PCs Administrativos | 2 | $41,471,531 | $82,943,062 | $20,736 |
| **11.16** | Monitores Administrativos | 2 | $13,823,844 | $27,647,688 | $6,912 |
| **11.17** | Mobiliario Workstations | 3 | $13,823,844 | $41,471,532 | $10,368 |
| **11.18** | Impresora | 1 | $13,823,844 | $13,823,844 | $3,456 |
| **11.19** | Mobiliario Impresora | 1 | $2,764,769 | $2,764,769 | $691 |
| **11.20** | PC Técnico | 1 | $41,471,531 | $41,471,531 | $10,368 |
| **11.21** | Software SCADA | 1 | $230,000,000 | $230,000,000 | $57,500 |
| **11.22** | Firewall | 1 | $69,119,218 | $69,119,218 | $17,280 |
| **11.23** | Servidor Comunicaciones | 1 | $138,238,437 | $138,238,437 | $34,560 |
| **11.24** | PC Mantenimiento | 1 | $41,471,531 | $41,471,531 | $10,368 |
| **11.25** | Central Telefónica IP | 1 | $69,119,218 | $69,119,218 | $17,280 |
| **11.27** | Teléfonos IP | 10 | $6,911,922 | $69,119,220 | $17,280 |
| **11.28** | Cable UTP Cat 6 | 500 | $138,239 | $69,119,500 | $17,280 |
| **11.29** | Gateway GSM | 1 | $27,647,687 | $27,647,687 | $6,912 |
| **11.30** | Rack 19" | 2 | $13,823,844 | $27,647,688 | $6,912 |
| **11.31** | ODF | 2 | $6,911,922 | $13,823,844 | $3,456 |
| **11.32** | Patch Panel | 2 | $2,764,769 | $5,529,538 | $1,382 |
| **11.33** | Patch Cord Fibra | 20 | $138,239 | $2,764,780 | $691 |
| **11.34** | Tubería IMC | 100 | $138,239 | $13,823,900 | $3,456 |
| **11.35** | Cableado Energía 3x10 | 20 | $18,124,447 | $362,488,940 | $90,622 |
| **11.36** | Tablero Energía | 1 | $69,119,218 | $69,119,218 | $17,280 |
| **11.37** | UPS | 2 | $138,238,437 | $276,476,874 | $69,119 |
| **11.38** | Aire Acondicionado | 2 | $69,119,218 | $138,238,436 | $34,560 |
| **11.39** | Cableado Energía AC | 50 | $13,823,844 | $691,192,200 | $172,798 |
| **11.40** | Material Instalación | 1 | $69,119,218 | $69,119,218 | $17,280 |
| **11.41** | Control Acceso | 1 | $27,647,687 | $27,647,687 | $6,912 |
| **11.42** | Integración SCADA | 1 | $230,000,000 | $230,000,000 | $57,500 |
| **11.43** | Caja Empalme Fibra | 5 | $2,764,769 | $13,823,845 | $3,456 |
| **11.44** | Cajas Red Troncal | 10 | $1,382,384 | $13,823,840 | $3,456 |
| **11.45** | Caja Reserva | 2 | $691,192 | $1,382,384 | $346 |
| **11.46** | Canalización Ducto | 100 | $138,239 | $13,823,900 | $3,456 |
| **11.47** | Empalmes Fibra | 20 | $691,192 | $13,823,840 | $3,456 |
| **11.48** | Material Montaje | 1 | $27,647,687 | $27,647,687 | $6,912 |
| **11.49** | Capacitación | 1 | $27,647,687 | $27,647,687 | $6,912 |
| **TOTAL COSTOS DIRECTOS** | | | | **$3,934,077,023** | **$983,519** |
| **ADMINISTRACIÓN (22%)** | | | | **$865,496,945** | **$216,374** |
| **IMPREVISTOS (4%)** | | | | **$157,363,081** | **$39,341** |
| **UTILIDAD (4%)** | | | | **$157,363,081** | **$39,341** |
| **IVA SOBRE UTILIDAD (19%)** | | | | **$29,898,985** | **$7,475** |
| **TOTAL FINAL** | | | | **$5,144,199,115** | **$1,286,050** |

**Nota:** Conversión USD a COP = 4,000 (aproximado)

---

## 6. PRUEBAS

### FAT
- Servidores: Throughput, redundancia
- SCADA: Integración equipos ITS
- Videowall: Resolución, fuentes

### SAT
- Disponibilidad 99.9%
- Tiempo respuesta <2 segundos
- Prueba falla servidor principal

---

## 7. FABRICANTES

- **Servidores:** Dell, HP
- **SCADA:** Wonderware (AVEVA)
- **Switches:** Cisco
- **Videowall:** Datapath, Barco

---

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- Ubicación actualizada: La Lizama PK 4+300 (RN 4513)
- CAPEX mantenido: USD $1,286,050
- Componentes confirmados según información oficial
- Metodología PKD lineal aplicada
