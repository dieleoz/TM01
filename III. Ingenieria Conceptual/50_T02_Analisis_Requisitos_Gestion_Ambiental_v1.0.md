# T02: ANÁLISIS DE REQUISITOS - SISTEMA DE GESTIÓN AMBIENTAL
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 17/10/2025  
**Sistema:** Gestión Ambiental  
**Responsable:** Gerente Ambiental / Especialista Ambiental  
**Versión:** 1.0  

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Documento

Este documento presenta el **análisis detallado de requisitos** del Sistema de Gestión Ambiental para el proyecto APP Puerto Salgar - Barrancabermeja, cubriendo el ciclo de vida completo (25 años).

El análisis cubre:
- Requisitos funcionales de gestión ambiental
- Requisitos no funcionales (cumplimiento legal, calidad)
- Requisitos de interfaces con otros sistemas
- Criterios de aceptación
- Casos de uso principales
- Matriz de trazabilidad contractual

### 1.2 Alcance

Este análisis cubre el **sistema completo de gestión ambiental** en TODAS las fases:

**Fases cubiertas:**
1. **Preconstrucción:** Licencias, permisos
2. **Construcción:** PAGA (Programa de Adaptación Guía Ambiental)
3. **O&M:** PMAR (Plan de Manejo Ambiental de la Operación)
4. **Reversión:** Entrega de compensaciones

**Componentes:**
- Licencias Ambientales y Permisos
- PAGA (14 UFs)
- PMAR (25 años)
- Compensaciones Ambientales
- Gestión de Residuos (PGIRS)
- Manejo de Fauna
- Monitoreo Ambiental
- Gestión del Riesgo de Desastres

### 1.3 Definiciones y Acrónimos

| Término | Definición |
|:--------|:-----------|
| **PAGA** | Programa de Adaptación de la Guía Ambiental (Construcción) |
| **PMAR** | Plan de Manejo Ambiental de la Operación (O&M) |
| **PGIRS** | Plan de Gestión Integral de Residuos Sólidos |
| **PRGD** | Plan de Riesgo y Gestión de Desastres |
| **ANLA** | Autoridad Nacional de Licencias Ambientales |
| **CAR** | Corporación Autónoma Regional |
| **RAEE** | Residuos de Aparatos Eléctricos y Electrónicos |
| **RESPEL** | Residuos Peligrosos |
| **GEI** | Gases de Efecto Invernadero |
| **DBO** | Demanda Bioquímica de Oxígeno |
| **SST** | Sólidos Suspendidos Totales |

---

## 2. REQUISITOS FUNCIONALES

### 2.1 Obtención y Cumplimiento de Licencia Ambiental

**ID:** RF-001  
**Descripción:** El sistema debe gestionar la obtención/modificación de Licencia Ambiental  
**Prioridad:** 🔴 CRÍTICA  
**Fuente:** AT6, Capítulo III; Decreto 1076/2015  

**Criterios de Aceptación:**
- Cesión o modificación de Licencia Ambiental existente (si aplica)
- Obtención de nueva Licencia Ambiental (si se requieren nuevas intervenciones)
- Cumplimiento del 100% de las obligaciones de la Licencia
- Informes de cumplimiento ambiental (ICA) semestrales
- Archivo de permisos vigentes (concesiones agua, vertimientos, emisiones)

---

### 2.2 Implementación del PAGA (Construcción)

**ID:** RF-002  
**Descripción:** El sistema debe implementar el PAGA en las 14 UFs durante construcción  
**Prioridad:** 🔴 CRÍTICA  
**Fuente:** AT6, Sección 3.1  

**Criterios de Aceptación:**
- PAGA elaborado y aprobado por ANLA/CAR
- 14 Programas ambientales implementados:
  1. Gestión de permisos
  2. Control de emisiones y ruido
  3. Manejo de aguas y vertimientos
  4. Manejo de residuos sólidos
  5. Manejo de materiales de construcción
  6. Restauración de áreas intervenidas
  7. Protección de fauna y flora
  8. Compensaciones forestales
  9. Educación ambiental
  10. Arqueología preventiva
  11. Gestión social (coordinado con AT8)
  12. Señalización ambiental
  13. Contingencias ambientales
  14. Monitoreo y seguimiento

