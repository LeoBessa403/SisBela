<?php

/**
 * AusenciaService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  AusenciaService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(AusenciaEntidade::ENTIDADE);
        $this->ObjetoModel = New AusenciaModel();
    }

    public function PesquisaAvancada($Condicoes)
    {
        return $this->ObjetoModel->PesquisaAvancada($Condicoes);
    }

    public function salvaAusenciaProfissional($result)
    {
        /** @var Session $session */
        $session = new Session();
        /** @var ProfissionalValidador $ausenciaValidador */
        $ausenciaValidador = new ProfissionalValidador();
        $validador = $ausenciaValidador->validarAusencia($result);
        if ($validador[SUCESSO]) {

            $dados = $this->getDados($result, AusenciaEntidade::ENTIDADE);
            $dados[DT_INICIO] = Valida::DataDB($result[DT_INICIO] . " " . $result['hr_inicio'] . ":00");
            $dados[DT_FIM] = (count($result[DT_FIM]) ? Valida::DataDB($result[DT_FIM] . " " . $result['hr_fim'] . ":00") : null);
            $dados[CO_USUARIO] = UsuarioService::getCoUsuarioLogado();

            if (!empty($result[CO_AUSENCIA])) {
                $retorno[SUCESSO] = $this->Salva($dados, $result[CO_AUSENCIA]);
                $session->setSession(MENSAGEM, ATUALIZADO);
            } else {
                $retorno[SUCESSO] = $this->Salva($dados);
                $session->setSession(MENSAGEM, CADASTRADO);
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