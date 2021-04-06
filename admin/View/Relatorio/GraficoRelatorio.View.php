<div class="main-content">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-grid-6"></i>
                        <a href="#">
                            Relatório
                        </a>
                    </li>
                    <li class="active">
                        Listar
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Relatório</h1>
                </div>
                <!-- end: PAGE TITLE & BREADCRUMB -->
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-external-link-square"></i>
                        Relatório dos Agendamentos
                    </div>
                    <div class="panel-body">
                        <?php
                        $grid = new Grid();
                        echo $grid->PesquisaAvancada('Pesquisar Agendamentos');
                        ?>
                        <div class="alert alert-warning fade in">
                            <h4 class="alert-heading"><i class="fa fa-calendar"></i> Status Agendamento</h4>
                            <?php
                            foreach (StatusAgendamentoEnum::$descricao as $chave => $desc) {
                                if ($chave != StatusAgendamentoEnum::DELETADO) {
                                    echo '<span class="circle-img label-' . StatusAgendamentoEnum::$cores[$chave] . '">';
                                    echo '&nbsp;&nbsp;&nbsp;&nbsp;</span> ' . $desc . ' / ';
                                }
                            }
                            ?>
                        </div>
                        <h2>
                            <small>Agendamentos Cadastrados</small>
                        </h2>
                        <?php
                        $arrColunas = array('Cliente', 'Serviço', 'Profissional', 'Agendado', 'Atualizado em', 'Período', 'Status');
                        $grid = new Grid();
                        $grid->setColunasIndeces($arrColunas);
                        $grid->criaGrid();
                        if (isset($result)) {
                            if ($result) {
                                $result = array_reverse($result);
                                foreach ($result as $res):

                                    $label = '<span class="circle-img label-' . StatusAgendamentoEnum::$cores[$res['st_status']] . '">&nbsp;&nbsp;&nbsp;&nbsp;</span> ';
                                    $grid->setColunas(Valida::Resumi($res['cliente'], 30), 3);
                                    $grid->setColunas($res['no_servico'], 3);
                                    $grid->setColunas(Valida::Resumi($res['profissional'], 30), 3);
                                    $grid->setColunas(Valida::DataShow($res['dt_inicio_agenda'], 'd/m/Y'), 1);
                                    $grid->setColunas(Valida::DataShow($res['dt_cadastro'], 'd/m/Y H:i'), 1);
                                    $grid->setColunas(Valida::DataShow($res['dt_inicio_agenda'], 'H:i')
                                        . ' a ' . Valida::DataShow($res['dt_fim_agenda'], 'H:i'), 1);
                                    $grid->setColunas($label . StatusAgendamentoEnum::$descricao[$res['st_status']], 1);

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
        <!-- end: PAGE CONTENT-->
    </div>
</div>
<!-- end: PAGE -->