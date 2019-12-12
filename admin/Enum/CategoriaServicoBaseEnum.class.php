<?php

/**
 * Class CategoriaServicoBase
 */
class CategoriaServicoBaseEnum extends AbstractEnum
{
    const CABELO = 1;
    const MAOS_PES = 2;
    const MAQUIAGEM = 3;
    const SOBRANCELHA = 4;
    const BARBA = 5;
    const ESTETICA_FACIAL = 6;
    const DEPILACAO = 7;
    const MASSAGEM = 8;
    const PODOLOGIA = 9;
    const TERAPIA = 10;

    public static $descricao = [
        CategoriaServicoBaseEnum::CABELO => 'Cabelo',
        CategoriaServicoBaseEnum::MAOS_PES => 'Mãos e Pés',
        CategoriaServicoBaseEnum::MAQUIAGEM => 'Maquiagem',
        CategoriaServicoBaseEnum::SOBRANCELHA => 'Sobrancelha',
        CategoriaServicoBaseEnum::BARBA => 'Barba',
        CategoriaServicoBaseEnum::ESTETICA_FACIAL => 'Estética Facial',
        CategoriaServicoBaseEnum::DEPILACAO => 'Depilação',
        CategoriaServicoBaseEnum::MASSAGEM => 'Massagem',
        CategoriaServicoBaseEnum::PODOLOGIA => 'Podologia',
        CategoriaServicoBaseEnum::TERAPIA => 'Terapia',
    ];
}
