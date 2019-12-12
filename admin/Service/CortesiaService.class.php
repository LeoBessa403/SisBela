<?php

/**
 * CortesiaService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  CortesiaService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(CortesiaEntidade::ENTIDADE);
        $this->ObjetoModel = New CortesiaModel();
    }


    public function salvaCortesia($dados)
    {
        $retorno = [
            SUCESSO => true,
            MSG => null
        ];
        /** @var Session $session */
        $session = new Session();

        $servicoValidador = new ServicoValidador();
        /** @var ServicoValidador $validador */
        $validador = $servicoValidador->validarCortesia($dados);
        if ($validador[SUCESSO]) {
            $cortesia[DS_MOTIVO] = trim($dados[DS_MOTIVO]);
            $cortesia[ST_STATUS] = (!empty($dados[ST_STATUS])) ? StatusCortesiaEnum::ATIVA : StatusCortesiaEnum::INATIVA;
            $cortesia[DT_INICIO] = Valida::DataDBDate($dados[DT_INICIO]);
            $cortesia[DT_FIM] = Valida::DataDBDate($dados[DT_FIM]);
            $cortesia[NU_HORA_ABERTURA] = $dados[NU_HORA_ABERTURA];
            $cortesia[NU_HORA_FECHAMENTO] = $dados[NU_HORA_FECHAMENTO];
            $cortesia[CO_SERVICO] = $dados[CO_SERVICO][0];
            $cortesia[NU_DIA_SEMANA] = '';
            foreach ($dados[NU_DIA_SEMANA] as $dias) {
                $cortesia[NU_DIA_SEMANA] =
                    ($cortesia[NU_DIA_SEMANA] != '')
                        ? $cortesia[NU_DIA_SEMANA] . ', ' . $dias
                        : $dias;
            }


            if (!empty($dados[CO_CORTESIA])) {
                $this->Salva($cortesia, $dados[CO_CORTESIA]);
                $retorno[SUCESSO] = $dados[CO_CORTESIA];
                $session->setSession(MENSAGEM, ATUALIZADO);
            } else {
                $cortesia[DS_CODIGO] = $this->geraCodigoCortesia();
                $cortesia[DT_CADASTRO] = Valida::DataHoraAtualBanco();
                $cortesia[CO_ASSINANTE] = AssinanteService::getCoAssinanteLogado();
                $cortesia[CO_USUARIO] = UsuarioService::getCoUsuarioLogado();
                $retorno[SUCESSO] = $this->Salva($cortesia);
                $session->setSession(MENSAGEM, CADASTRADO);
            }

            if (!$retorno[SUCESSO]) {
                Notificacoes::geraMensagem('Não foi possível Salvar a Cortesia', TiposMensagemEnum::ALERTA);
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

    private function geraCodigoCortesia()
    {
        $codigo = 'CTS.' . date('y'). AssinanteService::getCoAssinanteLogado() . '.' .
            Valida::GeraCodigo(1) . '.' . Valida::GeraCodigo(1);

        // Verifica se esse código já esta cadastrado no banco de dados
        $jaCadastrado = $this->PesquisaUmQuando([
            DS_CODIGO => $codigo
        ]);

        if($jaCadastrado){
            $this->geraCodigoCortesia();
        }
        return $codigo;
    }


}