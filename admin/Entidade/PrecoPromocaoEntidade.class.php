<?php

/**
 * PrecoPromocao.Entidade [ ENTIDADE ]
 * @copyright (c) 2019, Leo Bessa
 */

class PrecoPromocaoEntidade extends AbstractEntidade
{
	const TABELA = 'TB_PRECO_PROMOCAO';
	const ENTIDADE = 'PrecoPromocaoEntidade';
	const CHAVE = CO_PRECO_PROMOCAO;

	private $co_preco_promocao;
	private $dt_cadastro;
	private $st_status;
	private $nu_valor;
	private $dt_inicio;
	private $dt_fim;
	private $nu_hora_abertura;
	private $nu_hora_fechamento;
	private $nu_dia_semana;
	private $co_servico;
	private $co_promocao;
	private $co_usuario;


	/**
    * @return array
    */
	public static function getCampos() 
    {
    	return [
			CO_PRECO_PROMOCAO,
			DT_CADASTRO,
			ST_STATUS,
			NU_VALOR,
			DT_INICIO,
			DT_FIM,
			NU_HORA_ABERTURA,
			NU_HORA_FECHAMENTO,
			NU_DIA_SEMANA,
			CO_SERVICO,
			CO_PROMOCAO,
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
	* @return int $co_preco_promocao
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
	* @return mixed $nu_hora_abertura
    */
	public function getNuHoraAbertura()
    {
        return $this->nu_hora_abertura;
    }

	/**
	* @param $nu_hora_abertura
    * @return mixed
    */
	public function setNuHoraAbertura($nu_hora_abertura)
    {
        return $this->nu_hora_abertura = $nu_hora_abertura;
    }

	/**
	* @return mixed $nu_hora_fechamento
    */
	public function getNuHoraFechamento()
    {
        return $this->nu_hora_fechamento;
    }

	/**
	* @param $nu_hora_fechamento
    * @return mixed
    */
	public function setNuHoraFechamento($nu_hora_fechamento)
    {
        return $this->nu_hora_fechamento = $nu_hora_fechamento;
    }

	/**
	* @return mixed $nu_dia_semana
    */
	public function getNuDiaSemana()
    {
        return $this->nu_dia_semana;
    }

	/**
	* @param $nu_dia_semana
    * @return mixed
    */
	public function setNuDiaSemana($nu_dia_semana)
    {
        return $this->nu_dia_semana = $nu_dia_semana;
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
	* @return PromocaoEntidade $co_promocao
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