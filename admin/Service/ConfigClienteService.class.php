<?php

/**
 * ConfigClienteService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  ConfigClienteService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(ConfigClienteEntidade::ENTIDADE);
        $this->ObjetoModel = New ConfigClienteModel();
    }

    public function salvaConfigCliente($dados)
    {
        $session = new Session();
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];
        $configCli[NU_AUSENCIA] = $dados[NU_AUSENCIA][0];
        $configCli[ST_MARCA_SERVICO] = (!empty($dados[ST_MARCA_SERVICO])) ? "S" : "N";
        $configCli[CO_ASSINANTE] = AssinanteService::getCoAssinanteLogado();

        if (!empty($_POST[CO_CONFIG_CLIENTE])):
            $coConfigCli = $dados[CO_CONFIG_CLIENTE];
            $retorno[SUCESSO] = $this->Salva($configCli, $coConfigCli);
            $session->setSession(MENSAGEM, ATUALIZADO);
        else:
            $retorno[SUCESSO] = $this->Salva($configCli);
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