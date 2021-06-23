<?php

/**
 * BotaoService.class [ SERVICE ]
 * @copyright (c) 2021, Leo Bessa
 */
class  BotaoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(BotaoEntidade::ENTIDADE);
        $this->ObjetoModel = New BotaoModel();
    }


}