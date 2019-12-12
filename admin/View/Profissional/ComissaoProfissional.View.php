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
                            Profissional
                        </a>
                    </li>
                    <li class="active">
                        Comissão
                    </li>

                </ol>
                <div class="page-header">
                    <h1>Profissional
                        <small>Comissão</small>
                    </h1>
                </div>
                <!-- end: PAGE TITLE & BREADCRUMB -->
            </div>
        </div>
        <?php
        Modal::load();
        ?>
        <div class="row">
            <div class="col-sm-12">
                <h3>Profissional:
                    <b><?php echo $profissional->getCoPessoa()->getNoPessoa(); ?></b></h3>
            </div>
            <?php
            echo $form;
            ?>

        </div>
        <!-- end: PAGE CONTENT-->
    </div>
</div>
<!-- end: PAGE -->