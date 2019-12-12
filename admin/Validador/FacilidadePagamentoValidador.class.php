<?php

/**
 * FacilidadePagamentoValidador [ VALIDATOR ]
 * @copyright (c) 2018, Leo Bessa
 */
class FacilidadePagamentoValidador extends AbstractValidador
{
    private $retorno = [
        SUCESSO => true,
        MSG => [],
        DADOS => []
    ];

    public function validarFacilidadePagamento($dados)
    {
        if (!empty($dados[CO_TIPO_PAGAMENTO])) {
            $this->retorno[DADOS][] = $this->ValidaCampoSelectObrigatorio(
                $dados[CO_TIPO_PAGAMENTO], 'Formas De Pagamento'
            );
        } else {
            $this->retorno[DADOS][] = $this->ValidaCampoSelectObrigatorio(
                null, 'Formas De Pagamento'
            );
        }
        return $this->MontaRetorno($this->retorno);
    }
}