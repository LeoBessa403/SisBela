<?php

/**
 * StatusAgendaProfissionalService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  StatusAgendaProfissionalService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(StatusAgendaProfissionalEntidade::ENTIDADE);
        $this->ObjetoModel = New StatusAgendaProfissionalModel();
    }


}