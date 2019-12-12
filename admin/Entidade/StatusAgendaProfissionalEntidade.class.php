<?php

/**
 * StatusAgendaProfissional.Entidade [ ENTIDADE ]
 * @copyright (c) 2019, Leo Bessa
 */

class StatusAgendaProfissionalEntidade extends AbstractEntidade
{
	const TABELA = 'TB_STATUS_AGENDA_PROFISSIONAL';
	const ENTIDADE = 'StatusAgendaProfissionalEntidade';
	const CHAVE = CO_STATUS_AGENDA_PROFISSIONAL;

	private $co_status_agenda_profissional;
	private $co_status_agenda;
	private $co_profissional;
	private $co_status_agenda_servico;
	private $tp_profissional;


	/**
    * @return array
    */
	public static function getCampos() 
    {
    	return [
			CO_STATUS_AGENDA_PROFISSIONAL,
			CO_STATUS_AGENDA,
			CO_PROFISSIONAL,
			CO_STATUS_AGENDA_SERVICO,
			TP_PROFISSIONAL,
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
	* @return int $co_status_agenda_profissional
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
	* @return ProfissionalEntidade $co_profissional
    */
	public function getCoProfissional()
    {
        return $this->co_profissional;
    }

	/**
	* @param $co_profissional
    * @return mixed
    */
	public function setCoProfissional($co_profissional)
    {
        return $this->co_profissional = $co_profissional;
    }

	/**
	* @return StatusAgendaServicoEntidade $co_status_agenda_servico
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
	* @return mixed $tp_profissional
    */
	public function getTpProfissional()
    {
        return $this->tp_profissional;
    }

	/**
	* @param $tp_profissional
    * @return mixed
    */
	public function setTpProfissional($tp_profissional)
    {
        return $this->tp_profissional = $tp_profissional;
    }

}