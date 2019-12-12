<div class="main-content">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-grid-6"></i>
                        <a href="#">
                            Categoria Serviço
                        </a>
                    </li>
                    <li class="active">
                        Listar
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Categoria Serviço
                        <small>Listar Categoria Serviço</small>
                        <?php Valida::geraBtnNovo('Criar Categoria', 'CadastroCategoriaServico'); ?>
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
                        Categoria Serviço
                    </div>
                    <div class="panel-body">
                        <?php
                        Modal::load();
                        Modal::confirmacao("confirma_Servico");
                        $arrColunas = array('Categoria', 'Qtd. Serviços', 'Status', 'Ações');
                        $grid = new Grid();
                        $grid->setColunasIndeces($arrColunas);
                        $grid->criaGrid();
                        /** @var CategoriaServicoEntidade $res */
                        foreach ($result as $res):
                            $acao = '<a href="' . PASTAADMIN . 'Servico/CadastroCategoriaServico/' .
                                Valida::GeraParametro(CO_CATEGORIA_SERVICO . "/" . $res->getCoCategoriaServico()) . '" class="btn btn-primary tooltips"
                                    data-original-title="Editar Registro" data-placement="top">
                                     <i class="fa fa-clipboard"></i>
                                 </a> 
                                  <a href="' . PASTAADMIN . 'Servico/ListarServico/' .
                                Valida::GeraParametro(CO_CATEGORIA_SERVICO . "/" . $res->getCoCategoriaServico()) . '" 
                                        class="btn btn-med-grey tooltips" 
                                            data-original-title="Serviços da Categoria" data-placement="top">
                                             <i class="clip-folder-open"></i>
                                         </a>';

                            $grid->setColunas($res->getNoCategoriaServico());
                            $grid->setColunas(count($res->getCoServico()), 3);
                            $grid->setColunas(Valida::SituacaoAtivoInativo($res->getStStatus()), 2);
                            $grid->setColunas($acao, 2);
                            $grid->criaLinha($res->getCoCategoriaServico());
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