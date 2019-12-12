<?php

/**
 * DiaEspecialForm [ FORM ]
 * @copyright (c) 2018, Leo Bessa
 */
class DiaEspecialForm
{
    public static function Cadastrar($res = false)
    {
        $id = "CadastroDiaEspecial";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action,
            "Cadastrar");
        $formulario->setValor($res);

        $formulario
            ->setId(DT_DIA)
            ->setTamanhoInput(4)
            ->setClasses("data ob")
            ->setIcon("clip-calendar-3")
            ->setInfo("Dia de cadastro")
            ->setLabel("Data")
            ->CriaInpunt();

        $formulario
            ->setId(NU_HORA_ABERTURA)
            ->setTamanhoInput(4)
            ->setClasses("horas ob")
            ->setPlace("Formato 24Hrs")
            ->setIcon("clip-clock-2", "dir")
            ->setLabel("Hórario de Abertura")
            ->CriaInpunt();

        $formulario
            ->setId(NU_HORA_FECHAMENTO)
            ->setTamanhoInput(4)
            ->setClasses("horas ob")
            ->setPlace("Formato 24Hrs")
            ->setIcon("clip-clock-2", "dir")
            ->setLabel("Hórario de Fechamento")
            ->CriaInpunt();

        $formulario
            ->setType(TiposCampoEnum::TEXTAREA)
            ->setId(DS_MOTIVO)
            ->setLabel("Motivo")
            ->setClasses("ob")
            ->setInfo("Motivo do dia especial")
            ->CriaInpunt();


        if (!empty($res[CO_DIA_ESPECIAL])):
            $formulario
                ->setType(TiposCampoEnum::HIDDEN)
                ->setId(CO_DIA_ESPECIAL)
                ->setValues($res[CO_DIA_ESPECIAL])
                ->CriaInpunt();
        endif;

        return $formulario->finalizaForm('Configuracao/DiaEspecialConfiguracao');
    }


}
