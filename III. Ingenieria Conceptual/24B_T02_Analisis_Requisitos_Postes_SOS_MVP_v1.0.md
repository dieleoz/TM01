# T02: ANÁLISIS DE REQUISITOS - POSTES SOS (SISTEMA DE TELEFONÍA DE EMERGENCIA)
## Proyecto APP Puerto Salgar - Barrancabermeja
## MVP - Metodología Punto 42

**Fecha:** 21 de Enero 2026  
**Sistema:** Postes SOS - Sistema de Telefonía de Emergencia  
**Responsable:** Ingeniero de Sistemas ITS / Administrador Contractual EPC  
**Versión:** 1.5 MVP (Alineado Manual 2024)  
**Estado:** ✅ Reconciliado

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Documento

Este documento presenta el **análisis detallado de requisitos** del Sistema de Postes SOS (Sistema de Telefonía de Emergencia) para el proyecto APP Puerto Salgar - Barrancabermeja, cubriendo:

- Requisitos funcionales (qué debe hacer el sistema)
- Requisitos no funcionales (cómo debe hacerlo)
- Requisitos de interfaces con otros sistemas
- Criterios de aceptación
- Casos de uso principales
- Matriz de trazabilidad contractual

### 1.2 Alcance

Este análisis cubre el **Sistema de Postes SOS** a lo largo de 259.6 km principales + 33.4 km adicionales:

- **Cantidad:** 98 postes SOS (Alineación AT1 3km max)
- **Distribución:** Alternados en bermas externas (derecha/izquierda)
- **Distancia máxima:** 3 km entre postes (obligatorio contractual)
- **Cobertura geográfica:** 100% del corredor (293.0 km técnicos)
- **Integración:** CCO La Lizama PK 4+300 (RN 4513)

### 1.3 Referencias

- **T01:** `24B_T01_Ficha_Sistema_Postes_SOS_MVP_v1.0.md`
- **T03:** `53_T03_Arquitectura_Conceptual_ITS_v1.0.md` (SOS incluido)
- **T04:** `01_T04_Especificaciones_Tecnicas_Postes_SOS_v1.0.md`
- **T05:** `04_T05_Ingenieria_Detalle_Postes_SOS_v1.0.md`
- **Validación:** `34_VALIDACION_CONTRACTUAL_POSTES_SOS_v1.0.md`
- **AT1:** Apéndice Técnico 1, Capítulo 3 "Sistemas de comunicación y postes SOS"
- **AT2:** Apéndice Técnico 2, Sección 3.3.3.2 (Operación y Mantenimiento)
- **AT4:** Apéndice Técnico 4 (Indicadores de desempeño)

### 1.4 Definiciones y Acrónimos

| Término | Definición |
|:--------|:-----------|
| **SOS** | Sistema de Telefonía de Emergencia (Postes de Auxilio) |
| **CCO** | Centro de Control Operacional (La Lizama PK 4+300) |
| **VoIP** | Voice over Internet Protocol (Voz sobre Protocolo de Internet) |
| **SIP** | Session Initiation Protocol (Protocolo de Inicio de Sesión) |
| **RTP** | Real-time Transport Protocol (Protocolo de Transporte en Tiempo Real) |
| **GPS/GNSS** | Global Positioning System / Global Navigation Satellite System |
| **FO** | Fibra Óptica |
| **IP66** | Grado de protección contra polvo y agua (estanco) |
| **IK10** | Grado de protección contra impactos (antivandalismo) |
| **SICC** | Sistema Informático de Contabilización y Control |
| **MTBF** | Mean Time Between Failures (Tiempo Medio Entre Fallas) |
| **MTTR** | Mean Time To Repair (Tiempo Medio de Reparación) |

---

## 2. REQUISITOS FUNCIONALES

### 2.1 Comunicación de Emergencias con CCO

**ID:** RF-SOS-001  
**Descripción:** El sistema debe permitir a usuarios comunicarse con CCO en caso de emergencia  
**Prioridad:** 🔴 Alta  
**Fuente:** AT1 Cap. 3, AT2 Sección 3.3.5.1  

