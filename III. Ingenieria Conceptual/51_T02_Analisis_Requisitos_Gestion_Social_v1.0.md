# T02: ANÁLISIS DE REQUISITOS - SISTEMA DE GESTIÓN SOCIAL
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 17/10/2025  
**Sistema:** Gestión Social  
**Responsable:** Gerente Social / Especialista Social  
**Versión:** 1.0  

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Documento

Este documento presenta el **análisis detallado de requisitos** del Sistema de Gestión Social para el proyecto APP Puerto Salgar - Barrancabermeja, cubriendo el ciclo de vida completo (25 años).

El análisis cubre:
- Requisitos funcionales de gestión social
- Requisitos no funcionales (participación, satisfacción)
- Requisitos de interfaces con otros sistemas
- Criterios de aceptación
- Casos de uso principales
- Matriz de trazabilidad contractual

### 1.2 Alcance

Este análisis cubre el **sistema completo de gestión social** en TODAS las fases:

**Componentes:**
1. **Plan de Gestión Social (PGS)** para todas las fases
2. **Programa de Contratación de Mano de Obra Local**
3. **Sistema de Atención de PQRS** (24/7)
4. **Participación Comunitaria** (reuniones, veedurías)
5. **Plan de Reasentamientos** (coordinado con AT7)
6. **Educación Vial Comunitaria**
7. **Apoyo a Economías Locales**
8. **Oficinas de Atención al Usuario (OAU)**

**Cobertura:**
- 259.6 km principales + 33.4 km adicionales + Área de Influencia Directa e Indirecta
- 4 municipios: Puerto Salgar, Puerto Boyacá, Puerto Berrío, Barrancabermeja

### 1.3 Definiciones y Acrónimos

| Término | Definición |
|:--------|:-----------|
| **PGS** | Plan de Gestión Social |
| **PQRS** | Peticiones, Quejas, Reclamos y Sugerencias |
| **OAU** | Oficina de Atención al Usuario |
| **JAC** | Junta de Acción Comunal |
| **AI-D** | Área de Influencia Directa |
| **AI-I** | Área de Influencia Indirecta |
| **CAV** | Centro de Atención al Usuario (integrado con OAU) |
| **CPACA** | Código de Procedimiento Administrativo y de lo Contencioso Administrativo |

---

## 2. REQUISITOS FUNCIONALES

### 2.1 Plan de Gestión Social (PGS)

**ID:** RF-001  
**Descripción:** El sistema debe elaborar e implementar el PGS para todas las fases del proyecto  
**Prioridad:** 🔴 CRÍTICA  
**Fuente:** AT8, Obligaciones Generales  

**Criterios de Aceptación:**
- PGS elaborado y aprobado por ANI/Interventoría
- PGS por fase: Preconstrucción, Construcción, O&M, Reversión
- Actualización periódica según cambios en el proyecto
- Programas sociales específicos (contratación, PQRS, participación, etc.)
- Indicadores de gestión social

---

### 2.2 Contratación de Mano de Obra Local

**ID:** RF-002  
**Descripción:** El sistema debe vincular prioritariamente mano de obra local no calificada y semicalificada  
**Prioridad:** 🔴 Alta  
**Fuente:** AT8; Ley 1682/2013  

**Criterios de Aceptación:**
- Base de datos de mano de obra local (por municipio)
- Convocatorias públicas de empleo (periódico, radio, redes sociales)
- Priorización: Residentes de AI-D > AI-I > Región
- Meta: ≥50% de mano de obra no calificada/semicalificada debe ser local
- Capacitación de personal local (si requiere)
- Registro de contrataciones (nombre, municipio, cargo)
- Reportes mensuales de contratación local

---

### 2.3 Sistema de Atención de PQRS

**ID:** RF-003  
**Descripción:** El sistema debe gestionar Peticiones, Quejas, Reclamos y Sugerencias de comunidades y usuarios  
**Prioridad:** 🔴 CRÍTICA  
**Fuente:** AT8; Ley 1437/2011 (CPACA)  

**Criterios de Aceptación:**
- **Canales de recepción:**
  - Presencial (OAU)
  - Línea telefónica 24/7
  - Correo electrónico
  - Portal web
  - Redes sociales
- **Tiempos de respuesta:**
  - Peticiones: 15 días hábiles
  - Quejas/Reclamos: 15 días hábiles
  - Sugerencias: 30 días hábiles
- Software de gestión de PQRS (trazabilidad)
- Clasificación de PQRS (tipo, tema, criticidad)
- Registro del 100% de PQRS
- Reportes mensuales a ANI/Interventoría

