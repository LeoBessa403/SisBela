<?php

/**
 * ConfigAgendamentoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  ConfigAgendamentoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(ConfigAgendamentoEntidade::ENTIDADE);
        $this->ObjetoModel = New ConfigAgendamentoModel();
    }

    public function salvaConfigAgendamento($dados)
    {
        $session = new Session();
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];
        $configAgendam[NU_INTERVALO] = $dados[NU_INTERVALO][0];
        $configAgendam[NU_ANTECEDENCIA_AGENDAMENTO] = $dados[NU_ANTECEDENCIA_AGENDAMENTO];
        $configAgendam[ST_STATUS_AGENDAMENTO_SITE] = $dados[ST_STATUS_AGENDAMENTO_SITE][0];
        $configAgendam[CO_ASSINANTE] = AssinanteService::getCoAssinanteLogado();
        $configAgendam[ST_RECEBER_EMAIL_AGENDAMENTO] = (!empty($dados[ST_RECEBER_EMAIL_AGENDAMENTO])) ? "S" : "N";
        $configAgendam[ST_ENVIAR_EMAIL_CONFIRMACAO] = (!empty($dados[ST_ENVIAR_EMAIL_CONFIRMACAO])) ? "S" : "N";

        if (!empty($_POST[CO_CONFIG_AGENDAMENTO])):
            $coConfigAgendam = $dados[CO_CONFIG_AGENDAMENTO];
            $retorno[SUCESSO] = $this->Salva($configAgendam, $coConfigAgendam);
            $session->setSession(MENSAGEM, ATUALIZADO);
        else:
            $retorno[SUCESSO] = $this->Salva($configAgendam);
            $session->setSession(MENSAGEM, CADASTRADO);
        endif;

        if ($retorno[SUCESSO]) {
            $retorno[SUCESSO] = true;
        } else {
            Notificacoes::geraMensagem(
                'Não foi possível realizar a ação',
                TiposMensagemEnum::ALERTA
            );
            $retorno[SUCESSO] = false;
        }
        return $retorno;
    }

}