<?php

/**
 * ConfigCliente.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class ConfigClienteEntidade extends AbstractEntidade
{
    const TABELA = 'TB_CONFIG_CLIENTE';
    const ENTIDADE = 'ConfigClienteEntidade';
    const CHAVE = CO_CONFIG_CLIENTE;

    private $co_config_cliente;
    private $st_marca_servico;
    private $nu_ausencia;
    private $co_assinante;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_CONFIG_CLIENTE,
            ST_MARCA_SERVICO,
            NU_AUSENCIA,
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
     * @return int $co_config_cliente
     */
    public function getCoConfigCliente()
    {
        return $this->co_config_cliente;
    }

    /**
     * @param $co_config_cliente
     * @return mixed
     */
    public function setCoConfigCliente($co_config_cliente)
    {
        return $this->co_config_cliente = $co_config_cliente;
    }

    /**
     * @return mixed $st_marca_servico
     */
    public function getStMarcaServico()
    {
        return $this->st_marca_servico;
    }

    /**
     * @param $st_marca_servico
     * @return mixed
     */
    public function setStMarcaServico($st_marca_servico)
    {
        return $this->st_marca_servico = $st_marca_servico;
    }

    /**
     * @return mixed $nu_ausencia
     */
    public function getNuAusencia()
    {
        return $this->nu_ausencia;
    }

    /**
     * @param $nu_ausencia
     * @return mixed
     */
    public function setNuAusencia($nu_ausencia)
    {
        return $this->nu_ausencia = $nu_ausencia;
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