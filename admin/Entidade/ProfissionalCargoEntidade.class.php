<?php

/**
 * ProfissionalCargo.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class ProfissionalCargoEntidade extends AbstractEntidade
{
    const TABELA = 'TB_PROFISSIONAL_CARGO';
    const ENTIDADE = 'ProfissionalCargoEntidade';
    const CHAVE = CO_PROFISSIONAL_CARGO;

    private $co_profissional_cargo;
    private $co_cargo;
    private $co_profissional;
    private $dt_cadastro;
    private $st_status;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_PROFISSIONAL_CARGO,
            CO_CARGO,
            CO_PROFISSIONAL,
            DT_CADASTRO,
            ST_STATUS,
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
     * @return int $co_profissional_cargo
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
     * @return CargoEntidade $co_cargo
     */
    public function getCoCargo()
    {
        return $this->co_cargo;
    }

    /**
     * @param $co_cargo
     * @return mixed
     */
    public function setCoCargo($co_cargo)
    {
        return $this->co_cargo = $co_cargo;
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

}