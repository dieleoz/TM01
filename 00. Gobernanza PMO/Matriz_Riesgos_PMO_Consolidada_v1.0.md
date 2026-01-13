# MATRIZ DE RIESGOS PMO CONSOLIDADA v1.0
## APP La Dorada - Chiriguaná

**Fecha:** 03 de octubre de 2025  
**Responsable:** PMO / Administrador Contractual EPC  
**Fuente única:** `III. Ingenieria conceptual/36.1_Analisis_Riesgos_y_Supuestos_PMI.md`

---

## 1. Referencias
- Roadmap: `@@Roadmap_v12.0_Marco_Gestion_Consolidado.md`
- Riesgos y Supuestos (PMO): `III. Ingenieria conceptual/36.1_Analisis_Riesgos_y_Supuestos_PMI.md`
- P42 Validación: `Reportes/Metodologia_Punto_42/VALIDACION_FINAL_V1-V5_METODOLOGIA_PUNTO_42.md`

---

## 2. Criterios (PMI)
- Probabilidad/Impacto: Bajo/Medio/Alto  
- Estrategias: Evitar / Mitigar / Transferir / Aceptar  
- Estados: Activo / En validación / Cerrado

---

## 3. Registro Operativo (extracto inicial)
| ID | Categoría | Descripción | Prob | Impacto | Estrategia | Responsable | Estado | Fuente |
|:--:|:--:|:---|:---:|:---:|:---|:---|:---:|:---|
| R-AT3-01 | Técnico | Dependencia AT3 para ITCS ETCS L2 | Alta | Alto | Mitigar: ETCS L2 estándar | EPC Sistemas | Activo | P42 / Docs ITCS |
| R-INT-01 | Técnico | Interoperabilidad con FENOCO (UIC) | Media | Alto | Mitigar: Protocolos UIC | EPC Sistemas | Activo | P42 / Interfaces |
| R-AT4-01 | Contractual | Cumplimiento disponibilidad AT4 | Media | Alto | Mitigar: N+1, monitoreo | EPC Sistemas | Activo | AT4 / P42 |
| R-CYB-01 | Técnico | Ciberseguridad IEC 62443 | Media | Alto | Mitigar: Defensa en profundidad | EPC Ciberseguridad | Activo | VII.2.11 |
| R-IF-01 | Gestión | Desalineación en interfaces (ICD) | Alta | Alto | Mitigar: Plan Gestión Interfaces | PMO/EPC General | Activo | 41. Interfaces |
| R-PERM-01 | Contractual | Retrasos permisos ANE/ANLA | Media | Alto | Mitigar: Plan de permisos | EPC General | Activo | 40. Permisos |

---

## 4. KPIs y Seguimiento
| KPI | Objetivo | Frecuencia | Responsable |
|:---|:---:|:---:|:---|
| Riesgos críticos abiertos | 0 | Semanal | PMO |
| Cumplimiento AT4 | 99.95% | Diario | EPC Sistemas |
| Interoperabilidad UIC | 100% | Mensual | EPC Sistemas |
| Incidentes ciberseguridad | 0 | Diario | EPC Ciberseguridad |

---

## 5. Próximos pasos
1. Migrar el total de riesgos normalizados desde históricos (134 y 190)  
2. Vincular cada riesgo a documento fuente (Contrato/ATs/Docs técnicos)  
3. Establecer tablero PMO con KPIs y alertas
