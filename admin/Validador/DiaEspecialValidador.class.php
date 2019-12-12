<?php

/**
 * DiaEspecialValidador [ VALIDATOR ]
 * @copyright (c) 2018, Leo Bessa
 */
class  DiaEspecialValidador extends AbstractValidador
{
    private $retorno = [
        SUCESSO => true,
        MSG => [],
        DADOS => []
    ];

    public function validarDiaEspecial($dados)
    {
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[DT_DIA], AbstractValidador::VALIDACAO_DATA, 'Data'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[NU_HORA_ABERTURA], AbstractValidador::VALIDACAO_HORAS, 'Hórario de Abertura'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[NU_HORA_FECHAMENTO], AbstractValidador::VALIDACAO_HORAS, 'Hórario de Fechamento'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioDescricao(
            $dados[DS_MOTIVO], 1, 'Motivo'
        );

        return $this->MontaRetorno($this->retorno);
    }
}