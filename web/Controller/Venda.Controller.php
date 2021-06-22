<?php

class Venda extends AbstractController
{
    public $result;
    public $form;

    public function Index()
    {
        /** @var PlanoService $planoService */
        $planoService = $this->getService(PLANO_SERVICE);
        $this->result = $planoService->PesquisaTodos([
            ST_STATUS => StatusAcessoEnum::ATIVO
        ]);

        /** @var AgendaService $agendaService */
        $agendaService = $this->getService(AGENDA_SERVICE);

        $coAgenda = UrlAmigavel::PegaParametro(CO_AGENDA);
        if ($coAgenda) {
            $this->agenda = $agendaService->PesquisaUmRegistro($coAgenda);
        }
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

    public static function getValorPlano($coPlano)
    {
        /** @var PlanoService $planoService */
        $planoService = static::getServiceStatic(PLANO_SERVICE);
        return $planoService->getValorPlano($coPlano);
    }
}