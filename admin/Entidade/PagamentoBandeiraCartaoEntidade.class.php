<?php

/**
 * PagamentoBandeiraCartao.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class PagamentoBandeiraCartaoEntidade extends AbstractEntidade
{
    const TABELA = 'TB_PAGAMENTO_BANDEIRA_CARTAO';
    const ENTIDADE = 'PagamentoBandeiraCartaoEntidade';
    const CHAVE = CO_PAGAMENTO_BANDEIRA_CARTAO;

    private $co_pagamento_bandeira_cartao;
    private $co_facilidade_pagamento;
    private $co_bandeira_cartao;
    private $co_taxa_cartao;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_PAGAMENTO_BANDEIRA_CARTAO,
            CO_FACILIDADE_PAGAMENTO,
            CO_BANDEIRA_CARTAO,
        ];
    }

    /**
     * @return array $relacionamentos
     */
    public static function getRelacionamentos()
    {
        $relacionamentos = Relacionamentos::getRelacionamentos();
        return $relacionamentos[static::TABELA];
    }


    /**
     * @return int $co_pagamento_bandeira_cartao
     */
    public function getCoPagamentoBandeiraCartao()
    {
        return $this->co_pagamento_bandeira_cartao;
    }

    /**
     * @param $co_pagamento_bandeira_cartao
     * @return mixed
     */
    public function setCoPagamentoBandeiraCartao($co_pagamento_bandeira_cartao)
    {
        return $this->co_pagamento_bandeira_cartao = $co_pagamento_bandeira_cartao;
    }

    /**
     * @return FacilidadePagamentoEntidade $co_facilidade_pagamento
     */
    public function getCoFacilidadePagamento()
    {
        return $this->co_facilidade_pagamento;
    }

    /**
     * @param $co_facilidade_pagamento
     * @return mixed
     */
    public function setCoFacilidadePagamento($co_facilidade_pagamento)
    {
        return $this->co_facilidade_pagamento = $co_facilidade_pagamento;
    }

    /**
     * @return BandeiraCartaoEntidade $co_bandeira_cartao
     */
    public function getCoBandeiraCartao()
    {
        return $this->co_bandeira_cartao;
    }

    /**
     * @param $co_bandeira_cartao
     * @return mixed
     */
    public function setCoBandeiraCartao($co_bandeira_cartao)
    {
        return $this->co_bandeira_cartao = $co_bandeira_cartao;
    }

    /**
     * @return TaxaCartaoEntidade $co_taxa_cartao
     */
    public function getCoTaxaCartao()
    {
        return $this->co_taxa_cartao;
    }

    /**
     * @param $co_taxa_cartao
     * @return mixed
     */
    public function setCoTaxaCartao($co_taxa_cartao)
    {
        return $this->co_taxa_cartao = $co_taxa_cartao;
    }

    /**
     * @return TaxaCartaoEntidade $co_taxa_cartao
     */
    public function getCoUltimaTaxaCartao()
    {
        if ($this->getCoTaxaCartao()) {
            return $this->ultimo($this->getCoTaxaCartao());
        }
        return new TaxaCartaoEntidade();
    }

}