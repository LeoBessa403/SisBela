<?php

/**
 * ServicoPacoteService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  ServicoPacoteService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(ServicoPacoteEntidade::ENTIDADE);
        $this->ObjetoModel = New ServicoPacoteModel();
    }


    public function salvaServicoPacote($dados, $coPacoteServ)
    {
        $this->DeletaQuando([
            CO_PACOTE_SERV => $coPacoteServ
        ]);
        $retorno = false;
        $pacoteServ[CO_PACOTE_SERV] = $coPacoteServ;
        foreach ($dados[CO_SERVICO] as $servico) {
            $pacoteServ[CO_SERVICO] = $servico;
            $retorno = $this->Salva($pacoteServ);
        }
        return $retorno;
    }

}