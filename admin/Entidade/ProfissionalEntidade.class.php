<?php

/**
 * Profissional.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class ProfissionalEntidade extends AbstractEntidade
{
    const TABELA = 'TB_PROFISSIONAL';
    const ENTIDADE = 'ProfissionalEntidade';
    const CHAVE = CO_PROFISSIONAL;

    private $co_profissional;
    private $dt_cadastro;
    private $ds_cor_agenda;
    private $st_assistente;
    private $ds_sobre;
    private $ds_motivo;
    private $no_apelido;
    private $st_agenda;
    private $st_agenda_online;
    private $st_status;
    private $tp_contratacao;
    private $dt_admissao;
    private $dt_demissao;
    private $co_imagem;
    private $co_pessoa;
    private $co_usuario;
    private $co_assinante;
    private $co_conta_bancaria;
    private $co_profissional_cargo;
    private $co_jornada_trabalho;
    private $co_ausencia;
    private $co_percentual_comissao;
    private $co_servico_profissional;
    private $co_status_agenda_profissional;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_PROFISSIONAL,
            DT_CADASTRO,
            DS_COR_AGENDA,
            ST_ASSISTENTE,
            DS_SOBRE,
            DS_MOTIVO,
            NO_APELIDO,
            ST_AGENDA,
            ST_AGENDA_ONLINE,
            ST_STATUS,
            TP_CONTRATACAO,
            DT_ADMISSAO,
            DT_DEMISSAO,
            CO_IMAGEM,
            CO_PESSOA,
            CO_USUARIO,
            CO_ASSINANTE,
            CO_CONTA_BANCARIA,
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
     * @return int $co_profissional
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
     * @return mixed $ds_cor_agenda
     */
    public function getDsCorAgenda()
    {
        return $this->ds_cor_agenda;
    }

    /**
     * @param $ds_cor_agenda
     * @return mixed
     */
    public function setDsCorAgenda($ds_cor_agenda)
    {
        return $this->ds_cor_agenda = $ds_cor_agenda;
    }

    /**
     * @return mixed $st_assistente
     */
    public function getStAssistente()
    {
        return $this->st_assistente;
    }

    /**
     * @param $st_assistente
     * @return mixed
     */
    public function setStAssistente($st_assistente)
    {
        return $this->st_assistente = $st_assistente;
    }

    /**
     * @return mixed $ds_sobre
     */
    public function getDsSobre()
    {
        return $this->ds_sobre;
    }

    /**
     * @param $ds_sobre
     * @return mixed
     */
    public function setDsSobre($ds_sobre)
    {
        return $this->ds_sobre = $ds_sobre;
    }

    /**
     * @return mixed
     */
    public function getDsMotivo()
    {
        return $this->ds_motivo;
    }

    /**
     * @param mixed $ds_motivo
     */
    public function setDsMotivo($ds_motivo)
    {
        $this->ds_motivo = $ds_motivo;
    }

    /**
     * @return mixed $no_apelido
     */
    public function getNoApelido()
    {
        return $this->no_apelido;
    }

    /**
     * @param $no_apelido
     * @return mixed
     */
    public function setNoApelido($no_apelido)
    {
        return $this->no_apelido = $no_apelido;
    }

    /**
     * @return mixed $st_agenda
     */
    public function getStAgenda()
    {
        return $this->st_agenda;
    }

    /**
     * @param $st_agenda
     * @return mixed
     */
    public function setStAgenda($st_agenda)
    {
        return $this->st_agenda = $st_agenda;
    }

    /**
     * @return mixed $st_agenda_online
     */
    public function getStAgendaOnline()
    {
        return $this->st_agenda_online;
    }

    /**
     * @param $st_agenda_online
     * @return mixed
     */
    public function setStAgendaOnline($st_agenda_online)
    {
        return $this->st_agenda_online = $st_agenda_online;
    }

    /**
     * @return mixed $st_status
     */
    public function getStStatus()
    {
        return $this->st_status;
    }

    /**
     * @param $st_status
     * @return mixed
     */
    public function setStStatus($st_status)
    {
        return $this->st_status = $st_status;
    }

    /**
     * @return mixed $tp_contratacao
     */
    public function getTpContratacao()
    {
        return $this->tp_contratacao;
    }

    /**
     * @param $tp_contratacao
     * @return mixed
     */
    public function setTpContratacao($tp_contratacao)
    {
        return $this->tp_contratacao = $tp_contratacao;
    }

    /**
     * @return mixed $dt_admissao
     */
    public function getDtAdmissao()
    {
        return $this->dt_admissao;
    }

    /**
     * @param $dt_admissao
     * @return mixed
     */
    public function setDtAdmissao($dt_admissao)
    {
        return $this->dt_admissao = $dt_admissao;
    }

    /**
     * @return mixed $dt_demissao
     */
    public function getDtDemissao()
    {
        return $this->dt_demissao;
    }

    /**
     * @param $dt_demissao
     * @return mixed
     */
    public function setDtDemissao($dt_demissao)
    {
        return $this->dt_demissao = $dt_demissao;
    }

    /**
     * @return ImagemEntidade $co_imagem
     */
    public function getCoImagem()
    {
        return $this->co_imagem;
    }

    /**
     * @param $co_imagem
     * @return mixed
     */
    public function setCoImagem($co_imagem)
    {
        return $this->co_imagem = $co_imagem;
    }

    /**
     * @return PessoaEntidade $co_pessoa
     */
    public function getCoPessoa()
    {
        return $this->co_pessoa;
    }

    /**
     * @param $co_pessoa
     * @return mixed
     */
    public function setCoPessoa($co_pessoa)
    {
        return $this->co_pessoa = $co_pessoa;
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

    /**
     * @return ContaBancariaEntidade $co_conta_bancaria
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
     * @return ProfissionalCargoEntidade $co_profissional_cargo
     */
    public function getCoProfissionalCargo()
    {
        return $this->co_profissional_cargo;
    }

    /**
     * @param $co_profissional_cargo
     * @return mixed
     */
    public function setCoProfissionalCargo($co_profissional_cargo)
    {
        return $this->co_profissional_cargo = $co_profissional_cargo;
    }

    /**
     * @return JornadaTrabalhoEntidade $co_jornada_trabalho
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
        $this->co_jornada_trabalho = $co_jornada_trabalho;
    }

    /**
     * @return AusenciaEntidade $co_ausencia
     */
    public function getCoAusencia()
    {
        return $this->co_ausencia;
    }

    /**
     * @param mixed $co_ausencia
     */
    public function setCoAusencia($co_ausencia)
    {
        $this->co_ausencia = $co_ausencia;
    }

    /**
     * @return PercentualComissaoEntidade $co_percentual_comissao
     */
    public function getCoPercentualComissao()
    {
        return $this->co_percentual_comissao;
    }

    /**
     * @param mixed $co_percentual_comissao
     */
    public function setCoPercentualComissao($co_percentual_comissao)
    {
        $this->co_percentual_comissao = $co_percentual_comissao;
    }

    /**
     * @return ServicoProfissionalEntidade $co_servico_profissional
     */
    public function getCoServicoProfissional()
    {
        return $this->co_servico_profissional;
    }

    /**
     * @param $co_servico_profissional
     * @return mixed
     */
    public function setCoServicoProfissional($co_servico_profissional)
    {
        return $this->co_servico_profissional = $co_servico_profissional;
    }


    /**
     * @return StatusAgendaProfissionalEntidade $co_status_agenda_profissional
     */
    public function getCoStatusAgendaProfissional()
    {
        return $this->co_status_agenda_profissional;
    }

    /**
     * @param $co_status_agenda_profissional
     * @return mixed
     */
    public function setCoStatusAgendaProfissional($co_status_agenda_profissional)
    {
        return $this->co_status_agenda_profissional = $co_status_agenda_profissional;
    }
}