<?php

/**
 * MotivoDescontoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  MotivoDescontoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(MotivoDescontoEntidade::ENTIDADE);
        $this->ObjetoModel = New MotivoDescontoModel();
    }

    public static function montaComboMotivosDesconto()
    {
        /** @var MotivoDescontoService $motivoDescontoService */
        $motivoDescontoService = new MotivoDescontoService();
        $motivos = [];
        $motivosDesconto = $motivoDescontoService->PesquisaTodos();
        /** @var MotivoDescontoEntidade $motivoDesconto */
        foreach ($motivosDesconto as $motivoDesconto) {
            $motivos[$motivoDesconto->getCoMotivoDesconto()] = $motivoDesconto->getDsMotivoDesconto();
        }
        return $motivos;
    }
}