---

### 2.3 Implementación del PMAR (O&M)

**ID:** RF-003  
**Descripción:** El sistema debe implementar el PMAR durante operación y mantenimiento (25 años)  
**Prioridad:** 🔴 CRÍTICA  
**Fuente:** AT6, Sección 3.1  

**Criterios de Aceptación:**
- PMAR elaborado y aprobado
- Programas ambientales de O&M:
  - Gestión de residuos de peajes, CCO, áreas de servicio
  - Manejo de fauna (prevención atropellamientos, rescate)
  - Mantenimiento de compensaciones ambientales
  - Monitoreo ambiental continuo
  - Gestión de riesgo de desastres
  - Cambio climático (reducción GEI)
- Vigencia: 25 años
- Actualización periódica según cambios normativos

---

### 2.4 Gestión Integral de Residuos (PGIRS)

**ID:** RF-004  
**Descripción:** El sistema debe gestionar residuos sólidos, peligrosos y especiales  
**Prioridad:** 🔴 Alta  
**Fuente:** AT6; Decreto 1077/2015  

**Criterios de Aceptación:**
- **Puntos de generación:** Peajes (2), CCO (1), Áreas de Servicio (14), Talleres
- **Tipos de residuos:**
  - Ordinarios (basura doméstica)
  - Reciclables (papel, plástico, vidrio, metal)
  - Peligrosos (aceites, baterías, lámparas fluorescentes)
  - Especiales (RAEE - equipos electrónicos)
- **Separación en origen** (código de colores)
- **Almacenamiento temporal** (centros de acopio)
- **Recolección y transporte:** Empresas autorizadas
- **Disposición final:** Rellenos sanitarios, recicladores, gestores RESPEL autorizados
- **Registro y reportes:** Mensuales (cantidad, tipo, disposición)

---

### 2.5 Compensaciones Ambientales

**ID:** RF-005  
**Descripción:** El sistema debe ejecutar compensaciones ambientales según Resolución 256/2018  
**Prioridad:** 🔴 Alta  
**Fuente:** AT6; Resolución 256/2018  

**Criterios de Aceptación:**
- Áreas de compensación biótica definidas (ha por determinar)
- Reforestación con especies nativas
- Viveros para producción de material vegetal
- Mantenimiento de compensaciones (15 años mínimo)
- Monitoreo de supervivencia (≥70% a los 5 años)
- Participación comunitaria
- Reportes a Autoridad Ambiental

---

### 2.6 Programa de Manejo de Fauna Silvestre

**ID:** RF-006  
**Descripción:** El sistema debe prevenir, rescatar y relocalizar fauna afectada  
**Prioridad:** 🔴 Alta  
**Fuente:** AT6; Resolución 1912/2017  

**Criterios de Aceptación:**
- Prevención de atropellamientos:
  - Pasos de fauna (inferiores/superiores)
  - Cercas guía
  - Señalización de cruces de fauna
- Rescate de fauna durante obras
- Relocación a áreas seguras
- Monitoreo de atropellamientos (registro mensual)
- Coordinación con autoridades ambientales

---

### 2.7 Monitoreo Ambiental Continuo

**ID:** RF-007  
**Descripción:** El sistema debe monitorear continuamente variables ambientales  
**Prioridad:** 🟡 Alta  
**Fuente:** AT6; Licencia Ambiental  

**Criterios de Aceptación:**
- **Monitoreo de agua:** Calidad de cuerpos de agua (trimestral)
- **Monitoreo de aire:** PM10, PM2.5 (si aplica, zonas urbanas)
- **Monitoreo de ruido:** Niveles en receptores sensibles (semestral)
- **Monitoreo de fauna:** Atropellamientos, uso de pasos de fauna
- **Monitoreo de flora:** Supervivencia de compensaciones
- Reportes a Autoridad Ambiental según frecuencia establecida

