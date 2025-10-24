# T02: ANÁLISIS DE REQUISITOS - SISTEMA DE ATENCIÓN DE EMERGENCIAS
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 17/10/2025  
**Sistema:** Atención de Emergencias y Auxilio Vial  
**Responsable:** Gerente de Operaciones y Emergencias  
**Versión:** 1.1  

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Documento

Este documento presenta el **análisis detallado de requisitos** del Sistema de Atención de Emergencias para el proyecto APP Puerto Salgar - Barrancabermeja, cubriendo:

- Requisitos funcionales de atención médica, auxilio mecánico y rescate
- Requisitos no funcionales (tiempos de respuesta, disponibilidad, calidad)
- Requisitos de interfaces con otros sistemas
- Criterios de aceptación
- Casos de uso principales
- Matriz de trazabilidad contractual

### 1.2 Alcance

Este análisis cubre el **sistema completo de emergencias** operando 24/7/365 en 259.6 km principales + 33.4 km adicionales:

**Servicios incluidos:**
1. **Atención Médica:** Ambulancias TAM con personal médico
2. **Auxilio Mecánico:** Grúas para vehículos pesados y livianos
3. **Auxilio Técnico:** Carrotalleres con herramientas
4. **Rescate Vehicular:** Equipos especializados (expansores, cortapedales)
5. **Remoción de Derrumbes:** Maquinaria pesada
6. **Patrullas de Inspección:** Vigilancia continua
7. **Bases de Operación:** Mínimo 2 bases estratégicamente ubicadas
8. **Despacho centralizado:** Desde CCO La Lizama PK 4+300

### 1.3 Definiciones y Acrónimos

| Término | Definición |
|:--------|:-----------|
| **TAM** | Traslado Asistencial Medicalizado (Ambulancia) |
| **NFPA 1936** | Norma de Equipos de Rescate Vehicular |
| **CCO** | Centro de Control Operacional |
| **DAI** | Detector Automático de Incidentes |
| **SOS** | Teléfonos de Emergencia |
| **SICC** | Sistema de Información y Control del Concesionario |
| **PK** | Punto Kilométrico |
| **VoIP** | Voice over IP |

---

## 2. REQUISITOS FUNCIONALES

### 2.1 Atención Médica de Emergencia (Ambulancias TAM)

**ID:** RF-001  
**Descripción:** El sistema debe proporcionar atención médica prehospitalaria mediante ambulancias TAM  
**Prioridad:** 🔴 CRÍTICA  
**Fuente:** AT2, Sección 3.3.3.1.4  

**Criterios de Aceptación:**
- **Ambulancias TAM:** 2-3 unidades (distribución estratégica)
- **Personal por ambulancia:**
  - 1 médico general (certificado soporte vital avanzado 48h)
  - 1 auxiliar de enfermería (soporte vital básico 20h)
  - 1 conductor (primeros auxilios 40h)
- **Dotación médica según MinSalud:**
  - Desfibrilador
  - Equipo de oxígeno
  - Camilla con inmovilizadores
  - Medicamentos básicos de emergencia
  - Monitor de signos vitales
- **Disponibilidad:** 24/7/365
- **Tiempo de respuesta:** Según AT4 (Indicador O4)
- **Coordinación con hospitales regionales** para traslados

---

### 2.2 Auxilio Mecánico (Grúas)

**ID:** RF-002  
**Descripción:** El sistema debe proporcionar grúas para vehículos pesados y livianos  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 3.3.3.1.3  

**Criterios de Aceptación:**
- **Grúas para vehículos livianos:** 2-3 unidades (capacidad 3-5 ton)
- **Grúas para vehículos pesados:** 1-2 unidades (capacidad 20-40 ton)
- Vehículos modernos, buen estado
- Disponibilidad 24/7/365
- Costo de traslado: A cargo del Concesionario
- Tiempo de respuesta: Según AT4
- Coordinación con CCO para despacho

---

### 2.3 Carrotalleres (Auxilio Técnico)

**ID:** RF-003  
**Descripción:** El sistema debe incluir carrotalleres con herramientas y repuestos básicos  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 3.3.3.1.3  

