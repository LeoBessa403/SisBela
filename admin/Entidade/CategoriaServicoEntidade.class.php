<?php

/**
 * CategoriaServico.Entidade [ ENTIDADE ]
 * @copyright (c) 2019, Leo Bessa
 */

class CategoriaServicoEntidade extends AbstractEntidade
{
    const TABELA = 'TB_CATEGORIA_SERVICO';
    const ENTIDADE = 'CategoriaServicoEntidade';
    const CHAVE = CO_CATEGORIA_SERVICO;

    private $co_categoria_servico;
    private $no_categoria_servico;
    private $dt_cadastro;
    private $st_status;
    private $co_assinante;
    private $co_servico;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_CATEGORIA_SERVICO,
            NO_CATEGORIA_SERVICO,
            DT_CADASTRO,
            ST_STATUS,
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
     * @return int $co_categoria_servico
     */
    public function getCoCategoriaServico()
    {
        return $this->co_categoria_servico;
    }

    /**
     * @param $co_categoria_servico
     * @return mixed
     */
    public function setCoCategoriaServico($co_categoria_servico)
    {
        return $this->co_categoria_servico = $co_categoria_servico;
    }

    /**
     * @return mixed $no_categoria_servico
     */
    public function getNoCategoriaServico()
    {
        return $this->no_categoria_servico;
    }

    /**
     * @param $no_categoria_servico
     * @return mixed
     */
    public function setNoCategoriaServico($no_categoria_servico)
    {
        return $this->no_categoria_servico = $no_categoria_servico;
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
     * @return ServicoEntidade $co_servico
     */
    public function getCoServico()
    {
        return $this->co_servico;
    }

    /**
     * @param $co_servico
     * @return mixed
     */
    public function setCoServico($co_servico)
    {
        $this->co_servico = $co_servico;
    }

}