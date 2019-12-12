<?php

/**
 * ClienteValidador [ VALIDATOR ]
 * @copyright (c) 2018, Leo Bessa
 */
class  ClienteValidador extends AbstractValidador
{
    private $retorno = [
        SUCESSO => true,
        MSG => [],
        DADOS => []
    ];

    public function validarCliente($dados)
    {
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[NO_PESSOA], AbstractValidador::VALIDACAO_NOME, 'Nome Completo'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoValido(
            $dados[DT_NASCIMENTO], AbstractValidador::VALIDACAO_DATA, 'Nascimento'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoSelectObrigatorio(
            $dados[ST_SEXO], 'Sexo'
        );
        if (!empty($dados[NU_CPF])) {
            $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
                $dados[NU_CPF], AbstractValidador::VALIDACAO_CPF, 'CPF'
            );
        }
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[NU_TEL1], AbstractValidador::VALIDACAO_TEL, 'Telefone (WhatsApp) '
        );
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[DS_EMAIL], AbstractValidador::VALIDACAO_EMAIL, 'E-mail'
        );
        return $this->MontaRetorno($this->retorno);
    }

}