<div class="main-content">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-grid-6"></i>
                        <a href="#">
                            Comissão
                        </a>
                    </li>
                    <li class="active">
                        Profissional / Serviço
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Comissão
                        <small> Profissional / Serviço</small>
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
                        Comissão
                    </div>
                    <div class="panel-body">
                        <form action="<?= HOME . ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action; ?>"
                              class="formulario" method="post" enctype="multipart/form-data"
                              id="ComissaoProfissionalServicoForm" name="ComissaoProfissionalServicoForm">
                            <h2>Comissões do Profissional: <?= $noProfissional; ?></h2>
                            <?php
                            Modal::load();
                            $arrColunas = array('Atende', 'Serviço',
                                TipoComissaoEnum::$descricao[TipoComissaoEnum::UNICO_PROFISSIONAL],
                                TipoComissaoEnum::$descricao[TipoComissaoEnum::COM_ASSISTENTE],
                                TipoComissaoEnum::$descricao[TipoComissaoEnum::ASSISTENTE]);
                            $grid = new Grid();
                            $grid->setColunasIndeces($arrColunas);
                            $grid->criaGrid('ComissaoProfissionalServicoTable', false);
                            foreach ($servicos as $servico) :
                                $check = '';
                                if ($servico['atende'] == SimNaoEnum::SIM) {
                                    $check = 'checked="checked"';
                                }
                                $atende = '<div id="change-color-switch" class="make-switch"
                                                 data-on-label="<i class=\'fa fa-check fa-white\'></i>"
                                                 data-off-label="<i class=\'fa fa-times fa-white\'></i>"
                                                 data-on="success"
                                                 data-off="danger">
                                                <input type="checkbox" id="atende-servico-' . $servico[CO_SERVICO] . '"
                                                       name="atende-servico[' . $servico[CO_SERVICO] . ']" 
                                                       ' . $check . ' class="atende-servico" title=""/>
                                            </div>';

                                $grid->setColunas($atende, 1);
                                $grid->setColunas($servico[NO_SERVICO]);
                                foreach (TipoComissaoEnum::$descricao as $chave => $descricao) {
                                    $campo = '<div class="col-md-12 input-group">
                                    <input type="text" class="form-control porc-int atende-servico-' . $servico[CO_SERVICO] . '"
                                          placeholder="0" id="' . NU_TIPO_COMISSAO . $chave . '-' .
                                        $servico[CO_SERVICO] . '" value="' .
                                        $servico[NU_TIPO_COMISSAO . $chave] . '"
                                            name="' . NU_TIPO_COMISSAO . '[' . $servico[CO_SERVICO] . '][' .
                                        $chave . ']"/>
                                          <span class="input-group-addon" style="height: 34px;">%</span></div>';
                                    $grid->setColunas($campo, 3);
                                }
                                $grid->criaLinha($servico[CO_SERVICO]);
                            endforeach;
                            $grid->finalizaGrid();
                            ?>
                            <div class="form-group">
                                <input type="hidden" value="<?= true; ?>"
                                       name="ComissaoProfissionalServico" id="ComissaoProfissionalServico"/>
                                <input type="hidden" value="<?= $coProfissional; ?>"
                                       name="<?= CO_PROFISSIONAL; ?>" id="<?= CO_PROFISSIONAL; ?>"/>
                                <div class="col-sm-2 col-sm-offset-10">
                                    <button type="submit" class="btn btn-success pull-right"
                                            style="margin-right: -10px; margin-left: 10px;">
                                        Salvar <i class="fa fa-arrow-circle-right"></i>
                                    </button>
                                    <?php Valida::geraBtn('Cancelar', 'ListarProfissional',
                                        'btn-danger pull-right', 'btn_cancelar', 'fa fa-trash-o'); ?>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="pull-right">
                    <?php Valida::geraBtnVoltar('Profissional/ListarProfissional/'); ?>
                </div>
                <br><br><br>
            </div>
        </div>
        <!-- end: PAGE CONTENT-->
    </div>
</div>
<!-- end: PAGE -->