---

### 2.4 Participación Comunitaria

**ID:** RF-004  
**Descripción:** El sistema debe facilitar la participación e información de las comunidades  
**Prioridad:** 🔴 Alta  
**Fuente:** AT8; Constitución Política Art. 79  

**Criterios de Aceptación:**
- **Reuniones informativas:** Mínimo trimestrales por municipio
- **Talleres participativos:** Según necesidades
- **Veedurías ciudadanas:** Conformación y seguimiento
- **Material informativo:** Boletines, folletos, videos
- **Convocatoria amplia:** Periódico, radio, redes sociales, JAC
- Registro de asistencia y actas de reuniones
- Atención a inquietudes y retroalimentación

---

### 2.5 Plan de Reasentamientos

**ID:** RF-005  
**Descripción:** El sistema debe coordinar con AT7 el reasentamiento físico y económico de hogares afectados  
**Prioridad:** 🔴 CRÍTICA (si aplica)  
**Fuente:** AT8; AT7; Ley 1682/2013  

**Criterios de Aceptación:**
- Censo de hogares a reasentar (coordinado con Predial)
- Plan de Reasentamiento elaborado según BID/BM
- Reasentamiento físico: Viviendas de reposición
- Reasentamiento económico: Restablecimiento de actividades productivas
- Acompañamiento psicosocial
- Seguimiento post-reasentamiento (mínimo 2 años)
- Satisfacción de hogares reasentados ≥ 80%

---

### 2.6 Programa de Educación Vial

**ID:** RF-006  
**Descripción:** El sistema debe implementar campañas de educación vial en comunidades  
**Prioridad:** 🟡 Alta  
**Fuente:** AT8; Ley 769/2002 (Código de Tránsito)  

**Criterios de Aceptación:**
- Campañas en colegios (primaria, secundaria)
- Talleres para conductores de transporte público
- Material educativo (cartillas, videos)
- Temas: Seguridad vial, uso de cinturón, velocidad, no alcohol
- Frecuencia: 2 campañas anuales por municipio
- Registro de beneficiarios (estudiantes, conductores)

---

### 2.7 Oficinas de Atención al Usuario (OAU)

**ID:** RF-007  
**Descripción:** El sistema debe operar OAU en municipios principales  
**Prioridad:** 🔴 Alta  
**Fuente:** AT8; Servicios al usuario  

**Criterios de Aceptación:**
- 3-4 OAU (Puerto Salgar, Puerto Boyacá, Puerto Berrío, Barrancabermeja)
- Horario: Lunes a Viernes 8:00-17:00, Sábado 8:00-12:00
- Personal: Trabajador social + asistente
- Servicios:
  - Información del proyecto
  - Recepción de PQRS
  - Trámites prediales (coordinado con AT7)
  - Información de empleo
  - Atención a reasentamientos
- Conectividad con CCO (PQRS integrado)

---

### 2.8 Apoyo a Actividades Económicas Locales

**ID:** RF-008  
**Descripción:** El sistema debe apoyar el fortalecimiento de economías locales  
**Prioridad:** 🟡 Media  
**Fuente:** AT8; Responsabilidad Social Empresarial  

**Criterios de Aceptación:**
- Programas de fortalecimiento empresarial (MIPYMES)
- Capacitación en emprendimiento
- Acceso a oportunidades de negocio (proveedores, restaurantes en áreas de servicio)
- Apoyo a organizaciones productivas locales
- Alianzas con SENA, Cámaras de Comercio

---

### 2.9 Gestión de Conflictos

**ID:** RF-009  
**Descripción:** El sistema debe prevenir y resolver conflictos sociales  
**Prioridad:** 🔴 Alta  
**Fuente:** AT8; Gestión de riesgos sociales  

**Criterios de Aceptación:**
- Identificación temprana de conflictos potenciales
- Mecanismos de diálogo y concertación
- Mediación en conflictos
- Registro de conflictos y resoluciones
- Prevención de paros, bloqueos, manifestaciones

---

### 2.10 Monitoreo del Componente Social

**ID:** RF-010  
**Descripción:** El sistema debe monitorear continuamente variables sociales  
**Prioridad:** 🟡 Alta  
**Fuente:** AT8  

**Criterios de Aceptación:**
- Indicadores de gestión social monitoreados:
  - % de contratación local
  - Tiempo de respuesta PQRS
  - Nivel de conflictividad social
  - Satisfacción de comunidades
  - Asistencia a reuniones informativas
- Reportes mensuales
- Encuestas de percepción (semestral)

