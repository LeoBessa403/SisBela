<?php

class Relatorio extends AbstractController
{
    public $result;

    public function GraficoRelatorio()
    {
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
                if (!empty($ttProfissional[$agenda["profissional"]][$mes])) {
                    $ttProfissional[$agenda["profissional"]][$mes]++;
                } else {
                    $ttProfissional[$agenda["profissional"]][$mes] = 1;
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

        // GRÁFICO PROFISSIONAL
        $graficoProfissional = $arrayMes;
        foreach ($ttProfissional as $profissional => $agendamentos) {
            $valor1 = (!empty($agendamentos[$meses[0]])) ? $agendamentos[$meses[0]] : 0;
            $valor2 = (!empty($agendamentos[$meses[1]])) ? $agendamentos[$meses[1]] : 0;
            $valor3 = (!empty($agendamentos[$meses[2]])) ? $agendamentos[$meses[2]] : 0;
            $valor4 = (!empty($agendamentos[$meses[3]])) ? $agendamentos[$meses[3]] : 0;
            $graficoProfissional[] = "['" . $profissional . "'," . $valor1 . "," . $valor2 . "," . $valor3 . "," .
                $valor4 . "]";
        }

        $grafico = new Grafico(Grafico::COLUNA, "Agendamentos por Profissional", "div_profissional");
        $grafico->SetDados($graficoProfissional);
        $grafico->GeraGrafico();

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
            $grafico = new Grafico(Grafico::PIZZA, "Agendamentos / " . $st_pag, "div_status" . $i );
            $grafico->SetDados($graficoStAg);
            $grafico->GeraGrafico();
            $i--;
        }

    }


}