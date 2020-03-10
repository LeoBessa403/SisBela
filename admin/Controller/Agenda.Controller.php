<?php

class Agenda extends AbstractController
{
    public $result;
    public $form;
    public $formCancela;
    public $formPesquisa;
    public $agenda;

    public function CarregaAgendamentos()
    {
        /** @var AgendaService $agendaService */
        $agendaService = $this->getService(AGENDA_SERVICE);
        /** @var Session $session */
        $session = new Session();
        if ($session->CheckSession(PESQUISA_AVANCADA)) {
            $Condicoes = $session::getSession(PESQUISA_AVANCADA);
            $session->FinalizaSession(PESQUISA_AVANCADA);
            $session->FinalizaSession('pesq_agendamento');
        }
        $Condicoes['ta.' . CO_ASSINANTE] = AssinanteService::getCoAssinanteLogado();
        if (!$session->CheckSession('pesq_agendamento')) {
            $session->setSession('pesq_agendamento', $Condicoes);
        }
        $Condicoes = $session::getSession('pesq_agendamento');
        $agendas = $agendaService->PesquisaAgendamentos($Condicoes, 'tsa.dt_cadastro');
        $eventos = [];
        foreach ($agendas as $agenda) {
            if ($agenda[ST_STATUS] != StatusAgendamentoEnum::DELETADO) {
                $eve = array(
                    'id' => (int)$agenda[CO_AGENDA],
                    'title' => "Cliente: " . $agenda['cliente'] .
                        "\nProfissional: " . $agenda['profissional'] . "\nServiço: " . $agenda[NO_SERVICO] .
                        "\nAtualizado em: " . Valida::DataShow($agenda[DT_CADASTRO], 'd/m/Y H:i'),
                    'start' => Valida::DataShow($agenda[DT_INICIO_AGENDA], 'Y-m-d H:i'),
                    'end' => Valida::DataShow($agenda[DT_FIM_AGENDA], 'Y-m-d H:i'),
                    'className' => 'event-' . StatusAgendamentoEnum::$cores[$agenda[ST_STATUS]],
                    'allDay' => false,
                    'backgroundColor' => StatusAgendamentoEnum::$cores[$agenda[ST_STATUS]],
                );
                $eventos[] = $eve;
            }
        }
        return $eventos;
    }

    public function Agendamento($dados = null)
    {
        /** @var AgendaService $agendaService */
        $agendaService = $this->getService(AGENDA_SERVICE);
        if ($dados):
            return $agendaService->salvaAgendamentoAjax($dados);
        endif;
        /** @var Session $session */
        $session = new Session();
        if ($session->CheckSession(PESQUISA_AVANCADA)) {
            $Condicoes = $session::getSession(PESQUISA_AVANCADA);
        } else if ($session->CheckSession('pesq_agendamento')) {
            $session->FinalizaSession('pesq_agendamento');
        }
        $Condicoes['ta.' . CO_ASSINANTE] = AssinanteService::getCoAssinanteLogado();
        $this->result = $agendaService->PesquisaAgendamentos($Condicoes, 'tsa.dt_cadastro');

        $Condicoes = [];
        $Condicoes[CO_ASSINANTE] = AssinanteService::getCoAssinanteLogado();

        $this->form = AgendaForm::CadastroAgendamento();
        $this->formCancela = AgendaForm::DeletarAgendamento();
        $this->formPesquisa = AgendaForm::Pesquisar();
        return null;
    }

    public static function GetAgendaAjax($coAgenda)
    {
        /** @var AgendaService $agendaService */
        $agendaService = static::getServiceStatic(AGENDA_SERVICE);
        $Condicoes['ta.' . CO_AGENDA] = $coAgenda;
        $dados = $agendaService->PesquisaAgendamentos($Condicoes, 'tc.co_cliente, tp.co_profissional, 
        tsa.ds_observacao, ts.co_servico, ta.ds_motivo');
        $dados = $dados[0];
        $dados['dia'] = Valida::DataShow($dados[DT_INICIO_AGENDA], "d/m/Y");
        $dados['inicio'] = Valida::DataShow($dados[DT_INICIO_AGENDA], "H:i");
        $dados['fim'] = Valida::DataShow($dados[DT_FIM_AGENDA], "H:i");
        return $dados;
    }

    public static function DeletarAgendamento($dados)
    {
        /** @var AgendaService $agendaService */
        $agendaService = static::getServiceStatic(AGENDA_SERVICE);
        return $agendaService->DeletarAgendamento($dados);
    }

    public function GetUrlHistoricoAgendamento($coAgenda)
    {
        return ADMIN . '/Agenda/HistoricoAgendamento/' . Valida::GeraParametro(CO_AGENDA . "/" . $coAgenda);
    }

    public function HistoricoAgendamento()
    {
        /** @var AgendaService $agendaService */
        $agendaService = $this->getService(AGENDA_SERVICE);

        $coAgenda = UrlAmigavel::PegaParametro(CO_AGENDA);
        if ($coAgenda) {
            $this->agenda = $agendaService->PesquisaUmRegistro($coAgenda);
        } else {
            Notificacoes::geraMensagem(
                'Nenhum agendamento Encontrado.',
                TiposMensagemEnum::ALERTA
            );
            Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/Agendamento');
        }
    }

    public static function FinalizarAgendaAjax($coAgenda)
    {
        /** @var AgendaService $agendaService */
        $agendaService = static::getServiceStatic(AGENDA_SERVICE);
        return $agendaService->FinalizarAgendamento($coAgenda);
    }

    public static function DropAgendamentoAjax($dados)
    {
        /** @var AgendaService $agendaService */
        $agendaService = static::getServiceStatic(AGENDA_SERVICE);
        return $agendaService->DropAgendamentoAjax($dados);
    }

    public function AgendamentoPesquisaAvancada($dados)
    {
        /** @var Session $session */
        $session = new Session();
        if ($session->CheckSession(PESQUISA_AVANCADA)) {
            $session->FinalizaSession(PESQUISA_AVANCADA);
        }
        /** @var AgendaService $agendaService */
        $agendaService = static::getServiceStatic(AGENDA_SERVICE);
        $pesquisa = $agendaService->AgendamentoPesquisaAvancada($dados);

        $Condicoes = array(
            "tsa." . ST_STATUS => $pesquisa['st_status-pesquisa'],
            "tsa." . CO_CLIENTE => $pesquisa['co_cliente-pesquisa'],
            "tsa." . CO_PROFISSIONAL => $pesquisa['co_profissional-pesquisa'],
            "tsa." . CO_SERVICO => $pesquisa['co_servico-pesquisa'],
            ">=#tsa." . DT_INICIO_AGENDA => Valida::DataDBDate($pesquisa['dt1-pesquisa']) . " 00:00:00",
            "<=#tsa." . DT_FIM_AGENDA => Valida::DataDBDate($pesquisa['dt2-pesquisa']) . " 23:59:59"
        );
        $session->setSession(PESQUISA_AVANCADA, $Condicoes);
        $retorno[SUCESSO] = true;
        return $retorno;
    }
}