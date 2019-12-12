<?php

class Configuracao extends AbstractController
{
    public $result;
    public $feriados;
    public $bandeiras;
    public $dadosTipoPagamento;
    public $taxasCartDeb;
    public $taxasCartCred;
    public $pagBandCartao;
    public $motivosDesconto;
    public $motivosDescontoAss;
    public $configComissao;

    public function DiaEspecialConfiguracao()
    {
        /** @var FeriadoService $feriadoService */
        $feriadoService = $this->getService(FERIADO_SERVICE);
        $this->feriados = $feriadoService->PesquisaTodos();

        /** @var DiaEspecialService $diaEspecialService */
        $diaEspecialService = $this->getService(DIA_ESPECIAL_SERVICE);
        $this->result = $diaEspecialService->PesquisaTodos();
    }

    public function CadastroDiaEspecialConfiguracao()
    {
        /** @var DiaEspecialService $diaEspecialService */
        $diaEspecialService = $this->getService(DIA_ESPECIAL_SERVICE);
        $id = "CadastroDiaEspecial";

        if (!empty($_POST[$id])):
            $retorno = $diaEspecialService->salvaDiaEspecial($_POST);
            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/DiaEspecialConfiguracao/');
            }
        endif;

        $coDiaEspecial = UrlAmigavel::PegaParametro(CO_DIA_ESPECIAL);
        $res = [];
        if ($coDiaEspecial) {
            /** @var DiaEspecialEntidade $diaEspecial */
            $diaEspecial = $diaEspecialService->PesquisaUmRegistro($coDiaEspecial);
            $res[DT_DIA] = Valida::DataShow($diaEspecial->getDtDia());
            $res[NU_HORA_ABERTURA] = $diaEspecial->getNuHoraAbertura();
            $res[NU_HORA_FECHAMENTO] = $diaEspecial->getNuHoraFechamento();
            $res[DS_MOTIVO] = $diaEspecial->getDsMotivo();
            $res[CO_DIA_ESPECIAL] = $diaEspecial->getCoDiaEspecial();
        }
        $this->form = DiaEspecialForm::Cadastrar($res);
    }

    public function FormasDePagamentoConfiguracao()
    {
        /** @var FacilidadePagamentoService $facilidadePagamentoService */
        $facilidadePagamentoService = $this->getService(FACILIDADE_PAGAMENTO_SERVICE);
        /** @var FacilidadeBeneficioService $facilidadeBeneficioService */
        $facilidadeBeneficioService = $this->getService(FACILIDADE_BENEFICIO_SERVICE);
        /** @var AssinanteService $assinanteService */
        $assinanteService = $this->getService(ASSINANTE_SERVICE);
        /** @var AssinanteEntidade $assinante */
        $assinante = $assinanteService->getAssinanteLogado();
        $id = "FormasDePagamento";

        if (!empty($_POST[$id])):
            $retorno = $facilidadePagamentoService->salvaFacilidadePagamento($_POST);
            if ($retorno[SUCESSO]) {
                foreach ($_POST[CO_TIPO_PAGAMENTO] as $tipoPagamento) {
                    if ($tipoPagamento == TipoPagamentoEnum::CARTAO_CREDITO ||
                        $tipoPagamento == TipoPagamentoEnum::CARTAO_DEBITO) {
                        Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/BandeiraTaxaConfiguracao/');
                    }
                }
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/FormasDePagamentoConfiguracao/');
            }
        endif;

        $res = [];
        $res[CO_FACILIDADE_BENEFICIO] = $assinante->getCoFacilidadeBeneficio()->getCoFacilidadeBeneficio();
        if ($res[CO_FACILIDADE_BENEFICIO]) {
            /** @var FacilidadeBeneficioEntidade $FacilidadeBeneficio */
            $FacilidadeBeneficio = $facilidadeBeneficioService->PesquisaUmRegistro($res[CO_FACILIDADE_BENEFICIO]);

            $facPag = [];
            if (!empty($FacilidadeBeneficio->getCoFacilidadePagamento())) {
                /** @var FacilidadePagamentoEntidade $FacilidadePag */
                foreach ($FacilidadeBeneficio->getCoFacilidadePagamento() as $FacilidadePag) {
                    $facPag[] = $FacilidadePag->getCoTipoPagamento()->getCoTipoPagamento();
                }
            }
            $res[CO_TIPO_PAGAMENTO] = $facPag;
        }
        $this->form = FormasDePagamentoForm::Cadastrar($res);
    }


    public function BandeiraTaxaConfiguracao()
    {
        /** @var AssinanteService $assinanteService */
        $assinanteService = $this->getService(ASSINANTE_SERVICE);
        /** @var FacilidadePagamentoService $facilidadePagamentoService */
        $facilidadePagamentoService = $this->getService(FACILIDADE_PAGAMENTO_SERVICE);
        /** @var AssinanteEntidade $assinante */
        $assinante = $assinanteService->getAssinanteLogado();

        /** @var PagamentoBandeiraCartaoService $pagamentoBandeiraCartaoService */
        $pagamentoBandeiraCartaoService = $this->getService(PAGAMENTO_BANDEIRA_CARTAO_SERVICE);

        if (isset($_POST["bandeira-taxa-deb"]) || isset($_POST["bandeira-taxa-cred"])):
            $retorno = $pagamentoBandeiraCartaoService->salvaPagamentoBandeiraCartao($_POST,
                $assinante->getCoFacilidadeBeneficio()->getCoFacilidadePagamento());
            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/FormasDePagamentoConfiguracao/');
            }
        endif;

        $facilidadesPagamentos = $assinante->getCoFacilidadeBeneficio()->getCoFacilidadePagamento();
        /** @var FacilidadePagamentoEntidade $tipoPagamento */
        $dadosTipoPagamento = [
            TipoPagamentoEnum::CARTAO_CREDITO => null,
            TipoPagamentoEnum::CARTAO_DEBITO => null
        ];

        $taxasCartDeb = [];
        $taxasCartCred = [];
        if ($facilidadesPagamentos) {
            /** @var FacilidadePagamentoEntidade $facilidadePagamentos */
            foreach ($facilidadesPagamentos as $facilidadePagamentos) {
                if ($facilidadePagamentos->getCoTipoPagamento() == TipoPagamentoEnum::CARTAO_DEBITO) {
                    $dadosTipoPagamento[TipoPagamentoEnum::CARTAO_DEBITO] = true;
                    /** @var FacilidadePagamentoEntidade $facPagamento */
                    $facPagamento = $facilidadePagamentoService->PesquisaUmRegistro(
                        $facilidadePagamentos->getCoFacilidadePagamento());
                    if ($facPagamento->getCoPagamentoBandeiraCartao()) {
                        /** @var PagamentoBandeiraCartaoEntidade $pagBandCartao */
                        foreach ($facPagamento->getCoPagamentoBandeiraCartao() as $pagBandCartao) {
                            $bandCartao = $pagBandCartao->getCoBandeiraCartao()->getCoBandeiraCartao();
                            $taxasCartDeb[$bandCartao][NU_TAXA_CARTAO] = Valida::FormataMoeda(
                                $pagBandCartao->getCoUltimaTaxaCartao()->getNuTaxaCartao());
                            $taxasCartDeb[$bandCartao][CO_PAGAMENTO_BANDEIRA_CARTAO] =
                                $pagBandCartao->getCoPagamentoBandeiraCartao();
                        }
                    }
                }
                if ($facilidadePagamentos->getCoTipoPagamento() == TipoPagamentoEnum::CARTAO_CREDITO) {
                    $dadosTipoPagamento[TipoPagamentoEnum::CARTAO_CREDITO] = true;
                    /** @var FacilidadePagamentoEntidade $facPagamento */
                    $facPagamento = $facilidadePagamentoService->PesquisaUmRegistro(
                        $facilidadePagamentos->getCoFacilidadePagamento());
                    if ($facPagamento->getCoPagamentoBandeiraCartao()) {
                        /** @var PagamentoBandeiraCartaoEntidade $pagBandCartao */
                        foreach ($facPagamento->getCoPagamentoBandeiraCartao() as $pagBandCartao) {
                            $bandCartao = $pagBandCartao->getCoBandeiraCartao()->getCoBandeiraCartao();
                            $taxasCartCred[$bandCartao][NU_TAXA_CARTAO] = Valida::FormataMoeda(
                                $pagBandCartao->getCoUltimaTaxaCartao()->getNuTaxaCartao());
                            $taxasCartCred[$bandCartao][NU_TAXA_ANTECIPACAO] = Valida::FormataMoeda(
                                $pagBandCartao->getCoUltimaTaxaCartao()->getNuTaxaAntecipacao());
                            $taxasCartCred[$bandCartao][CO_PAGAMENTO_BANDEIRA_CARTAO] =
                                $pagBandCartao->getCoPagamentoBandeiraCartao();
                        }
                    }
                }
            }
        }
        if (!$dadosTipoPagamento[TipoPagamentoEnum::CARTAO_CREDITO] &&
            !$dadosTipoPagamento[TipoPagamentoEnum::CARTAO_DEBITO]) {
            Notificacoes::geraMensagem(
                'Inclusão apenas de taxas para tipos de pagamento aceito com Cartões de Débito e/ou Crédito',
                TiposMensagemEnum::ALERTA);
            Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/FormasDePagamentoConfiguracao/');
        }

        /** @var BandeiraCartaoService $bandeiraCartaoService */
        $bandeiraCartaoService = $this->getService(BANDEIRA_CARTAO_SERVICE);
        $this->bandeiras = $bandeiraCartaoService->PesquisaTodos();

        $this->dadosTipoPagamento = $dadosTipoPagamento;
        $this->taxasCartCred = $taxasCartCred;
        $this->taxasCartDeb = $taxasCartDeb;
    }

    public function HistoricoTaxaCartaoDebito()
    {
        /** @var PagamentoBandeiraCartaoService $pagamentoBandeiraCartaoService */
        $pagamentoBandeiraCartaoService = $this->getService(PAGAMENTO_BANDEIRA_CARTAO_SERVICE);

        $coPagBandCartao = UrlAmigavel::PegaParametro(CO_PAGAMENTO_BANDEIRA_CARTAO);
        if ($coPagBandCartao) {
            /** @var PlanoEntidade $plano */
            $this->pagBandCartao = $pagamentoBandeiraCartaoService->PesquisaUmRegistro($coPagBandCartao);
        } else {
            Notificacoes::geraMensagem(
                'Não Existe Histórico de taxas para esse Cartões de Débito',
                TiposMensagemEnum::ALERTA
            );
            Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/BandeiraTaxaConfiguracao/');
        }
    }


    public function HistoricoTaxaCartaoCredito()
    {
        /** @var PagamentoBandeiraCartaoService $pagamentoBandeiraCartaoService */
        $pagamentoBandeiraCartaoService = $this->getService(PAGAMENTO_BANDEIRA_CARTAO_SERVICE);

        $coPagBandCartao = UrlAmigavel::PegaParametro(CO_PAGAMENTO_BANDEIRA_CARTAO);
        if ($coPagBandCartao) {
            /** @var PlanoEntidade $plano */
            $this->pagBandCartao = $pagamentoBandeiraCartaoService->PesquisaUmRegistro($coPagBandCartao);
        } else {
            Notificacoes::geraMensagem(
                'Não Existe Histórico de taxas para esse Cartões de Crédito',
                TiposMensagemEnum::ALERTA
            );
            Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/BandeiraTaxaConfiguracao/');
        }
    }

    public function ClienteConfiguracao()
    {
        /** @var ConfigClienteService $configClienteService */
        $configClienteService = $this->getService(CONFIG_CLIENTE_SERVICE);
        $id = "configCliente";

        if (!empty($_POST[$id])):
            $retorno = $configClienteService->salvaConfigCliente($_POST);
            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/ClienteConfiguracao/');
            }
        endif;

        $res[ST_MARCA_SERVICO] = 'checked';
        /** @var ConfigClienteEntidade $configClinte */
        $configClinte = $configClienteService->PesquisaUmQuando([
            CO_ASSINANTE => AssinanteService::getCoAssinanteLogado()
        ]);
        if ($configClinte) {
            $res[NU_AUSENCIA] = $configClinte->getNuAusencia();
            $res[CO_CONFIG_CLIENTE] = $configClinte->getCoConfigCliente();
            $res[ST_MARCA_SERVICO] = ($configClinte->getStMarcaServico() == 'S')
                ? 'checked' : '';
        }
        $this->form = ConfiguracaoForm::ConfigCliente($res);
    }

    public function AgendamentoConfiguracao()
    {
        /** @var ConfigAgendamentoService $configAgendamentoService */
        $configAgendamentoService = $this->getService(CONFIG_AGENDAMENTO_SERVICE);
        $id = "configAgendamento";

        if (!empty($_POST[$id])):
            $retorno = $configAgendamentoService->salvaConfigAgendamento($_POST);
            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/AgendamentoConfiguracao/');
            }
        endif;

        $res[ST_RECEBER_EMAIL_AGENDAMENTO] = 'checked';
        $res[ST_ENVIAR_EMAIL_CONFIRMACAO] = 'checked';
        /** @var ConfigAgendamentoEntidade $configAgendamento */
        $configAgendamento = $configAgendamentoService->PesquisaUmQuando([
            CO_ASSINANTE => AssinanteService::getCoAssinanteLogado()
        ]);
        if ($configAgendamento) {
            $res[CO_CONFIG_AGENDAMENTO] = $configAgendamento->getCoConfigAgendamento();
            $res[NU_ANTECEDENCIA_AGENDAMENTO] = $configAgendamento->getNuAntecedenciaAgendamento();
            $res[NU_INTERVALO] = $configAgendamento->getNuIntervalo();
            $res[ST_STATUS_AGENDAMENTO_SITE] = $configAgendamento->getStStatusAgendamentoSite();
            $res[ST_RECEBER_EMAIL_AGENDAMENTO] = ($configAgendamento->getStReceberEmailAgendamento() == 'S')
                ? 'checked' : '';
            $res[ST_ENVIAR_EMAIL_CONFIRMACAO] = ($configAgendamento->getStEnviarEmailConfirmacao() == 'S')
                ? 'checked' : '';
        }
        $this->form = ConfiguracaoForm::ConfigAgendamento($res);
    }

    public function MotivoDescontoConfiguracao()
    {
        /** @var MotivoDescontoAssinanteService $motivoDescontoAssinanteService */
        $motivoDescontoAssinanteService = $this->getService(MOTIVO_DESCONTO_ASSINANTE_SERVICE);
        if (!empty($_POST)):
            $retorno = $motivoDescontoAssinanteService->salvaMotivoDescontoAssinante($_POST);
            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/MotivoDescontoConfiguracao/');
            }
        endif;

        $this->motivosDesconto = MotivoDescontoService::montaComboMotivosDesconto();
        $motivosDescontoAssinante = $motivoDescontoAssinanteService->PesquisaTodos([
            CO_ASSINANTE => AssinanteService::getCoAssinanteLogado()
        ]);
        /** @var MotivoDescontoAssinanteEntidade $motivoDescontoAss */
        foreach ($motivosDescontoAssinante as $motivoDescontoAss) {
            $this->motivosDescontoAss[$motivoDescontoAss
                ->getCoMotivoDesconto()->getCoMotivoDesconto()][ST_STATUS_DESCONTO]
                = $motivoDescontoAss->getStStatusDesconto();
            $this->motivosDescontoAss[$motivoDescontoAss
                ->getCoMotivoDesconto()->getCoMotivoDesconto()][ST_REFLETE_DESCONTO_COMISSAO]
                = $motivoDescontoAss->getStRefleteDescontoComissao();
            $this->motivosDescontoAss[$motivoDescontoAss
                ->getCoMotivoDesconto()->getCoMotivoDesconto()][CO_MOTIVO_DESCONTO_ASSINANTE]
                = $motivoDescontoAss->getCoMotivoDescontoAssinante();
        }
        if (!$motivosDescontoAssinante) {
            $motivoDescontoAssinanteService->iniciaMotivoDescontoAssinante();
            $this->motivosDescontoAss = [];
        }
    }

    public function ProfissionalConfiguracao()
    {
        /** @var ConfigProfissionalService $configProfissionalService */
        $configProfissionalService = $this->getService(CONFIG_PROFISSIONAL_SERVICE);
        $id = "configProfissional";

        if (!empty($_POST[$id])):
            $retorno = $configProfissionalService->salvaConfigProfissional($_POST);
            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/ProfissionalConfiguracao/');
            }
        endif;

        $res[ST_RECEBE_EMAIL_FATURAMENTO] = 'checked';
        $res[ST_EDICAO_SERVICOS] = 'checked';
        $res[ST_EDICAO_ATENDIMENTO] = '';
        /** @var ConfigProfissionalEntidade $configProfissional */
        $configProfissional = $configProfissionalService->PesquisaUmQuando([
            CO_ASSINANTE => AssinanteService::getCoAssinanteLogado()
        ]);
        if ($configProfissional) {
            $res[NU_PERIODO_AGENDA] = $configProfissional->getNuPeriodoAgenda();
            $res[CO_CONFIG_PROFISSIONAL] = $configProfissional->getCoConfigProfissional();
            $res[ST_RECEBE_EMAIL_FATURAMENTO] = ($configProfissional->getStRecebeEmailFaturamento() == 'S')
                ? 'checked' : '';
            $res[ST_EDICAO_SERVICOS] = ($configProfissional->getStEdicaoServicos() == 'S')
                ? 'checked' : '';
            $res[ST_EDICAO_ATENDIMENTO] = ($configProfissional->getStEdicaoAtendimento() == 'S')
                ? 'checked' : '';
        }
        $this->form = ConfiguracaoForm::ConfigProfissional($res);
    }

    public function ComissaoConfiguracao()
    {
        /** @var ConfigComissaoService $configComissaoService */
        $configComissaoService = $this->getService(CONFIG_COMISSAO_SERVICE);
        $id = "configComissao";

        if (!empty($_POST[$id])):
            $retorno = $configComissaoService->salvaConfigComissao($_POST);
            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/ComissaoConfiguracao/');
            }
        endif;

        $res[ST_TAXA_ANTECIPACAO] = '';
        $res[ST_TAXA_ADMINISTRATIVA] = '';
        $res[ST_TAXA_CARTAO_CREDITO] = '';
        $res[ST_TAXA_CARTAO_DEBITO] = '';
        $res[ST_RECEBIMENTO_PRE_VENDA] = '';
        $res[DT_VALIDO] = Valida::DataAtual('d/m/Y');
        /** @var ConfigComissaoEntidade $configComissao */
        $configComissao = $configComissaoService->PesquisaUmQuando([
            CO_ASSINANTE => AssinanteService::getCoAssinanteLogado()
        ]);
        if ($configComissao) {
            /** @var HistoricoComissaoEntidade $ultHistConfigCom */
            $ultHistConfigCom = $configComissao->getCoUltimoHistoricoComissao();
            $percAtul = $ultHistConfigCom->getPercentuaisComissao();
            $res[NU_FORMA_COMISSAO] = $ultHistConfigCom->getNuFormaComissao();
            $res[NU_FORMA_COMISSAO . '-valida'] = $ultHistConfigCom->getNuFormaComissao();
            $res[CO_CONFIG_COMISSAO] = $configComissao->getCoConfigComissao();
            $res[ST_TAXA_ANTECIPACAO] = ($ultHistConfigCom->getStTaxaAntecipacao() == 'S')
                ? 'checked' : '';
            $res[ST_TAXA_ADMINISTRATIVA] = ($ultHistConfigCom->getStTaxaAdministrativa() == 'S')
                ? 'checked' : '';
            $res[ST_TAXA_CARTAO_CREDITO] = ($ultHistConfigCom->getStTaxaCartaoCredito() == 'S')
                ? 'checked' : '';
            $res[ST_TAXA_CARTAO_DEBITO] = ($ultHistConfigCom->getStTaxaCartaoDebito() == 'S')
                ? 'checked' : '';
            $res[ST_RECEBIMENTO_PRE_VENDA] = ($ultHistConfigCom->getStRecebimentoPreVenda() == 'S')
                ? 'checked' : '';
            $res[DT_VALIDO] = date('d/m/Y');
            $res[NU_TIPO_COMISSAO . TipoComissaoEnum::UNICO_PROFISSIONAL]
                = $percAtul[TipoComissaoEnum::UNICO_PROFISSIONAL];
            $res[NU_TIPO_COMISSAO . TipoComissaoEnum::COM_ASSISTENTE]
                = $percAtul[TipoComissaoEnum::COM_ASSISTENTE];
            $res[NU_TIPO_COMISSAO . TipoComissaoEnum::ASSISTENTE]
                = $percAtul[TipoComissaoEnum::ASSISTENTE];
        }
        $this->form = ConfiguracaoForm::configComissao($res);
    }

    public function HistoricoComissao()
    {
        /** @var ConfigComissaoService $configComissaoService */
        $configComissaoService = $this->getService(CONFIG_COMISSAO_SERVICE);

        /** @var ConfigComissaoEntidade $configComissao */
        $configComissao = $configComissaoService->PesquisaUmQuando([
            CO_ASSINANTE => AssinanteService::getCoAssinanteLogado()
        ]);
        if ($configComissao) {
            $this->configComissao = $configComissao;
        } else {
            Notificacoes::geraMensagem(
                'Não Existe Histórico de Configuração de Comissão',
                TiposMensagemEnum::ALERTA
            );
            Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/ComissaoConfiguracao/');
        }
    }

    public function getTipoEComissoes($formaComissao)
    {
        /** @var ConfigComissaoService $configComissaoService */
        $configComissaoService = $this->getService(CONFIG_COMISSAO_SERVICE);

        /** @var ConfigComissaoEntidade $configComissao */
        $configComissao = $configComissaoService->PesquisaUmQuando([
            CO_ASSINANTE => AssinanteService::getCoAssinanteLogado()
        ]);

        $dados['comissao'] = '';
        switch ($configComissao->getCoUltimoHistoricoComissao()->getNuFormaComissao()) {
            case FormaComissaoEnum::SERVICO_PROFISSIONAL:
                $dados['tipoComissao'] = FormaComissaoEnum::$descricao[FormaComissaoEnum::SERVICO_PROFISSIONAL];
                break;
            case $formaComissao:
                $dados['tipoComissao'] = $formaComissao;
                break;
            default:
                $dados['tipoComissao'] = false;
                break;
        }
        if ($dados['tipoComissao']) {
            $perc = $configComissao->getCoUltimoHistoricoComissao()->getCoPercentualComissao();
            $comissao = [];
            /** @var PercentualComissaoEntidade $percent */
            foreach ($perc as $percent) {
                $comissao[$percent->getNuTipoComissao()] = $percent->getNuComissao();
            }
            $dados['comissao'] = $comissao;
        }
        return $dados;
    }
}
   