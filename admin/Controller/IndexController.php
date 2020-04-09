<?php

class IndexController extends AbstractController
{
    public function Index()
    {
        $dados = [];

        /** @var Session $session */
        $session = new Session();

        if ($session->CheckSession(SESSION_USER)) {

            /** @var AgendaService $agendaService */
            $agendaService = $this->getService(AGENDA_SERVICE);
            /** @var ClienteService $clienteService */
            $clienteService = $this->getService(CLIENTE_SERVICE);
            /** @var ProfissionalService $profissionalService */
            $profissionalService = $this->getService(PROFISSIONAL_SERVICE);
            /** @var ServicoService $servicoService */
            $servicoService = $this->getService(SERVICO_SERVICE);

            $Condicoes[CO_ASSINANTE] = AssinanteService::getCoAssinanteLogado();

            $CondicoesagHj = array(
                "ta." . CO_ASSINANTE => AssinanteService::getCoAssinanteLogado(),
                ">=#tsa." . DT_INICIO_AGENDA => Valida::DataAtualBanco() . " 00:00:00",
                "<=#tsa." . DT_FIM_AGENDA => Valida::DataAtualBanco() . " 23:59:59"
            );
            $agHj = $agendaService->PesquisaAgendamentos($CondicoesagHj);

            $CondicoesagMes = array(
                "ta." . CO_ASSINANTE => AssinanteService::getCoAssinanteLogado(),
                ">=#tsa." . DT_INICIO_AGENDA => date("Y-m-01") . " 00:00:00",
                "<=#tsa." . DT_FIM_AGENDA => date("Y-m-31") . " 23:59:59"
            );
            $agMes = $agendaService->PesquisaAgendamentos($CondicoesagMes);

            $agMesFinal = 0;
            $agMesFaltou = 0;
            $agMesCanc = 0;
            $agMesAge = 0;
            $agMesConf = 0;
            $agMesDel = 0;
            foreach ($agMes as $agendamento) {
                switch ($agendamento["st_status"]) {
                    case StatusAgendamentoEnum::FINALIZADO:
                        $agMesFinal++;
                        break;
                    case StatusAgendamentoEnum::FALTOU:
                        $agMesFaltou++;
                        break;
                    case StatusAgendamentoEnum::CANCELADO:
                        $agMesCanc++;
                        break;
                    case StatusAgendamentoEnum::AGENDADO:
                        $agMesAge++;
                        break;
                    case StatusAgendamentoEnum::CONFIRMADO:
                        $agMesConf++;
                        break;
                    case StatusAgendamentoEnum::DELETADO:
                        $agMesDel++;
                        break;
                }
            }


            $nuProf = $profissionalService->PesquisaTodos($Condicoes);
            $nuServ = $servicoService->PesquisaTodos($Condicoes);
            $nuCli = $clienteService->PesquisaTodos($Condicoes);


            $dados['MsgNaoLidas'] = SuporteService::PesquisaCountMensagens();
            $dados['agHoje'] = count($agHj);
            $dados['agMes'] = count($agMes);
            $dados['agMesFinal'] = $agMesFinal;
            $dados['agMesFaltou'] = $agMesFaltou;
            $dados['agMesCanc'] = $agMesCanc;
            $dados['agMesAge'] = $agMesAge;
            $dados['agMesConf'] = $agMesConf;
            $dados['agMesDel'] = $agMesDel;
            $dados['nuProf'] = count($nuProf);
            $dados['nuServ'] = count($nuServ);
            $dados['nuCli'] = count($nuCli);
        }

        return $dados;
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
            /** @var StatusAgendaService $statusAgendaService */
            $statusAgendaService = $this->getService(STATUS_AGENDA_SERVICE);
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
                $dados[CO_CLIENTE] = $statusAgenda->getCoCliente();
                $dados[CO_PROFISSIONAL] = $statusAgenda->getCoProfissional();
                $dados[CO_SERVICO] = $statusAgenda->getCoServico();
                $dados[CO_USUARIO] = CO_USUARIO_PADRAO;
                $dados[DT_CADASTRO] = Valida::DataAtualBanco() . ' 00:00:01';
                switch ($statusAgenda->getStStatus()) {
                    case StatusAgendamentoEnum::AGENDADO:
                    case StatusAgendamentoEnum::CONFIRMADO:
                        $dados[ST_STATUS] = StatusAgendamentoEnum::FALTOU;
                        $dados[DS_OBSERVACAO] = 'Mudou para o Status (Faltou) automaticamente pelo Sistema';
                        break;
                    case StatusAgendamentoEnum::AGUARDANDO:
                    case StatusAgendamentoEnum::EM_ATENDIMENTO:
                        $dados[ST_STATUS] = StatusAgendamentoEnum::CANCELADO;
                        $dados[DS_OBSERVACAO] = 'Mudou para o Status (Cancelado) automaticamente pelo Sistema';
                        break;
                }
                $statusAgendaService->Salva($dados);
            }
        }
    }
}