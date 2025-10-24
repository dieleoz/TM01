# T02: ANÁLISIS DE REQUISITOS - SISTEMA DE GESTIÓN PREDIAL
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 17/10/2025  
**Sistema:** Gestión Predial  
**Responsable:** Gerente Predial / Abogado Especialista Predial  
**Versión:** 1.0  

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Documento

Este documento presenta el **análisis detallado de requisitos** del Sistema de Gestión Predial para el proyecto APP Puerto Salgar - Barrancabermeja. La Gestión Predial está en la **RUTA CRÍTICA** del proyecto: sin predios no hay construcción.

El análisis cubre:
- Requisitos funcionales de adquisición predial
- Requisitos no funcionales (tiempos, calidad jurídica)
- Requisitos de interfaces con otros sistemas
- Criterios de aceptación
- Casos de uso principales
- Matriz de trazabilidad contractual

### 1.2 Alcance

Este análisis cubre el **sistema completo de gestión predial**:

**Procesos incluidos:**
1. **Censo Predial:** Identificación de 150-300 predios requeridos
2. **Avalúos Comerciales:** Según Resolución 1508/2012 (ANI)
3. **Adquisición Voluntaria:** Negociación directa (meta 80-85%)
4. **Expropiación:** Judicial o administrativa (15-20%)
5. **Servidumbres:** Paso, acueducto, energía, telecomunicaciones
6. **Reasentamientos:** Coordinado con AT8
7. **Saneamiento de Títulos:** Sucesiones, embargos
8. **Subcuenta Predial:** Fondeo con ANI

**Cobertura:**
- 259.6 km principales + 33.4 km adicionales de corredor
- Predios para: Estaciones de Peaje, Áreas de Servicio, CCO La Lizama PK 4+300, Talleres, Ampliaciones

### 1.3 Definiciones y Acrónimos

| Término | Definición |
|:--------|:-----------|
| **PGP** | Plan de Gestión Predial |
| **ANI** | Agencia Nacional de Infraestructura |
| **ORIP** | Oficina de Registro de Instrumentos Públicos |
| **FMI** | Folio de Matrícula Inmobiliaria |
| **Avalúo** | Valoración comercial de un predio |
| **Expropiación** | Adquisición forzosa por vía judicial o administrativa |
| **Servidumbre** | Derecho de paso sobre predio ajeno |
| **Reasentamiento** | Reubicación de hogares afectados |

---

## 2. REQUISITOS FUNCIONALES

### 2.1 Censo Predial

**ID:** RF-001  
**Descripción:** El sistema debe identificar y censar todos los predios necesarios para el proyecto  
**Prioridad:** 🔴 CRÍTICA  
**Fuente:** AT7, Obligaciones del Concesionario  

**Criterios de Aceptación:**
- Identificación de 150-300 predios requeridos
- Información catastral completa (FMI, propietario, área)
- Levantamiento topográfico de cada predio
- Identificación de ocupantes (propietarios, poseedores, tenedores, arrendatarios)
- Información socioeconómica de hogares afectados
- Base de datos predial georreferenciada
- Validación con diseño geométrico definitivo

---

### 2.2 Avalúos Comerciales

**ID:** RF-002  
**Descripción:** El sistema debe realizar avalúos comerciales según metodología ANI  
**Prioridad:** 🔴 CRÍTICA  
**Fuente:** AT7; Resolución 1508/2012  

**Criterios de Aceptación:**
- Avalúo por avaluador certificado (Lonja de Propiedad Raíz)
- Metodología según Resolución 1508/2012 (ANI)
- Valor comercial (no catastral)
- Incluye: Tierra + mejoras (construcciones, cultivos) + lucro cesante (si aplica)
- Visita de campo obligatoria
- Registro fotográfico
- Validez: 6-12 meses
- Aprobación de ANI/Interventoría

---

### 2.3 Adquisición Voluntaria (Negociación Directa)

**ID:** RF-003  
**Descripción:** El sistema debe priorizar la adquisición voluntaria mediante negociación directa con propietarios  
**Prioridad:** 🔴 CRÍTICA  
**Fuente:** AT7; Ley 1682/2013  

**Criterios de Aceptación:**
- Meta: 80-85% de predios por adquisición voluntaria
- Negociación basada en avalúo comercial
- Oferta formal por escrito
- Plazo de respuesta del propietario: 30 días
- Escrituración ante notario
- Registro en ORIP
- Pago mediante Subcuenta Predial (ANI)
- Acta de entrega física del predio

