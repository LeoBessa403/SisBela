<?php

/**
 * ValePresenteService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  ValePresenteService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(ValePresenteEntidade::ENTIDADE);
        $this->ObjetoModel = New ValePresenteModel();
    }

    public function salvaValePresente($dados)
    {
        $retorno = [
            SUCESSO => true,
            MSG => null
        ];
        /** @var Session $session */
        $session = new Session();

        $servicoValidador = new ServicoValidador();
        /** @var ServicoValidador $validador */
        $validador = $servicoValidador->validarValePresente($dados);
        if ($validador[SUCESSO]) {
            $valePresente[DS_MOTIVO] = trim($dados[DS_MOTIVO]);
            $valePresente[ST_STATUS] = (!empty($dados[ST_STATUS])) ? StatusValePresenteEnum::ATIVO : StatusValePresenteEnum::INATIVO;
            $valePresente[DT_VALIDO] = Valida::DataDBDate($dados[DT_VALIDO]);
            $valePresente[NU_VALOR] = Valida::FormataMoedaBanco($dados[NU_VALOR]);


            if (!empty($dados[CO_VALE_PRESENTE])) {
                $this->Salva($valePresente, $dados[CO_VALE_PRESENTE]);
                $retorno[SUCESSO] = $dados[CO_VALE_PRESENTE];
                $session->setSession(MENSAGEM, ATUALIZADO);
            } else {
                $valePresente[DS_CODIGO] = $this->geraCodigoValePresente();
                $valePresente[DT_CADASTRO] = Valida::DataHoraAtualBanco();
                $valePresente[CO_ASSINANTE] = AssinanteService::getCoAssinanteLogado();
                $valePresente[CO_USUARIO] = UsuarioService::getCoUsuarioLogado();
                $retorno[SUCESSO] = $this->Salva($valePresente);
                $session->setSession(MENSAGEM, CADASTRADO);
            }

            if (!$retorno[SUCESSO]) {
                Notificacoes::geraMensagem('Não foi possível Salvar a Vale Presente', TiposMensagemEnum::ALERTA);
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

    private function geraCodigoValePresente()
    {
        $codigo = 'VLP.' . date('y'). AssinanteService::getCoAssinanteLogado() . '.' .
            Valida::GeraCodigo(1) . '.' . Valida::GeraCodigo(1);

        // Verifica se esse código já esta cadastrado no banco de dados
        $jaCadastrado = $this->PesquisaUmQuando([
            DS_CODIGO => $codigo
        ]);

        if($jaCadastrado){
            $this->geraCodigoValePresente();
        }
        return $codigo;
    }
}