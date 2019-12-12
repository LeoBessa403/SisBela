<?php

/**
 * ConfigComissaoValidador [ VALIDATOR ]
 * @copyright (c) 2018, Leo Bessa
 */
class  ConfigComissaoValidador extends AbstractValidador
{
    private $retorno = [
        SUCESSO => true,
        MSG => [],
        DADOS => []
    ];

    public function validarConfigComissao($dados)
    {
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[DT_VALIDO], AbstractValidador::VALIDACAO_DATA, 'Data Válida'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[NU_TIPO_COMISSAO . TipoComissaoEnum::UNICO_PROFISSIONAL],
            AbstractValidador::VALIDACAO_NUMERO, 'Único Profissional'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[NU_TIPO_COMISSAO . TipoComissaoEnum::COM_ASSISTENTE],
            AbstractValidador::VALIDACAO_NUMERO, 'Com Assistente'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[NU_TIPO_COMISSAO . TipoComissaoEnum::ASSISTENTE],
            AbstractValidador::VALIDACAO_NUMERO, 'Assistente '
        );
        $this->retorno[DADOS][] = $this->ValidaCampoSelectObrigatorio(
            $dados[NU_FORMA_COMISSAO], 'Forma de comissão'
        );

        return $this->MontaRetorno($this->retorno);
    }

    public function validarComissao($dados)
    {
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[NU_TIPO_COMISSAO . TipoComissaoEnum::UNICO_PROFISSIONAL],
            AbstractValidador::VALIDACAO_NUMERO, 'Único Profissional'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[NU_TIPO_COMISSAO . TipoComissaoEnum::COM_ASSISTENTE],
            AbstractValidador::VALIDACAO_NUMERO, 'Com Assistente'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[NU_TIPO_COMISSAO . TipoComissaoEnum::ASSISTENTE],
            AbstractValidador::VALIDACAO_NUMERO, 'Assistente '
        );
        return $this->MontaRetorno($this->retorno);
    }
}