<?php

/**
 * DiaEspecialModel.class [ MODEL ]
 * @copyright (c) 2018, Leo Bessa
 */
class  DiaEspecialModel extends AbstractModel
{

    public function __construct()
    {
        parent::__construct(DiaEspecialEntidade::ENTIDADE);
    }

    public function Deleta($coDiaEspecial)
    {
        return parent::Deleta($coDiaEspecial);
    }
}