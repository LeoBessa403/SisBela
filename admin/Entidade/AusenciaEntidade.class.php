<?php

/**
 * Ausencia.Entidade [ ENTIDADE ]
 * @copyright (c) 2019, Leo Bessa
 */

class AusenciaEntidade extends AbstractEntidade
{
    const TABELA = 'TB_AUSENCIA';
    const ENTIDADE = 'AusenciaEntidade';
    const CHAVE = CO_AUSENCIA;

    private $co_ausencia;
    private $dt_inicio;
    private $dt_fim;
    private $tp_ausencia;
    private $ds_observacao;
    private $dt_cadastro;
    private $co_profissional;
    private $co_usuario;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_AUSENCIA,
            DT_INICIO,
            DT_FIM,
            TP_AUSENCIA,
            DS_OBSERVACAO,
            DT_CADASTRO,
            CO_PROFISSIONAL,
            CO_USUARIO,
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
     * @return int $co_ausencia
     */
    public function getCoAusencia()
    {
        return $this->co_ausencia;
    }

    /**
     * @param $co_ausencia
     * @return mixed
     */
    public function setCoAusencia($co_ausencia)
    {
        return $this->co_ausencia = $co_ausencia;
    }

    /**
     * @return mixed $dt_inicio
     */
    public function getDtInicio()
    {
        return $this->dt_inicio;
    }

    /**
     * @param $dt_inicio
     * @return mixed
     */
    public function setDtInicio($dt_inicio)
    {
        return $this->dt_inicio = $dt_inicio;
    }

    /**
     * @return mixed $dt_fim
     */
    public function getDtFim()
    {
        return $this->dt_fim;
    }

    /**
     * @param $dt_fim
     * @return mixed
     */
    public function setDtFim($dt_fim)
    {
        return $this->dt_fim = $dt_fim;
    }

    /**
     * @return mixed $tp_ausencia
     */
    public function getTpAusencia()
    {
        return $this->tp_ausencia;
    }

    /**
     * @param $tp_ausencia
     * @return mixed
     */
    public function setTpAusencia($tp_ausencia)
    {
        return $this->tp_ausencia = $tp_ausencia;
    }

    /**
     * @return mixed $ds_observacao
     */
    public function getDsObservacao()
    {
        return $this->ds_observacao;
    }

    /**
     * @param $ds_observacao
     * @return mixed
     */
    public function setDsObservacao($ds_observacao)
    {
        return $this->ds_observacao = $ds_observacao;
    }

    /**
     * @return mixed $dt_cadastro
     */
    public function getDtCadastro()
    {
        return $this->dt_cadastro;
    }

    /**
     * @param $dt_cadastro
     * @return mixed
     */
    public function setDtCadastro($dt_cadastro)
    {
        return $this->dt_cadastro = $dt_cadastro;
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
     * @return UsuarioEntidade $co_usuario
     */
    public function getCoUsuario()
    {
        return $this->co_usuario;
    }

    /**
     * @param $co_usuario
     * @return mixed
     */
    public function setCoUsuario($co_usuario)
    {
        return $this->co_usuario = $co_usuario;
    }

}