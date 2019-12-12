<?php

/**
 * PagamentoBandeiraCartaoModel.class [ MODEL ]
 * @copyright (c) 2018, Leo Bessa
 */
class  PagamentoBandeiraCartaoModel extends AbstractModel
{

    public function __construct()
    {
        parent::__construct(PagamentoBandeiraCartaoEntidade::ENTIDADE);
    }


    public function PesquisaPagBandeiraCartao($dados)
    {
        $tabela = FacilidadeBeneficioEntidade::TABELA . " fbe" .
            " inner join " . FacilidadePagamentoEntidade::TABELA . " fpa" .
            " on fbe." . FacilidadeBeneficioEntidade::CHAVE . " = fpa." . FacilidadeBeneficioEntidade::CHAVE .
            " inner join " . PagamentoBandeiraCartaoEntidade::TABELA . " pbc" .
            " on fpa." . FacilidadePagamentoEntidade::CHAVE . " = pbc." . FacilidadePagamentoEntidade::CHAVE;

        $campos = "pbc." . CO_PAGAMENTO_BANDEIRA_CARTAO;
        $pesquisa = new Pesquisa();
        $where = "where fbe." . CO_ASSINANTE . " in (11)";
        if (!empty($dados[CO_TIPO_PAGAMENTO])) {
            $where = $where . " and fpa." . CO_TIPO_PAGAMENTO . " = '" . $dados[CO_TIPO_PAGAMENTO] . "'";
        }
        if (!empty($dados[CO_BANDEIRA_CARTAO])) {
            $where = $where . " and pbc." . CO_BANDEIRA_CARTAO . " = '" . $dados[CO_BANDEIRA_CARTAO] . "'";
        }
        $pesquisa->Pesquisar($tabela, $where, null, $campos);
        return $pesquisa->getResult();
    }
}