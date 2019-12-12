<?php

/**
 * JornadaTrabalho.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class JornadaTrabalhoEntidade extends AbstractEntidade
{
    const TABELA = 'TB_JORNADA_TRABALHO';
    const ENTIDADE = 'JornadaTrabalhoEntidade';
    const CHAVE = CO_JORNADA_TRABALHO;

    private $co_jornada_trabalho;
    private $nu_dia_semana;
    private $nu_hora_abertura;
    private $nu_hora_fechamento;
    private $nu_almoco_inicio;
    private $nu_almoco_final;
    private $nu_intervalo_inicio;
    private $nu_intervalo_final;
    private $co_profissional;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_JORNADA_TRABALHO,
            NU_DIA_SEMANA,
            NU_HORA_ABERTURA,
            NU_HORA_FECHAMENTO,
            NU_ALMOCO_INICIO,
            NU_ALMOCO_FINAL,
            NU_INTERVALO_INICIO,
            NU_INTERVALO_FINAL
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
     * @return int $co_jornada_trabalho
     */
    public function getCoJornadaTrabalho()
    {
        return $this->co_jornada_trabalho;
    }

    /**
     * @param $co_jornada_trabalho
     * @return mixed
     */
    public function setCoJornadaTrabalho($co_jornada_trabalho)
    {
        return $this->co_jornada_trabalho = $co_jornada_trabalho;
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
     * @return mixed$ nu_almoco_inicio
     */
    public function getNuAlmocoInicio()
    {
        return $this->nu_almoco_inicio;
    }

    /**
     * @param mixed $nu_almoco_inicio
     */
    public function setNuAlmocoInicio($nu_almoco_inicio)
    {
        $this->nu_almoco_inicio = $nu_almoco_inicio;
    }

    /**
     * @return mixed $nu_almoco_final
     */
    public function getNuAlmocoFinal()
    {
        return $this->nu_almoco_final;
    }

    /**
     * @param mixed $nu_almoco_final
     */
    public function setNuAlmocoFinal($nu_almoco_final)
    {
        $this->nu_almoco_final = $nu_almoco_final;
    }

    /**
     * @return mixed $nu_intervalo_inicio
     */
    public function getNuIntervaloInicio()
    {
        return $this->nu_intervalo_inicio;
    }

    /**
     * @param mixed $nu_intervalo_inicio
     */
    public function setNuIntervaloInicio($nu_intervalo_inicio)
    {
        $this->nu_intervalo_inicio = $nu_intervalo_inicio;
    }

    /**
     * @return mixed $nu_intervalo_final
     */
    public function getNuIntervaloFinal()
    {
        return $this->nu_intervalo_final;
    }

    /**
     * @param mixed $nu_intervalo_final
     */
    public function setNuIntervaloFinal($nu_intervalo_final)
    {
        $this->nu_intervalo_final = $nu_intervalo_final;
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
        $this->co_profissional = $co_profissional;
    }

}