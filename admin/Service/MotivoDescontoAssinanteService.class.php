<?php

/**
 * MotivoDescontoAssinanteService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  MotivoDescontoAssinanteService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(MotivoDescontoAssinanteEntidade::ENTIDADE);
        $this->ObjetoModel = New MotivoDescontoAssinanteModel();
    }

    public function iniciaMotivoDescontoAssinante()
    {
        $motivos = MotivoDescontoService::montaComboMotivosDesconto();
        $motivoDesc[CO_ASSINANTE] = AssinanteService::getCoAssinanteLogado();

        /** @var MotivoDescontoEntidade $descMotivo */
        foreach ($motivos as $motivo => $descMotivo) {
            $motivoDesc[CO_MOTIVO_DESCONTO] = $motivo;
            $motivoDesc[ST_STATUS_DESCONTO] = SimNaoEnum::NAO;
            $motivoDesc[ST_REFLETE_DESCONTO_COMISSAO] = SimNaoEnum::NAO;
            $motivoDesc[DT_CADASTRO] = Valida::DataHoraAtualBanco();
            $this->Salva($motivoDesc);
        }
        return $motivos;
    }

    public function salvaMotivoDescontoAssinante($dados)
    {
        /** @var PDO $PDO */
        $PDO = $this->getPDO();
        $session = new Session();
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];
        $dadosStatus = [];
        $dadosReflete = [];
        $dadosMotDesAss = [];
        $PDO->beginTransaction();
        // Atualiza todos para NÃO nos campos de Status e reflete desconto
        foreach ($dados[CO_MOTIVO_DESCONTO_ASSINANTE] as $coMotivoDesAss) {
            $dadosMotDesAss[ST_STATUS_DESCONTO] = SimNaoEnum::NAO;
            $dadosMotDesAss[ST_REFLETE_DESCONTO_COMISSAO] = SimNaoEnum::NAO;
            $this->Salva($dadosMotDesAss, $coMotivoDesAss);
        }
        // Atualiza a Situação dos Status de descontos para SIM
        if (!empty($dados[ST_STATUS_DESCONTO])) {
            foreach ($dados[ST_STATUS_DESCONTO] as $coMotivo => $status) {
                $coMotDesAss = $dados[CO_MOTIVO_DESCONTO_ASSINANTE][$coMotivo];
                $dadosStatus[ST_STATUS_DESCONTO] = SimNaoEnum::SIM;
                $this->Salva($dadosStatus, $coMotDesAss);
            }
        }
        // Atualiza os Situação de reflete desconto na comissão para SIM
        if (!empty($dados[ST_REFLETE_DESCONTO_COMISSAO])) {
            foreach ($dados[ST_REFLETE_DESCONTO_COMISSAO] as $coMotivo => $status) {
                $coMotDesAss = $dados[CO_MOTIVO_DESCONTO_ASSINANTE][$coMotivo];
                $dadosReflete[ST_REFLETE_DESCONTO_COMISSAO] = SimNaoEnum::SIM;
                $this->Salva($dadosReflete, $coMotDesAss);
            }
        }
        $session->setSession(MENSAGEM, ATUALIZADO);
        $retorno[SUCESSO] = true;

        if ($retorno[SUCESSO]) {
            $retorno[SUCESSO] = true;
            $PDO->commit();
        } else {
            Notificacoes::geraMensagem(
                'Não foi possível realizar a ação',
                TiposMensagemEnum::ALERTA
            );
            $retorno[SUCESSO] = false;
            $PDO->rollBack();
        }

        return $retorno;
    }
}