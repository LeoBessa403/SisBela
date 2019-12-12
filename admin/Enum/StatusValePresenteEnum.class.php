<?php

/**
 * Class TipoPagamento
 */
class StatusValePresenteEnum extends AbstractEnum
{
    const ATIVO = 1;
    const INATIVO = 2;
    const VENCIDO = 3;
    const FINALIZADO = 4;

    public static $descricao = [
        StatusValePresenteEnum::ATIVO => 'Ativo',
        StatusValePresenteEnum::INATIVO => 'Inativo',
        StatusValePresenteEnum::VENCIDO => 'Vencido',
        StatusValePresenteEnum::FINALIZADO => 'Finalizado',
    ];

    public static $cores = [
        StatusValePresenteEnum::ATIVO => 'success',
        StatusValePresenteEnum::INATIVO => 'warning',
        StatusValePresenteEnum::VENCIDO => 'danger',
        StatusValePresenteEnum::FINALIZADO => 'green',
    ];
}
