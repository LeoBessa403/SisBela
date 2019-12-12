<?php

/**
 * Class TipoGeneroEspecializado
 */
class TipoGeneroEspecializadoEnum extends AbstractEnum
{
    const ADULTO = 1;
    const CRIANCA = 2;
    const ADULTO_CRIANCA = 3;

    public static $descricao = [
        TipoGeneroEspecializadoEnum::ADULTO => 'Somente adulto',
        TipoGeneroEspecializadoEnum::CRIANCA => 'Apenas crianças',
        TipoGeneroEspecializadoEnum::ADULTO_CRIANCA => 'Adultos e Crianças',
    ];
}