**Criterios de Aceptación:**
- ✅ Comunicación bidireccional (voz) entre usuario y CCO
- ✅ Conexión directa con CCO La Lizama PK 4+300 (automática, sin intervención del usuario)
- ✅ Geolocalización automática del teléfono (PK, coordenadas GPS)
- ✅ Operación 24/7/365 (disponibilidad continua)
- ✅ Tiempo de atención < 30 segundos (desde presión de botón hasta atención de operador)
- ✅ Registro de todas las llamadas (fecha, hora, duración, motivo, acción tomada)
- ✅ Disponibilidad: ≥ 99% anual (penalizable según AT4)
- ✅ Capacidad para atender múltiples llamadas simultáneas

**Funcionalidades específicas:**
- Botón pulsador iluminado y visible
- Indicador visual de estado (operativo/no operativo)
- Audio bidireccional de calidad telefónica
- Identificación automática de ubicación en pantalla del operador CCO
- Integración con sistema de despacho de emergencias

---

### 2.2 Distribución y Ubicación de Postes

**ID:** RF-SOS-002  
**Descripción:** Los postes SOS deben estar distribuidos según criterios contractuales  
**Prioridad:** 🔴 Alta  
**Fuente:** AT1 Cap. 3  

**Criterios de Aceptación:**
- ✅ Distancia máxima de 3 km entre postes (obligatorio, no negociable)
- ✅ Distribución alternada en bermas externas (derecha/izquierda)
- ✅ Sobreancho mínimo de 1 metro adicional a la berma
- ✅ Longitud de sobreancho: 10 metros
- ✅ Instalación simultánea con obras de construcción
- ✅ Cobertura 100% del corredor (259.6 km principales + 33.4 km adicionales)
- ✅ Total: 98 postes SOS (validado contractualmente para cumplir 3km)

