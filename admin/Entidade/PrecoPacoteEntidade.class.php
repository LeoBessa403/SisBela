<?php

/**
 * PrecoPacote.Entidade [ ENTIDADE ]
 * @copyright (c) 2019, Leo Bessa
 */

class PrecoPacoteEntidade extends AbstractEntidade
{
    const TABELA = 'TB_PRECO_PACOTE';
    const ENTIDADE = 'PrecoPacoteEntidade';
    const CHAVE = CO_PRECO_PACOTE;

    private $co_preco_pacote;
    private $nu_valor;
    private $dt_cadastro;
    private $ds_descricao;
    private $st_status;
    private $co_usuario;
    private $co_pacote_serv;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_PRECO_PACOTE,
            NU_VALOR,
            DT_CADASTRO,
            DS_DESCRICAO,
            ST_STATUS,
            CO_USUARIO,
            CO_PACOTE_SERV,
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
     * @return int $co_preco_pacote
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
     * @return mixed $nu_valor
     */
    public function getNuValor()
    {
        return $this->nu_valor;
    }

    /**
     * @param $nu_valor
     * @return mixed
     */
    public function setNuValor($nu_valor)
    {
        return $this->nu_valor = $nu_valor;
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
     * @return PacoteServEntidade $co_pacote_serv
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

}