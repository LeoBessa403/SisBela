<?php

/**
 * Class TipoEstabelecimento
 */
class TipoEstabelecimentoEnum extends AbstractEnum
{
    const SALAO_BELEZA = 1;
    const BARBEARIA = 2;
    const CLINICA_ESTETICA = 3;
    const SPA = 4;
    const ESMALTARIA = 5;
    const OUTRO = 6;

    public static $descricao = [
        TipoEstabelecimentoEnum::SALAO_BELEZA => 'Salão de Beleza',
        TipoEstabelecimentoEnum::BARBEARIA => 'Barbearia',
        TipoEstabelecimentoEnum::CLINICA_ESTETICA => 'Clínica de Estética',
        TipoEstabelecimentoEnum::SPA => 'SPA',
        TipoEstabelecimentoEnum::ESMALTARIA => 'Esmaltaria',
        TipoEstabelecimentoEnum::OUTRO => 'Outro',
    ];
}