**Distribución geográfica:**
- **RN 4510:** ~134 km → 37 postes
- **RN 4511:** ~149 km → 56 postes
- **RN 4513:** ~10 km → 5 postes (SOS #88-#92, conexión CCO/Acceso)

---

### 2.3 Integración con Sistema de Emergencias

**ID:** RF-SOS-003  
**Descripción:** El sistema SOS debe integrarse con el sistema de atención de emergencias  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2 Sección 3.3.3.2  

**Criterios de Aceptación:**
- ✅ Activación automática de protocolos de emergencia al recibir llamada
- ✅ Despacho automático de equipos de emergencia (ambulancias, grúas, patrullas)
- ✅ Coordinación con Policía de Carreteras
- ✅ Registro de eventos en SICC
- ✅ Notificación a sistemas relacionados (CCTV, PMV)

---

### 2.4 Monitoreo y Supervisión Remota

**ID:** RF-SOS-004  
**Descripción:** El sistema debe permitir monitoreo remoto del estado de cada poste  
**Prioridad:** 🟡 Media  
**Fuente:** AT2 Sección 3.3.5.1  

**Criterios de Aceptación:**
- ✅ Monitoreo de estado de cada poste (operativo/no operativo)
- ✅ Diagnóstico remoto de fallas
- ✅ Alertas automáticas al CCO en caso de falla
- ✅ Reportes de disponibilidad mensuales
- ✅ Historial de eventos y mantenimientos

---

## 3. REQUISITOS NO FUNCIONALES

### 3.1 Requisitos de Disponibilidad

| ID | Requisito | Valor Mínimo | Fuente | Prioridad |
|:---|:----------|:-------------|:-------|:----------|
| **RNF-SOS-001** | Disponibilidad del sistema SOS | ≥ 99% anual | AT2, AT4 | 🔴 Alta |
| **RNF-SOS-002** | Disponibilidad por poste individual | ≥ 95% mensual | AT4 | 🔴 Alta |
| **RNF-SOS-003** | MTBF (Tiempo Medio Entre Fallas) | ≥ 8,760 horas (1 año) | Buenas prácticas | 🟡 Media |
| **RNF-SOS-004** | MTTR (Tiempo Medio de Reparación) | ≤ 4 horas | Operación eficiente | 🟡 Media |

**Penalizaciones (AT4):**
- No disponibilidad de sistemas críticos: Deducciones en Retribución mensual
- Disponibilidad < 99% anual: Penalizaciones contractuales

---

### 3.2 Requisitos de Performance

| ID | Requisito | Valor | Fuente | Prioridad |
|:---|:----------|:------|:-------|:----------|
| **RNF-SOS-005** | Tiempo de conexión SOS → CCO | ≤ 30 segundos | AT2, Emergencias | 🔴 Alta |
| **RNF-SOS-006** | Latencia de voz (VoIP) | ≤ 150 ms | Calidad telefónica | 🔴 Alta |
| **RNF-SOS-007** | Calidad de audio | MOS ≥ 4.0 (ITU-T G.107) | Calidad aceptable | 🔴 Alta |
| **RNF-SOS-008** | Tiempo de geolocalización | ≤ 5 segundos | Identificación rápida | 🟡 Media |
| **RNF-SOS-009** | Capacidad de llamadas simultáneas | ≥ 10 llamadas simultáneas | Múltiples emergencias | 🔴 Alta |

---

### 3.3 Requisitos de Seguridad

| ID | Requisito | Descripción | Fuente | Prioridad |
|:---|:----------|:------------|:-------|:----------|
| **RNF-SOS-010** | Protección física antivandalismo | Carcasas IK10 (resistencia a impactos) | Seguridad | 🔴 Alta |
| **RNF-SOS-011** | Cifrado de comunicaciones VoIP | TLS 1.2 mínimo o SRTP | Ciberseguridad | 🔴 Alta |
| **RNF-SOS-012** | Autenticación de postes | Certificados digitales o autenticación por MAC | Seguridad de red | 🟡 Media |
| **RNF-SOS-013** | Registro inviolable de llamadas | Todas las llamadas registradas, no modificables | AT2, Auditoría | 🔴 Alta |
| **RNF-SOS-014** | Protección contra acceso no autorizado | Control de acceso físico y lógico | Seguridad | 🟡 Media |

---

### 3.4 Requisitos Ambientales y de Protección

| ID | Requisito | Valor Mínimo | Fuente | Prioridad |
|:---|:----------|:-------------|:-------|:----------|
| **RNF-SOS-015** | Grado de protección IP | IP66 mínimo (estanco a polvo y agua) | Clima colombiano | 🔴 Alta |
| **RNF-SOS-016** | Grado de protección IK | IK10 (antivandalismo) | Seguridad | 🔴 Alta |
| **RNF-SOS-017** | Rango de temperatura operación | -30°C a +60°C | Condiciones extremas | 🔴 Alta |
| **RNF-SOS-018** | Humedad relativa | 0% a 95% RH (sin condensación) | Clima tropical | 🔴 Alta |
| **RNF-SOS-019** | Protección contra rayos | Supresores de transitorios, puesta a tierra | Zona de tormentas | 🔴 Alta |
| **RNF-SOS-020** | Resistencia a vibraciones | IEC 60068-2-6 (vibraciones viales) | Tráfico vehicular | 🟡 Media |

---

### 3.5 Requisitos de Usabilidad

| ID | Requisito | Descripción | Fuente | Prioridad |
|:---|:----------|:------------|:-------|:----------|
| **RNF-SOS-021** | Facilidad de uso | Botón pulsador grande, visible, iluminado | Emergencias | 🔴 Alta |
| **RNF-SOS-022** | Indicadores visuales | LED de estado (verde: operativo, rojo: falla) | Usuario | 🟡 Media |
| **RNF-SOS-023** | Instrucciones en poste | Señalización clara de uso | Manual INVÍAS | 🟡 Media |
| **RNF-SOS-024** | Accesibilidad | Altura de botón accesible para todos los usuarios | Inclusión | 🟡 Media |

---

### 3.6 Requisitos de Mantenibilidad

| ID | Requisito | Descripción | Fuente | Prioridad |
|:---|:----------|:------------|:-------|:----------|
| **RNF-SOS-025** | Actualización de firmware remota | Sin necesidad de visita al campo | Operación eficiente | 🟡 Media |
| **RNF-SOS-026** | Diagnóstico remoto | Monitoreo SNMP de estado de equipos | Gestión proactiva | 🟡 Media |
| **RNF-SOS-027** | Disponibilidad de repuestos | Durante toda la concesión (25 años) | AT2 (garantía) | 🔴 Alta |
| **RNF-SOS-028** | Modularidad de componentes | Reemplazo de módulos sin afectar sistema completo | Mantenimiento ágil | 🟡 Media |
| **RNF-SOS-029** | Documentación técnica | Manuales en español, actualizados | AT2 | 🟡 Media |

---

## 4. REQUISITOS DE INTERFACES

### 4.1 Interface SOS ↔ CCO

**ID:** RI-SOS-001  
**Sistemas:** Postes SOS ↔ CCO La Lizama PK 4+300  
**Tipo:** Red de Datos IP / VoIP  
**Protocolo:** 
- SIP (Session Initiation Protocol) - RFC 3261
- RTP (Real-time Transport Protocol) - RFC 3550
- SRTP (Secure RTP) - RFC 3711 (cifrado)

**Datos Intercambiados:**
- Voz de emergencia (bidireccional)
- Geolocalización GPS/GNSS (PK, coordenadas)
- Estado del poste (operativo/no operativo)
- Alertas de falla
- Datos de diagnóstico

**Frecuencia:** Por evento (llamada de emergencia) + monitoreo continuo  
**Ancho de banda:** 5-10 Mbps (VoIP) + < 1 Mbps (monitoreo)  
**Latencia máxima:** 150 ms (voz)  
**Disponibilidad:** ≥ 99% anual

---

### 4.2 Interface SOS ↔ Sistema de Telecomunicaciones

**ID:** RI-SOS-002  
**Sistemas:** Postes SOS ↔ Red Troncal de Telecomunicaciones  
**Tipo:** Física (Fibra Óptica)  
**Protocolo:** Ethernet/IP sobre fibra monomodo  
**Medio:** Fibra Óptica Monomodo G.652.D  

**Datos Intercambiados:**
- Tráfico VoIP (voz)
- Datos de monitoreo y diagnóstico
- Tráfico de gestión (SNMP)

**Frecuencia:** Continuo  
**Ancho de banda:** 10-100 Mbps por poste (dimensionado)  
**Topología:** Red troncal en anillo redundante (283 km)

---

### 4.3 Interface SOS ↔ Sistema de Emergencias

**ID:** RI-SOS-003  
**Sistemas:** Postes SOS ↔ Sistema de Atención de Emergencias  
**Tipo:** Lógica (a través de CCO)  
**Protocolo:** API REST / Base de Datos  

**Datos Intercambiados:**
- Llamadas SOS → Despacho de ambulancias/grúas
- Ubicación del incidente
- Tipo de emergencia reportada
- Coordinación con Policía de Carreteras

**Frecuencia:** Por evento  
**Latencia:** < 1 segundo (despacho automático)

---

### 4.4 Interface SOS ↔ Sistema de Energía Eléctrica

**ID:** RI-SOS-004  
**Sistemas:** Postes SOS ↔ Sistema de Energía Eléctrica  
**Tipo:** Física (Alimentación)  
**Protocolo:** AC 220V o DC 12V/24V (solar)  

**Datos Intercambiados:**
- Suministro de energía
- Estado de carga (si es solar)
- Alertas de falla de alimentación

**Frecuencia:** Continuo  
**Potencia requerida:** 50-150W por poste (según configuración)

---

## 5. CASOS DE USO

### 5.1 CU-SOS-001: Llamada de Emergencia desde Poste SOS

**Actor:** Usuario de la vía  
**Descripción:** Un usuario llama desde teléfono SOS y recibe atención del CCO  
**Prioridad:** 🔴 Alta  

**Precondiciones:**
- ✅ Teléfonos SOS operativos
- ✅ CCO La Lizama PK 4+300 con operadores de turno
- ✅ Sistema de emergencias disponible
- ✅ Red de telecomunicaciones operativa

**Flujo Normal:**
1. Usuario presiona botón pulsador iluminado del poste SOS
2. Sistema establece conexión VoIP con CCO (< 30 segundos)
3. Sistema identifica automáticamente ubicación (PK, coordenadas GPS) del teléfono
4. Operador CCO recibe llamada con información de ubicación en pantalla
5. Operador atiende llamada: "Centro de Control, ¿en qué puedo ayudarle?"
6. Usuario explica emergencia (accidente, avería, malestar, etc.)
7. Operador registra evento en SICC (fecha, hora, ubicación, motivo)
8. Operador evalúa tipo de emergencia y despacha equipo apropiado:
   - Emergencia médica → Ambulancia TAM
   - Avería mecánica → Grúa o Carrotaller
   - Accidente → Ambulancia + Grúa + Patrulla
9. Sistema registra llamada completa (duración, motivo, acción tomada)
10. Operador confirma con usuario que ayuda está en camino
11. Sistema mantiene registro para seguimiento

**Postcondiciones:**
- ✅ Emergencia atendida
- ✅ Equipo de emergencia despachado
- ✅ Llamada registrada en SICC
- ✅ Usuario informado del estado

**Flujos Alternativos:**

**FA-1: No hay respuesta en CCO**
- Si no hay respuesta en CCO → Redirección automática a centro de respaldo
- Sistema registra redirección

**FA-2: Llamada de broma o falsa alarma**
- Operador identifica que es broma
- Operador registra como falsa alarma
- Posible notificación a Policía de Carreteras (si es recurrente)

**FA-3: Poste SOS no operativo**
- Usuario presiona botón pero no hay respuesta
- Sistema registra intento de llamada fallida
- Alerta automática al CCO de poste no operativo
- Usuario debe usar poste SOS alternativo o teléfono celular

**FA-4: Múltiples llamadas simultáneas**
- Sistema debe manejar ≥ 10 llamadas simultáneas
- Operadores CCO atienden según prioridad (médica > mecánica > información)

---

### 5.2 CU-SOS-002: Monitoreo Remoto de Estado de Postes SOS

**Actor:** Operador CCO / Sistema SCADA  
**Descripción:** El sistema monitorea continuamente el estado de todos los postes SOS  
**Prioridad:** 🟡 Media  

**Precondiciones:**
- ✅ Sistema de monitoreo SCADA operativo
- ✅ Red de telecomunicaciones operativa
- ✅ Postes SOS instalados y configurados

**Flujo Normal:**
1. Sistema SCADA consulta estado de cada poste SOS cada 5 minutos
2. Cada poste responde con estado (operativo/no operativo, batería, señal, etc.)
3. Sistema registra estado en base de datos
4. Si poste no responde o reporta falla:
   - Sistema genera alarma en CCO
   - Operador visualiza alarma en pantalla
   - Sistema programa mantenimiento correctivo
5. Sistema genera reporte de disponibilidad mensual

**Postcondiciones:**
- ✅ Estado de todos los postes conocido
- ✅ Fallas detectadas y reportadas
- ✅ Mantenimiento programado si es necesario

---

### 5.3 CU-SOS-003: Mantenimiento Preventivo de Poste SOS

**Actor:** Técnico de Mantenimiento  
**Descripción:** Realización de mantenimiento preventivo programado de un poste SOS  
**Prioridad:** 🟡 Media  

**Precondiciones:**
- ✅ Poste SOS identificado para mantenimiento
- ✅ Técnico con herramientas y repuestos
- ✅ Acceso al poste disponible

**Flujo Normal:**
1. Sistema programa mantenimiento preventivo (trimestral)
2. Técnico se desplaza al poste SOS
3. Técnico verifica estado físico del poste
4. Técnico verifica funcionamiento del botón pulsador
5. Técnico verifica comunicación con CCO (prueba de llamada)
6. Técnico verifica sistema de alimentación (batería, panel solar si aplica)
7. Técnico realiza limpieza y ajustes necesarios
8. Técnico registra mantenimiento en sistema
9. Sistema actualiza estado del poste a "operativo"

**Postcondiciones:**
- ✅ Poste SOS en condiciones óptimas
- ✅ Mantenimiento registrado
- ✅ Disponibilidad del poste garantizada

---

## 6. MATRIZ DE TRAZABILIDAD CONTRACTUAL

| Requisito ID | Tipo | Descripción Resumida | Fuente Contractual | Componente Afectado | Prioridad |
|:-------------|:-----|:---------------------|:-------------------|:--------------------|:----------|
| **RF-SOS-001** | Funcional | Comunicación emergencias con CCO | AT1 Cap. 3, AT2 3.3.5.1 | Poste SOS, CCO | 🔴 Alta |
| **RF-SOS-002** | Funcional | Distribución y ubicación postes | AT1 Cap. 3 | Distribución geográfica | 🔴 Alta |
| **RF-SOS-003** | Funcional | Integración con emergencias | AT2 3.3.3.2 | Sistema Emergencias | 🔴 Alta |
| **RF-SOS-004** | Funcional | Monitoreo remoto | AT2 3.3.5.1 | SCADA, CCO | 🟡 Media |
| **RNF-SOS-001** | Disponibilidad | ≥ 99% anual | AT2, AT4 | Todo el sistema | 🔴 Alta |
| **RNF-SOS-005** | Performance | Tiempo conexión ≤ 30 seg | AT2, Emergencias | VoIP, Red | 🔴 Alta |
| **RNF-SOS-010** | Seguridad | Protección IK10 | Seguridad | Carcasas | 🔴 Alta |
| **RNF-SOS-015** | Ambiental | Protección IP66 | Clima | Equipos exteriores | 🔴 Alta |

**Total requisitos identificados:** 29 (4 funcionales + 25 no funcionales)

---

## 7. RESTRICCIONES Y SUPUESTOS

### 7.1 Restricciones

| ID | Restricción | Impacto | Origen |
|:---|:------------|:--------|:-------|
| **REST-SOS-001** | Distancia máxima 3 km entre postes | Crítico - Obligatorio contractual | AT1 Cap. 3 |
| **REST-SOS-002** | Disponibilidad ≥ 99% anual (penalizable) | Crítico - Deducciones en Retribución | AT2, AT4 |
| **REST-SOS-003** | Distribución alternada en bermas externas | Alto - Requiere coordinación con obras civiles | AT1 Cap. 3 |
| **REST-SOS-004** | Sobreancho mínimo 1m × 10m | Medio - Requiere espacio adicional | AT1 Cap. 3 |
| **REST-SOS-005** | Instalación simultánea con construcción | Alto - Coordinación de cronogramas | AT1 Cap. 3 |
| **REST-SOS-006** | Comunicación gratuita con CCO | Alto - Sin costo para usuarios | AT1 Cap. 3 |

---

### 7.2 Supuestos

| ID | Supuesto | Riesgo si no se cumple | Validación |
|:---|:---------|:-----------------------|:-----------|
| **SUP-SOS-001** | Fibra óptica estará disponible en todos los puntos de instalación | Crítico - Sin comunicaciones no hay SOS | Validar con Ing. Telecom |
| **SUP-SOS-002** | CCO estará operativo antes de instalación de postes SOS | Alto - Postes sin destino de llamadas | Coordinar cronogramas |
| **SUP-SOS-003** | Alimentación eléctrica o solar estará disponible | Alto - Postes sin energía no funcionan | Validar con Ing. Eléctrico |
| **SUP-SOS-004** | Sobreancho de 1m × 10m es factible en todo el corredor | Medio - Posible reubicación de postes | Coordinación con obras civiles |
| **SUP-SOS-005** | Proveedores garantizan repuestos 25 años | Alto - Obsolescencia tecnológica | Incluir en contratos de suministro |

---

## 8. CHECKLIST DE CRITERIOS DE ACEPTACIÓN

### 8.1 Aceptación Funcional

- [ ] **RF-SOS-001:** 100% de los postes establecen comunicación con CCO en < 30 segundos y reportan su geolocalización automáticamente
- [ ] **RF-SOS-002:** 88 postes instalados cumpliendo distancia máxima de 3 km entre sí y distribución alternada en bermas externas
- [ ] **RF-SOS-003:** 100% de las llamadas SOS activan protocolos de emergencia y despacho de equipos
- [ ] **RF-SOS-004:** Sistema SCADA monitorea estado de 100% de los postes con actualización cada 5 minutos

### 8.2 Aceptación No Funcional

- [ ] **RNF-SOS-001:** Disponibilidad del sistema SOS ≥ 99% anual (validado mensualmente)
- [ ] **RNF-SOS-002:** Disponibilidad por poste individual ≥ 95% mensual
- [ ] **RNF-SOS-005:** Tiempo de conexión SOS → CCO ≤ 30 segundos (medido en 100% de pruebas)
- [ ] **RNF-SOS-006:** Latencia de voz (VoIP) ≤ 150 ms (medido en 100% de pruebas)
- [ ] **RNF-SOS-009:** Sistema maneja ≥ 10 llamadas simultáneas sin degradación de calidad
- [ ] **RNF-SOS-015:** Todos los postes cumplen protección IP66 (validado en pruebas ambientales)
- [ ] **RNF-SOS-016:** Todos los postes cumplen protección IK10 (validado en pruebas de impacto)

### 8.3 Aceptación de Interfaces

- [ ] **RI-SOS-001:** Interface SOS ↔ CCO operativa con protocolo SIP/RTP, latencia ≤ 150 ms
- [ ] **RI-SOS-002:** Interface SOS ↔ Telecomunicaciones operativa con fibra óptica, ancho de banda suficiente
- [ ] **RI-SOS-003:** Interface SOS ↔ Emergencias operativa, despacho automático funcional
- [ ] **RI-SOS-004:** Interface SOS ↔ Energía operativa, alimentación continua garantizada

---

## 9. PRÓXIMOS PASOS

- [x] ✅ Análisis de Requisitos completado (T02)
- [ ] 🔄 Desarrollar arquitectura conceptual detallada (T03)
- [ ] ⏳ Validar requisitos con Interventoría y ANI
- [ ] ⏳ Solicitar cotizaciones a proveedores preseleccionados
- [ ] ⏳ Elaborar especificaciones técnicas detalladas (T04 - ya existe, revisar)
- [ ] ⏳ Estimar costos detallados con cotizaciones reales (T05 - ya existe, revisar)
- [ ] ⏳ Coordinar con Gestión Predial (servidumbres para postes)
- [ ] ⏳ Coordinar con Gestión Ambiental (permisos de instalación)

---

## 10. REFERENCIAS

### 10.1 Documentos del Proyecto

- [T01 - Ficha Sistema SOS](24B_T01_Ficha_Sistema_Postes_SOS_MVP_v1.0.md)
- [T03 - Arquitectura Conceptual ITS](53_T03_Arquitectura_Conceptual_ITS_v1.0.md) (SOS incluido)
- [T04 - Especificaciones Técnicas SOS](IV.%20Ingenieria%20Basica/01_T04_Especificaciones_Tecnicas_Postes_SOS_v1.0.md)
- [T05 - Ingeniería de Detalle SOS](V.%20Ingenieria%20de%20Detalle/04_T05_Ingenieria_Detalle_Postes_SOS_v1.0.md)
- [Validación Contractual SOS](VII.%20Documentos%20Transversales/34_VALIDACION_CONTRACTUAL_POSTES_SOS_v1.0.md)

### 10.2 Documentos Contractuales

- **AT1:** Apéndice Técnico 1, Capítulo 3 "Sistemas de comunicación y postes SOS"
- **AT2:** Apéndice Técnico 2, Sección 3.3.3.2 (Operación y Mantenimiento)
- **AT2:** Apéndice Técnico 2, Sección 3.3.5.1 (Sistema de Control de Tráfico)
- **AT4:** Apéndice Técnico 4 (Indicadores de desempeño)

### 10.3 Normativa y Estándares

- **RFC 3261:** SIP (Session Initiation Protocol)
- **RFC 3550:** RTP (Real-time Transport Protocol)
- **RFC 3711:** SRTP (Secure Real-time Transport Protocol)
- **ITU-T G.107:** Modelo de calidad de voz (MOS)
- **IEC 60068-2-6:** Ensayos ambientales - Vibraciones
- **Manual INVÍAS:** Señalización Vial

---

**Versión:** 1.5 MVP  
**Estado:** ✅ Análisis de Requisitos Reconciliado (98 Unid)  
**Fecha:** 21/01/2026  
**Responsable:** Ingeniero de Sistemas ITS / Administrador Contractual EPC  
**Próximo paso:** T03 - Arquitectura Conceptual SOS v1.5
