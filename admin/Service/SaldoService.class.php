<?php

/**
 * SaldoService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  SaldoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(SaldoEntidade::ENTIDADE);
        $this->ObjetoModel = New SaldoModel();
    }


}