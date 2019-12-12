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
                        Pacote
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Serviço
                        <small>Pacote Serviço</small>
                        <?php Valida::geraBtnNovo('Cadastro de Pacote', 'CadastroPacoteServico'); ?>
                        <!--    CRIAR BOTÃO E MODAL PRO FORMUÇÁRIO AJAX    -->
                        <?php //Modal::Cadastro("CadastroPacoteServico",'Cadastro de Pacote'); ?>
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
                        Pacote Serviço
                    </div>
                    <div class="panel-body">
                        <?php
                        $grid = new Grid();
                        ?>
                        <h2>
                            <small>Pacotes Cadastrados</small>
                        </h2>
                        <?php
                        Modal::load();
                        Modal::confirmacao("confirma_Servico");
                        $arrColunas = array('Pacote', 'Serviços', 'Valor R$', 'Descrição', 'Status', 'Ações');
                        $grid = new Grid();
                        $grid->setColunasIndeces($arrColunas);
                        $grid->criaGrid();
                        /** @var PacoteServEntidade $pacoteServ */
                        foreach ($result as $pacoteServ):
                            $acao = '<a href="' . PASTAADMIN . 'Servico/CadastroPacoteServico/' .
                                Valida::GeraParametro(CO_PACOTE_SERV . "/" . $pacoteServ->getCoPacoteServ()) . '" class="btn btn-primary tooltips"
                                    data-original-title="Editar Registro" data-placement="top">
                                     <i class="fa fa-clipboard"></i></a>';

                            $acao .= ' <a href="' . PASTAADMIN . 'Servico/HistoricoPacoteServico/' .
                                Valida::GeraParametro(CO_PACOTE_SERV . "/" . $pacoteServ->getCoPacoteServ()) . '" 
                                        class="btn btn-med-grey tooltips" 
                                            data-original-title="Histórico de Pacote de serviços" data-placement="top">
                                             <i class="clip-folder-open"></i>
                                         </a>';

                            $servicos = '';
                            if ($pacoteServ->getCoServicoPacote()) {
                                /** @var ServicoPacoteEntidade $servico */
                                foreach ($pacoteServ->getCoServicoPacote() as $servico) {
                                    $servicos .= Valida::Resumi(
                                            $servico->getCoServico()->getNoServico(), 30
                                        ) . ', ';
                                }
                            }
                            $grid->setColunas($pacoteServ->getNoPacoteServ());
                            $grid->setColunas($servicos);
                            $grid->setColunas($pacoteServ->getCoUltimoPrecoPacote()->getNuValor(), 1);
                            $grid->setColunas(Valida::Resumi(
                                $pacoteServ->getCoUltimoPrecoPacote()->getDsDescricao(), 300
                            ));

                            $grid->setColunas(
                                Valida::SituacaoAtivoInativo($pacoteServ->getCoUltimoPrecoPacote()->getStStatus())
                                , 1);
                            $grid->setColunas($acao, 2);
                            $grid->criaLinha($pacoteServ->getCoPacoteServ());
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