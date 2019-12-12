<?php

/**
 * Class TipoContratacaoEnum
 */
class TipoContratacaoEnum extends AbstractEnum
{
    const CLT = 1;
    const PRAZO_DETERMINADO = 2;
    const SEM_VINCULO = 3;
    const LOCACAO_ESPACO = 4;
    const OUTROS = 5;

    public static $descricao = [
        TipoContratacaoEnum::CLT => 'Contrato de trabalho CLT',
        TipoContratacaoEnum::PRAZO_DETERMINADO => 'Contrato de trabalho por prazo determinado',
        TipoContratacaoEnum::SEM_VINCULO => 'Sem vínculo empregatício',
        TipoContratacaoEnum::LOCACAO_ESPACO => 'Contrato de Locação de espaço',
        TipoContratacaoEnum::OUTROS => 'Outros',
    ];
}
