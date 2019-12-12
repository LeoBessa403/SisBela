<?php

/**
 * ServicoProfissionalValidador [ VALIDATOR ]
 * @copyright (c) 2018, Leo Bessa
 */
class  ServicoProfissionalValidador extends AbstractValidador
{
    private $retorno = [
        SUCESSO => true,
        MSG => [],
        DADOS => []
    ];

    public function validarComissaoServicoProfissional($dados)
    {
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[CO_SERVICO], AbstractValidador::VALIDACAO_NUMERO, 'Código do Serviço'
        );
        return $this->MontaRetorno($this->retorno);
    }

    public function validarComissaoProfissionalServico($dados)
    {
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[CO_PROFISSIONAL], AbstractValidador::VALIDACAO_NUMERO, 'Código do Profissional'
        );
        return $this->MontaRetorno($this->retorno);
    }
}