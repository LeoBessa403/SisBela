<?php

/**
 * Funcionamento.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class FuncionamentoEntidade extends AbstractEntidade
{
    const TABELA = 'TB_FUNCIONAMENTO';
    const ENTIDADE = 'FuncionamentoEntidade';
    const CHAVE = CO_FUNCIONAMENTO;

    private $co_funcionamento;
    private $nu_dia_semana;
    private $nu_hora_abertura;
    private $nu_hora_fechamento;
    private $co_assinante;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_FUNCIONAMENTO,
            NU_DIA_SEMANA,
            NU_HORA_ABERTURA,
            NU_HORA_FECHAMENTO,
            CO_ASSINANTE,
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
     * @return int $co_funcionamento
     */
    public function getCoFuncionamento()
    {
        return $this->co_funcionamento;
    }

    /**
     * @param $co_funcionamento
     * @return mixed
     */
    public function setCoFuncionamento($co_funcionamento)
    {
        return $this->co_funcionamento = $co_funcionamento;
    }

    /**
     * @return mixed $nu_dia_semana
     */
    public function getNuDiaSemana()
    {
        return $this->nu_dia_semana;
    }

    /**
     * @param $nu_dia_semana
     * @return mixed
     */
    public function setNuDiaSemana($nu_dia_semana)
    {
        return $this->nu_dia_semana = $nu_dia_semana;
    }

    /**
     * @return mixed $nu_hora_abertura
     */
    public function getNuHoraAbertura()
    {
        return $this->nu_hora_abertura;
    }

    /**
     * @param $nu_hora_abertura
     * @return mixed
     */
    public function setNuHoraAbertura($nu_hora_abertura)
    {
        return $this->nu_hora_abertura = $nu_hora_abertura;
    }

    /**
     * @return mixed $nu_hora_fechamento
     */
    public function getNuHoraFechamento()
    {
        return $this->nu_hora_fechamento;
    }

    /**
     * @param $nu_hora_fechamento
     * @return mixed
     */
    public function setNuHoraFechamento($nu_hora_fechamento)
    {
        return $this->nu_hora_fechamento = $nu_hora_fechamento;
    }

    /**
     * @return AssinanteEntidade $co_assinante
     */
    public function getCoAssinante()
    {
        return $this->co_assinante;
    }

    /**
     * @param $co_assinante
     * @return mixed
     */
    public function setCoAssinante($co_assinante)
    {
        return $this->co_assinante = $co_assinante;
    }

}