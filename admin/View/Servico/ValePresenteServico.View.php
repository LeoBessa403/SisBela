<div class="main-content">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-grid-6"></i>
                        <a href="#">
                            Serviço
                        </a>
                    </li>
                    <li class="active">
                        Vale Presente
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Serviço
                        <small>Vale Presente Serviço</small>
                        <?php Valida::geraBtnNovo('Cadastro de Vale Presente', 'CadastroValePresenteServico'); ?>
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
                        Vale Presente Serviço
                    </div>
                    <div class="panel-body">
                        <?php
                        $grid = new Grid();
                        ?>
                        <h2>
                            <small>Vales Presente Cadastradas</small>
                        </h2>
                        <?php
                        Modal::load();
                        Modal::confirmacao("confirma_ValePresente");
                        $arrColunas = array('Código', 'Status', 'Validade', 'Valor R$', 'Motivo', 'Ações');
                        $grid = new Grid();
                        $grid->setColunasIndeces($arrColunas);
                        $grid->criaGrid();
                        /** @var ValePresenteEntidade $valePresente */
                        foreach ($result as $valePresente):
                            $acao = '<a href="' . PASTAADMIN . 'Servico/CadastroValePresenteServico/' .
                                Valida::GeraParametro(CO_VALE_PRESENTE . "/" . $valePresente->getCoValePresente()) . '" class="btn btn-primary tooltips"
                                    data-original-title="Editar Registro" data-placement="top">
                                     <i class="fa fa-clipboard"></i></a>';


                            $status = '<span class="label label-' . StatusValePresenteEnum::$cores[$valePresente->getStStatus()] . '">' .
                                StatusValePresenteEnum::getDescricaoValor($valePresente->getStStatus()) . '</span>';
                            $grid->setColunas($valePresente->getDsCodigo(), 2);
                            $grid->setColunas($status, 1);
                            $grid->setColunas(Valida::DataShow($valePresente->getDtValido()), 2);
                            $grid->setColunas($valePresente->getNuValor());
                            $grid->setColunas(Valida::Resumi(
                                $valePresente->getDsMotivo(), 150
                            ));
                            $grid->setColunas($acao, 1);
                            $grid->criaLinha($valePresente->getCoValePresente());
                        endforeach;
                        $grid->finalizaGrid();
                        ?>
                    </div>
                </div>
                <!-- end: DYNAMIC TABLE PANEL -->
            </div>
        </div>
        <!-- end: PAGE CONTENT-->
    </div>
</div>
<!-- end: PAGE -->