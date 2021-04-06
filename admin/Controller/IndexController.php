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

            $nuProf = $profissionalService->PesquisaTodos($Condicoes);
            $nuServ = $servicoService->PesquisaTodos($Condicoes);
            $nuCli = $clienteService->PesquisaTodos($Condicoes);


            $dados['MsgNaoLidas'] = SuporteService::PesquisaCountMensagens();
            $dados['agHoje'] = count($agHj);
            $dados['agMes'] = count($agMes);
            $dados['nuProf'] = count($nuProf);
            $dados['nuServ'] = count($nuServ);
            $dados['nuCli'] = count($nuCli);
        }

        /** @var AgendaService $agendaService */
        $agendaService = $this->getService(AGENDA_SERVICE);

        $Condicoes = array(
            ">=#tsa." . DT_INICIO_AGENDA =>
                Valida::DataDBDate(Valida::CalculaData(date("01/m/Y"), 3, "-", 'm'))
                . " 00:00:00",
            "<=#tsa." . DT_FIM_AGENDA =>
                Valida::DataDBDate(Valida::CalculaData(date("31/m/Y"), 1, "+", 'm'))
                . " 23:59:59",
            "ta." . CO_ASSINANTE => AssinanteService::getCoAssinanteLogado()
        );

        $agendas = $agendaService->PesquisaAgendamentos($Condicoes, 'tsa.dt_cadastro');

        $dados['temAgendamentos'] = count($agendas);

        $ttCliente = [];
        $ttProfissional = [];
        $ttServico = [];
        $ttStatus = [];
        $meses = [];

        foreach ($agendas as $agenda) {
            $mes_ag = Valida::DataShow($agenda["dt_inicio_agenda"], 'M');
            $mes_extenso = Valida::getMesesHistorico();
            $mes = $mes_extenso[$mes_ag];
            if ($agenda["cliente"]) {
                // SOMATORIO DE CLIENTE
                if (!empty($ttCliente[$agenda["cliente"]][$mes])) {
                    $ttCliente[$agenda["cliente"]][$mes]++;
                } else {
                    $ttCliente[$agenda["cliente"]][$mes] = 1;
                }
            }
            if ($agenda["profissional"]) {
                // SOMATORIO DE PROFISSIONAL
                if (!empty($ttProfissional[$mes][$agenda["profissional"]])) {
                    $ttProfissional[$mes][$agenda["profissional"]]++;
                } else {
                    $ttProfissional[$mes][$agenda["profissional"]] = 1;
                }
                // SOMATORIO DE PROFISSIONAL
                if (empty($ttProfissional["profissional"][$agenda["profissional"]])) {
                    $ttProfissional["profissional"][$agenda["profissional"]] = true;
                }
            }
            if ($agenda["no_servico"]) {
                // SOMATORIO DE SERVIÇO
                if (!empty($ttServico[$agenda["no_servico"]][$mes])) {
                    $ttServico[$agenda["no_servico"]][$mes]++;
                } else {
                    $ttServico[$agenda["no_servico"]][$mes] = 1;
                }
            }
            // SOMATORIO DE SERVIÇO
            if (!empty($ttStatus[$agenda["st_status"]])) {
                $ttStatus[$mes][$agenda["st_status"]]++;
            } else {
                $ttStatus[$mes][$agenda["st_status"]] = 1;
            }

            if (!in_array($mes, $meses)) {
                $meses[] = $mes;
            }
        }

        $qtdMeses = count($meses);
        if (!$meses) {
            $meses[0] = '';
            $meses[1] = '';
            $meses[2] = '';
            $meses[3] = '';
        }
        $meses[0] = (0 <= $qtdMeses) ? $meses[0] : '';
        $meses[1] = (1 < $qtdMeses) ? $meses[1] : '';
        $meses[2] = (2 < $qtdMeses) ? $meses[2] : '';
        $meses[3] = (3 < $qtdMeses) ? $meses[3] : '';

        $arrayMes = array("['Mês','" . $meses[0] . "','" . $meses[1] . "','" . $meses[2] . "','" .
            $meses[3] . "']");

        //  GRÁFICO CLIENTE
        $graficoCliente = $arrayMes;
        foreach ($ttCliente as $cliente => $agendamentos) {
            $valor1 = (!empty($agendamentos[$meses[0]])) ? $agendamentos[$meses[0]] : 0;
            $valor2 = (!empty($agendamentos[$meses[1]])) ? $agendamentos[$meses[1]] : 0;
            $valor3 = (!empty($agendamentos[$meses[2]])) ? $agendamentos[$meses[2]] : 0;
            $valor4 = (!empty($agendamentos[$meses[3]])) ? $agendamentos[$meses[3]] : 0;
            $graficoCliente[] = "['" . $cliente . "'," . $valor1 . "," . $valor2 . "," . $valor3 . "," .
                $valor4 . "]";
        }

        $grafico = new Grafico(Grafico::COLUNA, "Agendamentos por Cliente", "div_cliente");
        $grafico->SetDados($graficoCliente);
        $grafico->GeraGrafico();


        $array_inicial = "['Mês'";
        if (!empty($ttProfissional)) {
            foreach ($ttProfissional["profissional"] as $profissa => $termos) {
                $array_inicial .= ",'" . $profissa . "'";
            }
            $array_inicial .= "]";
            $profissionais = $ttProfissional["profissional"];
            unset($ttProfissional["profissional"]);
            // GRÁFICO PROFISSIONAL
            $graficoAtendimentos = array($array_inicial);
            foreach ($ttProfissional as $mes => $agendamentos) {
                $array_agendamentos = "['" . $mes . "'";
                foreach ($profissionais as $profissional => $teste) {
                    $agend = (!empty($agendamentos[$profissional])) ? $agendamentos[$profissional] : 0;
                    $array_agendamentos .= "," . $agend;
                }
                $array_agendamentos .= "]";
                $graficoAtendimentos[] = $array_agendamentos;
            }
            $grafico = new Grafico(Grafico::LINHA, "Agendamentos por Profissional", "div_profissional");
            $grafico->SetDados($graficoAtendimentos);
            $grafico->GeraGrafico();
        }


        // GRÁFICO SERVIÇO
        $graficoServico = $arrayMes;
        foreach ($ttServico as $servico => $agendamentos) {
            $valor1 = (!empty($agendamentos[$meses[0]])) ? $agendamentos[$meses[0]] : 0;
            $valor2 = (!empty($agendamentos[$meses[1]])) ? $agendamentos[$meses[1]] : 0;
            $valor3 = (!empty($agendamentos[$meses[2]])) ? $agendamentos[$meses[2]] : 0;
            $valor4 = (!empty($agendamentos[$meses[3]])) ? $agendamentos[$meses[3]] : 0;
            $graficoServico[] = "['" . $servico . "'," . $valor1 . "," . $valor2 . "," . $valor3 . "," .
                $valor4 . "]";
        }

        $grafico = new Grafico(Grafico::COLUNA, "Agendamentos por Serviço", "div_servico");
        $grafico->SetDados($graficoServico);
        $grafico->GeraGrafico();


        $i = 5; // Mês do Gráfico
        $ttStatus = array_reverse($ttStatus);
        // GRÁFICO STATUS
        foreach ($ttStatus as $st_pag => $agendamentos) {
            $graficoStAg = array();
            $graficoStAg[] = "['Agendamentos','Status']";
            foreach ($agendamentos as $chave_pag => $qtd) {
                $graficoStAg[] = "['" . StatusAgendamentoEnum::getDescricaoValor($chave_pag) . "'," . $qtd . "]";
            }
            // GRAFICO PIZZA
            $grafico = new Grafico(Grafico::PIZZA, "Agendamentos / " . $st_pag, "div_status" . $i);
            $grafico->SetDados($graficoStAg);
            $grafico->GeraGrafico();
            $i--;
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