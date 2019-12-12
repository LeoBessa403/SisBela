<?php

/**
 * PrecoPacoteService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  PrecoPacoteService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(PrecoPacoteEntidade::ENTIDADE);
        $this->ObjetoModel = New PrecoPacoteModel();
    }


}