<?php

/**
 * Suporte.Entidade [ ENTIDADE ]
 * @copyright (c) 2020, Leo Bessa
 */

class SuporteEntidade extends AbstractEntidade
{
	const TABELA = 'TB_SUPORTE';
	const ENTIDADE = 'SuporteEntidade';
	const CHAVE = CO_SUPORTE;

	private $co_suporte;
	private $dt_cadastro;
	private $ds_assunto;
	private $st_tipo_assunto;
	private $co_assinante;


	/**
    * @return array
    */
	public static function getCampos() 
    {
    	return [
			CO_SUPORTE,
			DT_CADASTRO,
			DS_ASSUNTO,
			ST_TIPO_ASSUNTO,
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
	* @return int $co_suporte
    */
	public function getCoSuporte()
    {
        return $this->co_suporte;
    }

	/**
	* @param $co_suporte
    * @return mixed
    */
	public function setCoSuporte($co_suporte)
    {
        return $this->co_suporte = $co_suporte;
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
	* @return mixed $ds_assunto
    */
	public function getDsAssunto()
    {
        return $this->ds_assunto;
    }

	/**
	* @param $ds_assunto
    * @return mixed
    */
	public function setDsAssunto($ds_assunto)
    {
        return $this->ds_assunto = $ds_assunto;
    }

	/**
	* @return mixed $st_tipo_assunto
    */
	public function getStTipoAssunto()
    {
        return $this->st_tipo_assunto;
    }

	/**
	* @param $st_tipo_assunto
    * @return mixed
    */
	public function setStTipoAssunto($st_tipo_assunto)
    {
        return $this->st_tipo_assunto = $st_tipo_assunto;
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