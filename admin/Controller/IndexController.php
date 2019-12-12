<?php

class IndexController extends AbstractController
{
    public function Index()
    {
//        /** @var ProdutoService $produtoService */
//        $produtoService = $this->getService(PRODUTO_SERVICE);
//        $produtos = $produtoService->PesquisaTodos();
//
//        /** @var CategoriaService $categoriaService */
//        $categoriaService = $this->getService(CATEGORIA_SERVICE);
//        $categorias = $categoriaService->PesquisaTodos();
//
//        /** @var FabricanteService $fabricanteService */
//        $fabricanteService = $this->getService(FABRICANTE_SERVICE);
//        $fabricantes = $fabricanteService->PesquisaTodos();
//
//        /** @var ProdutoDetalheService $produtoDetalheService */
//        $produtoDetalheService = $this->getService(PRODUTO_DETALHE_SERVICE);
//        $produtosDestaque = $produtoDetalheService->PesquisaProdutosDestaque();
//
//        $produtosSemEstoque = $produtoService->PesquisaProdutosSemEstoque();
//        $produtosNovos = $produtoService->PesquisaProdutosNovos(30); // Dias passados para compara
//        $produtosMaisVisitados = $produtoService->PesquisaProdutosMaisVisitados();
//
//        $dados['ProdutosCadastrados'] = count($produtos);
//        $dados['FabricantesCadastrados'] = count($fabricantes);
//        $dados['CategoriasCadastrados'] = count($categorias);
//        $dados['ProdutosDestaque'] = count($produtosDestaque);
//        $dados['MaisVisitados'] = count($produtosMaisVisitados);
//        $dados['MaisVendidos'] = 0;
//        $dados['ProdutosSemEstoque'] = count($produtosSemEstoque);
//        $dados['NovosProdutos'] = count($produtosNovos);
//        $dados['MaisProdurados'] = 0;

        return [];
    }

    public function CronExecute()
    {
        $this->charset = 'utf8';
        $conn = new ObjetoPDO();
        $conn = $conn->inicializarConexao();
        $result = mysqli_query($conn,
            "SELECT * FROM
                      tb_agenda age
                      INNER JOIN tb_status_agenda stage
                        ON stage.co_agenda = age.co_agenda
                    WHERE
                      dt_fim_agenda < SYSDATE()
                      AND st_status IN (1, 2, 3, 4)
                      AND stage.co_status_agenda =
                          (SELECT max(stage2.co_status_agenda)
                           FROM tb_status_agenda stage2
                           WHERE stage2.co_agenda = age.co_agenda)");

        $agendas = [];
        while ($row = mysqli_fetch_row($result)) {
            $agendas[] = $row[0];
        }

        if (!empty($agendas)) {
            /** @var AgendaService $agendaService */
            $agendaService = $this->getService(AGENDA_SERVICE);
            $TodasAgendaStatus = $agendaService->PesquisaTodos([
                CO_AGENDA => implode(', ', $agendas)
            ]);
            /** @var AgendaEntidade $Agenda */
            foreach ($TodasAgendaStatus as $Agenda) {
                $statusAgenda = $Agenda->getCoUltimoStatusAgenda();
                $dados[CO_AGENDA] = $statusAgenda->getCoAgenda()->getCoAgenda();
                $dados[DT_INICIO_AGENDA] = $statusAgenda->getDtInicioAgenda();
                $dados[DT_FIM_AGENDA] = $statusAgenda->getDtFimAgenda();
                $dados[NU_VALOR] = $statusAgenda->getNuValor();
                $dados[NU_DURACAO] = $statusAgenda->getNuDuracao();
                $dados[CO_CLIENTE] = $statusAgenda->getCoCliente()->getCoCliente();
                switch ($statusAgenda->getStStatus()) {
                    case StatusAgendamentoEnum::AGENDADO:
                    case StatusAgendamentoEnum::CONFIRMADO:
                        $dados[ST_STATUS] = StatusAgendamentoEnum::FALTOU;
                        break;
                    case StatusAgendamentoEnum::AGUARDANDO:
                    case StatusAgendamentoEnum::EM_ATENDIMENTO:
                        $dados[ST_STATUS] = StatusAgendamentoEnum::CANCELADO;
                        break;
                }
                /** @var StatusAgendaServicoEntidade $statusAgendaServico */
                foreach ($statusAgenda->getCoStatusAgendaServico() as $statusAgendaServico) {

                    /** @var StatusAgendaServicoService $statusAgendaServicoService */
                    $statusAgendaServicoService = $this->getService(STATUS_AGENDA_SERVICO_SERVICE);
                    /** @var StatusAgendaServicoEntidade $statusAgendaServico */
                    $statusAgendaServico = $statusAgendaServicoService->PesquisaUmRegistro($statusAgendaServico->getCoStatusAgendaServico());
                    $dados[CO_SERVICO] = $statusAgendaServico->getCoServico()->getCoServico();

                    /** @var StatusAgendaProfissionalEntidade $statusAgendaProfissional */
                    foreach ($statusAgendaServico->getCoStatusAgendaProfissional() as $statusAgendaProfissional) {
                        if ($statusAgendaProfissional->getTpProfissional() == 1 &&
                            !empty($statusAgendaProfissional->getCoProfissional())) {
                            $dados[CO_PROFISSIONAL] = $statusAgendaProfissional->getCoProfissional()->getCoProfissional();
                        } else if ($statusAgendaProfissional->getTpProfissional() == 2 &&
                            !empty($statusAgendaProfissional->getCoProfissional())) {
                            $dados['co_assistente'] = $statusAgendaProfissional->getCoProfissional()->getCoProfissional();
                        }
                    }

                }
                $agendaService->cronStatusAgenda($dados);
            }
        }
    }
}