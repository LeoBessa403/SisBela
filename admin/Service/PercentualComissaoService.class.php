<?php

/**
 * PercentualComissaoService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  PercentualComissaoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(PercentualComissaoEntidade::ENTIDADE);
        $this->ObjetoModel = New PercentualComissaoModel();
    }

    public function salvaComissao($dados)
    {
        $session = new Session();
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];
        $configComissaoValidador = new ConfigComissaoValidador();
        /** @var ConfigComissaoValidador $validador */
        $validador = $configComissaoValidador->validarComissao($dados);
        if ($validador[SUCESSO]) {
            if (!empty($dados[CO_SERVICO_PROFISSIONAL])) {
                $percCom[CO_SERVICO_PROFISSIONAL] = $dados[CO_SERVICO_PROFISSIONAL];
            }
            if (!empty($dados[CO_SERVICO])) {
                $percCom[CO_SERVICO] = $dados[CO_SERVICO];
            }
            if (!empty($dados[CO_PROFISSIONAL])) {
                $percCom[CO_PROFISSIONAL] = $dados[CO_PROFISSIONAL];
            }
            $percCom[DT_CADASTRO] = Valida::DataHoraAtualBanco();
            $percCom[DT_ATUALIZADO] = Valida::DataHoraAtualBanco();

            foreach (TipoComissaoEnum::$descricao as $tipoComissao => $descrição) {
                $percCom[NU_TIPO_COMISSAO] = $tipoComissao;
                $percCom[NU_COMISSAO] = $dados[NU_TIPO_COMISSAO . $tipoComissao];
                $retorno[SUCESSO] = $this->Salva($percCom);
            }

            $session->setSession(MENSAGEM, ATUALIZADO);

            if ($retorno[SUCESSO]) {
                $retorno[SUCESSO] = true;
            } else {
                Notificacoes::geraMensagem(
                    'Não foi possível realizar a ação',
                    TiposMensagemEnum::ALERTA
                );
                $retorno[SUCESSO] = false;
            }
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