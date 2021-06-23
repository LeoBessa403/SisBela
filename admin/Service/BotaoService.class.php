<?php

/**
 * BotaoService.class [ SERVICE ]
 * @copyright (c) 2021, Leo Bessa
 */
class  BotaoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(BotaoEntidade::ENTIDADE);
        $this->ObjetoModel = New BotaoModel();
    }

    public function salvBotao($dados)
    {
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];
        /** @var Session $session */
        $session = new Session();

        $BotaoValidador = new BotaoValidador();
        /** @var BotaoValidador $validador */
        $validador = $BotaoValidador->validarBotao($dados);
        if ($validador[SUCESSO]) {
            $btn[NO_BOTAO] = trim($dados[NO_BOTAO]);
            $btn[DS_BOTAO] = trim($dados[DS_BOTAO]);
            if (!empty($dados[ST_STATUS])):
                $btn[ST_STATUS] = StatusUsuarioEnum::ATIVO;
            else:
                $btn[ST_STATUS] = StatusUsuarioEnum::INATIVO;
            endif;

            if (!empty($_POST[CO_BOTAO])):
                $cobOTAO = $_POST[CO_BOTAO];
                $retorno[SUCESSO] = $this->Salva($btn, $cobOTAO);
                $session->setSession(MENSAGEM, ATUALIZADO);
            else:
                $btn[NU_TOTAL_CLIQUES] = 0;
                $retorno[SUCESSO] = $this->Salva($btn);
                $session->setSession(MENSAGEM, CADASTRADO);

            endif;
        } else {
            Notificacoes::geraMensagem(
                $validador[MSG],
                TiposMensagemEnum::ALERTA
            );
            $retorno = $validador;
        }
        return $retorno;
    }

}