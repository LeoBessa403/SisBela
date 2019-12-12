<?php

/**
 * PagamentoBandeiraCartaoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  PagamentoBandeiraCartaoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(PagamentoBandeiraCartaoEntidade::ENTIDADE);
        $this->ObjetoModel = New PagamentoBandeiraCartaoModel();
    }

    public function salvaPagamentoBandeiraCartao($dados, $facilidadesPagamento)
    {
        /** @var TaxaCartaoService $taxaCartaoService */
        $taxaCartaoService = $this->getService(TAXA_CARTAO_SERVICE);
        $session = new Session();
        /** @var PDO $PDO */
        $PDO = $this->getPDO();
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];

        /** @var FacilidadePagamentoEntidade $facilidadePagamento */
        foreach ($facilidadesPagamento as $facilidadePagamento) {
            if ($facilidadePagamento->getCoTipoPagamento() == TipoPagamentoEnum::CARTAO_DEBITO) {
                $cartDeb[CO_FACILIDADE_PAGAMENTO] = $facilidadePagamento->getCoFacilidadePagamento();
            }
            if ($facilidadePagamento->getCoTipoPagamento() == TipoPagamentoEnum::CARTAO_CREDITO) {
                $cartCred[CO_FACILIDADE_PAGAMENTO] = $facilidadePagamento->getCoFacilidadePagamento();
            }
        }

        $PDO->beginTransaction();
        if (!empty($dados["bandeira-taxa-deb"])) {
            $taxaCartDeb[DT_CADASTRO] = Valida::DataHoraAtualBanco();
            foreach ($dados["bandeira-taxa-deb"] as $bandeiraCartao => $taxaCartao) {
                $condicoes[CO_TIPO_PAGAMENTO] = TipoPagamentoEnum::CARTAO_DEBITO;
                $condicoes[CO_BANDEIRA_CARTAO] = $bandeiraCartao;
                $coFacPag = $this->ObjetoModel->PesquisaPagBandeiraCartao($condicoes);
                if ($taxaCartao) {
                    if (!$coFacPag) {
                        $cartDeb[CO_BANDEIRA_CARTAO] = $bandeiraCartao;
                        $taxaCartDeb[CO_PAGAMENTO_BANDEIRA_CARTAO] = $this->Salva($cartDeb);
                    } else {
                        $taxaCartDeb[CO_PAGAMENTO_BANDEIRA_CARTAO] = $coFacPag[0][CO_PAGAMENTO_BANDEIRA_CARTAO];
                    }
                    $taxaCartDeb[NU_TAXA_CARTAO] = Valida::FormataMoedaBanco($taxaCartao);
                    $retorno[SUCESSO] = $taxaCartaoService->Salva($taxaCartDeb);
                }
            }
        }

        if (!empty($dados["bandeira-taxa-cred"])) {
            $taxaCartCred[DT_CADASTRO] = Valida::DataHoraAtualBanco();
            foreach ($dados["bandeira-taxa-cred"] as $bandeiraCartao => $taxaCartao) {
                $condicoes[CO_TIPO_PAGAMENTO] = TipoPagamentoEnum::CARTAO_CREDITO;
                $condicoes[CO_BANDEIRA_CARTAO] = $bandeiraCartao;
                $coFacPag = $this->ObjetoModel->PesquisaPagBandeiraCartao($condicoes);
                if ($taxaCartao) {
                    if (!$coFacPag) {
                        $cartCred[CO_BANDEIRA_CARTAO] = $bandeiraCartao;
                        $taxaCartCred[CO_PAGAMENTO_BANDEIRA_CARTAO] = $this->Salva($cartCred);
                    } else {
                        $taxaCartCred[CO_PAGAMENTO_BANDEIRA_CARTAO] = $coFacPag[0][CO_PAGAMENTO_BANDEIRA_CARTAO];
                    }

                    $taxaCartCred[NU_TAXA_CARTAO] = Valida::FormataMoedaBanco($taxaCartao);
                    $taxaCartCred[NU_TAXA_ANTECIPACAO] = Valida::FormataMoedaBanco(
                        $dados["bandeira-taxaAntec-cred"][$bandeiraCartao]);
                    $retorno[SUCESSO] = $taxaCartaoService->Salva($taxaCartCred);
                }
            }
        }

        if ($retorno[SUCESSO]) {
            $session->setSession(MENSAGEM, ATUALIZADO);
            $retorno[SUCESSO] = true;
            $PDO->commit();
        } else {
            Notificacoes::geraMensagem(
                'Não foi possível realizar a ação',
                TiposMensagemEnum::ALERTA
            );
            $retorno[SUCESSO] = false;
            $PDO->rollBack();
        }
        return $retorno;
    }

    public function PesquisaPagBandeiraCartao($dados)
    {
        return $this->ObjetoModel->PesquisaPagBandeiraCartao($dados);
    }

}