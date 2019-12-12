<?php

/**
 * TipoPagamentoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  TipoPagamentoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(TipoPagamentoEntidade::ENTIDADE);
        $this->ObjetoModel = New TipoPagamentoModel();
    }

    public static function montaComboFormasDePagamento()
    {
        $FormasDePagamento = TipoPagamentoEnum::$descricao;
        $todasFormas = array();
        foreach ($FormasDePagamento as $numFormaPag => $FormaPag) :
            $todasFormas[$numFormaPag] = $FormaPag;
        endforeach;
        return $todasFormas;
    }
}