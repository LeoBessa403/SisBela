<?php

/**
 * Comissao.Entidade [ ENTIDADE ]
 * @copyright (c) 2019, Leo Bessa
 */

class ComissaoEntidade extends AbstractEntidade
{
	const TABELA = 'TB_COMISSAO';
	const ENTIDADE = 'ComissaoEntidade';
	const CHAVE = CO_COMISSAO;

	private $co_comissao;
	private $dt_cadastro;
	private $co_agenda;
	private $co_saldo;
	private $co_pagamento;


	/**
    * @return array
    */
	public static function getCampos() 
    {
    	return [
			CO_COMISSAO,
			DT_CADASTRO,
			CO_AGENDA,
			CO_SALDO,
			CO_PAGAMENTO,
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
	* @return int $co_comissao
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
	* @return AgendaEntidade $co_agenda
    */
	public function getCoAgenda()
    {
        return $this->co_agenda;
    }

	/**
	* @param $co_agenda
    * @return mixed
    */
	public function setCoAgenda($co_agenda)
    {
        return $this->co_agenda = $co_agenda;
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

}