---

### 2.8 Gestión del Riesgo de Desastres (PRGD)

**ID:** RF-008  
**Descripción:** El sistema debe gestionar amenazas naturales y antrópicas  
**Prioridad:** 🔴 Alta  
**Fuente:** AT3 (Anexo Plan Gestión Riesgo Desastres); Decreto 602/2017  

**Criterios de Aceptación:**
- PRGD elaborado y aprobado
- Identificación de amenazas:
  - Movimientos en masa (deslizamientos)
  - Inundaciones
  - Sismicidad
  - Incendios forestales
- Planes de contingencia por amenaza
- Coordinación con Sistema Nacional de Gestión del Riesgo
- Simulacros anuales

---

### 2.9 Programa de Aporte Sostenible (Cambio Climático)

**ID:** RF-009  
**Descripción:** El sistema debe implementar programa de mitigación de emisiones GEI  
**Prioridad:** 🟡 Media  
**Fuente:** AT6; Ley 1931/2018  

**Criterios de Aceptación:**
- Inventario de emisiones GEI (construcción y operación)
- Medidas de reducción:
  - Eficiencia energética (LED, equipos eficientes)
  - Energías renovables (solar en áreas servicio, opcional)
  - Gestión de combustibles
- Compensación de emisiones (opcional)
- Reporte anual de huella de carbono

---

### 2.10 Subcuenta de Compensaciones Socioambientales (ANI)

**ID:** RF-010  
**Descripción:** El sistema debe gestionar recursos de la Subcuenta de Compensaciones  
**Prioridad:** 🔴 Alta  
**Fuente:** AT6; ANI  

**Criterios de Aceptación:**
- Solicitud de recursos para compensaciones
- Ejecución de compensaciones con recursos de subcuenta
- Rendición de cuentas a ANI (trimestral)
- Auditorías de interventoría

---

## 3. REQUISITOS NO FUNCIONALES

### 3.1 Requisitos de Cumplimiento Legal

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-001** | Cumplimiento 100% de Licencia Ambiental | Obligatorio, penalizable | AT6, Decreto 1076/2015 |
| **RNF-002** | Permisos vigentes | Concesiones agua, vertimientos, emisiones | AT6 |
| **RNF-003** | Reportes a tiempo | ICA semestrales, otros según frecuencia | Licencia Ambiental |
| **RNF-004** | Cumplimiento normativa de residuos | RAEE, RESPEL, ordinarios | AT6, Decreto 1077/2015 |

---

### 3.2 Requisitos de Calidad Ambiental

| ID | Requisito | Valor | Fuente |
|:---|:----------|:------|:-------|
| **RNF-005** | Vertimientos PTAR | DBO < 90 mg/L, SST < 90 mg/L | Resolución 631/2015 |
| **RNF-006** | Calidad de agua potable | Según Res. 2115/2007 | Código Sanitario |
| **RNF-007** | Niveles de ruido | < 65 dB día, < 55 dB noche (zonas residenciales) | Res. 909/2008 |
| **RNF-008** | Supervivencia compensaciones forestales | ≥ 70% a los 5 años | Res. 256/2018 |

---

### 3.3 Requisitos de Personal

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-009** | Equipo ambiental | Gerente + 4-6 Especialistas + 10-15 Técnicos | AT6 |
| **RNF-010** | Capacitación continua | Actualización normativa anual | Buenas prácticas |

---

## 4. REQUISITOS DE INTERFACES

### 4.1 Interface Gestión Ambiental ↔ Gestión Social

**ID:** RI-001  
**Sistemas:** Gestión Ambiental (AT6) ↔ Gestión Social (AT8)  
**Tipo:** Coordinación  
**Protocolo:** Reuniones, Reportes Integrados  
**Datos Intercambiados:**
- Componente socioambiental
- Impactos sociales de medidas ambientales
- Educación ambiental comunitaria
- Veedurías ambientales
**Frecuencia:** Mensual

---

### 4.2 Interface Gestión Ambiental ↔ Construcción

