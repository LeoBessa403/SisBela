<div class="main-content">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-grid-6"></i>
                        <a href="#">
                            Promoção de Serviços
                        </a>
                    </li>
                    <li class="active">
                        Histórico
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Promoção de Serviços
                        <small>Histórico Promoção de Serviços</small>
                    </h1>
                    <span class="pull-right" style="float: right; margin-right: 10px; margin-top: -30px;">
                        <?php
                        echo '<a href="' . PASTAADMIN . UrlAmigavel::$controller . '/PromocaoServico"
                               class="btn btn-primary tooltips" data-original-title="Voltar" data-placement="top">
                                Voltar <i class="clip-arrow-right-2"></i>
                            </a>';
                        $voltar = "/PromocaoServico";
                        ?>
                    </span>
                </div>
                <!-- end: PAGE TITLE & BREADCRUMB -->
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-external-link-square"></i>
                        Histórico Promoção de Serviços
                    </div>
                    <div class="panel-body">
                        <?php
                        $nome = "Promoção " . $promocao->getNoTitulo();
                        $historicos = $promocao->getCoPrecoPromocao();
                        require_once PARTIAL_LIBRARY . 'Admin/historico.php';
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