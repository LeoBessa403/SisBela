<?php

/**
 * BandeiraCartao.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class BandeiraCartaoEntidade extends AbstractEntidade
{
    const TABELA = 'TB_BANDEIRA_CARTAO';
    const ENTIDADE = 'BandeiraCartaoEntidade';
    const CHAVE = CO_BANDEIRA_CARTAO;

    private $co_bandeira_cartao;
    private $no_bandeira_cartao;
    private $co_pagamento_bandeira_cartao;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_BANDEIRA_CARTAO,
            NO_BANDEIRA_CARTAO,
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
     * @return int $co_bandeira_cartao
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
     * @return mixed $no_bandeira_cartao
     */
    public function getNoBandeiraCartao()
    {
        return $this->no_bandeira_cartao;
    }

    /**
     * @param $no_bandeira_cartao
     * @return mixed
     */
    public function setNoBandeiraCartao($no_bandeira_cartao)
    {
        return $this->no_bandeira_cartao = $no_bandeira_cartao;
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
        return $this->co_pagamento_bandeira_cartao = $co_pagamento_bandeira_cartao;
    }

}