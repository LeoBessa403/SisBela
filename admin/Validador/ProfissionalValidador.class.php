<?php

/**
 * Profissionalalidador [ VALIDATOR ]
 * @copyright (c) 2018, Leo Bessa
 */
class  ProfissionalValidador extends AbstractValidador
{
    private $retorno = [
        SUCESSO => true,
        MSG => [],
        DADOS => []
    ];

    public function validarProfissional($dados)
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

    public function validarAusencia($dados)
    {
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[DT_INICIO], AbstractValidador::VALIDACAO_DATA, 'Data de Início'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[DT_FIM], AbstractValidador::VALIDACAO_DATA, 'Data de Termino'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoSelectObrigatorio(
            $dados[TP_AUSENCIA], 'Tipo de Ausência'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoSelectObrigatorio(
            $dados[CO_PROFISSIONAL], 'Profissional'
        );

        return $this->MontaRetorno($this->retorno);
    }
}