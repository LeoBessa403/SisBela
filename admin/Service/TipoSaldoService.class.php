<?php

/**
 * TipoSaldoService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  TipoSaldoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(TipoSaldoEntidade::ENTIDADE);
        $this->ObjetoModel = New TipoSaldoModel();
    }


}