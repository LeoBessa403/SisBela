<?php

/**
 * PacoteServ.Entidade [ ENTIDADE ]
 * @copyright (c) 2019, Leo Bessa
 */

class PacoteServEntidade extends AbstractEntidade
{
    const TABELA = 'TB_PACOTE_SERV';
    const ENTIDADE = 'PacoteServEntidade';
    const CHAVE = CO_PACOTE_SERV;

    private $co_pacote_serv;
    private $no_pacote_serv;
    private $dt_cadastro;
    private $co_assinante;
    private $co_preco_pacote;
    private $co_servico_pacote;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_PACOTE_SERV,
            NO_PACOTE_SERV,
            DT_CADASTRO,
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
     * @return int $co_pacote_serv
     */
    public function getCoPacoteServ()
    {
        return $this->co_pacote_serv;
    }

    /**
     * @param $co_pacote_serv
     * @return mixed
     */
    public function setCoPacoteServ($co_pacote_serv)
    {
        return $this->co_pacote_serv = $co_pacote_serv;
    }

    /**
     * @return mixed $no_pacote_serv
     */
    public function getNoPacoteServ()
    {
        return $this->no_pacote_serv;
    }

    /**
     * @param $no_pacote_serv
     * @return mixed
     */
    public function setNoPacoteServ($no_pacote_serv)
    {
        return $this->no_pacote_serv = $no_pacote_serv;
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
     * @return PrecoPacoteEntidade $co_preco_pacote
     */
    public function getCoPrecoPacote()
    {
        return $this->co_preco_pacote;
    }

    /**
     * @param $co_preco_pacote
     * @return mixed
     */
    public function setCoPrecoPacote($co_preco_pacote)
    {
        return $this->co_preco_pacote = $co_preco_pacote;
    }

    /**
     * @return ServicoPacoteEntidade $co_servico_pacote
     */
    public function getCoServicoPacote()
    {
        return $this->co_servico_pacote;
    }

    /**
     * @param $co_servico_pacote
     * @return mixed
     */
    public function setCoServicoPacote($co_servico_pacote)
    {
        return $this->co_servico_pacote = $co_servico_pacote;
    }

    /**
     * @return PrecoPacoteEntidade $co_preco_pacote
     */
    public function getCoUltimoPrecoPacote()
    {
        return $this->ultimo($this->getCoPrecoPacote());
    }

}