---

## 3. REQUISITOS NO FUNCIONALES

### 3.1 Requisitos de Calidad de Atención

| ID | Requisito | Valor | Fuente |
|:---|:----------|:------|:-------|
| **RNF-001** | Tiempo de respuesta PQRS | ≤ 15 días hábiles | CPACA, Ley 1437/2011 |
| **RNF-002** | Satisfacción comunidades (encuestas) | ≥ 70% satisfecho | Buenas prácticas |
| **RNF-003** | Contratación local | ≥ 50% (mano de obra no calificada) | AT8 |

---

### 3.2 Requisitos de Personal

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-004** | Equipo social | Gerente + 4-6 Trabajadores Sociales + 8-12 Promotores | AT8 |
| **RNF-005** | Capacitación continua | Actualización en gestión social, resolución conflictos | Buenas prácticas |

---

## 4. REQUISITOS DE INTERFACES

### 4.1 Interface Gestión Social ↔ Gestión Predial

**ID:** RI-001  
**Sistemas:** Gestión Social (AT8) ↔ Gestión Predial (AT7)  
**Tipo:** Coordinación Estrecha  
**Protocolo:** Reuniones, Reportes Integrados  
**Datos Intercambiados:**
- Reasentamientos físicos y económicos
- Negociación con comunidades
- Atención de PQRS relacionadas con predios
**Frecuencia:** Semanal (durante adquisición predial)

---

### 4.2 Interface Gestión Social ↔ Gestión Ambiental

**ID:** RI-002  
**Sistemas:** Gestión Social ↔ Gestión Ambiental (AT6)  
**Tipo:** Coordinación  
**Protocolo:** Reuniones, Reportes  
**Datos Intercambiados:**
- Componente socioambiental
- Educación ambiental comunitaria
- Veedurías ambientales
**Frecuencia:** Mensual

---

### 4.3 Interface Gestión Social ↔ Comunidades

**ID:** RI-003  
**Sistemas:** Gestión Social ↔ JAC, Alcaldías, Organizaciones Comunitarias  
**Tipo:** Participativa  
**Protocolo:** Reuniones, Talleres, PQRS  
**Datos Intercambiados:**
- Información del proyecto
- Atención de inquietudes
- Participación en decisiones
**Frecuencia:** Trimestral + eventos

---

### 4.4 Interface Gestión Social ↔ ANI/Interventoría

**ID:** RI-004  
**Sistemas:** Gestión Social ↔ ANI/Interventoría  
**Tipo:** Supervisión, Reportes  
**Protocolo:** Plataforma ANI, Correo  
**Datos Intercambiados:**
- Reportes mensuales de gestión social
- Atención de PQRS
- Contratación local
- Conflictos sociales
**Frecuencia:** Mensual

---

## 5. MATRIZ DE TRAZABILIDAD

| Requisito ID | Tipo | Descripción Resumida | Fuente Contractual | Prioridad |
|:-------------|:-----|:---------------------|:-------------------|:----------|
| **RF-001** | Funcional | Plan de Gestión Social (PGS) | AT8 | 🔴 CRÍTICA |
| **RF-002** | Funcional | Contratación local (≥50%) | AT8, Ley 1682/2013 | 🔴 Alta |
| **RF-003** | Funcional | Sistema PQRS (≤15 días) | AT8, CPACA | 🔴 CRÍTICA |
| **RF-004** | Funcional | Participación comunitaria | AT8, Constitución Art. 79 | 🔴 Alta |
| **RF-005** | Funcional | Reasentamientos | AT8, AT7, Ley 1682/2013 | 🔴 CRÍTICA (si aplica) |
| **RF-006** | Funcional | Educación vial | AT8, Ley 769/2002 | 🟡 Alta |
| **RF-007** | Funcional | OAU (4 oficinas) | AT8 | 🔴 Alta |
| **RNF-001** | Performance | PQRS ≤ 15 días | CPACA | 🔴 CRÍTICA |
| **RNF-003** | Performance | Contratación local ≥50% | AT8 | 🔴 Alta |

**Total requisitos identificados:** 25 (10 funcionales + 15 no funcionales)

---

## 6. RESTRICCIONES Y SUPUESTOS

### 6.1 Restricciones

| ID | Restricción | Impacto | Origen |
|:---|:------------|:--------|:-------|
| **REST-001** | Incumplimiento de tiempo PQRS (>15 días) = infracción legal | Alto - Multas y sanciones | CPACA, Ley 1437/2011 |
| **REST-002** | Obligación de contratación local | Alto - Compromiso contractual | AT8 |
| **REST-003** | Reasentamientos deben cumplir estándares BID/BM | Crítico - Impacto en licencia social | AT8 |

