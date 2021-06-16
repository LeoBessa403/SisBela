<?php

class Venda extends AbstractController
{
    public $result;
    public $form;

    public function Index()
    {

    }

    public function Assinatura()
    {
        /** @var AssinanteService $assinanteService */
        $assinanteService = $this->getService(ASSINANTE_SERVICE);

        if (!empty($_POST)):
            $retorno = $assinanteService->salvaAssinante($_POST);
            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/Index');
            }
        endif;
    }

    public static function getReferenciaPagamentoInscricao()
    {
        /** @var PlanoAssinanteAssinaturaService $PlanoAssinanteAssinaturaService */
        $PlanoAssinanteAssinaturaService = new PlanoAssinanteAssinaturaService();
        return $PlanoAssinanteAssinaturaService->getReferenciaPagamentoPlano();
    }
}