**Criterios de Aceptación:**
- 2-3 carrotalleres equipados
- Herramientas: Llaves, gatos, compresores, soldadura básica
- Repuestos: Llantas, baterías, cables, fusibles, líquidos
- Señalización temporal (conos, señales)
- Personal técnico capacitado
- Servicios:
  - Cambio de llantas
  - Auxilio eléctrico (batería)
  - Reparaciones menores
  - Remolque a taller
- Reparaciones mayores: A cargo del usuario

---

### 2.4 Equipos de Rescate Vehicular

**ID:** RF-004  
**Descripción:** El sistema debe incluir equipos especializados de rescate según NFPA 1936  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 3.3.3.1.2  

**Criterios de Aceptación:**
- **Equipos mínimos según NFPA 1936:**
  - Expansor hidráulico (RAM) - separación de partes del vehículo
  - Cortapedales o mini cutter - corte de piezas metálicas
  - Carrete con manguera hidráulica
  - Cadenas de rescate
- Personal capacitado en rescate vehicular
- Reemplazo de equipos cada 5 años o según necesidad
- Mantenimiento preventivo trimestral

---

### 2.5 Remoción de Derrumbes

**ID:** RF-005  
**Descripción:** El sistema debe atender derrumbes sin límite de volumen o acarreo  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 3.3.3.1.6  

**Criterios de Aceptación:**
- Maquinaria pesada disponible (propia o subcontratada):
  - Retroexcavadora
  - Motoniveladora
  - Volquetas
  - Cargador frontal
- Personal, maquinaria y equipos disponibles
- Sin límite de volumen
- Sin límite de acarreo
- Despeje gradual (seguridad prioritaria)
- Lavado de corona con agua a presión
- Tiempos según Indicador O4 (AT4)

---

### 2.6 Patrullas de Inspección

**ID:** RF-006  
**Descripción:** El sistema debe incluir patrullas de inspección y vigilancia del corredor  
**Prioridad:** 🟡 Alta  
**Fuente:** AT2 (operación del corredor)  

**Criterios de Aceptación:**
- 4-6 vehículos de patrullaje (camionetas 4x4)
- Personal uniformado
- Recorridos programados (frecuencia según tráfico)
- Radios de comunicación con CCO
- Detección y reporte de:
  - Incidentes/accidentes
  - Vehículos averiados
  - Objetos en la vía
  - Derrumbes
  - Daños en infraestructura
- Apoyo en operativos de pesaje

---

### 2.7 Bases de Operación

**ID:** RF-007  
**Descripción:** El sistema debe incluir bases de operación estratégicamente ubicadas  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 3.3.3.1  

**Criterios de Aceptación:**
- Mínimo 2 bases (distribución que minimice tiempos de respuesta)
- Ubicación sugerida: PK 80-100 y PK 180-200
- Infraestructura por base:
  - Garaje para vehículos (ambulancias, grúas, patrullas)
  - Oficinas de coordinación
  - Dormitorios para personal de turno
  - Taller de mantenimiento
  - Almacén de repuestos
  - Comunicaciones con CCO (fibra, radio)

---

### 2.8 Registro de Incidentes en SICC

**ID:** RF-008  
**Descripción:** El sistema debe registrar TODOS los incidentes atendidos en el SICC  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 3.3.3.1.5  

**Criterios de Aceptación:**
- Registro inmediato en bitácora de control
- Datos registrados:
  - Fecha, hora, PK
  - Tipo de incidente (accidente, avería, derrumbe)
  - Personal despachado
  - Equipos utilizados
  - Acciones realizadas
  - Tiempo de atención
  - Resultado (resuelto, trasladado, derivado)
- Información a autoridades competentes
- Reportes a ANI

---

### 2.9 Coordinación con Autoridades

**ID:** RF-009  
**Descripción:** El sistema debe coordinar efectivamente con Policía, Bomberos, Defensa Civil  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 3.3.3.1.5  

**Criterios de Aceptación:**
- Protocolos de coordinación definidos
- Comunicaciones directas (radio, teléfono)
- Información compartida en tiempo real
- Apoyo en operativos conjuntos
- Registro de coordinaciones

---

### 2.10 Tiempos de Respuesta (Indicador O4)

