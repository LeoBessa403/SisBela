<?php

/**
 * FuncionamentoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  FuncionamentoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(FuncionamentoEntidade::ENTIDADE);
        $this->ObjetoModel = New FuncionamentoModel();
    }

    public function salvafuncionamentoAssinante($dados)
    {
        $this->DeletaQuando([
            CO_ASSINANTE => AssinanteService::getCoAssinanteLogado()
        ]);
        $retorno[SUCESSO] = false;
        $funcionamento[CO_ASSINANTE] = AssinanteService::getCoAssinanteLogado();
        if (!empty($dados[NU_DIA_SEMANA])) {
            foreach ($dados[NU_DIA_SEMANA] as $dia => $valor) {
                $funcionamento[NU_DIA_SEMANA] = $dia;
                $funcionamento[NU_HORA_ABERTURA] = $dados[NU_HORA_ABERTURA][$dia];
                $funcionamento[NU_HORA_FECHAMENTO] = $dados[NU_HORA_FECHAMENTO][$dia];
                $retorno[SUCESSO] = $this->Salva($funcionamento);
            }
        }
        return $retorno;
    }

}