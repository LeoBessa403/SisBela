<?php

/**
 * Class TipoContaEnum
 */
class TipoContaEnum extends AbstractEnum
{
    const CONTA_CORRENTE = 'CC';
    const CONTA_POUPANCA = 'CP';
    const CONTA_SALARIO = 'CS';

    public static $descricao = [
        TipoContaEnum::CONTA_CORRENTE => 'Conta Corrente',
        TipoContaEnum::CONTA_POUPANCA => 'Conta Poupança',
        TipoContaEnum::CONTA_SALARIO => 'Conta Salário',
    ];
}
