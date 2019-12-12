<?php

/**
 * FacilidadeBeneficioService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  FacilidadeBeneficioService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(FacilidadeBeneficioEntidade::ENTIDADE);
        $this->ObjetoModel = New FacilidadeBeneficioModel();
    }

    public function salvaFacilidadesAssinante($dados)
    {
        $this->DeletaQuando([
            CO_ASSINANTE => AssinanteService::getCoAssinanteLogado()
        ]);
        $facilidades[CO_ASSINANTE] = AssinanteService::getCoAssinanteLogado();
        $facilidades[TP_ESTABELECIMENTO] = $dados[TP_ESTABELECIMENTO][0];
        $facilidades[TP_ATENDIMENTO] = $dados[TP_ATENDIMENTO][0];
        $facilidades[TP_GENERO_ESPECIALIZADO] = $dados[TP_GENERO_ESPECIALIZADO][0];
        $facilidades[TP_ESTACIONAMENTO] = $dados[TP_ESTACIONAMENTO][0];
        $facilidades[ST_LANCHONETE] = Valida::retornoCheckbox($dados, ST_LANCHONETE);
        $facilidades[ST_TELEVISAO] = Valida::retornoCheckbox($dados, ST_TELEVISAO);
        $facilidades[ST_WIFI] = Valida::retornoCheckbox($dados, ST_WIFI);
        $facilidades[ST_ACESSO_DEFICIENTE] = Valida::retornoCheckbox($dados, ST_ACESSO_DEFICIENTE);
        $facilidades[ST_JOGOS] = Valida::retornoCheckbox($dados, ST_JOGOS);
        $retorno[SUCESSO] = $this->Salva($facilidades);
        return $retorno;
    }

}