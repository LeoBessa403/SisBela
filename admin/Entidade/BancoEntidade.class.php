<?php

/**
 * Banco.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class BancoEntidade extends AbstractEntidade
{
    const TABELA = 'TB_BANCO';
    const ENTIDADE = 'BancoEntidade';
    const CHAVE = CO_BANCO;

    private $co_banco;
    private $no_banco;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_BANCO,
            NO_BANCO,
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
     * @return BancoEntidade $co_banco
     */
    public function getCoBanco()
    {
        return $this->co_banco;
    }

    /**
     * @param $co_banco
     * @return mixed
     */
    public function setCoBanco($co_banco)
    {
        return $this->co_banco = $co_banco;
    }

    /**
     * @return mixed $no_banco
     */
    public function getNoBanco()
    {
        return $this->no_banco;
    }

    /**
     * @param $no_banco
     * @return mixed
     */
    public function setNoBanco($no_banco)
    {
        return $this->no_banco = $no_banco;
    }

}