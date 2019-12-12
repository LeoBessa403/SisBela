<?php

/**
 * FeriadoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  FeriadoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(FeriadoEntidade::ENTIDADE);
        $this->ObjetoModel = New FeriadoModel();
    }


}