---

### 2.4 Expropiación (Judicial o Administrativa)

**ID:** RF-004  
**Descripción:** El sistema debe adelantar procesos de expropiación cuando la negociación voluntaria falla  
**Prioridad:** 🔴 CRÍTICA  
**Fuente:** AT7; Ley 388/1997, Decreto 1420/1998  

**Criterios de Aceptación:**
- Aplicación: 15-20% de predios (cuando negociación falla)
- Modalidades:
  - Expropiación judicial (Ley 1682/2013)
  - Expropiación administrativa (Ley 388/1997)
- Proceso:
  1. Oferta de negociación (30 días)
  2. Si rechaza → Inicio de expropiación
  3. Avalúo pericial
  4. Consignación de valor
  5. Toma de posesión material
  6. Proceso judicial/administrativo
- Duración estimada: 12-24 meses por predio

---

### 2.5 Servidumbres

**ID:** RF-005  
**Descripción:** El sistema debe constituir servidumbres de paso, acueducto, energía, telecomunicaciones  
**Prioridad:** 🔴 Alta  
**Fuente:** AT7; Código Civil Colombiano  

**Criterios de Aceptación:**
- Tipos de servidumbres:
  - Paso (accesos temporales a obra)
  - Acueducto (tuberías de agua)
  - Energía (torres, postes)
  - Telecomunicaciones (fibra óptica)
- Negociación con propietarios (compensación económica)
- Escrituración ante notario
- Registro en ORIP
- Vigencia: Según tipo (temporal o permanente)

---

### 2.6 Saneamiento de Títulos

**ID:** RF-006  
**Descripción:** El sistema debe resolver problemas jurídicos en títulos de propiedad  
**Prioridad:** 🔴 Alta  
**Fuente:** AT7  

**Criterios de Aceptación:**
- Identificación de problemas jurídicos:
  - Sucesiones sin liquidar
  - Embargos judiciales
  - Hipotecas vigentes
  - Matrimonios sin liquidar
  - Conflictos de linderos
- Gestión de soluciones:
  - Procesos de sucesión
  - Levantamiento de embargos
  - Cancelación de hipotecas
  - Concordatos
- Título saneado antes de escrituración

---

### 2.7 Expedientes Prediales

**ID:** RF-007  
**Descripción:** El sistema debe conformar expedientes prediales completos (físico + digital)  
**Prioridad:** 🔴 Alta  
**Fuente:** AT7  

**Criterios de Aceptación:**
- Expediente por cada predio (150-300 expedientes)
- Contenido:
  - Certificado de tradición y libertad (vigente)
  - Avalúo comercial
  - Levantamiento topográfico
  - Ficha socioeconómica
  - Oferta de compra
  - Respuesta del propietario
  - Escritura de compraventa (o auto de expropiación)
  - Acta de entrega física
  - Registro ORIP
- Archivo físico y digital (backup)
- Disponible para ANI/Interventoría

---

### 2.8 Gestión de Ocupantes (Poseedores, Arrendatarios)

**ID:** RF-008  
**Descripción:** El sistema debe negociar con poseedores, arrendatarios y tenedores  
**Prioridad:** 🔴 Alta  
**Fuente:** AT7  

**Criterios de Aceptación:**
- Censo de ocupantes (diferenciando propietarios/poseedores/arrendatarios)
- Negociación diferenciada:
  - Propietarios → Compra del predio
  - Poseedores → Compensación según mejoras
  - Arrendatarios → Indemnización de perjuicios
  - Tenedores → Auxilio de traslado
- Coordinación con Gestión Social (reasentamientos)

---

### 2.9 Subcuenta Predial (ANI)

**ID:** RF-009  
**Descripción:** El sistema debe gestionar recursos de la Subcuenta Predial con ANI  
**Prioridad:** 🔴 CRÍTICA  
**Fuente:** AT7; ANI  

**Criterios de Aceptación:**
- Solicitud de recursos basada en avalúos aprobados
- Desembolsos para:
  - Compra de predios
  - Compensaciones
  - Reasentamientos
  - Honorarios (avaluadores, abogados)
- Rendición de cuentas mensual
- Auditorías de Interventoría

---

### 2.10 Reversión de Predios (Fin de Concesión)

