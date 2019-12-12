<?php

/**
 * Parcelamento.Entidade [ ENTIDADE ]
 * @copyright (c) 2019, Leo Bessa
 */

class ParcelamentoEntidade extends AbstractEntidade
{
	const TABELA = 'TB_PARCELAMENTO';
	const ENTIDADE = 'ParcelamentoEntidade';
	const CHAVE = CO_PARCELAMENTO;

	private $co_parcelamento;
	private $dt_cadastro;
	private $nu_parcela;
	private $nu_valor_parcela;
	private $nu_valor_parcela_paga;
	private $dt_vencimento;
	private $dt_vencimento_pago;
	private $ds_observacao;
	private $co_pagamento;
	private $co_tipo_pagamento;
	private $co_usuario;


	/**
    * @return array
    */
	public static function getCampos() 
    {
    	return [
			CO_PARCELAMENTO,
			DT_CADASTRO,
			NU_PARCELA,
			NU_VALOR_PARCELA,
			NU_VALOR_PARCELA_PAGA,
			DT_VENCIMENTO,
			DT_VENCIMENTO_PAGO,
			DS_OBSERVACAO,
			CO_PAGAMENTO,
			CO_TIPO_PAGAMENTO,
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
	* @return int $co_parcelamento
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
	* @return mixed $nu_parcela
    */
	public function getNuParcela()
    {
        return $this->nu_parcela;
    }

	/**
	* @param $nu_parcela
    * @return mixed
    */
	public function setNuParcela($nu_parcela)
    {
        return $this->nu_parcela = $nu_parcela;
    }

	/**
	* @return mixed $nu_valor_parcela
    */
	public function getNuValorParcela()
    {
        return $this->nu_valor_parcela;
    }

	/**
	* @param $nu_valor_parcela
    * @return mixed
    */
	public function setNuValorParcela($nu_valor_parcela)
    {
        return $this->nu_valor_parcela = $nu_valor_parcela;
    }

	/**
	* @return mixed $nu_valor_parcela_paga
    */
	public function getNuValorParcelaPaga()
    {
        return $this->nu_valor_parcela_paga;
    }

	/**
	* @param $nu_valor_parcela_paga
    * @return mixed
    */
	public function setNuValorParcelaPaga($nu_valor_parcela_paga)
    {
        return $this->nu_valor_parcela_paga = $nu_valor_parcela_paga;
    }

	/**
	* @return mixed $dt_vencimento
    */
	public function getDtVencimento()
    {
        return $this->dt_vencimento;
    }

	/**
	* @param $dt_vencimento
    * @return mixed
    */
	public function setDtVencimento($dt_vencimento)
    {
        return $this->dt_vencimento = $dt_vencimento;
    }

	/**
	* @return mixed $dt_vencimento_pago
    */
	public function getDtVencimentoPago()
    {
        return $this->dt_vencimento_pago;
    }

	/**
	* @param $dt_vencimento_pago
    * @return mixed
    */
	public function setDtVencimentoPago($dt_vencimento_pago)
    {
        return $this->dt_vencimento_pago = $dt_vencimento_pago;
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
	* @return PagamentoEntidade $co_pagamento
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
	* @return TipoPagamentoEntidade $co_tipo_pagamento
    */
	public function getCoTipoPagamento()
    {
        return $this->co_tipo_pagamento;
    }

	/**
	* @param $co_tipo_pagamento
    * @return mixed
    */
	public function setCoTipoPagamento($co_tipo_pagamento)
    {
        return $this->co_tipo_pagamento = $co_tipo_pagamento;
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