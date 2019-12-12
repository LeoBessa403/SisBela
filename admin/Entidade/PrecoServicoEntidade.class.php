<?php

/**
 * PrecoServico.Entidade [ ENTIDADE ]
 * @copyright (c) 2019, Leo Bessa
 */

class PrecoServicoEntidade extends AbstractEntidade
{
    const TABELA = 'TB_PRECO_SERVICO';
    const ENTIDADE = 'PrecoServicoEntidade';
    const CHAVE = CO_PRECO_SERVICO;

    private $co_preco_servico;
    private $nu_valor;
    private $dt_cadastro;
    private $ds_observacao;
    private $co_servico;
    private $co_usuario;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_PRECO_SERVICO,
            NU_VALOR,
            DT_CADASTRO,
            DS_OBSERVACAO,
            CO_SERVICO,
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
     * @return int $co_preco_servico
     */
    public function getCoPrecoServico()
    {
        return $this->co_preco_servico;
    }

    /**
     * @param $co_preco_servico
     * @return mixed
     */
    public function setCoPrecoServico($co_preco_servico)
    {
        return $this->co_preco_servico = $co_preco_servico;
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
     * @return mixed $ds_observacao
     */
    public function getDsObservacao()
    {
        return $this->ds_observacao;
    }

    /**
     * @param $ds_observacao
     * @return mixed
     */
    public function setDsObservacao($ds_observacao)
    {
        return $this->ds_observacao = $ds_observacao;
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
        return $this->co_servico = $co_servico;
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
        $this->co_usuario = $co_usuario;
    }
}