<?php

/**
 * MotivoDescontoAssinante.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class MotivoDescontoAssinanteEntidade extends AbstractEntidade
{
    const TABELA = 'TB_MOTIVO_DESCONTO_ASSINANTE';
    const ENTIDADE = 'MotivoDescontoAssinanteEntidade';
    const CHAVE = CO_MOTIVO_DESCONTO_ASSINANTE;

    private $co_motivo_desconto_assinante;
    private $st_status_desconto;
    private $st_reflete_desconto_comissao;
    private $dt_cadastro;
    private $co_assinante;
    private $co_motivo_desconto;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_MOTIVO_DESCONTO_ASSINANTE,
            ST_STATUS_DESCONTO,
            ST_REFLETE_DESCONTO_COMISSAO,
            DT_CADASTRO,
            CO_ASSINANTE,
            CO_MOTIVO_DESCONTO,
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
     * @return int $co_motivo_desconto_assinante
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

    /**
     * @return mixed $st_status_desconto
     */
    public function getStStatusDesconto()
    {
        return $this->st_status_desconto;
    }

    /**
     * @param $st_status_desconto
     * @return mixed
     */
    public function setStStatusDesconto($st_status_desconto)
    {
        return $this->st_status_desconto = $st_status_desconto;
    }

    /**
     * @return mixed $st_reflete_desconto_comissao
     */
    public function getStRefleteDescontoComissao()
    {
        return $this->st_reflete_desconto_comissao;
    }

    /**
     * @param $st_reflete_desconto_comissao
     * @return mixed
     */
    public function setStRefleteDescontoComissao($st_reflete_desconto_comissao)
    {
        return $this->st_reflete_desconto_comissao = $st_reflete_desconto_comissao;
    }

    /**
     * @return mixed $dt_cadastro
     */
    public function getDtCadastro()
    {
        return $this->dt_cadastro;
    }

    /**
     * @param $dt_cadastro
     * @return mixed
     */
    public function setDtCadastro($dt_cadastro)
    {
        return $this->dt_cadastro = $dt_cadastro;
    }

    /**
     * @return AssinanteEntidade $co_assinante
     */
    public function getCoAssinante()
    {
        return $this->co_assinante;
    }

    /**
     * @param $co_assinante
     * @return mixed
     */
    public function setCoAssinante($co_assinante)
    {
        return $this->co_assinante = $co_assinante;
    }

    /**
     * @return MotivoDescontoEntidade $co_motivo_desconto
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

}