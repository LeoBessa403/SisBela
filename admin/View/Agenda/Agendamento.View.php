<div class="main-content">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-grid-6"></i>
                        <a href="#">
                            Agenda
                        </a>
                    </li>
                    <li class="active">
                        Agendamento
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Agenda</h1>
                </div>
                <!-- end: PAGE TITLE & BREADCRUMB -->
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <?php include_once 'CadastroAgendamento.View.php' ?>
                    <?php include_once 'ListarAgendamento.View.php' ?>
                    <?php include_once 'DeletarAgendamento.View.php' ?>
                    <?php include_once 'LegendaAgendamento.View.php' ?>
                    <?php include_once 'PesquisaAgendamento.View.php' ?>
                    <div class="panel-heading">
                        <i class="fa fa-external-link-square"></i>
                        Agendamentos
                    </div>
                    <div class="panel-body">
                        <div class="col-md-push-12">
                            <div id='calendar'></div>
                            <input id="metodo" name="metodo"
                                   value="<?= UrlAmigavel::$controller . '/CarregaAgendamentos'; ?>" type="hidden">
                            <div id="grid" style="margin-top: 0;">
                                <div class="pull-right">
                                    <?php Valida::geraBtn('', '',
                                        'btn-success', 'novaAgenda', 'fa fa-plus'); ?>
                                    <div class="btn-group btn-group-sm">
                                        <?php Valida::geraBtn('', '',
                                            'btn-warning', 'j_legendas', 'fa fa-align-left'); ?>
                                        <?php Valida::geraBtn('', '',
                                            'btn-light-grey', 'j_pesquisa', 'fa fa-cog'); ?>
                                    </div>
                                    <div class="btn-group btn-group-sm">
                                        <?php Valida::geraBtn('', '',
                                            'btn-primary', 'carregaCalendar', 'fa fa-calendar'); ?>
                                        <?php Valida::geraBtn('', '',
                                            'btn-primary active', '', 'fa fa-list'); ?>
                                    </div>
                                </div>
                                <?php
                                $grid = new Grid();
                                ?>
                                <h2>
                                    <small>Agendamentos Cadastrados</small>
                                </h2>
                                <?php
                                $arrColunas = array('Cliente', 'Serviço', 'Profissional', 'Agendado', 'Atualizado em', 'Período', 'Status', 'Ações');
                                $grid = new Grid();
                                $grid->setColunasIndeces($arrColunas);
                                $grid->criaGrid();
                                if (isset($result)) {
                                    if ($result) {
                                        $result = array_reverse($result);
                                        foreach ($result as $res):
                                            $acao = '<button class="btn btn-primary btn-visualizar tooltips" data-co-agenda="' . $res[CO_AGENDA] . '" 
                                        data-original-title="Visualizar Agendamento" data-placement="top">
                                         <i class="clip-eye"></i>
                                     </button>';
                                            if ($res['st_status'] < 5) {
                                                $acao .= ' <button class="btn btn-warning btn-editar tooltips" data-co-agenda="' . $res[CO_AGENDA] . '" 
                                                data-original-title="Editar Agendamento" data-placement="top">
                                                 <i class="fa fa-clipboard"></i>
                                             </button>';
                                                $acao .= ' <button class="btn btn-bricky btn-deletar tooltips" data-co-agenda="' . $res[CO_AGENDA] . '" 
                                                data-original-title="Deletar Agendamento" data-placement="top">
                                                 <i class="fa fa-trash-o"></i>
                                             </button>';
                                                $acao .= ' <button class="btn btn-success btn-finalizar tooltips" data-co-agenda="' . $res[CO_AGENDA] . '" 
                                                data-original-title="Finalizar Agendamento" data-placement="top">
                                                 <i class="fa fa-save"></i>
                                             </button>';
                                            }
                                            $acao .= ' <button class="btn btn-light-grey btn-historico tooltips" data-co-agenda="' . $res[CO_AGENDA] . '" 
                                        data-original-title="Histórico Agendamento" data-placement="top">
                                         <i class="clip-folder-open"></i>
                                     </button>';

                                            $label = '<span class="circle-img label-' . StatusAgendamentoEnum::$cores[$res['st_status']] . '">&nbsp;&nbsp;&nbsp;&nbsp;</span> ';
                                            $grid->setColunas(Valida::Resumi($res['cliente'], 30), 3);
                                            $grid->setColunas($res['no_servico'], 3);
                                            $grid->setColunas(Valida::Resumi($res['profissional'], 30), 3);
                                            $grid->setColunas(Valida::DataShow($res['dt_inicio_agenda'], 'd/m/Y'), 1);
                                            $grid->setColunas(Valida::DataShow($res['dt_cadastro'], 'd/m/Y H:i'), 1);
                                            $grid->setColunas(Valida::DataShow($res['dt_inicio_agenda'], 'H:i')
                                                . ' a ' . Valida::DataShow($res['dt_fim_agenda'], 'H:i'), 1);
                                            $grid->setColunas($label . StatusAgendamentoEnum::$descricao[$res['st_status']], 1);
                                            $grid->setColunas($acao, 4);
                                            $grid->criaLinha($res[CO_AGENDA]);
                                        endforeach;
                                    }
                                }
                                $grid->finalizaGrid();
                                ?>
                            </div>

                        </div>
                    </div>
                </div>
                <!-- end: DYNAMIC TABLE PANEL -->
            </div>
        </div>
        <!-- end: PAGE CONTENT-->
    </div>
</div>
<!-- end: PAGE -->