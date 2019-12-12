<?php

/**
 * ContaBancaria.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class ContaBancariaEntidade extends AbstractEntidade
{
    const TABELA = 'TB_CONTA_BANCARIA';
    const ENTIDADE = 'ContaBancariaEntidade';
    const CHAVE = CO_CONTA_BANCARIA;

    private $co_conta_bancaria;
    private $nu_agencia;
    private $nu_conta;
    private $tp_conta;
    private $co_profissional;
    private $co_banco;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_CONTA_BANCARIA,
            NU_AGENCIA,
            NU_CONTA,
            TP_CONTA,
            CO_BANCO,
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
     * @return int $co_conta_bancaria
     */
    public function getCoContaBancaria()
    {
        return $this->co_conta_bancaria;
    }

    /**
     * @param $co_conta_bancaria
     * @return mixed
     */
    public function setCoContaBancaria($co_conta_bancaria)
    {
        return $this->co_conta_bancaria = $co_conta_bancaria;
    }

    /**
     * @return mixed $nu_agencia
     */
    public function getNuAgencia()
    {
        return $this->nu_agencia;
    }

    /**
     * @param $nu_agencia
     * @return mixed
     */
    public function setNuAgencia($nu_agencia)
    {
        return $this->nu_agencia = $nu_agencia;
    }

    /**
     * @return mixed $nu_conta
     */
    public function getNuConta()
    {
        return $this->nu_conta;
    }

    /**
     * @param $nu_conta
     * @return mixed
     */
    public function setNuConta($nu_conta)
    {
        return $this->nu_conta = $nu_conta;
    }

    /**
     * @return mixed $tp_conta
     */
    public function getTpConta()
    {
        return $this->tp_conta;
    }

    /**
     * @param $tp_conta
     * @return mixed
     */
    public function setTpConta($tp_conta)
    {
        return $this->tp_conta = $tp_conta;
    }

    /**
     * @return ProfissionalEntidade $co_profissional
     */
    public function getCoProfissional()
    {
        return $this->co_profissional;
    }

    /**
     * @param $co_profissional
     * @return mixed
     */
    public function setCoProfissional($co_profissional)
    {
        return $this->co_profissional = $co_profissional;
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
        $this->co_banco = $co_banco;
    }
}