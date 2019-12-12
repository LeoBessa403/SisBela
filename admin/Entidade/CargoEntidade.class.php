<?php

/**
 * Cargo.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class CargoEntidade extends AbstractEntidade
{
    const TABELA = 'TB_CARGO';
    const ENTIDADE = 'CargoEntidade';
    const CHAVE = CO_CARGO;

    private $co_cargo;
    private $no_cargo;
    private $co_profissional_cargo;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_CARGO,
            NO_CARGO,
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
     * @return int $co_cargo
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
     * @return mixed $no_cargo
     */
    public function getNoCargo()
    {
        return $this->no_cargo;
    }

    /**
     * @param $no_cargo
     * @return mixed
     */
    public function setNoCargo($no_cargo)
    {
        return $this->no_cargo = $no_cargo;
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

}