<!--  MODAL PESQUISA AVANÇADA -->
<div class="modal fade in modal-overflow j_pesquisar" id="PesquisaAgendamento"
     tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-header btn-light-grey">
        <button type="button" class="close cancelar" data-dismiss="modal"
                aria-hidden="true">
            X
        </button>
        <h4 class="modal-title">Pesquisa Avançada</h4>
    </div>
    <div class="modal-body" style="padding: 0;">
        <?= $formPesquisa; ?>
    </div>
</div>
<a data-toggle="modal" role="button" href="#PesquisaAgendamento" id="j_pesquisar"></a>