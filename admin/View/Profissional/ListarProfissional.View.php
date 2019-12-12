<div class="main-content">
    <div class="container">
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
                        Listar
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Profissional
                        <small>Listar Profissional</small>
                        <?php Valida::geraBtnNovo(); ?>
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
                        $grid = new Grid();
                        echo $grid->PesquisaAvancada('Pesquisar Profissionais');
                        ?>
                        <h2>
                            <small>Profissionais Cadastrados</small>
                        </h2>
                        <?php
                        if ($tipoComissao == FormaComissaoEnum::PROFISSIONAL) { ?>
                            <div class="alert alert-block alert-warning fade in col-md-3">
                                <h4 class="alert-heading"><i class="fa fa-calendar"></i> Legenda</h4>
                                <b>UP: Comissão quando for Único Profissional.</b><br>
                                <b>CA: Comissão quando for Com Assistente.</b><br>
                                <b>OA: Comissão quando for O Assistente.</b><br>
                            </div>
                            <?php
                        }
                        Modal::load();
                        Modal::confirmacao("confirma_Profissional");
                        Modal::ModalConfirmaDesativacao("DesativarProfissional",
                            'Deseja realmente desativar esse Profissional?',
                            0,'Profissional/DesativarProfissional', true );
                        Modal::ModalConfirmaAtivacao("AtivarProfissional",
                            'Deseja realmente ativar esse Profissional?',
                            0,'Profissional/AtivarProfissional' );
                        $arrColunas = array('Foto', 'Profissional', 'Atendimento', 'Telefone', 'Aniversário', 'Cargo', 'Status', 'Assistente', 'Ações');
                        if ($tipoComissao == FormaComissaoEnum::PROFISSIONAL) {
                            $arrColunas = array('Foto', 'Profissional', 'Atendimento', 'Telefone', 'Aniversário', 'Cargo',
                                'Comissão', 'Status', 'Assistente', 'Ações');
                        }
                        $grid = new Grid();
                        $grid->setColunasIndeces($arrColunas);
                        $grid->criaGrid();
                        /** @var ProfissionalEntidade $res */
                        foreach ($result as $res):

                            $acao = '<a href="' . PASTAADMIN . 'Profissional/CadastroProfissional/' .
                                Valida::GeraParametro(CO_PROFISSIONAL . "/" . $res->getCoProfissional()) . '" class="btn btn-primary tooltips" 
                                    data-original-title="Editar Registro" data-placement="top">
                                     <i class="fa fa-clipboard"></i>
                                 </a>';
                            if ($res->getStStatus() == StatusAcessoEnum::ATIVO) {
                                $acao .= ' <a data-toggle="modal" role="button" class="btn btn-danger tooltips acao" 
                                            id="' . $res->getCoProfissional() . '" data-msg-restricao="MSG03"
                                           href="#DesativarProfissional" data-original-title="Desativar Profissional" data-placement="top"
                                           data-url-action="' . PASTAADMIN . 'Profissional/DesativarProfissional/' .
                                    Valida::GeraParametro(CO_PROFISSIONAL . "/" . $res->getCoProfissional()) . '">
                                            <i class="fa fa-lock"></i>
                                        </a>';
                            } else {
                                $acao .= ' <a data-toggle="modal" role="button" class="btn btn-green tooltips acao" 
                                            id="' . $res->getCoProfissional() . '" data-msg-restricao="MSG03"
                                           href="#AtivarProfissional" data-original-title="Ativar Profissional" data-placement="top"
                                           data-url-action="' . PASTAADMIN . 'Profissional/AtivarProfissional/' .
                                    Valida::GeraParametro(CO_PROFISSIONAL . "/" . $res->getCoProfissional()) . '">
                                            <i class="fa fa-unlock-alt"></i>
                                        </a>';
                            }
                            $botao = 2;
                            if (($tipoComissao) && ($res->getStStatus() == StatusAcessoEnum::ATIVO)) {
                                $botao = 3;

                                if ($tipoComissao ==
                                    FormaComissaoEnum::$descricao[FormaComissaoEnum::SERVICO_PROFISSIONAL]) {
                                    $comiss = '';

                                    $acao .= ' <a href="' . PASTAADMIN . 'Profissional/ComissaoProfissionalServico/' .
                                        Valida::GeraParametro(CO_PROFISSIONAL . "/" . $res->getCoProfissional()) . '" 
                                                class="btn btn-success tooltips" data-original-title="Comissões dos Serviços para o Profissional" 
                                                data-placement="top"> <i class="fa fa-money"></i></a>';

                                } else {
                                    $acao .= ' <a href="' . PASTAADMIN . 'Profissional/ComissaoProfissional/' .
                                        Valida::GeraParametro(CO_PROFISSIONAL . "/" . $res->getCoProfissional()) . '" 
                                                class="btn btn-success tooltips" data-original-title="Comissão do Profissional" 
                                                data-placement="top"> <i class="fa fa-money"></i> </a>';
                                    $comiss = '';
                                    if ($res->getCoPercentualComissao()) {
                                        $comissao2 = [];
                                        /** @var PercentualComissaoEntidade $percent */
                                        foreach ($res->getCoPercentualComissao() as $percent) {
                                            $comissao2[$percent->getNuTipoComissao()] = $percent->getNuComissao();
                                        }
                                        $comiss = 'UP: <b>' . $comissao2[TipoComissaoEnum::UNICO_PROFISSIONAL] . '%</b><br>';
                                        $comiss .= 'CA: <b>' . $comissao2[TipoComissaoEnum::COM_ASSISTENTE] . '%</b><br>';
                                        $comiss .= 'OA: <b>' . $comissao2[TipoComissaoEnum::ASSISTENTE] . '%</b>';
                                    } else {
                                        $comiss = 'UP: <b>' . $comissao[TipoComissaoEnum::UNICO_PROFISSIONAL] . '%</b><br>';
                                        $comiss .= 'CA: <b>' . $comissao[TipoComissaoEnum::COM_ASSISTENTE] . '%</b><br>';
                                        $comiss .= 'OA: <b>' . $comissao[TipoComissaoEnum::ASSISTENTE] . '%</b>';
                                    }
                                }
                            }
                            $cargos = [];
                            /** @var ProfissionalCargoEntidade $cargoProf */
                            foreach ($res->getCoProfissionalCargo() as $cargoProf) {
                                $cargos[] = $cargoProf->getCoCargo()->getNoCargo();
                            }
                            $tamanhoImg = 60;
                            $noPessoa = Valida::ValNome($res->getCoPessoa()->getNoPessoa());
                            if ($res->getCoImagem() && (file_exists(PASTA_UPLOADS . "usuarios/" . $res->getCoImagem()->getDsCaminho()))) {
                                $imagem = Valida::GetMiniatura(
                                    'usuarios/' . $res->getCoImagem()->getDsCaminho(),
                                    $noPessoa, $tamanhoImg, $tamanhoImg, "circle-img"
                                );
                            } else {
                                if ($res->getCoPessoa()->getStSexo() == "M"):
                                    $fotoPerfil = "avatar-homem.jpg";
                                else:
                                    $fotoPerfil = "avatar-mulher.jpg";
                                endif;

                                $imagem = '<img src="' . TIMTHUMB . '?src=' . HOME .
                                    'library/Imagens/' . $fotoPerfil . '&w=' . $tamanhoImg . '&h=' . $tamanhoImg . '" 
                                alt="' . $noPessoa . '" title="' . $noPessoa . '" 
                                class="circle-img" />';
                            }
                            $atendimento = '';
                            if ($res->getCoJornadaTrabalho()) {
                                /** @var JornadaTrabalhoEntidade $item */
                                foreach ($res->getCoJornadaTrabalho() as $item) {
                                    $atendimento .= DiasEnum::getDescricaoValor(
                                            $item->getNuDiaSemana()
                                        ) . ', ';
                                }
                            }
                            $grid->setColunas($imagem, 1);
                            $grid->setColunas($res->getCoPessoa()->getNoPessoa());
                            $grid->setColunas($atendimento);
                            $grid->setColunas(Valida::MascaraTel($res->getCoPessoa()->getCoContato()->getNuTel1()), 2);
                            $grid->setColunas(Valida::getAniversario($res->getCoPessoa()->getDtNascimento()), 2);
                            $grid->setColunas(implode(', ', $cargos));
                            if ($tipoComissao == FormaComissaoEnum::PROFISSIONAL) {
                                $grid->setColunas($comiss);
                            }
                            $grid->setColunas(Valida::StatusLabel($res->getStStatus()), 2);
                            $grid->setColunas(Valida::SituacaoSimNao($res->getStAssistente()), 2);
                            $grid->setColunas($acao, $botao);
                            $grid->criaLinha($res->getCoProfissional());
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