<?php

/**
 * TipoPagamento.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class TipoPagamentoEntidade extends AbstractEntidade
{
    const TABELA = 'TB_TIPO_PAGAMENTO';
    const ENTIDADE = 'TipoPagamentoEntidade';
    const CHAVE = CO_TIPO_PAGAMENTO;

    private $co_tipo_pagamento;
    private $no_tipo_pagamento;
    private $co_facilidade_pagamento;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_TIPO_PAGAMENTO,
            NO_TIPO_PAGAMENTO,
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
     * @return int $co_tipo_pagamento
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
     * @return mixed $no_tipo_pagamento
     */
    public function getNoTipoPagamento()
    {
        return $this->no_tipo_pagamento;
    }

    /**
     * @param $no_tipo_pagamento
     * @return mixed
     */
    public function setNoTipoPagamento($no_tipo_pagamento)
    {
        return $this->no_tipo_pagamento = $no_tipo_pagamento;
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

}