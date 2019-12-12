<?php

/**
 * Promocao.Entidade [ ENTIDADE ]
 * @copyright (c) 2019, Leo Bessa
 */

class PromocaoEntidade extends AbstractEntidade
{
	const TABELA = 'TB_PROMOCAO';
	const ENTIDADE = 'PromocaoEntidade';
	const CHAVE = CO_PROMOCAO;

	private $co_promocao;
	private $no_titulo;
	private $dt_cadastro;
	private $ds_descricao;
	private $co_assinante;
	private $co_preco_promocao;


	/**
    * @return array
    */
	public static function getCampos() 
    {
    	return [
			CO_PROMOCAO,
			NO_TITULO,
			DT_CADASTRO,
			DS_DESCRICAO,
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
	* @return int $co_promocao
    */
	public function getCoPromocao()
    {
        return $this->co_promocao;
    }

	/**
	* @param $co_promocao
    * @return mixed
    */
	public function setCoPromocao($co_promocao)
    {
        return $this->co_promocao = $co_promocao;
    }

	/**
	* @return mixed $no_titulo
    */
	public function getNoTitulo()
    {
        return $this->no_titulo;
    }

	/**
	* @param $no_titulo
    * @return mixed
    */
	public function setNoTitulo($no_titulo)
    {
        return $this->no_titulo = $no_titulo;
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
	* @return PrecoPromocaoEntidade $co_preco_promocao
     */
	public function getCoPrecoPromocao()
    {
        return $this->co_preco_promocao;
    }

	/**
     * @param $co_preco_promocao
     * @return mixed
     */
	public function setCoPrecoPromocao($co_preco_promocao)
    {
        return $this->co_preco_promocao = $co_preco_promocao;
    }

    /**
     * @return PrecoPromocaoEntidade $co_preco_promocao
     */
    public function getCoUltimoPrecoPromocao()
    {
        return $this->ultimo($this->getCoPrecoPromocao());
    }

}