**ID:** RF-010  
**Descripción:** Al final de la concesión, los predios deben revertir a la ANI  
**Prioridad:** 🟡 Baja (largo plazo)  
**Fuente:** AT7; AT2, Sección 5  

**Criterios de Aceptación:**
- Inventario de predios adquiridos (25 años)
- Predios libres de gravámenes
- Transferencia formal a ANI
- Actas de entrega

---

## 3. REQUISITOS NO FUNCIONALES

### 3.1 Requisitos de Tiempo

| ID | Requisito | Valor Meta | Fuente |
|:---|:----------|:-----------|:-------|
| **RNF-001** | Tiempo de adquisición voluntaria | 6-12 meses por predio | Cronograma |
| **RNF-002** | Tiempo de expropiación | 12-24 meses por predio | Proceso judicial |
| **RNF-003** | Entrega de predios a construcción | Según cronograma de obra (just in time) | Ruta crítica |

---

### 3.2 Requisitos de Calidad Jurídica

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-004** | Títulos saneados | Sin problemas jurídicos | AT7 |
| **RNF-005** | Escrituras protocolizadas | Registradas en ORIP | AT7 |
| **RNF-006** | Tradición y libertad vigente | Certificados < 30 días | ORIP |

---

### 3.3 Requisitos de Personal

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-007** | Equipo predial | Gerente + 3-5 Abogados + 2-3 Topógrafos + 2-3 Avaluadores + Asistentes | AT7 |
| **RNF-008** | Avaluadores certificados | Lonja de Propiedad Raíz | Res. 1508/2012 |

---

### 3.5 Requisitos de Riesgo y Mitigación

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-009** | Plan de Mitigación de Retrasos | El sistema debe incluir un plan de acción para mitigar retrasos en la adquisición, considerando la ruta crítica del proyecto. | T01-Riesgos |
| **RNF-010** | Estrategia de Negociación Flexible | El sistema debe permitir ajustar la estrategia de negociación si la tasa de adquisición voluntaria es < 80%. | T01-Riesgos |
| **RNF-011** | Protocolo de Expropiación Acelerada | El sistema debe tener un protocolo para iniciar procesos de expropiación de forma inmediata tras 30 días de oferta sin acuerdo. | T01-Riesgos |
| **RNF-012** | Provisión para Saneamiento de Títulos | El sistema debe contar con un fondo de contingencia y un equipo legal dedicado para procesos de saneamiento complejos. | T01-Riesgos |
| **RNF-013** | Protocolo de Gestión de Conflictos Sociales | El sistema debe integrarse con Gestión Social para manejar la oposición comunitaria a las adquisiciones. | T01-Riesgos |
| **RNF-014** | Monitoreo de Subcuenta Predial | El sistema debe generar alertas automáticas cuando el saldo de la subcuenta predial sea inferior al 20% del fondeo requerido para el trimestre. | T01-Riesgos |
| **RNF-015** | Trazabilidad de la Ruta Crítica | El sistema debe mapear cada predio con su respectiva actividad en el cronograma de obra para visualizar su impacto en la ruta crítica. | Cronograma |

---

## 4. REQUISITOS DE INTERFACES

### 4.1 Interface Gestión Predial ↔ Gestión Social

**ID:** RI-001  
**Sistemas:** Gestión Predial (AT7) ↔ Gestión Social (AT8)  
**Tipo:** Coordinación Estrecha  
**Protocolo:** Reuniones Semanales, Reportes Integrados  
**Datos Intercambiados:**
- Censo de hogares a reasentar
- Plan de Reasentamientos
- Negociación con comunidades
- Atención de PQRS prediales
**Frecuencia:** Semanal (durante adquisición)

---

### 4.2 Interface Gestión Predial ↔ Construcción

**ID:** RI-002  
**Sistemas:** Gestión Predial ↔ Construcción  
**Tipo:** Cronograma  
**Protocolo:** Plan de Entrega de Predios  
**Datos Intercambiados:**
- Cronograma de necesidad de predios
- Actas de entrega de predios
- Disponibilidad para inicio de obras
**Frecuencia:** Mensual

---

### 4.3 Interface Gestión Predial ↔ ANI

