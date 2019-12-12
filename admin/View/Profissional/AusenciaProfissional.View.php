<div class="main-content">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-grid-6"></i>
                        <a href="#">
                            Ausência Profissional
                        </a>
                    </li>
                    <li class="active">
                        Listar Ausência
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Ausência Profissional
                        <small>Listar Ausência</small>
                        <?php Valida::geraBtnNovo('Criar Ausência', 'CadastroAusenciaProfissional'); ?>
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
                        Profissionais
                    </div>
                    <div class="panel-body">
                        <?php
                        Modal::load();
                        Modal::deletaRegistro("Ausencia");
                        Modal::confirmacao("confirma_Ausencia");
                        $arrColunas = array('Profissional', 'Periodo', 'Tipo Ausência', 'Observação', 'Responsável', 'Ações');
                        $grid = new Grid();
                        $grid->setColunasIndeces($arrColunas);
                        $grid->criaGrid();
                        /** @var AusenciaEntidade $res */
                        foreach ($result as $res):
                            $acao = '<a href="' . PASTAADMIN . 'Profissional/CadastroAusenciaProfissional/' .
                                Valida::GeraParametro(CO_AUSENCIA . "/" . $res->getCoAusencia()) . '" class="btn btn-primary tooltips" 
                                    data-original-title="Editar Registro" data-placement="top">
                                     <i class="fa fa-clipboard"></i>
                                 </a>';
                            $acao .= ' <a data-toggle="modal" role="button" class="btn btn-bricky tooltips deleta" id="' .
                                $res->getCoAusencia() . '" 
                                   href="#Ausencia" data-original-title="Excluir Registro" data-placement="top">
                                    <i class="fa fa-trash-o"></i>
                                </a>';
                            $grid->setColunas($res->getCoProfissional()->getCoPessoa()->getNoPessoa());
                            $grid->setColunas(Valida::DataShow($res->getDtInicio(), 'd/m/Y H:i') .
                                ' a ' . Valida::DataShow($res->getDtFim(), 'd/m/Y H:i'));
                            $grid->setColunas(TipoAusenciaEnum::getDescricaoValor($res->getTpAusencia()));
                            $grid->setColunas($res->getDsObservacao());
                            $grid->setColunas(UsuarioService::getNoPessoaCoUsuario($res->getCoUsuario()->getCoUsuario()));
                            $grid->setColunas($acao, 2);
                            $grid->criaLinha($res->getCoAusencia());
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