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
                            Configuração
                        </a>
                    </li>
                    <li class="active">
                        Motivo Desconto
                    </li>

                </ol>
                <div class="page-header">
                    <h1>Configuração
                        <small>Motivo Desconto</small>
                    </h1>
                </div>
                <!-- end: PAGE TITLE & BREADCRUMB -->
            </div>
        </div>
        <?php
        Modal::load();
        ?>
        <div class="row">
            <div class="form-group col-sm-12">
                <form action="<?= HOME . ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action; ?>"
                      role="form" class="formulario" method="post" enctype="multipart/form-data"
                      id="MotivoDescontoConfiguracao" name="MotivoDescontoConfiguracao">
                    <div class="col-sm-12">
                        <table class="table-striped table-bordered table-hover table-full-width table-nodatable"
                               id="nova" style="width: 100%" cellpadding="5" cellspacing="5">
                            <thead>
                            <tr style="background-color: #99ccff; color: #000;" role="row">
                                <th>Desconto</th>
                                <th>Aceita desconto</th>
                                <th>Desconta na comissão</th>
                            </tr>
                            </thead>
                            <tbody role="alert" aria-live="polite" aria-relevant="all">
                            <?php
                            foreach ($motivosDesconto as $coMotivo => $motivo) {
                                ?>
                                <tr class="linha-tabela odd">
                                    <td><?= $motivo; ?></td>
                                    <td>
                                        <div id="change-color-switch" class="make-switch"
                                             data-on-label="<i class='fa fa-check fa-white'></i>"
                                             data-off-label="<i class='fa fa-times fa-white'></i>"
                                             data-on="success"
                                             data-off="danger">
                                            <input type="checkbox" id="<?= ST_STATUS_DESCONTO; ?>"
                                                <?= (!empty($motivosDescontoAss) &&
                                                    $motivosDescontoAss[$coMotivo][ST_STATUS_DESCONTO] == SimNaoEnum::SIM)
                                                    ? ' checked="checked" ' : ''; ?>
                                                   name="<?= ST_STATUS_DESCONTO; ?>[<?= $coMotivo; ?>]"/>
                                        </div>
                                    </td>
                                    <td>
                                        <div id="change-color-switch" class="make-switch"
                                             data-on-label="<i class='fa fa-check fa-white'></i>"
                                             data-off-label="<i class='fa fa-times fa-white'></i>"
                                             data-on="success"
                                             data-off="danger">
                                            <input type="checkbox" id="<?= ST_REFLETE_DESCONTO_COMISSAO; ?>"
                                                <?= (!empty($motivosDescontoAss) &&
                                                    $motivosDescontoAss[$coMotivo][ST_REFLETE_DESCONTO_COMISSAO]
                                                    == SimNaoEnum::SIM) ? ' checked="checked" ' : ''; ?>
                                                   name="<?= ST_REFLETE_DESCONTO_COMISSAO; ?>[<?= $coMotivo; ?>]"/>
                                        </div>
                                        <input type="hidden" value="<?=
                                        $motivosDescontoAss[$coMotivo][CO_MOTIVO_DESCONTO_ASSINANTE]; ?>"
                                               name="<?= CO_MOTIVO_DESCONTO_ASSINANTE; ?>[<?= $coMotivo; ?>]"/>
                                    </td>
                                </tr>
                            <?php } ?>
                            </tbody>
                        </table>
                        <div class="form-group pull-right">
                            <div class="col-sm-12">
                                <button type="submit" class="btn btn-success">
                                    Salvar <i class="fa fa-arrow-circle-right"></i>
                                </button>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
        </form>
        <!-- end: PAGE CONTENT-->
    </div>
</div>
<!-- end: PAGE -->