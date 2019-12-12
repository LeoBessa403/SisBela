<?php

/**
 * Pagamento.Entidade [ ENTIDADE ]
 * @copyright (c) 2019, Leo Bessa
 */

class PagamentoEntidade extends AbstractEntidade
{
	const TABELA = 'TB_PAGAMENTO';
	const ENTIDADE = 'PagamentoEntidade';
	const CHAVE = CO_PAGAMENTO;

	private $co_pagamento;
	private $dt_cadastro;
	private $nu_total;
	private $nu_valor_pago;
	private $nu_parcelas;
	private $st_status;
	private $dt_atualizado;
	private $ds_obsercvacao;
	private $co_assinante;
	private $co_comissao;
	private $co_parcelamento;


	/**
    * @return array
    */
	public static function getCampos() 
    {
    	return [
			CO_PAGAMENTO,
			DT_CADASTRO,
			NU_TOTAL,
			NU_VALOR_PAGO,
			NU_PARCELAS,
			ST_STATUS,
			DT_ATUALIZADO,
			DS_OBSERCVACAO,
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
	* @return int $co_pagamento
    */
	public function getCoPagamento()
    {
        return $this->co_pagamento;
    }

	/**
	* @param $co_pagamento
    * @return mixed
    */
	public function setCoPagamento($co_pagamento)
    {
        return $this->co_pagamento = $co_pagamento;
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
	* @return mixed $nu_total
    */
	public function getNuTotal()
    {
        return $this->nu_total;
    }

	/**
	* @param $nu_total
    * @return mixed
    */
	public function setNuTotal($nu_total)
    {
        return $this->nu_total = $nu_total;
    }

	/**
	* @return mixed $nu_valor_pago
    */
	public function getNuValorPago()
    {
        return $this->nu_valor_pago;
    }

	/**
	* @param $nu_valor_pago
    * @return mixed
    */
	public function setNuValorPago($nu_valor_pago)
    {
        return $this->nu_valor_pago = $nu_valor_pago;
    }

	/**
	* @return mixed $nu_parcelas
    */
	public function getNuParcelas()
    {
        return $this->nu_parcelas;
    }

	/**
	* @param $nu_parcelas
    * @return mixed
    */
	public function setNuParcelas($nu_parcelas)
    {
        return $this->nu_parcelas = $nu_parcelas;
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
	* @return mixed $dt_atualizado
    */
	public function getDtAtualizado()
    {
        return $this->dt_atualizado;
    }

	/**
	* @param $dt_atualizado
    * @return mixed
    */
	public function setDtAtualizado($dt_atualizado)
    {
        return $this->dt_atualizado = $dt_atualizado;
    }

	/**
	* @return mixed $ds_obsercvacao
    */
	public function getDsObsercvacao()
    {
        return $this->ds_obsercvacao;
    }

	/**
	* @param $ds_obsercvacao
    * @return mixed
    */
	public function setDsObsercvacao($ds_obsercvacao)
    {
        return $this->ds_obsercvacao = $ds_obsercvacao;
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
	* @return ComissaoEntidade $co_comissao
     */
	public function getCoComissao()
    {
        return $this->co_comissao;
    }

	/**
     * @param $co_comissao
     * @return mixed
     */
	public function setCoComissao($co_comissao)
    {
        return $this->co_comissao = $co_comissao;
    }

	/**
	* @return ParcelamentoEntidade $co_parcelamento
     */
	public function getCoParcelamento()
    {
        return $this->co_parcelamento;
    }

	/**
     * @param $co_parcelamento
     * @return mixed
     */
	public function setCoParcelamento($co_parcelamento)
    {
        return $this->co_parcelamento = $co_parcelamento;
    }

}