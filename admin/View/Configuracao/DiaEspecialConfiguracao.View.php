<div class="main-content">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-grid-6"></i>
                        <a href="#">
                            Dias Especiais / Feriados
                        </a>
                    </li>
                    <li class="active">
                        Listar
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Dias Especiais / Feriados
                        <small>Listar Dias Especiais / Feriados</small>
                        <?php Valida::geraBtnNovo("Criar Dia Especial", "CadastroDiaEspecialConfiguracao"); ?>
                        <a href="#" id="acao-feriado" class="btn btn-info tooltips" data-original-title="Ver Feriados"
                           data-placement="top">
                            <i class="fa fa-plus"></i> Ver Feriados</a>
                    </h1>
                </div>
                <!-- end: PAGE TITLE & BREADCRUMB -->
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-external-link-square"></i>
                        Dias Especiais
                    </div>
                    <div class="panel-body">
                        <?php
                        Modal::load();
                        Modal::deletaRegistro("DiaEspecial");
                        Modal::confirmacao("confirma_DiaEspecial");
                        $arrColunas = array('Data', 'Dia da Semana', 'Abertura', 'Fechamento', 'Motivo', 'Ações');
                        $grid = new Grid();
                        $grid->setColunasIndeces($arrColunas);
                        $grid->criaGrid();
                        /** @var DiaEspecialEntidade $res */
                        foreach ($result as $res):
                            $acao = '<a href="' . PASTAADMIN . 'Configuracao/CadastroDiaEspecialConfiguracao/' .
                                Valida::GeraParametro(CO_DIA_ESPECIAL . "/" . $res->getCoDiaEspecial()) . '" class="btn btn-primary tooltips"
                                                data-original-title="Editar Registro" data-placement="top">
                                                 <i class="fa fa-clipboard"></i>
                                             </a>';
                            $acao .= ' <a data-toggle="modal" role="button" class="btn btn-bricky tooltips deleta" id="' .
                                $res->getCoDiaEspecial() . '" 
                                   href="#DiaEspecial" data-original-title="Excluir Registro" data-placement="top">
                                    <i class="fa fa-trash-o"></i>
                                </a>';
                            $grid->setColunas(Valida::DataShow($res->getDtDia()));
                            $grid->setColunas(DiasEnum::getDescricaoValor($res->getNuDiaSemana()));
                            $grid->setColunas($res->getNuHoraAbertura());
                            $grid->setColunas($res->getNuHoraFechamento());
                            $grid->setColunas($res->getDsMotivo());
                            $grid->setColunas($acao, 2);
                            $grid->criaLinha($res->getCoDiaEspecial());
                        endforeach;
                        $grid->finalizaGrid();
                        ?>
                    </div>
                </div>
                <!-- end: DYNAMIC TABLE PANEL -->
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading" id="feriados">
                        <i class="fa fa-external-link-square"></i>
                        Próximos Feriados Nacionais
                    </div>
                    <div class="panel-body">
                        <?php
                        $feriados = array_reverse($feriados);
                        /** @var FeriadoEntidade $feriado */
                        foreach ($feriados as $feriado) {
                            ?>
                            <div class="col-md-6">
                                <div class="col-md-2">
                                    <?= Valida::DataShow($feriado->getDtFeriado()); ?>
                                </div>
                                <div class="col-md-2">
                                    <?= DiasEnum::getDescricaoValor($feriado->getNuDiaSemana()); ?>
                                </div>
                                <div class="col-md-8">
                                    <?= $feriado->getDsDescricao(); ?>
                                </div>
                            </div>
                        <?php } ?>
                    </div>
                </div>
                <!-- end: DYNAMIC TABLE PANEL -->
            </div>
        </div>
        <!-- end: PAGE CONTENT-->
    </div>
</div>
<!-- end: PAGE -->