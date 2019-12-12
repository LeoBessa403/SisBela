<?php

/**
 * Class TipoAtendimento
 */
class TipoAtendimentoEnum extends AbstractEnum
{
    const NOSSO_ENDERECO = 1;
    const A_DOCMICILIO = 2;
    const NOSSO_ENDERECO_A_DOCMICILIO = 3;

    public static $descricao = [
        TipoAtendimentoEnum::NOSSO_ENDERECO => 'Apenas no nosso endereço',
        TipoAtendimentoEnum::A_DOCMICILIO => 'A domicílio',
        TipoAtendimentoEnum::NOSSO_ENDERECO_A_DOCMICILIO => 'No nosso endereço e a domicílio',
    ];
}
