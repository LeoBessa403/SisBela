<?php

/**
 * PrecoPromocaoService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  PrecoPromocaoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(PrecoPromocaoEntidade::ENTIDADE);
        $this->ObjetoModel = New PrecoPromocaoModel();
    }


}