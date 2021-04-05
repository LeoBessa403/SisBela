<!--  MODAL FORM DE CADASTRO E EDIÇÃO -->
<div class="modal fade in modal-overflow j_listar" id="listarAgendamento" tabindex="-1"
     role="dialog" aria-hidden="true">
    <div class="modal-header btn-light-grey">
        <button type="button" class="close cancelar" data-dismiss="modal" aria-hidden="true">
            X
        </button>
        <h4 class="modal-title">Visualisar Agendamento</h4>
    </div>
    <div class="modal-body">
        <?php
        foreach (StatusAgendamentoEnum::$descricao as $chave => $desc) {
            echo '<div style="display: none;" id="Status-Agendamento-' . $chave . '">';
            echo '<span class="circle-img label-' . StatusAgendamentoEnum::$cores[$chave] . '">';
            echo '&nbsp;&nbsp;&nbsp;&nbsp;</span> ' . $desc;
            echo '</div>';
        }
        ?>
        <div class="row col-sm-12" id="listar-agendamento">
            <div id="form-group-st_status" class="form-group col-sm-12">
                <label for="st_status" class="col-sm-3 align-right">
                    Status Agendamento:
                </label>
                <div class="col-sm-9">
                    <span class="st_status"><b></b></span>
                </div>
            </div>
            <div id="form-group-cliente" class="form-group col-sm-12">
                <label for="cliente" class="col-sm-3  align-right">
                    Cliente:
                </label>
                <div class="col-sm-9">
                    <span class="cliente"><b></b></span>
                </div>
            </div>
            <div id="form-group-servico" class="form-group col-sm-12">
                <label for="servico" class="col-sm-3  align-right">
                    Serviço:
                </label>
                <div class="col-sm-9">
                    <span class="servico"><b></b></span>
                </div>
            </div>
            <div id="form-group-profissional" class="form-group col-sm-12">
                <label for="profissional" class="col-sm-3  align-right">
                    Profissional:
                </label>
                <div class="col-sm-9">
                    <span class="profissional"><b></b></span>
                </div>
            </div>
            <div id="form-group-dia" class="form-group col-sm-12">
                <label for="dia" class="col-sm-3  align-right">
                    Data:
                </label>
                <div class="col-sm-9">
                    <span class="dia"><b></b></span>
                </div>
            </div>
            <div id="form-group-periodo" class="form-group col-sm-12">
                <label for="periodo" class="col-sm-3  align-right">
                    Período:
                </label>
                <div class="col-sm-9">
                    <span class="periodo"><b></b></span>
                </div>
            </div>
            <div id="form-group-usuario" class="form-group col-sm-12">
                <label for="usuario" class="col-sm-3  align-right">
                    Responsável:
                </label>
                <div class="col-sm-9">
                    <span class="usuario"><b></b></span>
                </div>
            </div>
            <div id="form-group-observacao" class="form-group col-sm-12">
                <label for="observacao" class="col-sm-3  align-right">
                    Observação:
                </label>
                <div class="col-sm-9">
                    <span class="observacao"><b></b></span>
                </div>
            </div>
            <div id="form-group-motivo" class="form-group col-sm-12">
                <label for="motivo" class="col-sm-3  align-right">
                    Motivo:
                </label>
                <div class="col-sm-9">
                    <span class="motivo"><b></b></span>
                </div>
            </div>
        </div>
    </div>
    <div class="modal-footer pull-left" style="width: 100%;">
        <input id="co_agenda_listagem" name="co_agenda_listagem" value="" type="hidden">
        <button data-dismiss="modal" class="btn acao btn-warning btn-editar">Editar <i class="fa fa-clipboard"></i></button>
        <button data-dismiss="modal" class="btn acao btn-bricky btn-deletar">Deletar  <i class="fa fa-trash-o"></i></button>
        <button data-dismiss="modal" class="btn btn-light-grey btn-historico">Histórico <i class="clip-folder-open"></i></button>
        <button data-dismiss="modal" class="btn acao btn-success btn-finalizar">Finalizar <i class="fa fa-save"></i></button>
        <button data-dismiss="modal" class="btn btn-primary cancelar">Fechar <i class="clip-close"></i></button>
        <img src="<?= PASTA_LIBRARY; ?>images/loading.gif" class="img-load pull-right"
             style="margin: 15px 0 0 10px; display: block;"/>
    </div>
</div>
<a data-toggle="modal" role="button" href="#listarAgendamento" id="j_listar"></a>