**ID:** RI-002  
**Sistemas:** Gestión Ambiental ↔ Construcción de UFs  
**Tipo:** Supervisión  
**Protocolo:** Inspecciones, Reportes  
**Datos Intercambiados:**
- Cumplimiento de PAGA en obra
- Gestión de residuos de construcción
- Control de emisiones de polvo, ruido
- Manejo de aguas de escorrentía
**Frecuencia:** Diario (durante construcción)

---

### 4.3 Interface Gestión Ambiental ↔ Autoridades Ambientales

**ID:** RI-003  
**Sistemas:** Gestión Ambiental ↔ ANLA, CAR, CAS, CORTOLIMA, CDMB  
**Tipo:** Regulatoria  
**Protocolo:** Plataforma VITAL (ANLA), Oficios, Reuniones  
**Datos Intercambiados:**
- Solicitudes de permisos
- Informes de Cumplimiento Ambiental (ICA)
- Reportes de monitoreo
- Trámites administrativos
**Frecuencia:** Semestral (ICA) + eventos

---

### 4.4 Interface Gestión Ambiental ↔ ANI/Interventoría

**ID:** RI-004  
**Sistemas:** Gestión Ambiental ↔ ANI/Interventoría  
**Tipo:** Supervisión, Reportes  
**Protocolo:** Plataforma ANI, Correo, Reuniones  
**Datos Intercambiados:**
- Reportes mensuales de gestión ambiental
- Subcuenta de compensaciones (solicitudes, ejecución)
- Auditorías ambientales
**Frecuencia:** Mensual

---

## 5. MATRIZ DE TRAZABILIDAD

| Requisito ID | Tipo | Descripción Resumida | Fuente Contractual | Prioridad |
|:-------------|:-----|:---------------------|:-------------------|:----------|
| **RF-001** | Funcional | Licencia Ambiental | AT6, Decreto 1076/2015 | 🔴 CRÍTICA |
| **RF-002** | Funcional | Implementación PAGA (14 UFs) | AT6, 3.1 | 🔴 CRÍTICA |
| **RF-003** | Funcional | Implementación PMAR (25 años) | AT6, 3.1 | 🔴 CRÍTICA |
| **RF-004** | Funcional | PGIRS (Residuos) | AT6, Decreto 1077/2015 | 🔴 Alta |
| **RF-005** | Funcional | Compensaciones (Res. 256/2018) | AT6, Res. 256/2018 | 🔴 Alta |
| **RF-006** | Funcional | Manejo de fauna | AT6, Res. 1912/2017 | 🔴 Alta |
| **RF-007** | Funcional | Monitoreo ambiental | AT6, Licencia Ambiental | 🟡 Alta |
| **RF-008** | Funcional | PRGD (Gestión Riesgo Desastres) | AT3, Decreto 602/2017 | 🔴 Alta |
| **RNF-001** | Cumplimiento Legal | 100% cumplimiento Licencia | AT6 | 🔴 CRÍTICA |
| **RNF-005** | Calidad Ambiental | Vertimientos PTAR (DBO<90) | Res. 631/2015 | 🔴 Alta |

**Total requisitos identificados:** 30 (10 funcionales + 20 no funcionales)

---

## 6. RESTRICCIONES Y SUPUESTOS

### 6.1 Restricciones

| ID | Restricción | Impacto | Origen |
|:---|:------------|:--------|:-------|
| **REST-001** | Incumplimiento de Licencia Ambiental = suspensión obra | CRÍTICO - Puede detener proyecto | Decreto 1076/2015 |
| **REST-002** | Multas ambientales (hasta 5,000 SMMLV) | Alto - Impacto financiero | Normativa ambiental |
| **REST-003** | Obligaciones vigentes 25 años | Alto - OPEX continuo | AT6 |

---

### 6.2 Supuestos

