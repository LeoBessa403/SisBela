<?php

/**
 * MotivoDesconto.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class MotivoDescontoEntidade extends AbstractEntidade
{
    const TABELA = 'TB_MOTIVO_DESCONTO';
    const ENTIDADE = 'MotivoDescontoEntidade';
    const CHAVE = CO_MOTIVO_DESCONTO;

    private $co_motivo_desconto;
    private $ds_motivo_desconto;
    private $co_motivo_desconto_assinante;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_MOTIVO_DESCONTO,
            DS_MOTIVO_DESCONTO,
        ];
    }

    /**
     * @return array $relacionamentos
     */
    public static function getRelacionamentos()
    {
        $relacionamentos = Relacionamentos::getRelacionamentos();
        return $relacionamentos[static::TABELA];
    }


    /**
     * @return int $co_motivo_desconto
     */
    public function getCoMotivoDesconto()
    {
        return $this->co_motivo_desconto;
    }

    /**
     * @param $co_motivo_desconto
     * @return mixed
     */
    public function setCoMotivoDesconto($co_motivo_desconto)
    {
        return $this->co_motivo_desconto = $co_motivo_desconto;
    }

    /**
     * @return mixed $ds_motivo_desconto
     */
    public function getDsMotivoDesconto()
    {
        return $this->ds_motivo_desconto;
    }

    /**
     * @param $ds_motivo_desconto
     * @return mixed
     */
    public function setDsMotivoDesconto($ds_motivo_desconto)
    {
        return $this->ds_motivo_desconto = $ds_motivo_desconto;
    }

    /**
     * @return MotivoDescontoAssinanteEntidade $co_motivo_desconto_assinante
     */
    public function getCoMotivoDescontoAssinante()
    {
        return $this->co_motivo_desconto_assinante;
    }

    /**
     * @param $co_motivo_desconto_assinante
     * @return mixed
     */
    public function setCoMotivoDescontoAssinante($co_motivo_desconto_assinante)
    {
        return $this->co_motivo_desconto_assinante = $co_motivo_desconto_assinante;
    }

}