**ID:** RF-010  
**Descripción:** El sistema debe cumplir con tiempos de respuesta establecidos en AT4  
**Prioridad:** 🔴 CRÍTICA  
**Fuente:** AT4, Indicador O4  

**Criterios de Aceptación:**
- Tiempo de respuesta según tipo de emergencia (por validar en AT4)
- Medición desde llamada hasta llegada al sitio
- Registro de 100% de los tiempos
- Penalización si incumplimiento

---

## 3. REQUISITOS NO FUNCIONALES

### 3.1 Requisitos de Disponibilidad

| ID | Requisito | Valor Mínimo | Fuente |
|:---|:----------|:-------------|:-------|
| **RNF-001** | Disponibilidad del servicio | 100% (24/7/365) | AT2, 3.3.3.1 |
| **RNF-002** | Disponibilidad de ambulancias TAM | ≥ 95% (al menos 1 operativa siempre) | Emergencias médicas |
| **RNF-003** | Disponibilidad de grúas | ≥ 90% | Auxilio mecánico |
| **RNF-004** | Personal de turno | 100% (sin vacíos de cobertura) | AT2 |

---

### 3.2 Requisitos de Tiempo de Respuesta

| ID | Requisito | Valor Meta | Fuente |
|:---|:----------|:-----------|:-------|
| **RNF-005** | Tiempo de respuesta emergencias médicas | < 20 minutos | AT4 (O4, por validar) |
| **RNF-006** | Tiempo de respuesta auxilio mecánico | < 30 minutos | AT4 (O4, por validar) |
| **RNF-007** | Tiempo de inicio remoción derrumbes | < 2 horas | AT4 (O4, por validar) |

---

### 3.3 Requisitos de Calidad de Servicio

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-008** | Personal capacitado | Certificaciones vigentes (soporte vital, rescate) | AT2, 3.3.3.1 |
| **RNF-009** | Equipos modernos | Vehículos < 5 años, buen estado | AT2, 3.3.3.1 |
| **RNF-010** | Dotación completa | Según MinSalud (ambulancias) y NFPA 1936 (rescate) | AT2, 3.3.3.1 |
| **RNF-011** | Uniformes | Personal identificado | AT2 |

---

### 3.4 Requisitos de Seguridad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-012** | Señalización temporal | Protección de escena de emergencia | Seguridad vial |
| **RNF-013** | Equipos de protección personal (EPP) | Cascos, chalecos reflectivos, guantes | Seguridad ocupacional |
| **RNF-014** | Bioseguridad | Protocolos de limpieza de ambulancias | MinSalud |

---

### 3.5 Requisitos de Mantenibilidad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-015** | Mantenimiento preventivo vehículos | Cada 5,000 km o mensual | Disponibilidad |
| **RNF-016** | Mantenimiento equipos médicos | Calibración/verificación trimestral | MinSalud |
| **RNF-017** | Reemplazo equipos de rescate | Cada 5 años o según NFPA 1936 | AT2, 3.3.3.1.2 |

---

## 4. REQUISITOS DE INTERFACES

### 4.1 Interface Emergencias ↔ CCO

**ID:** RI-001  
**Sistemas:** Emergencias ↔ Centro de Control Operacional  
**Tipo:** Radio, VoIP, Red de Datos  
**Protocolo:** Radio troncalizado, VoIP, TCP/IP  
**Datos Intercambiados:**
- Despacho de unidades (ambulancias, grúas, patrullas)
- Ubicación de incidentes (PK)
- Estado de atención (en ruta, en sitio, trasladando)
- Registro de eventos
**Frecuencia:** Por evento + continuo

---

### 4.2 Interface Emergencias ↔ ITS (CCTV, SOS, DAI)

**ID:** RI-002  
**Sistemas:** Emergencias ↔ Sistemas ITS  
**Tipo:** Lógica + Red de Datos  
**Protocolo:** VoIP (SOS), API (DAI)  
**Datos Intercambiados:**
- Llamadas SOS → Despacho de ambulancias
- Detección de incidentes DAI → Despacho de patrullas
- Video CCTV → Evaluación de gravedad
**Frecuencia:** Por evento

---

### 4.3 Interface Emergencias ↔ Policía, Bomberos, Defensa Civil

