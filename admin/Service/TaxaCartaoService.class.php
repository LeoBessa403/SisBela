<?php

/**
 * TaxaCartaoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  TaxaCartaoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(TaxaCartaoEntidade::ENTIDADE);
        $this->ObjetoModel = New TaxaCartaoModel();
    }

}