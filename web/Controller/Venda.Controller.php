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
        debug($_POST,1);

    }

    public static function getReferenciaPagamentoInscricao()
    {
        /** @var PlanoAssinanteAssinaturaService $PlanoAssinanteAssinaturaService */
        $PlanoAssinanteAssinaturaService = new PlanoAssinanteAssinaturaService();
        return $PlanoAssinanteAssinaturaService->getReferenciaPagamentoInscricao();
    }
}