**ID:** RI-003  
**Sistemas:** Emergencias ↔ Autoridades  
**Tipo:** Comunicaciones, Coordinación Operativa  
**Protocolo:** Radio, Teléfono, Correo  
**Datos Intercambiados:**
- Coordenadas de emergencias
- Solicitud de apoyo
- Información de incidentes
**Frecuencia:** Por evento

---

### 4.4 Interface Emergencias ↔ Hospitales Regionales

**ID:** RI-004  
**Sistemas:** Emergencias (TAM) ↔ Hospitales  
**Tipo:** Coordinación Médica  
**Protocolo:** Radio médico, Teléfono  
**Datos Intercambiados:**
- Pre-aviso de traslado de pacientes
- Condición médica del paciente
- ETA (tiempo estimado de llegada)
**Frecuencia:** Por evento (emergencias médicas)

---

### 4.5 Interface Emergencias ↔ Áreas de Servicio (Bases Operativas)

**ID:** RI-005  
**Sistemas:** Emergencias ↔ Áreas de Servicio  
**Tipo:** Física + Operacional  
**Protocolo:** N/A  
**Datos Intercambiados:** Uso de bases operativas para estacionamiento, descanso, mantenimiento  
**Frecuencia:** Continuo

---

## 5. MATRIZ DE TRAZABILIDAD

| Requisito ID | Tipo | Descripción Resumida | Fuente Contractual | Prioridad |
|:-------------|:-----|:---------------------|:-------------------|:----------|
| **RF-001** | Funcional | Ambulancias TAM con personal médico | AT2, 3.3.3.1.4 | 🔴 CRÍTICA |
| **RF-002** | Funcional | Grúas (livianas y pesadas) | AT2, 3.3.3.1.3 | 🔴 Alta |
| **RF-003** | Funcional | Carrotalleres equipados | AT2, 3.3.3.1.3 | 🔴 Alta |
| **RF-004** | Funcional | Equipos de rescate (NFPA 1936) | AT2, 3.3.3.1.2 | 🔴 Alta |
| **RF-005** | Funcional | Remoción de derrumbes | AT2, 3.3.3.1.6 | 🔴 Alta |
| **RF-008** | Funcional | Registro en SICC | AT2, 3.3.3.1.5 | 🔴 Alta |
| **RF-010** | Funcional | Tiempos de respuesta (O4) | AT4 | 🔴 CRÍTICA |
| **RNF-001** | Disponibilidad | Servicio 24/7/365 | AT2, 3.3.3.1 | 🔴 CRÍTICA |

**Total requisitos identificados:** 27 (10 funcionales + 17 no funcionales)

---

## 6. RESTRICCIONES Y SUPUESTOS

### 6.1 Restricciones

| ID | Restricción | Impacto | Origen |
|:---|:------------|:--------|:-------|
| **REST-001** | Disponibilidad 24/7/365 obligatoria | Crítico - OPEX alto (personal continuo) | AT2, 3.3.3.1 |
| **REST-002** | Incumplimiento tiempos O4 = deducciones | Alto - Impacto financiero | AT4 |
| **REST-003** | Equipos según NFPA 1936 | Medio - Especificación técnica | AT2, 3.3.3.1.2 |
| **REST-004** | Derrumbes sin límite de volumen/acarreo | Alto - Costo impredecible | AT2, 3.3.3.1.6 |

---

### 6.2 Supuestos

| ID | Supuesto | Riesgo | Validación |
|:---|:---------|:-------|:-----------|
| **SUP-001** | Tiempos de respuesta O4 definidos en AT4 | Alto - Desconocimiento de meta | Validar en AT4 |
| **SUP-002** | Hospitales regionales disponibles 24/7 | Alto - Traslados largos | Coordinar con MinSalud |
| **SUP-003** | Proveedores de maquinaria disponibles | Medio - Remoción de derrumbes lenta | Contratos marco |

---

## 7. CASOS DE USO

### 7.1 CU-001: Atención de Emergencia Médica

**Actor:** Sistema ITS (SOS/DAI) + CCO + Ambulancia TAM  
**Descripción:** Atención de emergencia médica desde llamada hasta traslado a hospital  

