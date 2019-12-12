<?php

/**
 * FormasDePagamentoForm [ FORM ]
 * @copyright (c) 2018, Leo Bessa
 */
class FormasDePagamentoForm
{
    public static function Cadastrar($res = false)
    {
        $id = "FormasDePagamento";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action,
            "Cadastrar", 6);
        $formulario->setValor($res);

        $todasFormas = TipoPagamentoService::montaComboFormasDePagamento();
        $formulario
            ->setId(CO_TIPO_PAGAMENTO)
            ->setLabel("Formas De Pagamento")
            ->setClasses("multipla ob")
            ->setInfo("Selecione todas as formas de pagamentos aceitas.")
            ->setType(TiposCampoEnum::SELECT)
            ->setOptions($todasFormas)
            ->CriaInpunt();

        if (!empty($res[CO_FACILIDADE_BENEFICIO])):
            $formulario
                ->setType(TiposCampoEnum::HIDDEN)
                ->setId(CO_FACILIDADE_BENEFICIO)
                ->setValues($res[CO_FACILIDADE_BENEFICIO])
                ->CriaInpunt();
        endif;

        return $formulario->finalizaForm('Configuracao/FormasDePagamentoConfiguracao');
    }


}
