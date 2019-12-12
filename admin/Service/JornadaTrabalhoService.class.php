<?php

/**
 * JornadaTrabalhoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  JornadaTrabalhoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(JornadaTrabalhoEntidade::ENTIDADE);
        $this->ObjetoModel = New JornadaTrabalhoModel();
    }

    /**
     * @param $dados
     * @param null $coProfissional
     * @return mixed
     */
    public function salvaJornadaTrabalho($dados, $coProfissional)
    {
        $this->DeletaQuando([
            CO_PROFISSIONAL => $coProfissional
        ]);
        $retorno[SUCESSO] = false;
        $jornadaTrabalho[CO_PROFISSIONAL] = $coProfissional;
        if (!empty($dados[NU_DIA_SEMANA])) {
            foreach ($dados[NU_DIA_SEMANA] as $dia => $valor) {
                $jornadaTrabalho[NU_DIA_SEMANA] = $dia;
                $jornadaTrabalho[NU_HORA_ABERTURA] = $dados[NU_HORA_ABERTURA][$dia];
                $jornadaTrabalho[NU_HORA_FECHAMENTO] = $dados[NU_HORA_FECHAMENTO][$dia];
                $jornadaTrabalho[NU_ALMOCO_INICIO] = $dados[NU_ALMOCO_INICIO][$dia];
                $jornadaTrabalho[NU_ALMOCO_FINAL] = $dados[NU_ALMOCO_FINAL][$dia];
                $jornadaTrabalho[NU_INTERVALO_INICIO] = $dados[NU_INTERVALO_INICIO][$dia];
                $jornadaTrabalho[NU_INTERVALO_FINAL] = $dados[NU_INTERVALO_FINAL][$dia];
                $retorno[SUCESSO] = $this->Salva($jornadaTrabalho);
            }
        }
        return $retorno;
    }
}