**Flujo Normal:**
1. Usuario llama desde teléfono SOS (PK 125+500)
2. CCO recibe llamada, identifica ubicación automáticamente
3. Operador evalúa emergencia: Accidente con heridos
4. Operador despacha ambulancia TAM más cercana (Base 1)
5. Ambulancia confirma: "En ruta, ETA 15 minutos"
6. Ambulancia llega al sitio (17 minutos desde llamada)
7. Médico evalúa pacientes (2 heridos, 1 grave, 1 leve)
8. Médico estabiliza pacientes en sitio
9. Médico coordina con Hospital de Puerto Berrío (más cercano)
10. Ambulancia traslada paciente grave (leve queda en sitio)
11. Ambulancia llega a hospital (40 minutos desde llamada)
12. Médico entrega paciente a urgencias del hospital
13. Ambulancia retorna a base
14. Operador registra evento completo en SICC

**Postcondiciones:**
- Emergencia atendida
- Paciente en hospital
- Tiempo total: 60 minutos (dentro de meta O4)

---

### 7.2 CU-002: Auxilio Mecánico (Cambio de Llanta)

**Actor:** Usuario + Carrotaller  
**Descripción:** Atención de vehículo con llanta ponchada  

**Flujo Normal:**
1. Usuario llama a número de emergencia (celular o SOS)
2. CCO recibe llamada: "Llanta ponchada PK 95+200"
3. Operador despacha carrotaller más cercano
4. Carrotaller llega en 12 minutos
5. Técnico instala señalización temporal (conos, señales)
6. Técnico cambia llanta (15 minutos)
7. Técnico verifica presión de llanta de repuesto
8. Usuario continúa viaje
9. Técnico registra servicio en sistema
10. Servicio sin costo para usuario (incluido en peaje)

**Postcondiciones:**
- Usuario con vehículo operativo
- Servicio registrado

---

### 7.3 CU-003: Remoción de Derrumbe

**Actor:** Patrulla de Inspección + CCO + Cuadrilla de Remoción  
**Descripción:** Detección y remoción de derrumbe en la vía  

**Flujo Normal:**
1. Patrulla detecta derrumbe en PK 150+300 (30 m³ tierra/rocas)
2. Patrulla notifica a CCO inmediatamente
3. Patrulla instala señalización temporal (cierre de carril)
4. Operador CCO despacha cuadrilla de remoción con maquinaria
5. Operador activa PMV: "DERRUMBE PK 150 - VÍA LENTA"
6. Cuadrilla llega con retroexcavadora y volqueta (1 hora)
7. Cuadrilla remueve material (despeje gradual - 3 horas)
8. Cuadrilla lava corona con agua a presión
9. Cuadrilla verifica estabilidad del talud
10. Patrulla verifica despeje completo
11. Operador desactiva PMV
12. Patrulla retira señalización temporal
13. Vía operativa normal
14. Operador registra evento en SICC (tiempo total: 4.5 horas)

**Postcondiciones:**
- Derrumbe removido
- Vía operativa
- Tiempo dentro de meta O4

---

## 8. CRITERIOS DE ACEPTACIÓN

### 8.1 Criterios Funcionales

- [ ] 2-3 ambulancias TAM operativas 24/7/365
- [ ] Personal médico certificado (soporte vital avanzado)
- [ ] 2-3 grúas para vehículos livianos operativas
- [ ] 1-2 grúas para vehículos pesados operativas
- [ ] 2-3 carrotalleres equipados operativos
- [ ] Equipos de rescate según NFPA 1936 disponibles
- [ ] Maquinaria para remoción de derrumbes disponible
- [ ] 2 bases de operación funcionales
- [ ] 100% de incidentes registrados en SICC
- [ ] Coordinación efectiva con Policía, Bomberos, Defensa Civil

### 8.2 Criterios de Performance

- [ ] Disponibilidad del servicio: 100% (24/7/365)
- [ ] Tiempo de respuesta emergencias médicas: < 20 minutos (meta)
- [ ] Tiempo de respuesta auxilio mecánico: < 30 minutos (meta)
- [ ] Tiempo de inicio remoción derrumbes: < 2 horas (meta)
- [ ] Indicador O4 cumplido mensualmente

