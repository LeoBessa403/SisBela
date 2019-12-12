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
                        Serviço / Profissional
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Comissão
                        <small> Serviço / Profissional</small>
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
                              role="form" method="post" enctype="multipart/form-data"
                              id="ComissaoServicoProfissionalForm" name="ComissaoServicoProfissionalForm">
                            <h2>Comissões do Serviço: <?= $noServico; ?></h2>
                            <?php
                            Modal::load();
                            $arrColunas = array('Atende', 'Profissional',
                                TipoComissaoEnum::$descricao[TipoComissaoEnum::UNICO_PROFISSIONAL],
                                TipoComissaoEnum::$descricao[TipoComissaoEnum::COM_ASSISTENTE],
                                TipoComissaoEnum::$descricao[TipoComissaoEnum::ASSISTENTE]);
                            $grid = new Grid();
                            $grid->setColunasIndeces($arrColunas);
                            $grid->criaGrid('ComissaoServicoProfissionalTable', false);
                            foreach ($profissionais as $profissional) :
                                $check = '';
                                if ($profissional['atende'] == SimNaoEnum::SIM) {
                                    $check = 'checked="checked"';
                                }
                                $atende = '<div id="change-color-switch" class="make-switch"
                                                 data-on-label="<i class=\'fa fa-check fa-white\'></i>"
                                                 data-off-label="<i class=\'fa fa-times fa-white\'></i>"
                                                 data-on="success"
                                                 data-off="danger">
                                                <input type="checkbox" id="atende-profissional-' . $profissional[CO_PROFISSIONAL] . '"
                                                       name="atende-profissional[' . $profissional[CO_PROFISSIONAL] . ']" 
                                                       ' . $check . ' class="atende-profissional" title=""/>
                                            </div>';

                                $grid->setColunas($atende, 1);
                                $grid->setColunas($profissional[NO_PESSOA]);

                                foreach (TipoComissaoEnum::$descricao as $chave => $descricao) {
                                    $campo = '<div class="col-md-12 input-group">
                                    <input type="text" class="form-control porc-int atende-profissional-' . $profissional[CO_PROFISSIONAL] . '"
                                          placeholder="0" id="' . NU_TIPO_COMISSAO . $chave . '-' .
                                        $profissional[CO_PROFISSIONAL] . '" value="' .
                                        $profissional[NU_TIPO_COMISSAO . $chave] . '"
                                            name="' . NU_TIPO_COMISSAO . '[' . $profissional[CO_PROFISSIONAL] . '][' .
                                        $chave . ']"/>
                                          <span class="input-group-addon" style="height: 34px;">%</span></div>';
                                    $grid->setColunas($campo, 3);
                                }
                                $grid->criaLinha($profissional[CO_PROFISSIONAL]);
                            endforeach;
                            $grid->finalizaGrid();
                            ?>
                            <div class="form-group">
                                <input type="hidden" value="<?= true; ?>"
                                       name="ComissaoServicoProfissional" id="ComissaoServicoProfissional"/>
                                <input type="hidden" value="<?= $coServico; ?>"
                                       name="<?= CO_SERVICO; ?>" id="<?= CO_SERVICO; ?>"/>
                                <div class="col-sm-2 col-sm-offset-10">
                                    <button type="submit" class="btn btn-success pull-right"
                                            style="margin-right: -10px; margin-left: 10px;">
                                        Salvar <i class="fa fa-arrow-circle-right"></i>
                                    </button>
                                    <?php Valida::geraBtn('Cancelar', 'ListarServico',
                                        'btn-danger pull-right', 'btn_cancelar', 'fa fa-trash-o'); ?>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="pull-right">
                    <?php Valida::geraBtnVoltar('Servico/ListarServico/'); ?>
                </div>
                <br><br><br>
            </div>
        </div>
        <!-- end: PAGE CONTENT-->
    </div>
</div>
<!-- end: PAGE -->