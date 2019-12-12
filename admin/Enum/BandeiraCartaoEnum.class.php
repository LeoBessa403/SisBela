<?php

/**
 * Class BandeiraCartao
 */
class BandeiraCartaoEnum extends AbstractEnum
{
    const VISA = 1;
    const MASTER_CARD = 2;
    const AMERICAN_EXPRESS = 3;
    const ELO = 4;
    const HIPER_CARD = 5;
    const PAG_SEGURO = 6;
    const MAESTRO_REDESHOP = 7;
    const AURA = 8;

    public static $descricao = [
        BandeiraCartaoEnum::VISA => 'Visa',
        BandeiraCartaoEnum::MASTER_CARD => 'MasterCard',
        BandeiraCartaoEnum::AMERICAN_EXPRESS => 'American Express',
        BandeiraCartaoEnum::ELO => 'Elo',
        BandeiraCartaoEnum::HIPER_CARD => 'HiperCard',
        BandeiraCartaoEnum::PAG_SEGURO => 'PagSeguro',
        BandeiraCartaoEnum::MAESTRO_REDESHOP => 'Maestro/RedeShop',
        BandeiraCartaoEnum::AURA => 'Aura',
    ];
}