**ID:** RI-003  
**Sistemas:** Gestión Predial ↔ ANI (Subcuenta Predial)  
**Tipo:** Financiera + Supervisión  
**Protocolo:** Plataforma ANI, Oficios  
**Datos Intercambiados:**
- Solicitudes de recursos de Subcuenta
- Avalúos para aprobación
- Reportes de avance predial
- Rendición de cuentas
**Frecuencia:** Mensual

---

### 4.4 Interface Gestión Predial ↔ Notarías/ORIP

**ID:** RI-004  
**Sistemas:** Gestión Predial ↔ Notarías/Registros Públicos  
**Tipo:** Trámites Legales  
**Protocolo:** Presencial, Plataforma SNR  
**Datos Intercambiados:**
- Escrituras de compraventa
- Registro de escrituras
- Certificados de tradición y libertad
**Frecuencia:** Por predio adquirido

---

### 4.5 Interface Gestión Predial ↔ Alcaldías

**ID:** RI-005  
**Sistemas:** Gestión Predial ↔ Alcaldías Municipales  
**Tipo:** Administrativa  
**Protocolo:** Oficios, Reuniones  
**Datos Intercambiados:**
- Certificados de nomenclatura
- Concepto de uso del suelo
- Paz y salvos de impuesto predial
**Frecuencia:** Por predio

---

## 5. MATRIZ DE TRAZABILIDAD

| Requisito ID | Tipo | Descripción Resumida | Fuente Contractual | Prioridad |
|:-------------|:-----|:---------------------|:-------------------|:----------|
| **RF-001** | Funcional | Censo Predial (150-300 predios) | AT7 | 🔴 CRÍTICA |
| **RF-002** | Funcional | Avalúos (Res. 1508/2012) | AT7, Res. 1508/2012 | 🔴 CRÍTICA |
| **RF-003** | Funcional | Adquisición voluntaria (80-85%) | AT7, Ley 1682/2013 | 🔴 CRÍTICA |
| **RF-004** | Funcional | Expropiación (15-20%) | AT7, Ley 388/1997 | 🔴 CRÍTICA |
| **RF-005** | Funcional | Servidumbres | AT7, Código Civil | 🔴 Alta |
| **RF-006** | Funcional | Saneamiento de títulos | AT7 | 🔴 Alta |
| **RF-007** | Funcional | Expedientes prediales | AT7 | 🔴 Alta |
| **RF-009** | Funcional | Subcuenta Predial (ANI) | AT7, ANI | 🔴 CRÍTICA |
| **RNF-001** | Tiempo | Adquisición 6-12 meses | Cronograma | 🔴 Alta |
| **RNF-004** | Calidad Jurídica | Títulos saneados | AT7 | 🔴 CRÍTICA |

**Total requisitos identificados:** 32 (10 funcionales + 22 no funcionales)

---

## 6. RESTRICCIONES Y SUPUESTOS

### 6.1 Restricciones

| ID | Restricción | Impacto | Origen |
|:---|:------------|:--------|:-------|
| **REST-001** | Sin predios no hay construcción | CRÍTICO - Ruta crítica del proyecto | Lógica |
| **REST-002** | Expropiación toma 12-24 meses | Alto - Retraso de cronograma | Proceso judicial |
| **REST-003** | Avalúos deben ser aprobados por ANI | Alto - Posible rechazo y re-avalúo | Res. 1508/2012 |
| **REST-004** | Reversión de predios a ANI (25 años) | Medio - No se puede vender | AT7 |

---

### 6.2 Supuestos

| ID | Supuesto | Riesgo | Validación |
|:---|:---------|:-------|:-----------|
| **SUP-001** | Número de predios: 150-300 | Alto - Variación de costo | Censo predial (mes 3) |
| **SUP-002** | Valor promedio: $50,000 USD/predio | Alto - Variación de presupuesto | Avalúos (mes 6) |
| **SUP-003** | Tasa de adquisición voluntaria: 80% | Medio - Mayor cantidad de expropiaciones | Negociación (mes 6-12) |
| **SUP-004** | Títulos sanos en 70% de predios | Medio - Mayor esfuerzo en saneamiento | Estudio de títulos (mes 3) |

---

## 7. CASOS DE USO

### 7.1 CU-001: Adquisición Voluntaria de Predio

**Actor:** Abogado Predial + Propietario  
**Descripción:** Negociación y compra voluntaria de un predio  

