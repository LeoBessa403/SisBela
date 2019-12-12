<?php

/**
 * AgendaValidador [ VALIDATOR ]
 * @copyright (c) 2018, Leo Bessa
 */
class  AgendaValidador extends AbstractValidador
{
    private $retorno = [
        SUCESSO => true,
        MSG => [],
        DADOS => []
    ];

    public function validarAgendamento($dados, $validaAssistente)
    {
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[CO_CLIENTE], AbstractValidador::VALIDACAO_NUMERO, 'Cliente'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[CO_SERVICO], AbstractValidador::VALIDACAO_NUMERO, 'Serviço'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[CO_PROFISSIONAL], AbstractValidador::VALIDACAO_NUMERO, 'Profissional'
        );
        if ($validaAssistente) {
            $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
                $dados['co_assistente'], AbstractValidador::VALIDACAO_NUMERO, 'Assistente'
            );
        }
        return $this->MontaRetorno($this->retorno);
    }

    public function validarDeletarAgendamento($dados)
    {
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioDescricao(
            $dados[DS_MOTIVO], 3, 'Motivo'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[CO_AGENDA], AbstractValidador::VALIDACAO_NUMERO, 'Código da Agenda'
        );
        return $this->MontaRetorno($this->retorno);
    }

    public function validarFinalizarAgendamento($dados)
    {
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[CO_AGENDA], AbstractValidador::VALIDACAO_NUMERO, 'Código da Agenda'
        );
        return $this->MontaRetorno($this->retorno);
    }

    public function validarDropAgendamento($dados)
    {
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[CO_AGENDA], AbstractValidador::VALIDACAO_NUMERO, 'Código da Agenda'
        );
        return $this->MontaRetorno($this->retorno);
    }


}