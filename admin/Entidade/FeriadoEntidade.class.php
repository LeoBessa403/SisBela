<?php

/**
 * Feriado.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class FeriadoEntidade extends AbstractEntidade
{
    const TABELA = 'TB_FERIADO';
    const ENTIDADE = 'FeriadoEntidade';
    const CHAVE = CO_FERIADO;

    private $co_feriado;
    private $dt_feriado;
    private $nu_dia_semana;
    private $ds_descricao;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_FERIADO,
            DT_FERIADO,
            NU_DIA_SEMANA,
            DS_DESCRICAO,
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
     * @return int $co_feriado
     */
    public function getCoFeriado()
    {
        return $this->co_feriado;
    }

    /**
     * @param $co_feriado
     * @return mixed
     */
    public function setCoFeriado($co_feriado)
    {
        return $this->co_feriado = $co_feriado;
    }

    /**
     * @return mixed $dt_feriado
     */
    public function getDtFeriado()
    {
        return $this->dt_feriado;
    }

    /**
     * @param $dt_feriado
     * @return mixed
     */
    public function setDtFeriado($dt_feriado)
    {
        return $this->dt_feriado = $dt_feriado;
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
     * @return mixed $ds_descricao
     */
    public function getDsDescricao()
    {
        return $this->ds_descricao;
    }

    /**
     * @param $ds_descricao
     * @return mixed
     */
    public function setDsDescricao($ds_descricao)
    {
        return $this->ds_descricao = $ds_descricao;
    }

}