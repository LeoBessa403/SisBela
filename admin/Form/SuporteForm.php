<?php

/**
 * HistoriaForm [ FORM ]
 * @copyright (c) 2017, Leo Bessa
 */
class SuporteForm
{
    public static function Cadastrar($res = false)
    {
        $id = "cadastroSuporte";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action,
            "Enviar", 6);

        $label_options = TipoAssuntoEnum::$descricao;
        $formulario
            ->setLabel("Tipo do Assunto")
            ->setId(ST_TIPO_ASSUNTO)
            ->setClasses("ob")
            ->setType(TiposCampoEnum::SELECT)
            ->setOptions($label_options)
            ->CriaInpunt();

        $formulario
            ->setId(DS_ASSUNTO)
            ->setClasses("ob")
            ->setLabel("Título do Suporte")
            ->CriaInpunt();

        $formulario
            ->setId(DS_CAMINHO)
            ->setType(TiposCampoEnum::SINGLEFILE)
            ->setInfo("Anexo")
            ->setLabel("Foto Imagem")
            ->CriaInpunt();

        $formulario
            ->setType(TiposCampoEnum::TEXTAREA)
//            ->setClasses("ckeditor")
            ->setClasses("ob")
            ->setId(DS_MENSAGEM)
            ->setLabel("Mensagem")
            ->CriaInpunt();

        if (!empty($res[CO_SUPORTE])):
            $formulario
                ->setType(TiposCampoEnum::HIDDEN)
                ->setId(CO_SUPORTE)
                ->setValues($res[CO_SUPORTE])
                ->CriaInpunt();
        endif;

        return $formulario->finalizaForm();
    }
}

?>
   