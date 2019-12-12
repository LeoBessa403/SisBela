<?php

/**
 * Caixa.Entidade [ ENTIDADE ]
 * @copyright (c) 2019, Leo Bessa
 */

class CaixaEntidade extends AbstractEntidade
{
	const TABELA = 'TB_CAIXA';
	const ENTIDADE = 'CaixaEntidade';
	const CHAVE = CO_CAIXA;

	private $co_caixa;
	private $dt_cadastro;
	private $dt_inicio;
	private $dt_fim;
	private $st_status;
	private $ds_observacao;
	private $nu_valor_troco;
	private $nu_valor_saldo;
	private $co_usuario;
	private $co_assinante;
	private $co_saldo;


	/**
    * @return array
    */
	public static function getCampos() 
    {
    	return [
			CO_CAIXA,
			DT_CADASTRO,
			DT_INICIO,
			DT_FIM,
			ST_STATUS,
			DS_OBSERVACAO,
			NU_VALOR_TROCO,
			NU_VALOR_SALDO,
			CO_USUARIO,
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
	* @return int $co_caixa
    */
	public function getCoCaixa()
    {
        return $this->co_caixa;
    }

	/**
	* @param $co_caixa
    * @return mixed
    */
	public function setCoCaixa($co_caixa)
    {
        return $this->co_caixa = $co_caixa;
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
	* @return mixed $dt_inicio
    */
	public function getDtInicio()
    {
        return $this->dt_inicio;
    }

	/**
	* @param $dt_inicio
    * @return mixed
    */
	public function setDtInicio($dt_inicio)
    {
        return $this->dt_inicio = $dt_inicio;
    }

	/**
	* @return mixed $dt_fim
    */
	public function getDtFim()
    {
        return $this->dt_fim;
    }

	/**
	* @param $dt_fim
    * @return mixed
    */
	public function setDtFim($dt_fim)
    {
        return $this->dt_fim = $dt_fim;
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
	* @return mixed $nu_valor_troco
    */
	public function getNuValorTroco()
    {
        return $this->nu_valor_troco;
    }

	/**
	* @param $nu_valor_troco
    * @return mixed
    */
	public function setNuValorTroco($nu_valor_troco)
    {
        return $this->nu_valor_troco = $nu_valor_troco;
    }

	/**
	* @return mixed $nu_valor_saldo
    */
	public function getNuValorSaldo()
    {
        return $this->nu_valor_saldo;
    }

	/**
	* @param $nu_valor_saldo
    * @return mixed
    */
	public function setNuValorSaldo($nu_valor_saldo)
    {
        return $this->nu_valor_saldo = $nu_valor_saldo;
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
	* @return SaldoEntidade $co_saldo
     */
	public function getCoSaldo()
    {
        return $this->co_saldo;
    }

	/**
     * @param $co_saldo
     * @return mixed
     */
	public function setCoSaldo($co_saldo)
    {
        return $this->co_saldo = $co_saldo;
    }

}