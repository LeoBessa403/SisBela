<?php

/**
 * CargoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  CargoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(CargoEntidade::ENTIDADE);
        $this->ObjetoModel = New CargoModel();
    }

    public static function montaComboCargos()
    {
        /** @var CargoService $cargoService */
        $cargoService = new CargoService();
        $cargos = $cargoService->PesquisaTodos();
        $todoscargos = [
            '' => Mensagens::MSG_SEM_ITEM_SELECIONADO
        ];
        /** @var CargoEntidade $cargo */
        foreach ($cargos as $cargo) :
            $todoscargos[$cargo->getCoCargo()] = $cargo->getNoCargo();
        endforeach;
        return $todoscargos;
    }
}