**Flujo Normal:**
1. Abogado identifica predio necesario: FMI 123-456 (Puerto Boyacá)
2. Abogado solicita certificado de tradición y libertad (ORIP)
3. Abogado verifica propietario: Señor Juan Pérez
4. Avaluador realiza avalúo comercial: $80,000 USD
5. ANI aprueba avalúo
6. Abogado elabora oferta formal de compra
7. Abogado visita al Señor Pérez y presenta oferta
8. Señor Pérez acepta oferta (firma carta de aceptación)
9. Abogado solicita recursos de Subcuenta Predial a ANI
10. ANI desembolsa recursos
11. Abogado y Señor Pérez firman escritura de compraventa (notaría)
12. Abogado registra escritura en ORIP
13. Abogado coordina entrega física del predio con Construcción
14. Se firma Acta de Entrega de Predio
15. Predio disponible para construcción

**Postcondiciones:**
- Predio adquirido legalmente
- Título registrado a nombre de Concesionario/ANI
- Predio disponible para obra

**Tiempo total:** 3-6 meses

---

### 7.2 CU-002: Expropiación de Predio (Negociación Fallida)

**Actor:** Abogado Predial + Propietario + Juez  
**Descripción:** Expropiación judicial cuando propietario rechaza oferta  

**Flujo Normal:**
1. Abogado presenta oferta formal al propietario
2. Propietario rechaza oferta (precio insuficiente)
3. Abogado inicia trámite de expropiación judicial (Ley 1682/2013)
4. Se solicita avalúo pericial judicial
5. Perito judicial realiza avalúo: $95,000 USD (mayor que avalúo comercial)
6. Concesionario consigna valor del avalúo pericial ante juez
7. Juez autoriza toma de posesión material del predio
8. Concesionario toma posesión del predio (con Policía)
9. Predio disponible para construcción (posesión material)
10. Proceso judicial continúa (definición de valor final)
11. Si juez define valor mayor → Concesionario paga diferencia
12. Si juez define valor menor → Propietario devuelve diferencia
13. Sentencia judicial (12-24 meses)
14. Escrituración y registro definitivo

**Postcondiciones:**
- Predio disponible para obra (posesión material)
- Proceso judicial en curso (definición de valor final)

**Tiempo hasta posesión material:** 6-12 meses  
**Tiempo total (sentencia):** 12-24 meses

---

### 7.3 CU-003: Constitución de Servidumbre de Telecomunicaciones

**Actor:** Abogado Predial + Propietario  
**Descripción:** Negociación de servidumbre para paso de fibra óptica  

**Flujo Normal:**
1. Ingeniero de Telecomunicaciones identifica necesidad de servidumbre
2. Topógrafo levanta franja de servidumbre (10 m de ancho × 500 m de largo)
3. Abogado identifica predios afectados (3 predios)
4. Avaluador estima valor de afectación (pérdida de uso)
5. Abogado elabora propuesta de servidumbre
6. Abogado negocia con propietarios (compensación económica)
7. Propietarios aceptan compensación
8. Se firma contrato de servidumbre (notarizado)
9. Se registra servidumbre en ORIP (sobre cada FMI)
10. Concesionario paga compensación
11. Telecomunicaciones puede instalar fibra en franja

**Postcondiciones:**
- Servidumbre constituida legalmente
- Fibra óptica puede instalarse

**Tiempo total:** 2-4 meses por servidumbre

---

## 8. CRITERIOS DE ACEPTACIÓN

### 8.1 Criterios Funcionales

- [ ] Censo predial completado (150-300 predios identificados)
- [ ] 100% de predios tienen avalúo comercial (Res. 1508/2012)
- [ ] 80-85% de predios adquiridos por vía voluntaria
- [ ] 15-20% de predios por expropiación
- [ ] 50-100 servidumbres constituidas
- [ ] 100% de títulos saneados antes de escrituración
- [ ] 100% de expedientes prediales completos (físico + digital)
- [ ] Subcuenta Predial gestionada con ANI
- [ ] 100% de predios entregados a construcción según cronograma
- [ ] Coordinación efectiva con Gestión Social (reasentamientos)

### 8.2 Criterios de Performance

- [ ] Tiempo de adquisición voluntaria: 6-12 meses promedio
- [ ] Tiempo de expropiación: 12-24 meses promedio
- [ ] Tasa de éxito negociación voluntaria: ≥ 80%
- [ ] 0 retrasos en cronograma de obra por falta de predios

### 8.3 Criterios de Calidad

