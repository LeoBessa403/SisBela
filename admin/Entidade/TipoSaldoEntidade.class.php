<?php

/**
 * TipoSaldo.Entidade [ ENTIDADE ]
 * @copyright (c) 2019, Leo Bessa
 */

class TipoSaldoEntidade extends AbstractEntidade
{
	const TABELA = 'TB_TIPO_SALDO';
	const ENTIDADE = 'TipoSaldoEntidade';
	const CHAVE = CO_TIPO_SALDO;

	private $co_tipo_saldo;
	private $tp_tipo_saldo;
	private $ds_tipo_saldo;
	private $co_saldo;


	/**
    * @return array
    */
	public static function getCampos() 
    {
    	return [
			CO_TIPO_SALDO,
			TP_TIPO_SALDO,
			DS_TIPO_SALDO,
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
	* @return int $co_tipo_saldo
    */
	public function getCoTipoSaldo()
    {
        return $this->co_tipo_saldo;
    }

	/**
	* @param $co_tipo_saldo
    * @return mixed
    */
	public function setCoTipoSaldo($co_tipo_saldo)
    {
        return $this->co_tipo_saldo = $co_tipo_saldo;
    }

	/**
	* @return mixed $tp_tipo_saldo
    */
	public function getTpTipoSaldo()
    {
        return $this->tp_tipo_saldo;
    }

	/**
	* @param $tp_tipo_saldo
    * @return mixed
    */
	public function setTpTipoSaldo($tp_tipo_saldo)
    {
        return $this->tp_tipo_saldo = $tp_tipo_saldo;
    }

	/**
	* @return mixed $ds_tipo_saldo
    */
	public function getDsTipoSaldo()
    {
        return $this->ds_tipo_saldo;
    }

	/**
	* @param $ds_tipo_saldo
    * @return mixed
    */
	public function setDsTipoSaldo($ds_tipo_saldo)
    {
        return $this->ds_tipo_saldo = $ds_tipo_saldo;
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