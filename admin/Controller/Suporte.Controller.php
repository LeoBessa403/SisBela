<?php

class Suporte extends AbstractController
{
    public $result;
    public $form;
    public $mensagem;

    public function ListarSuporte()
    {
        /** @var SuporteService $suporteService */
        $suporteService = $this->getService(SUPORTE_SERVICE);
        /** @var HistoricoSuporteService $historicoSuporteService */
        $historicoSuporteService = $this->getService(HISTORICO_SUPORTE_SERVICE);
        $mensagem = null;
        $coSuporte = UrlAmigavel::PegaParametro(CO_SUPORTE);
        if ($coSuporte) {
            /** @var SuporteEntidade $mensagem */
            $mensagem = $suporteService->PesquisaUmRegistro($coSuporte);
            $historicoSuporteService->Salva([ST_LIDO => SimNaoEnum::SIM],
                $mensagem->getCoUltimaMensagem()->getCoHistoricoSuporte());
        }
        $this->mensagem = $mensagem;
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