<?php

/**
 * StatusAgendaServico.Entidade [ ENTIDADE ]
 * @copyright (c) 2019, Leo Bessa
 */

class StatusAgendaServicoEntidade extends AbstractEntidade
{
	const TABELA = 'TB_STATUS_AGENDA_SERVICO';
	const ENTIDADE = 'StatusAgendaServicoEntidade';
	const CHAVE = CO_STATUS_AGENDA_SERVICO;

	private $co_status_agenda_servico;
	private $co_servico;
	private $co_status_agenda;
	private $st_status;
	private $co_status_agenda_profissional;


	/**
    * @return array
    */
	public static function getCampos() 
    {
    	return [
			CO_STATUS_AGENDA_SERVICO,
			CO_SERVICO,
			CO_STATUS_AGENDA,
			ST_STATUS,
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
	* @return int $co_status_agenda_servico
    */
	public function getCoStatusAgendaServico()
    {
        return $this->co_status_agenda_servico;
    }

	/**
	* @param $co_status_agenda_servico
    * @return mixed
    */
	public function setCoStatusAgendaServico($co_status_agenda_servico)
    {
        return $this->co_status_agenda_servico = $co_status_agenda_servico;
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
	* @return StatusAgendaEntidade $co_status_agenda
    */
	public function getCoStatusAgenda()
    {
        return $this->co_status_agenda;
    }

	/**
	* @param $co_status_agenda
    * @return mixed
    */
	public function setCoStatusAgenda($co_status_agenda)
    {
        return $this->co_status_agenda = $co_status_agenda;
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
	* @return StatusAgendaProfissionalEntidade $co_status_agenda_profissional
     */
	public function getCoStatusAgendaProfissional()
    {
        return $this->co_status_agenda_profissional;
    }

	/**
     * @param $co_status_agenda_profissional
     * @return mixed
     */
	public function setCoStatusAgendaProfissional($co_status_agenda_profissional)
    {
        return $this->co_status_agenda_profissional = $co_status_agenda_profissional;
    }

}