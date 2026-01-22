/**
 * wbs-dt.js
 * Lógica para la gestión de Decisiones Técnicas (DT) en WBS TM01
 * Extraído y refactorizado de wbs.html
 */

function crearDT(itemId, itemCode, descripcion, sistema) {
    document.getElementById('dtItem').value = itemCode || '';
    document.getElementById('dtDescripcion').value = descripcion || '';
    document.getElementById('dtSistema').value = sistema || '';
    document.getElementById('dtModal').style.display = 'block';
}

function cerrarModal() {
    document.getElementById('dtModal').style.display = 'none';
    document.getElementById('dtForm').reset();
}

function verDetalles(itemId) {
    // Requiere wbsData global
    if (typeof wbsData === 'undefined') {
        console.error('wbsData no disponible');
        return;
    }
    const item = wbsData.find(i => i.id === itemId);
    if (!item) {
        alert('No se encontró el item solicitado');
        return;
    }

    const modal = document.createElement('div');
    modal.className = 'modal-componentes';
    modal.innerHTML = `
        <div class="modal-content">
            <div class="modal-header">
                <div class="modal-title">ℹ️ Detalles del Item WBS</div>
                <span class="close">&times;</span>
            </div>
            <div style="padding: 20px;">
                <div class="form-group"><label><strong>Código WBS:</strong></label><div>${item.item || ''}</div></div>
                <div class="form-group"><label><strong>Descripción:</strong></label><div>${item.descripcion || ''}</div></div>
                <div class="form-group"><label><strong>Sistema:</strong></label><div>${item.sistema || ''}</div></div>
                <div class="form-group"><label><strong>Nivel:</strong></label><div>${item.nivel || ''}</div></div>
                <div class="form-group"><label><strong>Tipo:</strong></label><div>${item.tipo || ''}</div></div>
                <div class="form-group"><label><strong>Cantidad:</strong></label><div>${item.cantidad || 'N/A'} ${item.unidad || ''}</div></div>
                <div class="form-group"><label><strong>Valor Unitario:</strong></label><div>$${item.vu || '0'} USD | $${item.vuCOP || '0'} COP</div></div>
                <div class="form-group"><label><strong>Total:</strong></label><div>$${item.total || '0'} USD | $${item.totalCOP || '0'} COP</div></div>
                <div class="form-group"><label><strong>Criterio Técnico:</strong></label><div>${item.criterio || 'N/A'}</div></div>
            </div>
        </div>
    `;

    document.body.appendChild(modal);

    const closeBtn = modal.querySelector('.close');
    if (closeBtn) {
        closeBtn.onclick = () => { document.body.removeChild(modal); };
    }

    modal.onclick = (e) => {
        if (e.target === modal) {
            document.body.removeChild(modal);
        }
    };
}

function generarDT(formData) {
    const dtId = `DT-TM01-${formData.sistema}-${Date.now()}`;
    const dtContent = `# ${dtId}

## § 1. INFORMACIÓN GENERAL
- **Fecha**: ${formData.fecha}
- **Tipo**: ${formData.tipo}
- **Sistema**: ${formData.sistema}
- **Item WBS**: ${formData.item}
- **Responsable**: Ing. Sistemas

## § 2. DESCRIPCIÓN DEL CAMBIO
${formData.descripcion}

## § 3. JUSTIFICACIÓN TÉCNICA
${formData.justificacion}

## § 4. CRITERIOS DE DISEÑO
${formData.criterios}

## § 5. ALTERNATIVAS EVALUADAS
${formData.alternativas}

## § 6. IMPACTO PRESUPUESTAL
- **Diferencia USD**: $0
- **Diferencia COP**: $0
- **Impacto %**: 0%

## § 7. RIESGOS IDENTIFICADOS
${formData.riesgos}

## § 8. DOCUMENTOS AFECTADOS
- WBS
- Presupuesto
- Layout
- Especificaciones Técnicas

## § 9. PLAN DE IMPLEMENTACIÓN
1. Revisar impacto técnico
2. Actualizar documentación
3. Implementar cambios
4. Validar funcionamiento

## § 10. YAML DE INSTRUCCIONES
\`\`\`yaml
dt_metadata:
  dt_id: "${dtId}"
  sistema: "${formData.sistema}"
  impacto_presupuesto: false
  impacto_layout: false
  impacto_wbs: true

archivos_actualizar:
  - file: "Sistema_Validacion_Web/data/tm01_master_data.js"
    cambios:
      - campo: "descripcion"
        buscar: "${formData.descripcion}"
        reemplazar: "${formData.descripcion} (Modificado por ${dtId})"

scripts_ejecutar:
  - script: "scripts/sincronizar_SISTEMA_TM01_COMPLETO.ps1"
    parametros: ["-Force"]
\`\`\`

## § 11. CHECKBOX DE EJECUCIÓN
- [ ] Ejecutado por Cursor
- [ ] Validado por QA
- [ ] Aprobado por Especificador
- [ ] Implementado en producción

## § 12. LOG DE EJECUCIÓN
[Se completa automáticamente al ejecutar]`;

    const blob = new Blob([dtContent], { type: 'text/markdown' });
    const url = window.URL.createObjectURL(blob);
    const a = document.createElement('a');
    a.href = url;
    a.download = `${dtId}.md`;
    a.click();
    window.URL.revokeObjectURL(url);
    alert(`✅ DT generada exitosamente: ${dtId}`);
}

// Inicialización de eventos para el formulario DT
if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initDTPage);
} else {
    initDTPage();
}

function initDTPage() {
    const dtForm = document.getElementById('dtForm');
    if (dtForm) {
        dtForm.addEventListener('submit', function (e) {
            e.preventDefault();
            const formData = {
                item: document.getElementById('dtItem').value,
                descripcion: document.getElementById('dtDescripcion').value,
                sistema: document.getElementById('dtSistema').value,
                tipo: document.getElementById('dtTipo').value,
                justificacion: document.getElementById('dtJustificacion').value,
                criterios: document.getElementById('dtCriterios').value,
                alternativas: document.getElementById('dtAlternativas').value,
                riesgos: document.getElementById('dtRiesgos').value,
                fecha: new Date().toISOString().split('T')[0]
            };
            generarDT(formData);
            cerrarModal();
        });
    }

    // Cerrar modal al hacer click fuera
    window.onclick = function (event) {
        const modal = document.getElementById('dtModal');
        if (event.target === modal) {
            cerrarModal();
        }
    }
}
