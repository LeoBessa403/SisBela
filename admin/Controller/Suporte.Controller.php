<?php

class Suporte extends AbstractController
{
    public $result;
    public $form;

    public function ListarSuporte()
    {
        /** @var SuporteService $suporteService */
        $suporteService = $this->getService(SUPORTE_SERVICE);
        $this->result = $suporteService->PesquisaTodos([
            CO_ASSINANTE => AssinanteService::getCoAssinanteLogado()
        ]);

    }

    public function CadastroSuporte()
    {
        /** @var SuporteService $suporteService */
        $suporteService = $this->getService(SUPORTE_SERVICE);

        $id = "cadastroSuporte";

        if (!empty($_POST[$id])):
            $retorno = $suporteService->salvaSuporte($_POST, $_FILES);
            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/ListarSuporte/');
            }
        endif;


        $this->form = SuporteForm::Cadastrar();

    }


}