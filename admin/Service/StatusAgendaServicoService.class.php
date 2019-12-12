<?php

/**
 * StatusAgendaServicoService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  StatusAgendaServicoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(StatusAgendaServicoEntidade::ENTIDADE);
        $this->ObjetoModel = New StatusAgendaServicoModel();
    }


}