| ID | Supuesto | Riesgo | Validación |
|:---|:---------|:-------|:-----------|
| **SUP-001** | Licencia Ambiental existente puede modificarse | Alto - Requiere nueva licencia (2-3 años) | Validar con ANLA (mes 1) |
| **SUP-002** | Áreas de compensación disponibles | Alto - Sin áreas, no hay compensación | Identificar áreas (mes 6) |
| **SUP-003** | Costo compensaciones: $2.5M USD | Medio - Variación según ha requeridas | Validar con estudios ambientales |

---

## 7. CASOS DE USO

### 7.1 CU-001: Gestión de Residuos en Peaje

**Actor:** Personal de Limpieza + Supervisor Ambiental  
**Descripción:** Gestión diaria de residuos generados en estación de peaje  

**Flujo Normal:**
1. Personal recolecta residuos de canecas (3 tipos: ordinarios, reciclables, peligrosos)
2. Personal separa residuos en centro de acopio temporal
3. Supervisor verifica separación correcta
4. Cada 2-3 días: Empresa recolectora autorizada recoge residuos
5. Ordinarios → Relleno sanitario municipal
6. Reciclables → Empresa recicladora
7. Peligrosos (aceites, baterías) → Gestor RESPEL autorizado
8. Supervisor registra cantidades en formato PGIRS
9. Supervisor genera reporte mensual para ANI/Interventoría

**Postcondiciones:**
- Residuos dispuestos adecuadamente
- Cumplimiento normativo

---

### 7.2 CU-002: Rescate de Fauna Durante Construcción

**Actor:** Biólogo + Cuadrilla de Rescate  
**Descripción:** Rescate de fauna antes de intervención de un tramo  

**Flujo Normal:**
1. Se programa intervención de tramo (PK 100+000 a 105+000)
2. Biólogo realiza inspección previa (48 horas antes)
3. Biólogo identifica fauna presente (aves, reptiles, mamíferos menores)
4. Cuadrilla de rescate ingresa a zona
5. Cuadrilla ahuyenta fauna móvil (aves, mamíferos)
6. Cuadrilla captura fauna lenta (tortugas, iguanas) con cuidado
7. Biólogo verifica condición de animales capturados
8. Cuadrilla transporta fauna a área de relocación (zona segura cercana)
9. Biólogo libera fauna en zona adecuada
10. Biólogo registra rescate (especies, cantidades, ubicación)
11. Construcción puede iniciar después de rescate

**Postcondiciones:**
- Fauna rescatada y relocalizada
- Cumplimiento de Licencia Ambiental

---

### 7.3 CU-003: Informe de Cumplimiento Ambiental (ICA) Semestral

**Actor:** Gerente Ambiental  
**Descripción:** Elaboración y presentación del ICA a la Autoridad Ambiental  

**Flujo Normal:**
1. Gerente Ambiental recopila información semestral:
   - Permisos vigentes
   - Cumplimiento de PAGA/PMAR
   - Resultados de monitoreo (agua, aire, ruido, fauna, flora)
   - Gestión de residuos (cantidades)
   - Compensaciones (avance)
   - Contingencias atendidas
2. Gerente elabora ICA (formato ANLA)
3. Gerente anexa evidencias (fotos, reportes de laboratorio, certificados)
4. Gerente Ambiental revisa y firma
5. Gerente sube ICA a plataforma VITAL (ANLA)
6. ANLA revisa ICA (30 días hábiles)
7. Si ANLA tiene observaciones → Gerente responde y aclara
8. ANLA emite concepto: "Cumplimiento Satisfactorio"

**Postcondiciones:**
- ICA presentado y aprobado
- Cumplimiento de Licencia Ambiental verificado

**Frecuencia:** Semestral

---

## 8. CRITERIOS DE ACEPTACIÓN

### 8.1 Criterios Funcionales

- [ ] Licencia Ambiental obtenida/modificada y vigente
- [ ] PAGA implementado en 14 UFs durante construcción
- [ ] PMAR implementado durante 25 años de O&M
- [ ] PGIRS operativo en peajes, CCO, áreas de servicio
- [ ] Compensaciones ambientales ejecutadas (ha definidas)
- [ ] Programa de fauna implementado (pasos de fauna, rescate)
- [ ] Monitoreo ambiental continuo (agua, aire, ruido, fauna, flora)
- [ ] PRGD implementado (gestión de desastres)
- [ ] Programa de cambio climático activo
- [ ] Subcuenta de compensaciones gestionada con ANI

