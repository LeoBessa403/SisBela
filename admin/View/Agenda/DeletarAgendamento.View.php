<!--  MODAL FORM DE CADASTRO E EDIÇÃO -->
<div class="modal fade in modal-overflow j_deletar" id="DelAgendamento" tabindex="-1"
     role="dialog" aria-hidden="true">
    <div class="modal-header btn-light-grey">
        <button type="button" class="close cancelar" data-dismiss="modal" aria-hidden="true">
            X
        </button>
        <h4 class="modal-title">Cancelar Agendamento</h4>
    </div>
    <div class="modal-body" style="padding: 0;">
        <?= $formCancela; ?>
    </div>
</div>
<a data-toggle="modal" role="button" href="#DelAgendamento" id="j_deletar"></a>