- [ ] Cumplir Ley 388/1997 (Expropiación administrativa)
- [ ] Cumplir Ley 1682/2013 (Expropiación judicial infraestructura)
- [ ] Cumplir Resolución 1508/2012 (Metodología de avalúos ANI)
- [ ] Avalúos realizados por avaluadores certificados (Lonja)
- [ ] Títulos sin problemas jurídicos (saneados)
- [ ] Expedientes completos (100% de documentación)

### 8.4 Criterios de Integración

- [ ] Coordinación efectiva con Gestión Social (reasentamientos)
- [ ] Integración con Construcción (entrega oportuna de predios)
- [ ] Reportes integrados a ANI/Interventoría
- [ ] Gestión de Subcuenta Predial transparente

---

## 9. DEPENDENCIAS

| Sistema/Recurso | Tipo de Dependencia | Criticidad | Estado |
|:----------------|:--------------------|:-----------|:-------|
| **Diseño Geométrico Definitivo** | Define predios exactos necesarios | 🔴 CRÍTICA | ⏳ Por definir (mes 6) |
| **Gestión Social** | Reasentamientos | 🔴 CRÍTICA | ✅ Documentado (T01) |
| **Construcción** | Cronograma de necesidad de predios | 🔴 CRÍTICA | ⏳ Por definir |
| **ANI (Subcuenta Predial)** | Fondeo para compra de predios | 🔴 CRÍTICA | ⏳ Por gestionar |
| **Notarías/ORIP** | Escrituración y registro | 🔴 Alta | N/A (servicio público) |

---

## 10. PRÓXIMOS PASOS

- [ ] Elaborar Plan de Gestión Predial (PGP) detallado
- [ ] Realizar censo predial completo (mes 1-3)
- [ ] Solicitar aprobación de Subcuenta Predial a ANI
- [ ] Contratar avaluadores certificados
- [ ] Iniciar estudio de títulos (identificar problemas jurídicos)
- [ ] Elaborar estrategia de negociación voluntaria
- [ ] Coordinar con Gestión Social para reasentamientos
- [ ] Estimar costos detallados (Template T05)
- [ ] Establecer cronograma de adquisición (integrado con cronograma de obra)

---

## 11. REFERENCIAS

### Documentos Contractuales:
- [AT7 - Gestión Predial](../II.%20Apendices%20Tecnicos/AT7_Gestion_Predial_v1.0.md)
- [AT8 - Gestión Social](../II.%20Apendices%20Tecnicos/AT8_Gestion_Social_v1.0.md)
- [AT1 - Alcance del Proyecto](../II.%20Apendices%20Tecnicos/AT1_Alcance_Proyecto_v1.0.md)

### Documentos del Proyecto:
- [T01 - Ficha Sistema Gestión Predial](42_T01_Ficha_Sistema_Gestion_Predial_v1.0.md)
- [T01 - Gestión Social](41_T01_Ficha_Sistema_Gestion_Social_v1.0.md)

### Normativa:
- Ley 388/1997 - Desarrollo Territorial, Expropiación Administrativa
- Ley 1682/2013 - Infraestructura de Transporte, Expropiación Judicial
- Decreto 1420/1998 - Reglamentación Expropiación
- Resolución 1508/2012 (ANI) - Metodología de Avalúos
- Código Civil Colombiano - Servidumbres, Propiedad
- CPACA - Procedimientos Administrativos

---

## 12. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 17/10/2025 | Administrador Contractual EPC | Análisis inicial de requisitos de gestión predial |
| **v1.2** | 22/10/2025 | Administrador Contractual EPC | **Revisión con información oficial:** CCO La Lizama PK 4+300, longitudes actualizadas |

---

**Versión:** 1.2 ✅ **REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**  
**Estado:** ✅ Análisis de Requisitos Completado + Información Oficial Integrada  
**Fecha:** 22/10/2025  
**Responsable:** Gerente Predial / Abogado Especialista  
**Próximo documento:** T03 - Plan de Gestión Predial Detallado  

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- CCO ubicado en La Lizama PK 4+300 (RN 4513)
- Cobertura actualizada: 259.6 km principal + 33.4 km adicionales
- Predios para CCO actualizados con ubicación oficial
- Metodología PKD lineal aplicada

---

**Fin del documento - T02 Análisis de Requisitos Sistema de Gestión Predial**  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*
