<?php

/**
 * ConfigComissaoService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  ConfigComissaoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(ConfigComissaoEntidade::ENTIDADE);
        $this->ObjetoModel = New ConfigComissaoModel();
    }

    public function salvaConfigComissao($dados)
    {
        /** @var HistoricoComissaoService $historicoComissaoService */
        $historicoComissaoService = $this->getService(HISTORICO_COMISSAO_SERVICE);
        /** @var PercentualComissaoService $percentualComissaoService */
        $percentualComissaoService = $this->getService(PERCENTUAL_COMISSAO_SERVICE);

        /** @var PDO $PDO */
        $PDO = $this->getPDO();
        $session = new Session();
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];
        $configComissaoValidador = new ConfigComissaoValidador();
        /** @var ConfigComissaoValidador $validador */
        $validador = $configComissaoValidador->validarConfigComissao($dados);
        if ($validador[SUCESSO]) {
            $PDO->beginTransaction();

            if (!empty($_POST[CO_CONFIG_COMISSAO])):
                $coConfigCom = $dados[CO_CONFIG_COMISSAO];
                $session->setSession(MENSAGEM, ATUALIZADO);
            else:
                $configCom[CO_ASSINANTE] = AssinanteService::getCoAssinanteLogado();
                $configCom[DT_CADASTRO] = Valida::DataHoraAtualBanco();
                $coConfigCom = $this->Salva($configCom);
                $session->setSession(MENSAGEM, CADASTRADO);
            endif;

            $histCom[CO_CONFIG_COMISSAO] = $coConfigCom;
            $histCom[ST_TAXA_ANTECIPACAO] = (!empty($dados[ST_TAXA_ANTECIPACAO])) ? "S" : "N";
            $histCom[ST_TAXA_ADMINISTRATIVA] = (!empty($dados[ST_TAXA_ADMINISTRATIVA])) ? "S" : "N";
            $histCom[ST_TAXA_CARTAO_CREDITO] = (!empty($dados[ST_TAXA_CARTAO_CREDITO])) ? "S" : "N";
            $histCom[ST_TAXA_CARTAO_DEBITO] = (!empty($dados[ST_TAXA_CARTAO_DEBITO])) ? "S" : "N";
            $histCom[ST_RECEBIMENTO_PRE_VENDA] = (!empty($dados[ST_RECEBIMENTO_PRE_VENDA])) ? "S" : "N";
            $histCom[NU_FORMA_COMISSAO] = $dados[NU_FORMA_COMISSAO][0];
            $histCom[DT_VALIDO] = Valida::DataDBDate($dados[DT_VALIDO]);
            $histCom[DT_CADASTRO] = Valida::DataHoraAtualBanco();
            $histCom[CO_USUARIO] = UsuarioService::getCoUsuarioLogado();


            $coHistCom = $historicoComissaoService->Salva($histCom);
            $percCom[DT_CADASTRO] = Valida::DataHoraAtualBanco();
            $percCom[DT_ATUALIZADO] = Valida::DataHoraAtualBanco();

            foreach (TipoComissaoEnum::$descricao as $tipoComissao => $descrição) {
                $percCom[CO_HISTORICO_COMISSAO] = $coHistCom;
                $percCom[NU_TIPO_COMISSAO] = $tipoComissao;
                $percCom[NU_COMISSAO] = $dados[NU_TIPO_COMISSAO . $tipoComissao];
                $retorno[SUCESSO] = $percentualComissaoService->Salva($percCom);
            }

            if ($retorno[SUCESSO]) {
                $retorno[SUCESSO] = true;
                $PDO->commit();
            } else {
                Notificacoes::geraMensagem(
                    'Não foi possível realizar a ação',
                    TiposMensagemEnum::ALERTA
                );
                $retorno[SUCESSO] = false;
                $PDO->rollBack();
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