<?php

/**
 * SuporteService.class [ SEVICE ]
 * @copyright (c) 2020, Leo Bessa
 */
class  SuporteService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(SuporteEntidade::ENTIDADE);
        $this->ObjetoModel = New SuporteModel();
    }


}