<?php

/**
 * PromocaoService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  PromocaoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(PromocaoEntidade::ENTIDADE);
        $this->ObjetoModel = New PromocaoModel();
    }

    public function salvaPromocao($dados)
    {
        /** @var PDO $PDO */
        $PDO = $this->getPDO();
        $retorno = [
            SUCESSO => true,
            MSG => null
        ];
        /** @var Session $session */
        $session = new Session();
        /** @var PrecoPromocaoService $precoPromocaoService */
        $precoPromocaoService = $this->getService(PRECO_PROMOCAO_SERVICE);

        $servicoValidador = new ServicoValidador();
        /** @var ServicoValidador $validador */
        $validador = $servicoValidador->validarPromocao($dados);
        if ($validador[SUCESSO]) {
            $promocao[NO_TITULO] = trim($dados[NO_TITULO]);
            $promocao[DS_DESCRICAO] = trim($dados[DS_DESCRICAO]);
            $PDO->beginTransaction();

            if (!empty($dados[CO_PROMOCAO])) {
                $this->Salva($promocao, $dados[CO_PROMOCAO]);
                $precoPromocao[CO_PROMOCAO] = $dados[CO_PROMOCAO];
                $session->setSession(MENSAGEM, ATUALIZADO);
            } else {
                $promocao[DT_CADASTRO] = Valida::DataHoraAtualBanco();
                $promocao[CO_ASSINANTE] = AssinanteService::getCoAssinanteLogado();
                $precoPromocao[CO_PROMOCAO] = $this->Salva($promocao);
                $session->setSession(MENSAGEM, CADASTRADO);
            }

            $precoPromocao[DT_CADASTRO] = Valida::DataHoraAtualBanco();
            $precoPromocao[ST_STATUS] = (!empty($dados[ST_STATUS])) ? StatusUsuarioEnum::ATIVO : StatusUsuarioEnum::INATIVO;
            $precoPromocao[NU_VALOR] = Valida::FormataMoedaBanco($dados[NU_VALOR]);
            $precoPromocao[DT_INICIO] = Valida::DataDBDate($dados[DT_INICIO]);
            $precoPromocao[DT_FIM] = Valida::DataDBDate($dados[DT_FIM]);
            $precoPromocao[NU_HORA_ABERTURA] = $dados[NU_HORA_ABERTURA];
            $precoPromocao[NU_HORA_FECHAMENTO] = $dados[NU_HORA_FECHAMENTO];
            $precoPromocao[CO_USUARIO] = UsuarioService::getCoUsuarioLogado();
            $precoPromocao[CO_SERVICO] = $dados[CO_SERVICO][0];
            $precoPromocao[NU_DIA_SEMANA] = '';
            foreach ($dados[NU_DIA_SEMANA] as $dias) {
                $precoPromocao[NU_DIA_SEMANA] =
                    ($precoPromocao[NU_DIA_SEMANA] != '')
                        ? $precoPromocao[NU_DIA_SEMANA] . ', ' . $dias
                        : $dias;
            }
            $retorno[SUCESSO] = $precoPromocaoService->Salva($precoPromocao);

            if ($retorno[SUCESSO]) {
                $PDO->commit();
            } else {
                Notificacoes::geraMensagem('Não foi possível Salvar a Promoção', TiposMensagemEnum::ALERTA);
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