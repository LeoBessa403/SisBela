<?php

/**
 * PrecoServicoService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  PrecoServicoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(PrecoServicoEntidade::ENTIDADE);
        $this->ObjetoModel = New PrecoServicoModel();
    }


}