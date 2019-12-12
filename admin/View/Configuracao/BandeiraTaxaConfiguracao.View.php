<div class="main-content">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-grid-6"></i>
                        <a href="#">
                            Bandeiras / Taxas
                        </a>
                    </li>
                    <li class="active">
                        Listar
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Bandeiras / Taxas
                        <small>Listar Bandeiras / Taxas</small>
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
                        Bandeiras / Taxas
                    </div>
                    <?php
                    if ($dadosTipoPagamento[TipoPagamentoEnum::CARTAO_DEBITO]) {
                        ?>
                        <div class="panel-body">
                            <form action="<?= HOME . ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action; ?>"
                                  role="form" class="formulario" method="post" enctype="multipart/form-data"
                                  id="BandeiraTaxaDebito" name="BandeiraTaxaDebito">
                                <h2>Taxas Cartões de Débito</h2>
                                <?php
                                $bandeiras = array_reverse($bandeiras);
                                Modal::load();
                                $arrColunas = array('Aceita', 'Bandeira', 'Taxa do Cartão', 'Ações');
                                $grid = new Grid();
                                $grid->setColunasIndeces($arrColunas);
                                $grid->criaGrid();
                                /** @var BandeiraCartaoEntidade $bandeira */
                                foreach ($bandeiras as $bandeira) :
                                    $check = '';
                                    $valor = '';
                                    if (isset($taxasCartDeb[$bandeira->getCoBandeiraCartao()])) {
                                        $valor = $taxasCartDeb[$bandeira->getCoBandeiraCartao()][NU_TAXA_CARTAO];
                                        $check = 'checked="checked"';
                                    }
                                    $aceita = '<div id="change-color-switch" class="make-switch"
                                                 data-on-label="<i class=\'fa fa-check fa-white\'></i>"
                                                 data-off-label="<i class=\'fa fa-times fa-white\'></i>"
                                                 data-on="success"
                                                 data-off="danger">
                                                <input type="checkbox" id="aceite-bandeira-taxa-deb-' . $bandeira->getCoBandeiraCartao() . '"
                                                       name="bandeira-taxa-deb[' . $bandeira->getCoBandeiraCartao() . ']" 
                                                       ' . $check . ' class="aceite-deb" title=""/>
                                            </div>';

                                    $taxa = '<div class="col-md-12 input-group">
                                    <input type="text" class="form-control porc-decimal"
                                          placeholder="0,00" id="bandeira-taxa-deb-' . $bandeira->getCoBandeiraCartao() . '"
                                          value="' . $valor . '" name="bandeira-taxa-deb[' . $bandeira->getCoBandeiraCartao() . ']"/>
                                          <span class="input-group-addon" style="height: 34px;">
                                    %</span></div>';

                                    $nomeBandeira = '<img src="' . TIMTHUMB . '?src=' . HOME . ADMIN .
                                        '/Imagens/FormasPagamento/' . Valida::ValNome($bandeira->getNoBandeiraCartao()) . '.png' .
                                        '&w=100&h=50" alt="' . $bandeira->getNoBandeiraCartao() .
                                        '" title="' . $bandeira->getNoBandeiraCartao() . '" />';

                                    $coPagBandCartao = (!empty($taxasCartDeb[$bandeira->getCoBandeiraCartao()]))
                                        ? $taxasCartDeb[$bandeira->getCoBandeiraCartao()][CO_PAGAMENTO_BANDEIRA_CARTAO]
                                        : "";

                                    $acao = ' <a href="' . PASTAADMIN . 'Configuracao/HistoricoTaxaCartaoDebito/' .
                                        Valida::GeraParametro(CO_PAGAMENTO_BANDEIRA_CARTAO . "/" . $coPagBandCartao) . '" 
                                        class="btn btn-med-grey tooltips" 
                                            data-original-title="Histórico de taxas da bandeira" data-placement="top">
                                             <i class="clip-folder-open"></i>
                                         </a>';

                                    $grid->setColunas($aceita, 1);
                                    $grid->setColunas($nomeBandeira . ' - ' . $bandeira->getNoBandeiraCartao());
                                    $grid->setColunas($taxa, 4);
                                    $grid->setColunas($acao, 2);
                                    $grid->criaLinha($bandeira->getCoBandeiraCartao());
                                endforeach;
                                $grid->finalizaGrid();
                                ?>
                                <div class="form-group">
                                    <div class="col-sm-2 col-sm-offset-10">
                                        <button type="submit" class="btn btn-success btn-block">
                                            Salvar <i class="fa fa-arrow-circle-right"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <?php
                    }
                    if ($dadosTipoPagamento[TipoPagamentoEnum::CARTAO_CREDITO]) {
                        ?>
                        <div class="panel-body">
                            <form action="<?= HOME . ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action; ?>"
                                  role="form" class="formulario" method="post" enctype="multipart/form-data"
                                  id="BandeiraTaxaCredito" name="BandeiraTaxaCredito">
                                <h2>Taxas Cartões de Crédito</h2>
                                <?php
                                Modal::load();
                                $arrColunas = array('Aceita', 'Bandeira', 'Taxa do Cartão', 'Taxa de Antecipação', 'Ações');
                                $grid = new Grid();
                                $grid->setColunasIndeces($arrColunas);
                                $grid->criaGrid();
                                /** @var BandeiraCartaoEntidade $bandeira */
                                foreach ($bandeiras as $bandeira) :
                                    $check = '';
                                    $valor = '';
                                    $valorAnt = '';
                                    if (isset($taxasCartCred[$bandeira->getCoBandeiraCartao()])) {
                                        $valor = $taxasCartCred[$bandeira->getCoBandeiraCartao()][NU_TAXA_CARTAO];
                                        $valorAnt = $taxasCartCred[$bandeira->getCoBandeiraCartao()][NU_TAXA_ANTECIPACAO];
                                        $check = 'checked="checked"';
                                    }
                                    $aceita = '<div id="change-color-switch" class="make-switch"
                                                 data-on-label="<i class=\'fa fa-check fa-white\'></i>"
                                                 data-off-label="<i class=\'fa fa-times fa-white\'></i>"
                                                 data-on="success"
                                                 data-off="danger">
                                                <input type="checkbox" id="aceite-bandeira-taxa-cred-' . $bandeira->getCoBandeiraCartao() . '"
                                                       name="bandeira-taxa-cred[' . $bandeira->getCoBandeiraCartao() . ']" 
                                                       ' . $check . ' class="aceite-cred" title=""/>
                                            </div>';

                                    $taxa = '<div class="col-md-12 input-group">
                                    <input type="text" class="form-control porc-decimal"
                                          placeholder="0,00" id="bandeira-taxa-cred-' . $bandeira->getCoBandeiraCartao() . '"
                                          value="' . $valor . '" name="bandeira-taxa-cred[' . $bandeira->getCoBandeiraCartao() . ']"/>
                                          <span class="input-group-addon" style="height: 34px;">
                                    %</span></div>';
                                    $taxaAntec = '<div class="col-md-12 input-group">
                                    <input type="text" class="form-control porc-decimal"
                                          placeholder="0,00" id="bandeira-taxaAntec-cred-' . $bandeira->getCoBandeiraCartao() . '"
                                           value="' . $valorAnt . '" name="bandeira-taxaAntec-cred[' . $bandeira->getCoBandeiraCartao() . ']"/>
                                          <span class="input-group-addon" style="height: 34px;">
                                    %</span></div>';

                                    $nomeBandeira = '<img src="' . TIMTHUMB . '?src=' . HOME . ADMIN .
                                        '/Imagens/FormasPagamento/' . Valida::ValNome($bandeira->getNoBandeiraCartao()) . '.png' .
                                        '&w=100&h=50" alt="' . $bandeira->getNoBandeiraCartao() .
                                        '" title="' . $bandeira->getNoBandeiraCartao() . '" />';

                                    $coPagBandCartao = (!empty($taxasCartCred[$bandeira->getCoBandeiraCartao()]))
                                        ? $taxasCartCred[$bandeira->getCoBandeiraCartao()][CO_PAGAMENTO_BANDEIRA_CARTAO]
                                        : "";

                                    $acao = ' <a href="' . PASTAADMIN . 'Configuracao/HistoricoTaxaCartaoCredito/' .
                                        Valida::GeraParametro(CO_PAGAMENTO_BANDEIRA_CARTAO . "/" . $coPagBandCartao) . '" 
                                        class="btn btn-med-grey tooltips" 
                                            data-original-title="Histórico de taxas da bandeira" data-placement="top">
                                             <i class="clip-folder-open"></i>
                                         </a>';

                                    $grid->setColunas($aceita, 1);
                                    $grid->setColunas($nomeBandeira . ' - ' . $bandeira->getNoBandeiraCartao());
                                    $grid->setColunas($taxa, 4);
                                    $grid->setColunas($taxaAntec, 4);
                                    $grid->setColunas($acao, 2);
                                    $grid->criaLinha($bandeira->getCoBandeiraCartao());
                                endforeach;
                                $grid->finalizaGrid();
                                ?>
                                <div class="form-group">
                                    <div class="col-sm-2 col-sm-offset-10">
                                        <button type="submit" class="btn btn-success btn-block">
                                            Salvar <i class="fa fa-arrow-circle-right"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    <?php } ?>
                </div>
                <div class="col-sm-2 col-sm-offset-11">
                    <!-- end: DYNAMIC TABLE PANEL -->
                    <?php Valida::geraBtnVoltar('Configuracao/FormasDePagamentoConfiguracao/'); ?>
                </div>
                <br><br><br>
            </div>
        </div>
        <!-- end: PAGE CONTENT-->
    </div>
</div>
<!-- end: PAGE -->