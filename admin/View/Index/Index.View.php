<div class="main-content">
    <!-- end: SPANEL CONFIGURATION MODAL FORM -->
    <div class="container">
        <!-- start: PAGE HEADER -->
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-home-3"></i>
                        <a href="#">
                            Início
                        </a>
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Resumo dos Produtos</h1>
                </div>
                <!-- end: PAGE TITLE & BREADCRUMB -->
            </div>
        </div>
        <!-- end: PAGE HEADER -->
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-calendar"></i>
                        Resumo do Sistema
                    </div>
                    <div class="panel-body">
                        <div class="col-sm-4">
                            <button class="btn btn-icon btn-block">
                                <i class="fa fa-envelope"></i>
                                Suporte(s) Não Lido(s)
                                <span class="negrito dados dados-success">
                                  <?= $dados['MsgNaoLidas']; ?>
                                </span>
                            </button>
                        </div>
                        <div class="col-sm-4">
                            <button class="btn btn-icon btn-block">
                                <i class="fa-calendar fa"></i>
                                Agendamentos de Hoje
                                <span class="negrito dados dados-danger">
                                     <?= $dados['agHoje']; ?>
                                </span>
                            </button>
                        </div>
                        <div class="col-sm-4">
                            <button class="btn btn-icon btn-block">
                                <i class="fa fa-calendar-o"></i>
                                Agend. do Mês
                                <span class="dados negrito dados-black">
                                     <?= $dados['agMes']; ?>
                                </span>
                            </button>
                        </div>
                        <div class="col-sm-4">
                            <button class="btn btn-icon btn-block">
                                <i class="clip-users-3"></i>
                                Agend. Finalizados do Mês
                                <span class="negrito dados dados-warning">
                                     <?= $dados['agMesFinal']; ?>
                                </span>
                            </button>
                        </div>
                        <div class="col-sm-4">
                            <button class="btn btn-icon btn-block">
                                <i class="fa fa-money"></i>
                                Agend. com Falta do Mês
                                <span class="dados negrito dados-info">
                                     <?= $dados['agMesFaltou']; ?>
                                </span>
                            </button>
                        </div>
                        <div class="col-sm-4">
                            <button class="btn btn-icon btn-block">
                                <i class="clip-user-cancel"></i>
                                Agend. Cancelados do Mês
                                <span class="dados negrito dados-beige">
                                     <?= $dados['agMesCanc']; ?>
                                </span>
                            </button>
                        </div>
                        <div class="col-sm-4">
                            <button class="btn btn-icon btn-block">
                                <i class="clip-user-3"></i>
                                Agend. Agendados do Mês
                                <span class="dados negrito dados-orange">
                                     <?= $dados['agMesAge']; ?>
                                </span>
                            </button>
                        </div>
                        <div class="col-sm-4">
                            <button class="btn btn-icon btn-block">
                                <i class="fa-dollar fa"></i>
                                Agend. Confirmados do Mês
                                <span class="dados negrito dados-olivia">
                                     <?= $dados['agMesConf']; ?>
                                </span>
                            </button>
                        </div>
                        <div class="col-sm-4">
                            <button class="btn btn-icon btn-block">
                                <i class="fa-eur fa"></i>
                                Agend. Deletados do Mês
                                <span class="dados negrito dados-gray">
                                    <?= $dados['agMesDel']; ?>
                                </span>
                            </button>
                        </div>
                        <div class="col-sm-4">
                            <button class="btn btn-icon btn-block">
                                <i class="clip-user-3"></i>
                                Profissionais Cadastrados
                                <span class="dados negrito dados-info">
                                     <?= $dados['nuProf']; ?>
                                </span>
                            </button>
                        </div>
                        <div class="col-sm-4">
                            <button class="btn btn-icon btn-block">
                                <i class="fa-dollar fa"></i>
                                Serviços Cadastrados
                                <span class="dados negrito dados-success">
                                     <?= $dados['nuServ']; ?>
                                </span>
                            </button>
                        </div>
                        <div class="col-sm-4">
                            <button class="btn btn-icon btn-block">
                                <i class="fa-eur fa"></i>
                                Clientes Cadastrados
                                <span class="dados negrito dados-warning">
                                    <?= $dados['nuCli']; ?>
                                </span>
                            </button>
                        </div>
                    </div>
                </div>
                <!-- end: FULL CALENDAR PANEL -->
            </div>
            <!-- end: PAGE CONTENT-->

        </div>
    </div>
</div>