<?php

/**
 * ConfigProfissional.Entidade [ ENTIDADE ]
 * @copyright (c) 2019, Leo Bessa
 */

class ConfigProfissionalEntidade extends AbstractEntidade
{
    const TABELA = 'TB_CONFIG_PROFISSIONAL';
    const ENTIDADE = 'ConfigProfissionalEntidade';
    const CHAVE = CO_CONFIG_PROFISSIONAL;

    private $co_config_profissional;
    private $st_recebe_email_faturamento;
    private $nu_periodo_agenda;
    private $st_edicao_servicos;
    private $st_edicao_atendimento;
    private $co_assinante;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_CONFIG_PROFISSIONAL,
            ST_RECEBE_EMAIL_FATURAMENTO,
            NU_PERIODO_AGENDA,
            ST_EDICAO_SERVICOS,
            ST_EDICAO_ATENDIMENTO,
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
     * @return int $co_config_profissional
     */
    public function getCoConfigProfissional()
    {
        return $this->co_config_profissional;
    }

    /**
     * @param $co_config_profissional
     * @return mixed
     */
    public function setCoConfigProfissional($co_config_profissional)
    {
        return $this->co_config_profissional = $co_config_profissional;
    }

    /**
     * @return mixed $st_recebe_email_faturamento
     */
    public function getStRecebeEmailFaturamento()
    {
        return $this->st_recebe_email_faturamento;
    }

    /**
     * @param $st_recebe_email_faturamento
     * @return mixed
     */
    public function setStRecebeEmailFaturamento($st_recebe_email_faturamento)
    {
        return $this->st_recebe_email_faturamento = $st_recebe_email_faturamento;
    }

    /**
     * @return mixed $nu_periodo_agenda
     */
    public function getNuPeriodoAgenda()
    {
        return $this->nu_periodo_agenda;
    }

    /**
     * @param $nu_periodo_agenda
     * @return mixed
     */
    public function setNuPeriodoAgenda($nu_periodo_agenda)
    {
        return $this->nu_periodo_agenda = $nu_periodo_agenda;
    }

    /**
     * @return mixed $st_edicao_servicos
     */
    public function getStEdicaoServicos()
    {
        return $this->st_edicao_servicos;
    }

    /**
     * @param $st_edicao_servicos
     * @return mixed
     */
    public function setStEdicaoServicos($st_edicao_servicos)
    {
        return $this->st_edicao_servicos = $st_edicao_servicos;
    }

    /**
     * @return mixed $st_edicao_atendimento
     */
    public function getStEdicaoAtendimento()
    {
        return $this->st_edicao_atendimento;
    }

    /**
     * @param $st_edicao_atendimento
     * @return mixed
     */
    public function setStEdicaoAtendimento($st_edicao_atendimento)
    {
        return $this->st_edicao_atendimento = $st_edicao_atendimento;
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