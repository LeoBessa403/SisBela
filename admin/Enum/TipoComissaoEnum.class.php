<?php

/**
 * Class TipoComissao
 */
class TipoComissaoEnum extends AbstractEnum
{
    const UNICO_PROFISSIONAL = 1;
    const COM_ASSISTENTE = 2;
    const ASSISTENTE = 3;

    public static $descricao = [
        TipoComissaoEnum::UNICO_PROFISSIONAL => 'Único Profissional',
        TipoComissaoEnum::COM_ASSISTENTE => 'Com Assistente',
        TipoComissaoEnum::ASSISTENTE => 'Assistente',
    ];
}
