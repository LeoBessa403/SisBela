<?php

/**
 * FacilidadeBeneficio.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class FacilidadeBeneficioEntidade extends AbstractEntidade
{
    const TABELA = 'TB_FACILIDADE_BENEFICIO';
    const ENTIDADE = 'FacilidadeBeneficioEntidade';
    const CHAVE = CO_FACILIDADE_BENEFICIO;

    private $co_facilidade_beneficio;
    private $tp_estabelecimento;
    private $tp_atendimento;
    private $tp_genero_especializado;
    private $tp_estacionamento;
    private $st_lanchonete;
    private $st_televisao;
    private $st_wifi;
    private $st_acesso_deficiente;
    private $st_jogos;
    private $co_assinante;
    private $co_facilidade_pagamento;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_FACILIDADE_BENEFICIO,
            TP_ESTABELECIMENTO,
            TP_ATENDIMENTO,
            TP_GENERO_ESPECIALIZADO,
            TP_ESTACIONAMENTO,
            ST_LANCHONETE,
            ST_TELEVISAO,
            ST_WIFI,
            ST_ACESSO_DEFICIENTE,
            ST_JOGOS,
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
     * @return int $co_facilidade_beneficio
     */
    public function getCoFacilidadeBeneficio()
    {
        return $this->co_facilidade_beneficio;
    }

    /**
     * @param $co_facilidade_beneficio
     * @return mixed
     */
    public function setCoFacilidadeBeneficio($co_facilidade_beneficio)
    {
        return $this->co_facilidade_beneficio = $co_facilidade_beneficio;
    }

    /**
     * @return mixed $tp_estabelecimento
     */
    public function getTpEstabelecimento()
    {
        return $this->tp_estabelecimento;
    }

    /**
     * @param $tp_estabelecimento
     * @return mixed
     */
    public function setTpEstabelecimento($tp_estabelecimento)
    {
        return $this->tp_estabelecimento = $tp_estabelecimento;
    }

    /**
     * @return mixed $tp_atendimento
     */
    public function getTpAtendimento()
    {
        return $this->tp_atendimento;
    }

    /**
     * @param $tp_atendimento
     * @return mixed
     */
    public function setTpAtendimento($tp_atendimento)
    {
        return $this->tp_atendimento = $tp_atendimento;
    }

    /**
     * @return mixed $tp_genero_especializado
     */
    public function getTpGeneroEspecializado()
    {
        return $this->tp_genero_especializado;
    }

    /**
     * @param $tp_genero_especializado
     * @return mixed
     */
    public function setTpGeneroEspecializado($tp_genero_especializado)
    {
        return $this->tp_genero_especializado = $tp_genero_especializado;
    }

    /**
     * @return mixed $tp_estacionamento
     */
    public function getTpEstacionamento()
    {
        return $this->tp_estacionamento;
    }

    /**
     * @param $tp_estacionamento
     * @return mixed
     */
    public function setTpEstacionamento($tp_estacionamento)
    {
        return $this->tp_estacionamento = $tp_estacionamento;
    }

    /**
     * @return mixed $st_lanchonete
     */
    public function getStLanchonete()
    {
        return $this->st_lanchonete;
    }

    /**
     * @param $st_lanchonete
     * @return mixed
     */
    public function setStLanchonete($st_lanchonete)
    {
        return $this->st_lanchonete = $st_lanchonete;
    }

    /**
     * @return mixed $st_televisao
     */
    public function getStTelevisao()
    {
        return $this->st_televisao;
    }

    /**
     * @param $st_televisao
     * @return mixed
     */
    public function setStTelevisao($st_televisao)
    {
        return $this->st_televisao = $st_televisao;
    }

    /**
     * @return mixed $st_wifi
     */
    public function getStWifi()
    {
        return $this->st_wifi;
    }

    /**
     * @param $st_wifi
     * @return mixed
     */
    public function setStWifi($st_wifi)
    {
        return $this->st_wifi = $st_wifi;
    }

    /**
     * @return mixed $st_acesso_deficiente
     */
    public function getStAcessoDeficiente()
    {
        return $this->st_acesso_deficiente;
    }

    /**
     * @param $st_acesso_deficiente
     * @return mixed
     */
    public function setStAcessoDeficiente($st_acesso_deficiente)
    {
        return $this->st_acesso_deficiente = $st_acesso_deficiente;
    }

    /**
     * @return mixed $st_jogos
     */
    public function getStJogos()
    {
        return $this->st_jogos;
    }

    /**
     * @param $st_jogos
     * @return mixed
     */
    public function setStJogos($st_jogos)
    {
        return $this->st_jogos = $st_jogos;
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
     * @return FacilidadePagamentoEntidade $co_facilidade_pagamento
     */
    public function getCoFacilidadePagamento()
    {
        return $this->co_facilidade_pagamento;
    }

    /**
     * @param $co_facilidade_pagamento
     * @return mixed
     */
    public function setCoFacilidadePagamento($co_facilidade_pagamento)
    {
        return $this->co_facilidade_pagamento = $co_facilidade_pagamento;
    }

}