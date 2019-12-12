<?php

/**
 * Class TipoEstacionamento
 */
class TipoEstacionamentoEnum extends AbstractEnum
{
    const GRATIS = 1;
    const PAGO = 2;
    const NAO_POSSUI = 3;

    public static $descricao = [
        TipoEstacionamentoEnum::GRATIS => 'Estacionamento - Grátis',
        TipoEstacionamentoEnum::PAGO => 'Estacionamento - Pago',
        TipoEstacionamentoEnum::NAO_POSSUI => 'Não Possui Estacionamento',
    ];
}
