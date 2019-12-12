<?php

/**
 * PacoteServService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  PacoteServService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(PacoteServEntidade::ENTIDADE);
        $this->ObjetoModel = New PacoteServModel();
    }


    public function salvaPacoteServico($dados)
    {
        /** @var PDO $PDO */
        $PDO = $this->getPDO();
        $retorno = [
            SUCESSO => true,
            MSG => null
        ];
        /** @var Session $session */
        $session = new Session();
        /** @var PrecoPacoteService $precoPacoteService */
        $precoPacoteService = $this->getService(PRECO_PACOTE_SERVICE);
        /** @var ServicoPacoteService $servicoPacoteService */
        $servicoPacoteService = $this->getService(SERVICO_PACOTE_SERVICE);

        $servicoValidador = new ServicoValidador();
        /** @var ServicoValidador $validador */
        $validador = $servicoValidador->validarPacoteServico($dados);
        if ($validador[SUCESSO]) {
            $pacoteServ[NO_PACOTE_SERV] = trim($dados[NO_PACOTE_SERV]);

            $PDO->beginTransaction();

            if (!empty($dados[CO_PACOTE_SERV])) {
                $this->Salva($pacoteServ, $dados[CO_PACOTE_SERV]);
                $precoPacote[CO_PACOTE_SERV] = $dados[CO_PACOTE_SERV];
                $session->setSession(MENSAGEM, ATUALIZADO);
            } else {
                $pacoteServ[DT_CADASTRO] = Valida::DataHoraAtualBanco();
                $pacoteServ[CO_ASSINANTE] = AssinanteService::getCoAssinanteLogado();
                $precoPacote[CO_PACOTE_SERV] = $this->Salva($pacoteServ);
                $session->setSession(MENSAGEM, CADASTRADO);
            }

            $precoPacote[NU_VALOR] = Valida::FormataMoedaBanco($_POST[NU_VALOR]);
            $precoPacote[DT_CADASTRO] = Valida::DataHoraAtualBanco();
            $precoPacote[DS_DESCRICAO] = trim($dados[DS_DESCRICAO]);
            $precoPacote[ST_STATUS] = (!empty($dados[ST_STATUS])) ? StatusUsuarioEnum::ATIVO : StatusUsuarioEnum::INATIVO;
            $precoPacote[CO_USUARIO] = UsuarioService::getCoUsuarioLogado();

            $retorno[SUCESSO] = $precoPacoteService->Salva($precoPacote);

            if ($precoPacote[CO_PACOTE_SERV] && $retorno[SUCESSO]) {
                $retorno[SUCESSO] = $servicoPacoteService->salvaServicoPacote(
                    $dados, $precoPacote[CO_PACOTE_SERV]
                );
            } else {
                $retorno = [SUCESSO => false];
            }

            if ($retorno[SUCESSO]) {
                $PDO->commit();
            } else {
                Notificacoes::geraMensagem('Não foi possível Salvar o Serviço', TiposMensagemEnum::ALERTA);
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

    public static function pacotesCombo()
    {
        /** @var PacoteServService $pacoteServService */
        $pacoteServService = new PacoteServService();
        $comboPacotes = [
            '' => Mensagens::MSG_SEM_ITEM_SELECIONADO
        ];
        $pacotes = $pacoteServService->PesquisaTodos([
            CO_ASSINANTE => AssinanteService::getCoAssinanteLogado()
        ]);
        /** @var PacoteServEntidade $pacote */
        foreach ($pacotes as $pacote) {
            $comboPacotes[$pacote->getCoPacoteServ()]
                = $pacote->getNoPacoteServ();
        }
        return $comboPacotes;
    }
}