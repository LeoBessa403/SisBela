<?php

/**
 * Class TipoNegociacao
 */
class TipoNegociacaoEnum extends AbstractEnum
{
    const COMPRA = 1;
    const VENDA = 2;
    const COTACAO = 3;
    const ORCAMENTO = 4;
    const PAGAMENTO = 5;
    const RECEBIMENTO = 6;
    const PERDA = 7;
    const DEVOLUCAO = 8;
    const RETIRADA = 9;
    const TRASNFERENCIA = 10;
    const PEDIDO = 11;

    public static $descricao = [
        TipoNegociacaoEnum::COMPRA => 'Compra',
        TipoNegociacaoEnum::VENDA => 'Venda',
        TipoNegociacaoEnum::COTACAO => 'Cotação',
        TipoNegociacaoEnum::ORCAMENTO => 'Orçamento',
        TipoNegociacaoEnum::PAGAMENTO => 'Pagamento',
        TipoNegociacaoEnum::RECEBIMENTO => 'Recebimento',
        TipoNegociacaoEnum::PERDA => 'Perda',
        TipoNegociacaoEnum::DEVOLUCAO => 'Devolução',
        TipoNegociacaoEnum::RETIRADA => 'Retirada',
        TipoNegociacaoEnum::TRASNFERENCIA => 'Trasnferência',
        TipoNegociacaoEnum::PEDIDO => 'Pedido',
    ];
}
