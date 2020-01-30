<?php

class IndexController extends AbstractController
{
    public function Index()
    {

//        /** @var ProdutoService $produtoService */
//        $produtoService = $this->getService(PRODUTO_SERVICE);
//        $produtos = $produtoService->PesquisaTodos();
//
//        /** @var CategoriaService $categoriaService */
//        $categoriaService = $this->getService(CATEGORIA_SERVICE);
//        $categorias = $categoriaService->PesquisaTodos();
//
//        /** @var FabricanteService $fabricanteService */
//        $fabricanteService = $this->getService(FABRICANTE_SERVICE);
//        $fabricantes = $fabricanteService->PesquisaTodos();
//
//        /** @var ProdutoDetalheService $produtoDetalheService */
//        $produtoDetalheService = $this->getService(PRODUTO_DETALHE_SERVICE);
//        $produtosDestaque = $produtoDetalheService->PesquisaProdutosDestaque();
//
//        $produtosSemEstoque = $produtoService->PesquisaProdutosSemEstoque();
//        $produtosNovos = $produtoService->PesquisaProdutosNovos(30); // Dias passados para compara
//        $produtosMaisVisitados = $produtoService->PesquisaProdutosMaisVisitados();
//
//        $dados['ProdutosCadastrados'] = count($produtos);
//        $dados['FabricantesCadastrados'] = count($fabricantes);
//        $dados['CategoriasCadastrados'] = count($categorias);
//        $dados['ProdutosDestaque'] = count($produtosDestaque);
//        $dados['MaisVisitados'] = count($produtosMaisVisitados);
//        $dados['MaisVendidos'] = 0;
//        $dados['ProdutosSemEstoque'] = count($produtosSemEstoque);
//        $dados['NovosProdutos'] = count($produtosNovos);
//        $dados['MaisProdurados'] = 0;

        return [];
    }

    public function CronExecute()
    {

    }
}