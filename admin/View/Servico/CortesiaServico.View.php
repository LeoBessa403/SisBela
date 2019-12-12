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
                        Cortesia
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Serviço
                        <small>Cortesia Serviço</small>
                        <?php Valida::geraBtnNovo('Cadastro de Cortesia', 'CadastroCortesiaServico'); ?>
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
                        Cortesia Serviço
                    </div>
                    <div class="panel-body">
                        <?php
                        $grid = new Grid();
                        ?>
                        <h2>
                            <small>Cortesias Cadastradas</small>
                        </h2>
                        <?php
                        Modal::load();
                        Modal::confirmacao("confirma_Cortesia");
                        $arrColunas = array('Cliente', 'Serviço', 'Código', 'Status', 'Período', 'horário', 'Dias de atendimento', 'Ações');
                        $grid = new Grid();
                        $grid->setColunasIndeces($arrColunas);
                        $grid->criaGrid();
                        /** @var CortesiaEntidade $cortesia */
                        foreach ($result as $cortesia):
                            $acao = '<a href="' . PASTAADMIN . 'Servico/CadastroCortesiaServico/' .
                                Valida::GeraParametro(CO_CORTESIA . "/" . $cortesia->getCoCortesia()) . '" class="btn btn-primary tooltips"
                                    data-original-title="Editar Registro" data-placement="top">
                                     <i class="fa fa-clipboard"></i></a>';

                            $atendi = '';
                            $dias = explode(', ', $cortesia->getNuDiaSemana());
                            foreach ($dias as $dia) {
                                $atendi .= DiasEnum::getDescricaoValor($dia) . ', ';
                            }
                            $cliente = 'Não Atribuido';
                            if ($cortesia->getCoCliente()) {
                                $cliente = Valida::Resumi(
                                    $cortesia->getCoCliente()->getCoPessoa()->getNoPessoa(), 30
                                );
                            }

                            $status = '<span class="label label-' . StatusCortesiaEnum::$cores[$cortesia->getStStatus()] . '">' .
                                StatusCortesiaEnum::getDescricaoValor($cortesia->getStStatus()) . '</span>';
                            $grid->setColunas($cliente);
                            $grid->setColunas(Valida::Resumi(
                                $cortesia->getCoServico()->getNoServico(), 30
                            ));
                            $grid->setColunas($cortesia->getDsCodigo(), 2);
                            $grid->setColunas($status, 1);
                            $grid->setColunas(Valida::DataShow($cortesia->getDtInicio())
                                . ' a ' . Valida::DataShow($cortesia->getDtFim()), 4);
                            $grid->setColunas($cortesia->getNuHoraAbertura() . ' a ' .
                                $cortesia->getNuHoraFechamento(), 3);
                            $grid->setColunas($atendi);
                            $grid->setColunas($acao, 1);
                            $grid->criaLinha($cortesia->getCoCortesia());
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