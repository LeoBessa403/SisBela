<?php

/**
 * Pessoa.Entidade extends [ ENTIDADE ]
 * @copyright (c) 2017, Leo Bessa
 */

class PessoaEntidadeExtends extends AbstractEntidade
{
    private $co_empresa;
    private $co_profissional;
    private $co_cliente;


    /**
     * @return EmpresaEntidade $co_empresa
     */
    public function getCoEmpresa()
    {
        return $this->co_empresa;
    }

    /**
     * @param $co_empresa
     * @return mixed
     */
    public function setCoEmpresa($co_empresa)
    {
        return $this->co_empresa = $co_empresa;
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
        $this->co_profissional = $co_profissional;
    }

    /**
     * @return ClienteEntidade $co_cliente
     */
    public function getCoCliente()
    {
        return $this->co_cliente;
    }

    /**
     * @param $co_cliente
     * @return mixed
     */
    public function setCoCliente($co_cliente)
    {
        $this->co_cliente = $co_cliente;
    }

}