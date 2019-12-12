<?php

/**
 * Class FormaComissaoEnum
 */
class FormaComissaoEnum extends AbstractEnum
{
    const GERAL = 1;
    const SERVICO = 2;
    const PROFISSIONAL = 3;
    const SERVICO_PROFISSIONAL = 4;

    public static $descricao = [
        FormaComissaoEnum::GERAL => 'Geral',
        FormaComissaoEnum::SERVICO => 'Por Serviço',
        FormaComissaoEnum::PROFISSIONAL => 'Por Profissional',
        FormaComissaoEnum::SERVICO_PROFISSIONAL => 'Por Serviço/Profissional',
    ];
}
