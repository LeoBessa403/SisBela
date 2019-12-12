<?php

/**
 * BandeiraCartaoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  BandeiraCartaoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(BandeiraCartaoEntidade::ENTIDADE);
        $this->ObjetoModel = New BandeiraCartaoModel();
    }


}