### 8.3 Criterios de Calidad

- [ ] Cumplir NFPA 1936 (Equipos de Rescate)
- [ ] Cumplir normativa MinSalud (Dotación TAM)
- [ ] Certificaciones de personal vigentes
- [ ] Vehículos en buen estado (< 5 años)
- [ ] Equipos médicos calibrados

### 8.4 Criterios de Integración

- [ ] Interfaz con CCO funcional (despacho, registro)
- [ ] Interfaz con ITS funcional (SOS, DAI, CCTV)
- [ ] Coordinación con Policía/Bomberos activa
- [ ] Coordinación con hospitales establecida

---

## 9. DEPENDENCIAS

| Sistema/Recurso | Tipo de Dependencia | Criticidad | Estado |
|:----------------|:--------------------|:-----------|:-------|
| **CCO** | Coordinación de despacho | 🔴 CRÍTICA | ✅ Documentado |
| **ITS (SOS, DAI, CCTV)** | Detección de emergencias | 🔴 Alta | ✅ Documentado |
| **Telecomunicaciones** | Comunicaciones (radio, VoIP) | 🔴 Alta | ✅ Documentado |
| **Áreas de Servicio** | Bases operativas | 🟡 Media | ✅ Documentado |
| **Hospitales Regionales** | Traslado de pacientes | 🔴 Alta | ⏳ Por coordinar |
| **Policía de Carreteras** | Coordinación operativa | 🔴 Alta | ⏳ Por coordinar |

---

## 10. PRÓXIMOS PASOS

- [ ] Desarrollar arquitectura operacional (Template T03)
- [ ] Definir ubicaciones exactas de bases de operación (PK)
- [ ] Validar tiempos de respuesta en AT4 (Indicador O4)
- [ ] Solicitar cotizaciones:
  - Ambulancias TAM: Mercedes-Benz, Ford, Chevrolet
  - Grúas: Fabricantes nacionales
  - Equipos de rescate: Hurst Jaws of Life, Holmatro
- [ ] Coordinar con hospitales regionales (convenios)
- [ ] Coordinar con Policía de Carreteras (protocolos)
- [ ] Elaborar especificaciones técnicas (Template T04)
- [ ] Estimar costos detallados (Template T05)

---

## 11. REFERENCIAS

### Documentos Contractuales:
- [AT2 - Operación y Mantenimiento](../II.%20Apendices%20Tecnicos/AT2_Operacion_Mantenimiento_v1.0.md) - Sección 3.3.3
- [AT4 - Indicadores](../II.%20Apendices%20Tecnicos/AT4_Indicadores_v1.0.md) - Indicador O4

### Documentos del Proyecto:
- [T01 - Ficha Sistema Emergencias](28_T01_Ficha_Sistema_Emergencias_v1.0.md)
- [T01 - Sistema CCO](26_T01_Ficha_Sistema_CCO_v1.0.md)
- [T01 - Sistema ITS](24_T01_Ficha_Sistema_ITS_v1.0.md)

### Normativa:
- NFPA 1936 - Standard on Powered Rescue Tools
- EN 13204 - Rescue Equipment
- MinSalud - Dotación de Ambulancias
- Decreto 1079/2015 - Transporte de Mercancías Peligrosas

---

## 12. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 17/10/2025 | Administrador Contractual EPC | Análisis inicial de requisitos del sistema de emergencias |
| **v1.1** | 22/10/2025 | Administrador Contractual EPC | ✅ **Revisión con información oficial:** Despacho CCO La Lizama PK 4+300, longitudes actualizadas |

---

**Versión:** 1.1  
**Estado:** ✅ Análisis de Requisitos Completado  
**Fecha:** 17/10/2025  
**Responsable:** Gerente de Operaciones y Emergencias  
**Próximo documento:** T03 - Arquitectura Operacional del Sistema de Emergencias  

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- Despacho centralizado desde CCO La Lizama PK 4+300
- Longitudes validadas: 259.6 km principal + 33.4 km adicionales
- Rutas específicas: RN 4510, RN 4511, RN 4513
- Metodología PKD lineal aplicada

---

**Fin del documento - T02 Análisis de Requisitos Sistema de Atención de Emergencias**  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*

