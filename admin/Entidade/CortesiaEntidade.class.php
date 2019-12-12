<?php

/**
 * Cortesia.Entidade [ ENTIDADE ]
 * @copyright (c) 2019, Leo Bessa
 */

class CortesiaEntidade extends AbstractEntidade
{
	const TABELA = 'TB_CORTESIA';
	const ENTIDADE = 'CortesiaEntidade';
	const CHAVE = CO_CORTESIA;

	private $co_cortesia;
	private $dt_cadastro;
	private $st_status;
    private $ds_motivo;
	private $ds_codigo;
	private $dt_inicio;
	private $dt_fim;
	private $nu_hora_abertura;
	private $nu_hora_fechamento;
	private $nu_dia_semana;
	private $co_cliente;
	private $co_usuario;
	private $co_servico;
    private $co_assinante;


	/**
    * @return array
    */
	public static function getCampos() 
    {
    	return [
			CO_CORTESIA,
			DT_CADASTRO,
			ST_STATUS,
            DS_MOTIVO,
			DS_CODIGO,
			DT_INICIO,
			DT_FIM,
			NU_HORA_ABERTURA,
			NU_HORA_FECHAMENTO,
			NU_DIA_SEMANA,
			CO_CLIENTE,
			CO_USUARIO,
			CO_SERVICO,
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
	* @return int $co_cortesia
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
	* @return ClienteEntidade $co_cliente
    */
	public function getCoCliente()
    {
        return $this->co_cliente;
    }

	/**
	* @param $co_cliente
    * @return mixed
    */
	public function setCoCliente($co_cliente)
    {
        return $this->co_cliente = $co_cliente;
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