---

### 6.2 Supuestos

| ID | Supuesto | Riesgo | Validación |
|:---|:---------|:-------|:-----------|
| **SUP-001** | Número de hogares a reasentar: 10-50 | Alto - Variación de costo significativa | Censo predial (mes 3) |
| **SUP-002** | Comunidades receptivas al proyecto | Medio - Posible conflictividad social | Reuniones tempranas |
| **SUP-003** | Mano de obra local disponible y calificable | Medio - Requiere capacitación | Censo laboral (mes 1) |

---

## 7. CASOS DE USO

### 7.1 CU-001: Atención de PQRS en OAU

**Actor:** Usuario/Comunidad + Trabajador Social  
**Descripción:** Ciudadano presenta queja en OAU y es atendida  

**Flujo Normal:**
1. Ciudadano acude a OAU en Puerto Boyacá
2. Trabajador social atiende al ciudadano
3. Ciudadano presenta queja: "Ruido excesivo de construcción en la noche"
4. Trabajador social registra PQRS en sistema:
   - Tipo: Queja
   - Tema: Ruido en construcción
   - Ubicación: Vereda X, Puerto Boyacá
   - Fecha de radicación: 01/09/2025
5. Sistema genera radicado: PQRS-2025-0145
6. Trabajador social entrega copia al ciudadano
7. Sistema asigna PQRS a responsable (Gerente de Construcción UF-5)
8. Responsable investiga (visita a obra, medición de ruido)
9. Responsable toma acción correctiva (suspender trabajo nocturno)
10. Responsable elabora respuesta
11. Trabajador social notifica al ciudadano (correo + llamada)
12. Ciudadano satisfecho con respuesta
13. Sistema cierra PQRS (tiempo total: 10 días)

**Postcondiciones:**
- PQRS atendida en < 15 días
- Acción correctiva implementada
- Ciudadano satisfecho

---

### 7.2 CU-002: Reunión Informativa con Comunidad

**Actor:** Gerente Social + Comunidad  
**Descripción:** Reunión trimestral informativa sobre avances del proyecto  

**Flujo Normal:**
1. Gerente Social programa reunión (vereda Las Brisas, Puerto Boyacá)
2. Promotores comunitarios convocan (visitas casa a casa, volantes, perifoneo)
3. Se prepara presentación (avances, empleo generado, próximas obras)
4. Día de la reunión: Asisten 80 personas (JAC, comunidad)
5. Gerente Social presenta avances del proyecto (30 min)
6. Se abre espacio de preguntas y respuestas (1 hora)
7. Comunidad plantea inquietudes (polvo, tráfico, empleo)
8. Gerente Social responde y toma nota de compromisos
9. Se firma acta de reunión (asistentes, temas, compromisos)
10. Gerente Social envía acta a ANI/Interventoría
11. Gerente Social hace seguimiento a compromisos adquiridos

**Postcondiciones:**
- Comunidad informada
- Acta firmada y archivada
- Compromisos documentados

**Frecuencia:** Trimestral por municipio

---

### 7.3 CU-003: Contratación de Mano de Obra Local

**Actor:** Constructor + Promotor Social  
**Descripción:** Contratación prioritaria de mano de obra local  

**Flujo Normal:**
1. Constructor requiere 20 obreros para UF-8 (Puerto Berrío)
2. Promotor social publica convocatoria (periódico local, radio)
3. Se reciben 45 aplicaciones (30 de Puerto Berrío, 15 foráneos)
4. Promotor prioriza aplicantes de Puerto Berrío (AI-D)
5. Constructor entrevista a 30 aplicantes locales
6. Constructor selecciona 18 locales + 2 foráneos (con experiencia especializada)
7. Promotor registra contrataciones: 90% local
8. Constructor capacita personal (3 días: seguridad, procedimientos)
9. Personal inicia labores
10. Promotor genera reporte mensual: "90% contratación local UF-8"

**Postcondiciones:**
- Meta de contratación local cumplida (≥50%)
- Empleo generado en comunidad local

---

## 8. CRITERIOS DE ACEPTACIÓN

### 8.1 Criterios Funcionales

