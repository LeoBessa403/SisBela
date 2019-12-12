<div class="main-content">
    <div class="container">
        <!-- start: PAGE HEADER -->
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-grid-6"></i>
                        <a href="#">
                            Formas de Pagamento
                        </a>
                    </li>
                    <li class="active">
                        Cadastro / Edição
                    </li>

                </ol>
                <div class="page-header">
                    <h1>Formas de Pagamento
                        <small>Cadastro / Edição</small>
                        <?php Valida::geraBtnNovo("Bandeiras / Taxas", "BandeiraTaxaConfiguracao"); ?>
                    </h1>
                </div>
                <!-- end: PAGE TITLE & BREADCRUMB -->
            </div>
        </div>
        <?php
        Modal::load();
        ?>
        <div class="row">
            <?php

            echo $form;
            ?>

        </div>
        <!-- end: PAGE CONTENT-->
    </div>
</div>
<!-- end: PAGE -->