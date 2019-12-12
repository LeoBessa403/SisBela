<?php

/**
 * Saldo.Entidade [ ENTIDADE ]
 * @copyright (c) 2019, Leo Bessa
 */

class SaldoEntidade extends AbstractEntidade
{
	const TABELA = 'TB_SALDO';
	const ENTIDADE = 'SaldoEntidade';
	const CHAVE = CO_SALDO;

	private $co_saldo;
	private $dt_cadastro;
	private $ds_observacao;
	private $st_status;
	private $nu_valor;
	private $co_caixa;
	private $co_tipo_saldo;
	private $co_tipo_pagamento;
	private $co_cortesia;
	private $co_vale_presente;
	private $co_bandeira_cartao;
	private $co_comissao;


	/**
    * @return array
    */
	public static function getCampos() 
    {
    	return [
			CO_SALDO,
			DT_CADASTRO,
			DS_OBSERVACAO,
			ST_STATUS,
			NU_VALOR,
			CO_CAIXA,
			CO_TIPO_SALDO,
			CO_TIPO_PAGAMENTO,
			CO_CORTESIA,
			CO_VALE_PRESENTE,
			CO_BANDEIRA_CARTAO,
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
	* @return int $co_saldo
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
	* @return CaixaEntidade $co_caixa
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
	* @return TipoSaldoEntidade $co_tipo_saldo
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
	* @return CortesiaEntidade $co_cortesia
    */
	public function getCoCortesia()
    {
        return $this->co_cortesia;
    }

	/**
	* @param $co_cortesia
    * @return mixed
    */
	public function setCoCortesia($co_cortesia)
    {
        return $this->co_cortesia = $co_cortesia;
    }

	/**
	* @return ValePresenteEntidade $co_vale_presente
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
	* @return BandeiraCartaoEntidade $co_bandeira_cartao
    */
	public function getCoBandeiraCartao()
    {
        return $this->co_bandeira_cartao;
    }

	/**
	* @param $co_bandeira_cartao
    * @return mixed
    */
	public function setCoBandeiraCartao($co_bandeira_cartao)
    {
        return $this->co_bandeira_cartao = $co_bandeira_cartao;
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

}