### 8.2 Criterios de Performance

- [ ] 100% cumplimiento de obligaciones de Licencia Ambiental
- [ ] ICA presentados a tiempo (semestral)
- [ ] Vertimientos PTAR: DBO < 90 mg/L, SST < 90 mg/L
- [ ] Supervivencia compensaciones: ≥ 70% a los 5 años
- [ ] 0 sanciones ambientales
- [ ] Disposición de 100% de residuos con gestores autorizados

### 8.3 Criterios de Calidad

- [ ] Cumplir Decreto 1076/2015 (Licencias Ambientales)
- [ ] Cumplir Resolución 256/2018 (Compensaciones)
- [ ] Cumplir Resolución 631/2015 (Vertimientos)
- [ ] Cumplir Resolución 1912/2017 (Especies Amenazadas)
- [ ] Cumplir Ley 1931/2018 (Cambio Climático)
- [ ] Personal con formación ambiental certificada

### 8.4 Criterios de Integración

- [ ] Coordinación efectiva con Gestión Social (AT8)
- [ ] Integración con Construcción (PAGA)
- [ ] Integración con O&M (PMAR)
- [ ] Reportes a Autoridades Ambientales a tiempo

---

## 9. DEPENDENCIAS

| Sistema/Recurso | Tipo de Dependencia | Criticidad | Estado |
|:----------------|:--------------------|:-----------|:-------|
| **Licencia Ambiental** | Sin licencia no hay construcción | 🔴 CRÍTICA | ⏳ Por gestionar (mes 1-6) |
| **Gestión Social** | Coordinación socioambiental | 🔴 Alta | ✅ Documentado (T01) |
| **Gestión Predial** | Predios para compensaciones | 🟡 Media | ✅ Documentado (T01) |
| **Construcción** | Implementación de PAGA | 🔴 Alta | ⏳ Por iniciar |

---

## 10. PRÓXIMOS PASOS

- [ ] Desarrollar Plan de Gestión Ambiental (Template T03)
- [ ] Gestionar modificación de Licencia Ambiental con ANLA
- [ ] Elaborar PAGA para 14 UFs
- [ ] Elaborar PMAR para O&M
- [ ] Identificar áreas de compensación ambiental
- [ ] Contratar laboratorios acreditados (monitoreo)
- [ ] Estimar costos detallados (Template T05)

---

## 11. REFERENCIAS

### Documentos Contractuales:
- [AT6 - Gestión Ambiental](../II.%20Apendices%20Tecnicos/AT6_Gestion_Ambiental_v1.0.md)
- [AT3 - Anexo PRGD](../II.%20Apendices%20Tecnicos/AT3_Anexo_Plan_Gestion_Riesgo_Desastres_v1.0.md)

### Documentos del Proyecto:
- [T01 - Ficha Sistema Gestión Ambiental](40_T01_Ficha_Sistema_Gestion_Ambiental_v1.0.md)
- [T01 - Gestión Social](41_T01_Ficha_Sistema_Gestion_Social_v1.0.md)

### Normativa:
- Decreto 1076/2015 - Sector Ambiente
- Resolución 256/2018 - Compensaciones Bióticas
- Ley 1931/2018 - Cambio Climático
- Resolución 631/2015 - Vertimientos
- Resolución 1912/2017 - Especies Amenazadas

---

## 12. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 17/10/2025 | Administrador Contractual EPC | Análisis inicial de requisitos de gestión ambiental |

---

**Versión:** 1.0  
**Estado:** ✅ Análisis de Requisitos Completado  
**Fecha:** 17/10/2025  
**Responsable:** Gerente Ambiental  
**Próximo documento:** T03 - Plan de Gestión Ambiental  

---

**Fin del documento - T02 Análisis de Requisitos Sistema de Gestión Ambiental**  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*

