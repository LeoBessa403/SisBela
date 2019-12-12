<?php

/**
 * ValePresente.Entidade [ ENTIDADE ]
 * @copyright (c) 2019, Leo Bessa
 */

class ValePresenteEntidade extends AbstractEntidade
{
	const TABELA = 'TB_VALE_PRESENTE';
	const ENTIDADE = 'ValePresenteEntidade';
	const CHAVE = CO_VALE_PRESENTE;

	private $co_vale_presente;
	private $dt_cadastro;
	private $st_status;
    private $ds_motivo;
	private $dt_valido;
	private $nu_valor;
	private $ds_codigo;
	private $co_assinante;
	private $co_usuario;


	/**
    * @return array
    */
	public static function getCampos() 
    {
    	return [
			CO_VALE_PRESENTE,
			DT_CADASTRO,
			ST_STATUS,
            DS_MOTIVO,
			DT_VALIDO,
			NU_VALOR,
			DS_CODIGO,
			CO_ASSINANTE,
			CO_USUARIO,
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
	* @return int $co_vale_presente
    */
	public function getCoValePresente()
    {
        return $this->co_vale_presente;
    }

	/**
	* @param $co_vale_presente
    * @return mixed
    */
	public function setCoValePresente($co_vale_presente)
    {
        return $this->co_vale_presente = $co_vale_presente;
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
     * @return mixed
     */
    public function getDsMotivo()
    {
        return $this->ds_motivo;
    }

    /**
     * @param mixed $ds_motivo
     */
    public function setDsMotivo($ds_motivo)
    {
        $this->ds_motivo = $ds_motivo;
    }

	/**
	* @return mixed $dt_valido
    */
	public function getDtValido()
    {
        return $this->dt_valido;
    }

	/**
	* @param $dt_valido
    * @return mixed
    */
	public function setDtValido($dt_valido)
    {
        return $this->dt_valido = $dt_valido;
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
	* @return mixed $ds_codigo
    */
	public function getDsCodigo()
    {
        return $this->ds_codigo;
    }

	/**
	* @param $ds_codigo
    * @return mixed
    */
	public function setDsCodigo($ds_codigo)
    {
        return $this->ds_codigo = $ds_codigo;
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

}