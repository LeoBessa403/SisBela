<?php

/**
 * ConfigComissao.Entidade [ ENTIDADE ]
 * @copyright (c) 2019, Leo Bessa
 */

class ConfigComissaoEntidade extends AbstractEntidade
{
    const TABELA = 'TB_CONFIG_COMISSAO';
    const ENTIDADE = 'ConfigComissaoEntidade';
    const CHAVE = CO_CONFIG_COMISSAO;

    private $co_config_comissao;
    private $dt_cadastro;
    private $co_assinante;
    private $co_historico_comissao;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_CONFIG_COMISSAO,
            DT_CADASTRO,
            CO_ASSINANTE,
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
     * @return ConfigComissaoEntidade $co_config_comissao
     */
    public function getCoConfigComissao()
    {
        return $this->co_config_comissao;
    }

    /**
     * @param $co_config_comissao
     * @return mixed
     */
    public function setCoConfigComissao($co_config_comissao)
    {
        return $this->co_config_comissao = $co_config_comissao;
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
     * @return HistoricoComissaoEntidade $co_historico_comissao
     */
    public function getCoHistoricoComissao()
    {
        return $this->co_historico_comissao;
    }

    /**
     * @param $co_historico_comissao
     * @return mixed
     */
    public function setCoHistoricoComissao($co_historico_comissao)
    {
        return $this->co_historico_comissao = $co_historico_comissao;
    }

    /**
     * @return HistoricoComissaoEntidade $co_historico_comissao
     */
    public function getCoUltimoHistoricoComissao()
    {
        return $this->ultimo($this->getCoHistoricoComissao());
    }

}