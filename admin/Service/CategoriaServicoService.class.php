<?php

/**
 * CategoriaServicoService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  CategoriaServicoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(CategoriaServicoEntidade::ENTIDADE);
        $this->ObjetoModel = New CategoriaServicoModel();
    }

    public function salvaCategoriaServicoInicial()
    {
        /** @var ServicoService $servicoService */
        $servicoService = $this->getService(SERVICO_SERVICE);
        /** @var PrecoServicoService $precoServicoService */
        $precoServicoService = $this->getService(PRECO_SERVICO_SERVICE);
        /** @var ImagemService $imagemService */
        $imagemService = $this->getService(IMAGEM_SERVICE);

        /** @var PDO $PDO */
        $PDO = $this->getPDO();
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];

        $categoriaServico[CO_ASSINANTE] = AssinanteService::getCoAssinanteLogado();
        $categoriaServico[DT_CADASTRO] = Valida::DataHoraAtualBanco();
        $categoriaServico[ST_STATUS] = StatusAcessoEnum::ATIVO;

        $PDO->beginTransaction();

        foreach (CategoriaServicoBaseEnum::$descricao as $valor) {
            $value = CategoriaServicoBaseEnum::getValorDescricao($valor);
            $categoriaServico[NO_CATEGORIA_SERVICO] = $valor;
            $servico[CO_CATEGORIA_SERVICO] = $this->Salva($categoriaServico);
            $servico[DT_CADASTRO] = Valida::DataHoraAtualBanco();
            $servico[ST_STATUS] = StatusAcessoEnum::ATIVO;
            $servico[ST_ASSISTENTE] = SimNaoEnum::NAO;

            foreach (ServicoBaseEnum::$descricao as $chave => $cat) {
                $nuServico = ServicoBaseEnum::$categoria[$chave];
                if ($nuServico == $value) {
                    $imagem[DS_CAMINHO] = 'servico_padrao/' . ServicoBaseEnum::$imagem[$chave];
                    $servico[CO_IMAGEM] = $imagemService->Salva($imagem);
                    $servico[NO_SERVICO] = ServicoBaseEnum::$nome[$chave];
                    $servico[NU_DURACAO] = ServicoBaseEnum::$duracao[$chave];
                    $servico[DS_DESCRICAO] = ServicoBaseEnum::$descricao[$chave];
                    $preco[CO_SERVICO] = $servicoService->Salva($servico);

                    $preco[DT_CADASTRO] = Valida::DataHoraAtualBanco();
                    $preco[NU_VALOR] = ServicoBaseEnum::$preco[$chave];
                    $preco[DS_OBSERVACAO] = 'Serviço Inicial';
                    $preco[CO_USUARIO] = UsuarioService::getCoUsuarioLogado();
                    $retorno[SUCESSO] = $precoServicoService->Salva($preco);
                }
            }
        }
        if ($retorno[SUCESSO]) {
            $retorno[SUCESSO] = true;
            $PDO->commit();
        } else {
            Notificacoes::geraMensagem(
                'Não Iniciou corretamente as categorias e serviços',
                TiposMensagemEnum::ALERTA
            );
            $retorno[SUCESSO] = false;
            $PDO->rollBack();
        }
    }


    public function salvaCategoriaServico($result)
    {
        /** @var Session $session */
        $session = new Session();
        /** @var CategoriaServicoValidador $categoriaServicoValidador */
        $categoriaServicoValidador = new CategoriaServicoValidador();
        $validador = $categoriaServicoValidador->validarCategoriaServico($result);
        if ($validador[SUCESSO]) {
            $dados[NO_CATEGORIA_SERVICO] = trim($result[NO_CATEGORIA_SERVICO]);
            $dados[ST_STATUS] = (!empty($result[ST_STATUS])) ? StatusUsuarioEnum::ATIVO : StatusUsuarioEnum::INATIVO;

            if (!empty($result[CO_CATEGORIA_SERVICO])) {
                $retorno[SUCESSO] = $this->Salva($dados, $result[CO_CATEGORIA_SERVICO]);
                $session->setSession(MENSAGEM, ATUALIZADO);
            } else {
                $dados[CO_ASSINANTE] = AssinanteService::getCoAssinanteLogado();
                $dados[DT_CADASTRO] = Valida::DataHoraAtualBanco();
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

    public static function categoriasServicoCombo()
    {
        /** @var CategoriaServicoService $categoriaServicoService */
        $categoriaServicoService = new CategoriaServicoService();
        $comboCategorias = [
            '' => Mensagens::MSG_SEM_ITEM_SELECIONADO
        ];
        $categorias = $categoriaServicoService->PesquisaTodos([
            CO_ASSINANTE => AssinanteService::getCoAssinanteLogado()
        ]);
        /** @var CategoriaServicoEntidade $categoria */
        foreach ($categorias as $categoria) {
            $comboCategorias[$categoria->getCoCategoriaServico()]
                = $categoria->getNoCategoriaServico();
        }
        return $comboCategorias;
    }


}