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
                            Cliente
                        </a>
                    </li>
                    <li class="active">
                        Cadastro de Cliente
                    </li>

                </ol>
                <div class="page-header">
                    <h1>Cliente
                        <small> Cadastro de Cliente</small>
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
        <div class="pull-right">
            <!-- end: DYNAMIC TABLE PANEL -->
            <?php Valida::geraBtnVoltar(); ?>
        </div>
        <br><br><br>
        <!-- end: PAGE CONTENT-->
    </div>
</div>
<!-- end: PAGE -->