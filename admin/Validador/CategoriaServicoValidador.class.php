<?php

/**
 * CategoriaServicoValidador [ VALIDATOR ]
 * @copyright (c) 2018, Leo Bessa
 */
class  CategoriaServicoValidador extends AbstractValidador
{
    private $retorno = [
        SUCESSO => true,
        MSG => [],
        DADOS => []
    ];

    public function validarCategoriaServico($dados)
    {
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioDescricao(
            $dados[NO_CATEGORIA_SERVICO], 3, 'Nome da Categoria'
        );

        return $this->MontaRetorno($this->retorno);
    }
}