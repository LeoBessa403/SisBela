<?php

/**
 * Class TipoAusencia
 */
class TipoAusenciaEnum extends AbstractEnum
{
    const ALMOCO = 1;
    const AUSENCIA_MEDICA = 2;
    const FALTA = 3;
    const FERIAS = 4;
    const FOLGA = 5;
    const LANCHE = 6;
    const ESTUDO = 7;
    const OUTROS = 8;

    public static $descricao = [
        TipoAusenciaEnum::ALMOCO => 'Almoço',
        TipoAusenciaEnum::AUSENCIA_MEDICA => 'Ausência Médica',
        TipoAusenciaEnum::FALTA => 'Falta',
        TipoAusenciaEnum::FERIAS => 'Férias',
        TipoAusenciaEnum::FOLGA => 'Folga',
        TipoAusenciaEnum::LANCHE => 'Lanche',
        TipoAusenciaEnum::ESTUDO => 'Estudos',
        TipoAusenciaEnum::OUTROS => 'Outros',
    ];
}
