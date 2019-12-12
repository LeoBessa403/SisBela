<?php

/**
 * HistoricoComissao.Entidade [ ENTIDADE ]
 * @copyright (c) 2019, Leo Bessa
 */

class HistoricoComissaoEntidade extends AbstractEntidade
{
    const TABELA = 'TB_HISTORICO_COMISSAO';
    const ENTIDADE = 'HistoricoComissaoEntidade';
    const CHAVE = CO_HISTORICO_COMISSAO;

    private $co_historico_comissao;
    private $dt_cadastro;
    private $dt_valido;
    private $st_taxa_antecipacao;
    private $st_taxa_administrativa;
    private $st_taxa_cartao_credito;
    private $st_taxa_cartao_debito;
    private $st_recebimento_pre_venda;
    private $nu_forma_comissao;
    private $co_config_comissao;
    private $co_percentual_comissao;
    private $co_usuario;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_HISTORICO_COMISSAO,
            DT_CADASTRO,
            DT_VALIDO,
            ST_TAXA_ANTECIPACAO,
            ST_TAXA_ADMINISTRATIVA,
            ST_TAXA_CARTAO_CREDITO,
            ST_TAXA_CARTAO_DEBITO,
            ST_RECEBIMENTO_PRE_VENDA,
            NU_FORMA_COMISSAO,
            CO_CONFIG_COMISSAO,
            CO_USUARIO,
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
     * @return int $co_historico_comissao
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
     * @return mixed $dt_valido
     */
    public function getDtValido()
    {
        return $this->dt_valido;
    }

    /**
     * @param $dt_valido
     * @return mixed
     */
    public function setDtValido($dt_valido)
    {
        return $this->dt_valido = $dt_valido;
    }

    /**
     * @return mixed $st_taxa_antecipacao
     */
    public function getStTaxaAntecipacao()
    {
        return $this->st_taxa_antecipacao;
    }

    /**
     * @param $st_taxa_antecipacao
     * @return mixed
     */
    public function setStTaxaAntecipacao($st_taxa_antecipacao)
    {
        return $this->st_taxa_antecipacao = $st_taxa_antecipacao;
    }

    /**
     * @return mixed $st_taxa_administrativa
     */
    public function getStTaxaAdministrativa()
    {
        return $this->st_taxa_administrativa;
    }

    /**
     * @param $st_taxa_administrativa
     * @return mixed
     */
    public function setStTaxaAdministrativa($st_taxa_administrativa)
    {
        return $this->st_taxa_administrativa = $st_taxa_administrativa;
    }

    /**
     * @return mixed $st_taxa_cartao_credito
     */
    public function getStTaxaCartaoCredito()
    {
        return $this->st_taxa_cartao_credito;
    }

    /**
     * @param $st_taxa_cartao_credito
     * @return mixed
     */
    public function setStTaxaCartaoCredito($st_taxa_cartao_credito)
    {
        return $this->st_taxa_cartao_credito = $st_taxa_cartao_credito;
    }

    /**
     * @return mixed $st_taxa_cartao_debito
     */
    public function getStTaxaCartaoDebito()
    {
        return $this->st_taxa_cartao_debito;
    }

    /**
     * @param $st_taxa_cartao_debito
     * @return mixed
     */
    public function setStTaxaCartaoDebito($st_taxa_cartao_debito)
    {
        return $this->st_taxa_cartao_debito = $st_taxa_cartao_debito;
    }

    /**
     * @return mixed $st_recebimento_pre_venda
     */
    public function getStRecebimentoPreVenda()
    {
        return $this->st_recebimento_pre_venda;
    }

    /**
     * @param $st_recebimento_pre_venda
     * @return mixed
     */
    public function setStRecebimentoPreVenda($st_recebimento_pre_venda)
    {
        return $this->st_recebimento_pre_venda = $st_recebimento_pre_venda;
    }

    /**
     * @return mixed $nu_forma_comissao
     */
    public function getNuFormaComissao()
    {
        return $this->nu_forma_comissao;
    }

    /**
     * @param $nu_forma_comissao
     * @return mixed
     */
    public function setNuFormaComissao($nu_forma_comissao)
    {
        return $this->nu_forma_comissao = $nu_forma_comissao;
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
     * @return PercentualComissaoEntidade $co_percentual_comissao
     */
    public function getCoPercentualComissao()
    {
        return $this->co_percentual_comissao;
    }

    /**
     * @param $co_percentual_comissao
     * @return mixed
     */
    public function setCoPercentualComissao($co_percentual_comissao)
    {
        return $this->co_percentual_comissao = $co_percentual_comissao;
    }

    /**
     * @return array
     */
    public function getPercentuaisComissao()
    {
        $percAtual = [];
        /** @var PercentualComissaoEntidade $percCom */
        foreach ($this->getCoPercentualComissao() as $percCom) {
            $percAtual[$percCom->getNuTipoComissao()] = $percCom->getNuComissao();
        }
        return $percAtual;
    }

    /**
     * @return UsuarioEntidade $co_usuario
     */
    public function getCoUsuario()
    {
        return $this->co_usuario;
    }

    /**
     * @param $co_usuario
     * @return mixed
     */
    public function setCoUsuario($co_usuario)
    {
        $this->co_usuario = $co_usuario;
    }


}