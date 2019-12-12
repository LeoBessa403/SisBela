<?php

/**
 * FacilidadePagamento.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class FacilidadePagamentoEntidade extends AbstractEntidade
{
    const TABELA = 'TB_FACILIDADE_PAGAMENTO';
    const ENTIDADE = 'FacilidadePagamentoEntidade';
    const CHAVE = CO_FACILIDADE_PAGAMENTO;

    private $co_facilidade_pagamento;
    private $co_tipo_pagamento;
    private $co_facilidade_beneficio;
    private $co_pagamento_bandeira_cartao;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_FACILIDADE_PAGAMENTO,
            CO_TIPO_PAGAMENTO,
            CO_FACILIDADE_BENEFICIO,
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
     * @return int $co_facilidade_pagamento
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
     * @return TipoPagamentoEntidade $co_tipo_pagamento
     */
    public function getCoTipoPagamento()
    {
        return $this->co_tipo_pagamento;
    }

    /**
     * @param $co_tipo_pagamento
     * @return mixed
     */
    public function setCoTipoPagamento($co_tipo_pagamento)
    {
        return $this->co_tipo_pagamento = $co_tipo_pagamento;
    }

    /**
     * @return FacilidadeBeneficioEntidade $co_facilidade_beneficio
     */
    public function getCoFacilidadeBeneficio()
    {
        return $this->co_facilidade_beneficio;
    }

    /**
     * @param $co_facilidade_beneficio
     * @return mixed
     */
    public function setCoFacilidadeBeneficio($co_facilidade_beneficio)
    {
        return $this->co_facilidade_beneficio = $co_facilidade_beneficio;
    }

    /**
     * @return PagamentoBandeiraCartaoEntidade $co_pagamento_bandeira_cartao
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
        $this->co_pagamento_bandeira_cartao = $co_pagamento_bandeira_cartao;
    }
}