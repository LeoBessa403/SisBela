<?php

/**
 * AgendaService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  AgendaService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(AgendaEntidade::ENTIDADE);
        $this->ObjetoModel = New AgendaModel();
    }

    public function PesquisaAgendamentos($Condicoes, $maisCampos = null)
    {
        return $this->ObjetoModel->PesquisaAgendamentos($Condicoes, $maisCampos);
    }

    /**
     * @param $dados
     * @return array|AssinanteValidador
     */
    public function salvaAgendamentoAjax($dados)
    {
        $dados = Valida::montaArrayAjax($dados);

        /** @var StatusAgendaService $statusAgendaService */
        $statusAgendaService = $this->getService(STATUS_AGENDA_SERVICE);
        /** @var StatusAgendaServicoService $statusAgendaServicoService */
        $statusAgendaServicoService = $this->getService(STATUS_AGENDA_SERVICO_SERVICE);
        /** @var StatusAgendaProfissionalService $statusAgendaProfissionalService */
        $statusAgendaProfissionalService = $this->getService(STATUS_AGENDA_PROFISSIONAL_SERVICE);
        /** @var PDO $PDO */
        $PDO = $this->getPDO();
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];

        $PDO->beginTransaction();

        /** @var ServicoService $servicoService */
        $servicoService = $this->getService(SERVICO_SERVICE);
        /** @var ServicoEntidade $servico */
        $servico = $servicoService->PesquisaUmRegistro($dados[CO_SERVICO]);
        $validaAssistente = false;
        if ($servico->getStAssistente() == SimNaoEnum::SIM) {
            $validaAssistente = true;
        }

        $agendaValidador = new AgendaValidador();
        /** @var AgendaValidador $validador */
        $validador = $agendaValidador->validarAgendamento($dados, $validaAssistente);
        if ($validador[SUCESSO]) {

            if (!empty($dados[CO_AGENDA])) {
                $statusAgenda[CO_AGENDA] = $dados[CO_AGENDA];
                $retorno[MSG] = ATUALIZADO;
            } else {
                $agenda[DT_CADASTRO] = Valida::DataHoraAtualBanco();
                $agenda[CO_ASSINANTE] = AssinanteService::getCoAssinanteLogado();
                $statusAgenda[CO_AGENDA] = $this->Salva($agenda);
                $retorno[MSG] = CADASTRADO;
            }

            $statusAgenda[DT_CADASTRO] = Valida::DataHoraAtualBanco();
            $statusAgenda[ST_STATUS] = $dados[ST_STATUS];
            $statusAgenda[DT_INICIO_AGENDA] = Valida::DataDB($dados['dt_agenda'] . ' ' .
                $dados['nu_hora_inicio_agenda'] . ':00');
            $statusAgenda[DT_FIM_AGENDA] = Valida::DataDB($dados['dt_agenda'] . ' ' .
                $dados['nu_hora_fim_agenda'] . ':00');
            $statusAgenda[NU_VALOR] = $dados[NU_VALOR];
            $statusAgenda[NU_DURACAO] = $dados[NU_DURACAO];
            $statusAgenda[DS_OBSERVACAO] = $dados[DS_OBSERVACAO];
            $statusAgenda[CO_USUARIO] = UsuarioService::getCoUsuarioLogado();
            $statusAgenda[CO_CLIENTE] = $dados[CO_CLIENTE];
            $statusAgendaServico[CO_STATUS_AGENDA] = $statusAgendaService->Salva($statusAgenda);

            $statusAgendaServico[CO_SERVICO] = $dados[CO_SERVICO];

            switch ($statusAgenda[ST_STATUS]) {
                case StatusAgendamentoEnum::EM_ATENDIMENTO:
                    $statusAgendaServico[ST_STATUS] = StatusAtendimentoEnum::INICIADO;
                    break;
                case StatusAgendamentoEnum::FINALIZADO:
                    $statusAgendaServico[ST_STATUS] = StatusAtendimentoEnum::CONCLUIDO;
                    break;
                default:
                    $statusAgendaServico[ST_STATUS] = StatusAtendimentoEnum::NAO_INICIADO;
                    break;
            }

            $statusAgendaProfissional[CO_STATUS_AGENDA_SERVICO] = $statusAgendaServicoService->Salva($statusAgendaServico);
            $statusAgendaProfissional[CO_STATUS_AGENDA] = $statusAgendaServico[CO_STATUS_AGENDA];

            if (!empty($dados[CO_PROFISSIONAL])) {
                $statusAgendaProfissional[CO_PROFISSIONAL] = $dados[CO_PROFISSIONAL];
            } else {
                $statusAgendaProfissional[CO_PROFISSIONAL] = null;
            }
            $statusAgendaProfissional[TP_PROFISSIONAL] = 1;
            $retorno[SUCESSO] = $statusAgendaProfissionalService->Salva($statusAgendaProfissional);

            if (!empty($dados['co_assistente'])) {
                $statusAgendaProfissional[CO_PROFISSIONAL] = $dados['co_assistente'];
            } else {
                unset($statusAgendaProfissional[CO_PROFISSIONAL]);
            }
            $statusAgendaProfissional[TP_PROFISSIONAL] = 2;
            $retorno[SUCESSO] = $statusAgendaProfissionalService->Salva($statusAgendaProfissional);
        } else {
            $retorno = $validador;
        }

        if ($retorno[SUCESSO]) {
            $retorno[SUCESSO] = true;
            $PDO->commit();
        } else {
            $retorno[MSG] = $validador[MSG];
            $retorno[SUCESSO] = false;
            $PDO->rollBack();
        }

        return $retorno;
    }


    /**
     * @param $dados
     * @return array|AssinanteValidador
     */
    public function DeletarAgendamento($dados)
    {
        /** @var AgendaService $agendaService */
        $agendaService = $this->getService(AGENDA_SERVICE);
        /** @var StatusAgendaService $statusAgendaService */
        $statusAgendaService = $this->getService(STATUS_AGENDA_SERVICE);
        /** @var StatusAgendaServicoService $statusAgendaServicoService */
        $statusAgendaServicoService = $this->getService(STATUS_AGENDA_SERVICO_SERVICE);
        /** @var StatusAgendaProfissionalService $statusAgendaProfissionalService */
        $statusAgendaProfissionalService = $this->getService(STATUS_AGENDA_PROFISSIONAL_SERVICE);
        /** @var PDO $PDO */
        $PDO = $this->getPDO();
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];

        $PDO->beginTransaction();

        $agendaValidador = new AgendaValidador();
        /** @var AgendaValidador $validador */
        $validador = $agendaValidador->validarDeletarAgendamento($dados);
        if ($validador[SUCESSO]) {
            $retorno[MSG] = DELETADO;
            $agenda[DS_MOTIVO] = trim($dados[DS_MOTIVO]);
            $this->Salva($agenda, $dados[CO_AGENDA]);

            $agenda = $agendaService->PesquisaAgendamentos([
                'age.' . CO_AGENDA => $dados[CO_AGENDA]
            ], 'cli.co_cliente, pro.co_profissional, pro2.co_profissional as co_assistente,
                stag.nu_valor, stag.nu_duracao, stag.ds_observacao, ser.co_servico');

            $agenda = $agenda[0];

            $statusAgenda[CO_AGENDA] = $dados[CO_AGENDA];
            $statusAgenda[DT_CADASTRO] = Valida::DataHoraAtualBanco();
            $statusAgenda[ST_STATUS] = StatusAgendamentoEnum::DELETADO;
            $statusAgenda[DT_INICIO_AGENDA] = $agenda[DT_INICIO_AGENDA];
            $statusAgenda[DT_FIM_AGENDA] = $agenda[DT_FIM_AGENDA];
            $statusAgenda[NU_VALOR] = $agenda[NU_VALOR];
            $statusAgenda[NU_DURACAO] = $agenda[NU_DURACAO];
            $statusAgenda[DS_OBSERVACAO] = $agenda[DS_OBSERVACAO];
            $statusAgenda[CO_USUARIO] = UsuarioService::getCoUsuarioLogado();
            $statusAgenda[CO_CLIENTE] = $agenda[CO_CLIENTE];
            $statusAgendaServico[CO_STATUS_AGENDA] = $statusAgendaService->Salva($statusAgenda);

            $statusAgendaServico[CO_SERVICO] = $agenda[CO_SERVICO];

            switch ($statusAgenda[ST_STATUS]) {
                case StatusAgendamentoEnum::EM_ATENDIMENTO:
                    $statusAgendaServico[ST_STATUS] = StatusAtendimentoEnum::INICIADO;
                    break;
                case StatusAgendamentoEnum::FINALIZADO:
                    $statusAgendaServico[ST_STATUS] = StatusAtendimentoEnum::CONCLUIDO;
                    break;
                default:
                    $statusAgendaServico[ST_STATUS] = StatusAtendimentoEnum::NAO_INICIADO;
                    break;
            }

            $statusAgendaProfissional[CO_STATUS_AGENDA_SERVICO] = $statusAgendaServicoService->Salva($statusAgendaServico);
            $statusAgendaProfissional[CO_STATUS_AGENDA] = $statusAgendaServico[CO_STATUS_AGENDA];

            $statusAgendaProfissional[CO_PROFISSIONAL] = $agenda[CO_PROFISSIONAL];
            $statusAgendaProfissional[TP_PROFISSIONAL] = 1;
            $retorno[SUCESSO] = $statusAgendaProfissionalService->Salva($statusAgendaProfissional);

            if (!empty($agenda['co_assistente'])) {
                $statusAgendaProfissional[CO_PROFISSIONAL] = $agenda['co_assistente'];
            } else {
                unset($statusAgendaProfissional[CO_PROFISSIONAL]);
            }
            $statusAgendaProfissional[TP_PROFISSIONAL] = 2;
            $retorno[SUCESSO] = $statusAgendaProfissionalService->Salva($statusAgendaProfissional);
        } else {
            $retorno = $validador;
        }

        if ($retorno[SUCESSO]) {
            $retorno[SUCESSO] = true;
            $PDO->commit();
        } else {
            $retorno[MSG] = $validador[MSG];
            $retorno[SUCESSO] = false;
            $PDO->rollBack();
        }

        return $retorno;
    }

    /**
     * @param $dados
     * @return array|AssinanteValidador
     */
    public function FinalizarAgendamento($dados)
    {
        /** @var AgendaService $agendaService */
        $agendaService = $this->getService(AGENDA_SERVICE);
        /** @var StatusAgendaService $statusAgendaService */
        $statusAgendaService = $this->getService(STATUS_AGENDA_SERVICE);
        /** @var StatusAgendaServicoService $statusAgendaServicoService */
        $statusAgendaServicoService = $this->getService(STATUS_AGENDA_SERVICO_SERVICE);
        /** @var StatusAgendaProfissionalService $statusAgendaProfissionalService */
        $statusAgendaProfissionalService = $this->getService(STATUS_AGENDA_PROFISSIONAL_SERVICE);
        /** @var PDO $PDO */
        $PDO = $this->getPDO();
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];

        $PDO->beginTransaction();

        $agendaValidador = new AgendaValidador();
        /** @var AgendaValidador $validador */
        $validador = $agendaValidador->validarFinalizarAgendamento($dados);
        if ($validador[SUCESSO]) {
            $retorno[MSG] = ATUALIZADO;

            $agenda = $agendaService->PesquisaAgendamentos([
                'age.' . CO_AGENDA => $dados[CO_AGENDA]
            ], 'cli.co_cliente, pro.co_profissional, pro2.co_profissional as co_assistente,
                stag.nu_valor, stag.nu_duracao, stag.ds_observacao, ser.co_servico');

            $agenda = $agenda[0];

            $statusAgenda[CO_AGENDA] = $dados[CO_AGENDA];
            $statusAgenda[DT_CADASTRO] = Valida::DataHoraAtualBanco();
            $statusAgenda[ST_STATUS] = StatusAgendamentoEnum::FINALIZADO;
            $statusAgenda[DT_INICIO_AGENDA] = $agenda[DT_INICIO_AGENDA];
            $statusAgenda[DT_FIM_AGENDA] = $agenda[DT_FIM_AGENDA];
            $statusAgenda[NU_VALOR] = $agenda[NU_VALOR];
            $statusAgenda[NU_DURACAO] = $agenda[NU_DURACAO];
            $statusAgenda[DS_OBSERVACAO] = $agenda[DS_OBSERVACAO];
            $statusAgenda[CO_USUARIO] = UsuarioService::getCoUsuarioLogado();
            $statusAgenda[CO_CLIENTE] = $agenda[CO_CLIENTE];
            $statusAgendaServico[CO_STATUS_AGENDA] = $statusAgendaService->Salva($statusAgenda);

            $statusAgendaServico[CO_SERVICO] = $agenda[CO_SERVICO];
            $statusAgendaServico[ST_STATUS] = StatusAtendimentoEnum::CONCLUIDO;

            $statusAgendaProfissional[CO_STATUS_AGENDA_SERVICO] = $statusAgendaServicoService->Salva($statusAgendaServico);
            $statusAgendaProfissional[CO_STATUS_AGENDA] = $statusAgendaServico[CO_STATUS_AGENDA];

            $statusAgendaProfissional[CO_PROFISSIONAL] = $agenda[CO_PROFISSIONAL];
            $statusAgendaProfissional[TP_PROFISSIONAL] = 1;
            $retorno[SUCESSO] = $statusAgendaProfissionalService->Salva($statusAgendaProfissional);
            if (!empty($agenda['co_assistente'])) {
                $statusAgendaProfissional[CO_PROFISSIONAL] = $agenda['co_assistente'];
            } else {
                unset($statusAgendaProfissional[CO_PROFISSIONAL]);
            }
            $statusAgendaProfissional[TP_PROFISSIONAL] = 2;
            $retorno[SUCESSO] = $statusAgendaProfissionalService->Salva($statusAgendaProfissional);
        } else {
            $retorno = $validador;
        }

        if ($retorno[SUCESSO]) {
            $retorno[SUCESSO] = true;
            $PDO->commit();
        } else {
            $retorno[MSG] = $validador[MSG];
            $retorno[SUCESSO] = false;
            $PDO->rollBack();
        }

        return $retorno;
    }

    /**
     * @param $dados
     * @return array|AssinanteValidador
     */
    public function DropAgendamentoAjax($dados)
    {
        /** @var AgendaService $agendaService */
        $agendaService = $this->getService(AGENDA_SERVICE);
        /** @var StatusAgendaService $statusAgendaService */
        $statusAgendaService = $this->getService(STATUS_AGENDA_SERVICE);
        /** @var StatusAgendaServicoService $statusAgendaServicoService */
        $statusAgendaServicoService = $this->getService(STATUS_AGENDA_SERVICO_SERVICE);
        /** @var StatusAgendaProfissionalService $statusAgendaProfissionalService */
        $statusAgendaProfissionalService = $this->getService(STATUS_AGENDA_PROFISSIONAL_SERVICE);
        /** @var PDO $PDO */
        $PDO = $this->getPDO();
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];

        $PDO->beginTransaction();

        $agendaValidador = new AgendaValidador();
        /** @var AgendaValidador $validador */
        $validador = $agendaValidador->validarDropAgendamento($dados);
        if ($validador[SUCESSO]) {
            $retorno[MSG] = ATUALIZADO;

            $agenda = $agendaService->PesquisaAgendamentos([
                'age.' . CO_AGENDA => $dados[CO_AGENDA]
            ], 'cli.co_cliente, pro.co_profissional, pro2.co_profissional as co_assistente,
                stag.nu_valor, stag.nu_duracao, stag.ds_observacao, ser.co_servico');

            $agenda = $agenda[0];

            $statusAgenda[CO_AGENDA] = $dados[CO_AGENDA];
            $statusAgenda[DT_CADASTRO] = Valida::DataHoraAtualBanco();
            $statusAgenda[ST_STATUS] = $agenda[ST_STATUS];
            $statusAgenda[DT_INICIO_AGENDA] = $dados[DT_INICIO_AGENDA];
            $statusAgenda[DT_FIM_AGENDA] = $dados[DT_FIM_AGENDA];
            $statusAgenda[NU_VALOR] = $agenda[NU_VALOR];
            $statusAgenda[NU_DURACAO] = $agenda[NU_DURACAO];
            $statusAgenda[DS_OBSERVACAO] = $agenda[DS_OBSERVACAO];
            $statusAgenda[CO_USUARIO] = UsuarioService::getCoUsuarioLogado();
            $statusAgenda[CO_CLIENTE] = $agenda[CO_CLIENTE];
            $statusAgendaServico[CO_STATUS_AGENDA] = $statusAgendaService->Salva($statusAgenda);

            $statusAgendaServico[CO_SERVICO] = $agenda[CO_SERVICO];
            $statusAgendaServico[ST_STATUS] = StatusAtendimentoEnum::NAO_INICIADO;

            $statusAgendaProfissional[CO_STATUS_AGENDA_SERVICO] = $statusAgendaServicoService->Salva($statusAgendaServico);
            $statusAgendaProfissional[CO_STATUS_AGENDA] = $statusAgendaServico[CO_STATUS_AGENDA];

            $statusAgendaProfissional[CO_PROFISSIONAL] = $agenda[CO_PROFISSIONAL];
            $statusAgendaProfissional[TP_PROFISSIONAL] = 1;
            $retorno[SUCESSO] = $statusAgendaProfissionalService->Salva($statusAgendaProfissional);

            if (!empty($agenda['co_assistente'])) {
                $statusAgendaProfissional[CO_PROFISSIONAL] = $agenda['co_assistente'];
            } else {
                unset($statusAgendaProfissional[CO_PROFISSIONAL]);
            }
            $statusAgendaProfissional[TP_PROFISSIONAL] = 2;
            $retorno[SUCESSO] = $statusAgendaProfissionalService->Salva($statusAgendaProfissional);
        } else {
            $retorno = $validador;
        }

        if ($retorno[SUCESSO]) {
            $retorno[SUCESSO] = true;
            $PDO->commit();
        } else {
            $retorno[MSG] = $validador[MSG];
            $retorno[SUCESSO] = false;
            $PDO->rollBack();
        }

        return $retorno;
    }

    public function cronStatusAgenda($dados)
    {
        /** @var StatusAgendaService $statusAgendaService */
        $statusAgendaService = $this->getService(STATUS_AGENDA_SERVICE);
        /** @var StatusAgendaServicoService $statusAgendaServicoService */
        $statusAgendaServicoService = $this->getService(STATUS_AGENDA_SERVICO_SERVICE);
        /** @var StatusAgendaProfissionalService $statusAgendaProfissionalService */
        $statusAgendaProfissionalService = $this->getService(STATUS_AGENDA_PROFISSIONAL_SERVICE);
        /** @var PDO $PDO */
        $PDO = $this->getPDO();
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];

        $PDO->beginTransaction();

        $statusAgenda[CO_AGENDA] = $dados[CO_AGENDA];
        $statusAgenda[DT_CADASTRO] = Valida::DataHoraAtualBanco();
        $statusAgenda[ST_STATUS] = $dados[ST_STATUS];
        $statusAgenda[DT_INICIO_AGENDA] = $dados[DT_INICIO_AGENDA];
        $statusAgenda[DT_FIM_AGENDA] = $dados[DT_FIM_AGENDA];
        $statusAgenda[NU_VALOR] = $dados[NU_VALOR];
        $statusAgenda[NU_DURACAO] = $dados[NU_DURACAO];
        $statusAgenda[DS_OBSERVACAO] = "Atualizado pelo Sistema";
        $statusAgenda[CO_USUARIO] = CO_USUARIO_PADRAO;
        $statusAgenda[CO_CLIENTE] = $dados[CO_CLIENTE];


        $statusAgendaServico[CO_STATUS_AGENDA] = $statusAgendaService->Salva($statusAgenda);
        $statusAgendaServico[CO_SERVICO] = $dados[CO_SERVICO];
        $statusAgendaServico[ST_STATUS] = StatusAtendimentoEnum::NAO_INICIADO;

        $statusAgendaProfissional[CO_STATUS_AGENDA_SERVICO] = $statusAgendaServicoService->Salva($statusAgendaServico);
        $statusAgendaProfissional[CO_STATUS_AGENDA] = $statusAgendaServico[CO_STATUS_AGENDA];

        if (!empty($dados[CO_PROFISSIONAL])) {
            $statusAgendaProfissional[CO_PROFISSIONAL] = $dados[CO_PROFISSIONAL];
        } else {
            $statusAgendaProfissional[CO_PROFISSIONAL] = null;
        }
        $statusAgendaProfissional[TP_PROFISSIONAL] = 1;
        $statusAgendaProfissionalService->Salva($statusAgendaProfissional);

        if (!empty($dados['co_assistente'])) {
            $statusAgendaProfissional[CO_PROFISSIONAL] = $dados['co_assistente'];
        } else {
            unset($statusAgendaProfissional[CO_PROFISSIONAL]);
        }
        $statusAgendaProfissional[TP_PROFISSIONAL] = 2;
        $retorno[SUCESSO] = $statusAgendaProfissionalService->Salva($statusAgendaProfissional);
        if ($retorno[SUCESSO]) {
            $PDO->commit();
        } else {
            $PDO->rollBack();
        }
    }

    public function AgendamentoPesquisaAvancada($dados)
    {
        $dados = Valida::montaArrayAjax($dados);
        return $dados;
    }

}