<?php

/**
 * ConfigAgendamento.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class ConfigAgendamentoEntidade extends AbstractEntidade
{
    const TABELA = 'TB_CONFIG_AGENDAMENTO';
    const ENTIDADE = 'ConfigAgendamentoEntidade';
    const CHAVE = CO_CONFIG_AGENDAMENTO;

    private $co_config_agendamento;
    private $nu_intervalo;
    private $st_status_agendamento_site;
    private $nu_antecedencia_agendamento;
    private $st_receber_email_agendamento;
    private $st_enviar_email_confirmacao;
    private $co_assinante;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_CONFIG_AGENDAMENTO,
            NU_INTERVALO,
            ST_STATUS_AGENDAMENTO_SITE,
            NU_ANTECEDENCIA_AGENDAMENTO,
            ST_RECEBER_EMAIL_AGENDAMENTO,
            ST_ENVIAR_EMAIL_CONFIRMACAO,
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
     * @return int $co_config_agendamento
     */
    public function getCoConfigAgendamento()
    {
        return $this->co_config_agendamento;
    }

    /**
     * @param $co_config_agendamento
     * @return mixed
     */
    public function setCoConfigAgendamento($co_config_agendamento)
    {
        return $this->co_config_agendamento = $co_config_agendamento;
    }

    /**
     * @return mixed $nu_intervalo
     */
    public function getNuIntervalo()
    {
        return $this->nu_intervalo;
    }

    /**
     * @param $nu_intervalo
     * @return mixed
     */
    public function setNuIntervalo($nu_intervalo)
    {
        return $this->nu_intervalo = $nu_intervalo;
    }

    /**
     * @return mixed $st_status_agendamento_site
     */
    public function getStStatusAgendamentoSite()
    {
        return $this->st_status_agendamento_site;
    }

    /**
     * @param $st_status_agendamento_site
     * @return mixed
     */
    public function setStStatusAgendamentoSite($st_status_agendamento_site)
    {
        return $this->st_status_agendamento_site = $st_status_agendamento_site;
    }

    /**
     * @return mixed $nu_antecedencia_agendamento
     */
    public function getNuAntecedenciaAgendamento()
    {
        return $this->nu_antecedencia_agendamento;
    }

    /**
     * @param $nu_antecedencia_agendamento
     * @return mixed
     */
    public function setNuAntecedenciaAgendamento($nu_antecedencia_agendamento)
    {
        return $this->nu_antecedencia_agendamento = $nu_antecedencia_agendamento;
    }

    /**
     * @return mixed $st_receber_email_agendamento
     */
    public function getStReceberEmailAgendamento()
    {
        return $this->st_receber_email_agendamento;
    }

    /**
     * @param $st_receber_email_agendamento
     * @return mixed
     */
    public function setStReceberEmailAgendamento($st_receber_email_agendamento)
    {
        return $this->st_receber_email_agendamento = $st_receber_email_agendamento;
    }

    /**
     * @return mixed $st_enviar_email_confirmacao
     */
    public function getStEnviarEmailConfirmacao()
    {
        return $this->st_enviar_email_confirmacao;
    }

    /**
     * @param $st_enviar_email_confirmacao
     * @return mixed
     */
    public function setStEnviarEmailConfirmacao($st_enviar_email_confirmacao)
    {
        return $this->st_enviar_email_confirmacao = $st_enviar_email_confirmacao;
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