<?php

/**
 * ConfigProfissionalService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  ConfigProfissionalService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(ConfigProfissionalEntidade::ENTIDADE);
        $this->ObjetoModel = New ConfigProfissionalModel();
    }

    public function salvaConfigProfissional($dados)
    {
        $session = new Session();
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];
        $configPro[NU_PERIODO_AGENDA] = $dados[NU_PERIODO_AGENDA];
        $configPro[ST_RECEBE_EMAIL_FATURAMENTO] = (!empty($dados[ST_RECEBE_EMAIL_FATURAMENTO])) ? "S" : "N";
        $configPro[ST_EDICAO_SERVICOS] = (!empty($dados[ST_EDICAO_SERVICOS])) ? "S" : "N";
        $configPro[ST_EDICAO_ATENDIMENTO] = (!empty($dados[ST_EDICAO_ATENDIMENTO])) ? "S" : "N";
        $configPro[CO_ASSINANTE] = AssinanteService::getCoAssinanteLogado();

        if (!empty($_POST[CO_CONFIG_PROFISSIONAL])):
            $coConfigPro = $dados[CO_CONFIG_PROFISSIONAL];
            $retorno[SUCESSO] = $this->Salva($configPro, $coConfigPro);
            $session->setSession(MENSAGEM, ATUALIZADO);
        else:
            $retorno[SUCESSO] = $this->Salva($configPro);
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