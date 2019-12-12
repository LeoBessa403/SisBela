<?php

/**
 * DiaEspecial.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class DiaEspecialEntidade extends AbstractEntidade
{
    const TABELA = 'TB_DIA_ESPECIAL';
    const ENTIDADE = 'DiaEspecialEntidade';
    const CHAVE = CO_DIA_ESPECIAL;

    private $co_dia_especial;
    private $dt_dia;
    private $nu_dia_semana;
    private $nu_hora_abertura;
    private $nu_hora_fechamento;
    private $ds_motivo;
    private $co_assinante;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_DIA_ESPECIAL,
            DT_DIA,
            NU_DIA_SEMANA,
            NU_HORA_ABERTURA,
            NU_HORA_FECHAMENTO,
            DS_MOTIVO,
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
     * @return int $co_dia_especial
     */
    public function getCoDiaEspecial()
    {
        return $this->co_dia_especial;
    }

    /**
     * @param $co_dia_especial
     * @return mixed
     */
    public function setCoDiaEspecial($co_dia_especial)
    {
        return $this->co_dia_especial = $co_dia_especial;
    }

    /**
     * @return mixed $dt_dia
     */
    public function getDtDia()
    {
        return $this->dt_dia;
    }

    /**
     * @param $dt_dia
     * @return mixed
     */
    public function setDtDia($dt_dia)
    {
        return $this->dt_dia = $dt_dia;
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
     * @return mixed $ds_motivo
     */
    public function getDsMotivo()
    {
        return $this->ds_motivo;
    }

    /**
     * @param $ds_motivo
     * @return mixed
     */
    public function setDsMotivo($ds_motivo)
    {
        return $this->ds_motivo = $ds_motivo;
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