- [ ] Plan de Gestión Social (PGS) elaborado e implementado
- [ ] ≥50% de mano de obra no calificada/semicalificada es local
- [ ] Sistema PQRS operativo (4 canales: presencial, teléfono, web, correo)
- [ ] 100% de PQRS respondidas en tiempo (≤15 días)
- [ ] Reuniones informativas trimestrales en 4 municipios
- [ ] Plan de Reasentamientos implementado (si aplica)
- [ ] 2 campañas anuales de educación vial por municipio
- [ ] 4 OAU operativas
- [ ] Programas de apoyo a economías locales activos
- [ ] Monitoreo social continuo

### 8.2 Criterios de Performance

- [ ] Tiempo de respuesta PQRS: ≤ 15 días hábiles
- [ ] Contratación local: ≥ 50%
- [ ] Satisfacción de comunidades: ≥ 70% (encuestas)
- [ ] Satisfacción de hogares reasentados: ≥ 80%
- [ ] Asistencia a reuniones: ≥ 50 personas por reunión

### 8.3 Criterios de Calidad

- [ ] Cumplir Ley 1437/2011 (CPACA - Derecho de petición)
- [ ] Cumplir Ley 1682/2013 (Contratación local)
- [ ] Cumplir Convenio 169 OIT (si aplica a comunidades étnicas)
- [ ] Cumplir Ley 1882/2018 (Inclusión laboral discapacidad)
- [ ] Equipo social con formación certificada

### 8.4 Criterios de Integración

- [ ] Coordinación efectiva con Gestión Predial (reasentamientos)
- [ ] Coordinación con Gestión Ambiental (socioambiental)
- [ ] Integración con Construcción (contratación local)
- [ ] Reportes integrados a ANI/Interventoría

---

## 9. DEPENDENCIAS

| Sistema/Recurso | Tipo de Dependencia | Criticidad | Estado |
|:----------------|:--------------------|:-----------|:-------|
| **Gestión Predial** | Reasentamientos | 🔴 CRÍTICA (si aplica) | ✅ Documentado (T01) |
| **Gestión Ambiental** | Componente socioambiental | 🟡 Media | ✅ Documentado (T01) |
| **Construcción** | Contratación local | 🔴 Alta | ⏳ Por iniciar |
| **Comunidades** | Aceptación del proyecto | 🔴 Alta | ⏳ Por gestionar |

---

## 10. PRÓXIMOS PASOS

- [ ] Elaborar Plan de Gestión Social (PGS) detallado
- [ ] Realizar censo de mano de obra local disponible
- [ ] Implementar plataforma de gestión de PQRS
- [ ] Abrir 4 OAU en municipios principales
- [ ] Coordinar con Predial para Plan de Reasentamientos
- [ ] Iniciar reuniones informativas con comunidades
- [ ] Elaborar material de educación vial
- [ ] Estimar costos detallados (Template T05)

---

## 11. REFERENCIAS

### Documentos Contractuales:
- [AT8 - Gestión Social](../II.%20Apendices%20Tecnicos/AT8_Gestion_Social_v1.0.md)
- [AT7 - Gestión Predial](../II.%20Apendices%20Tecnicos/AT7_Gestion_Predial_v1.0.md)

### Documentos del Proyecto:
- [T01 - Ficha Sistema Gestión Social](41_T01_Ficha_Sistema_Gestion_Social_v1.0.md)
- [T01 - Gestión Predial](42_T01_Ficha_Sistema_Gestion_Predial_v1.0.md)
- [T01 - Gestión Ambiental](40_T01_Ficha_Sistema_Gestion_Ambiental_v1.0.md)

### Normativa:
- Ley 1437/2011 (CPACA) - Derecho de Petición
- Ley 1682/2013 - Infraestructura de Transporte
- Convenio 169 OIT - Consulta Previa
- Ley 1882/2018 - Inclusión Laboral Discapacidad
- Ley 769/2002 - Código Nacional de Tránsito

---

## 12. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 17/10/2025 | Administrador Contractual EPC | Análisis inicial de requisitos de gestión social |
| **v1.2** | 22/10/2025 | Administrador Contractual EPC | **Revisión con información oficial:** Longitudes actualizadas, cobertura 259.6 km + 33.4 km |

---

**Versión:** 1.2 ✅ **REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**  
**Estado:** ✅ Análisis de Requisitos Completado + Información Oficial Integrada  
**Fecha:** 22/10/2025  
**Responsable:** Gerente Social  
**Próximo documento:** T03 - Plan de Gestión Social Detallado  

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- Cobertura actualizada: 259.6 km principal + 33.4 km adicionales
- Longitudes validadas contra información oficial
- Metodología PKD lineal aplicada

---

**Fin del documento - T02 Análisis de Requisitos Sistema de Gestión Social**  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*

