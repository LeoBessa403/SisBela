<?php

/**
 * TaxaCartao.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class TaxaCartaoEntidade extends AbstractEntidade
{
    const TABELA = 'TB_TAXA_CARTAO';
    const ENTIDADE = 'TaxaCartaoEntidade';
    const CHAVE = CO_TAXA_CARTAO;

    private $co_taxa_cartao;
    private $nu_taxa_cartao;
    private $nu_taxa_antecipacao;
    private $dt_cadastro;
    private $co_pagamento_bandeira_cartao;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_TAXA_CARTAO,
            NU_TAXA_CARTAO,
            NU_TAXA_ANTECIPACAO,
            DT_CADASTRO,
            CO_PAGAMENTO_BANDEIRA_CARTAO,
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
     * @return int $co_taxa_cartao
     */
    public function getCoTaxaCartao()
    {
        return $this->co_taxa_cartao;
    }

    /**
     * @param $co_taxa_cartao
     * @return mixed
     */
    public function setCoTaxaCartao($co_taxa_cartao)
    {
        return $this->co_taxa_cartao = $co_taxa_cartao;
    }

    /**
     * @return mixed $nu_taxa_cartao
     */
    public function getNuTaxaCartao()
    {
        return $this->nu_taxa_cartao;
    }

    /**
     * @param $nu_taxa_cartao
     * @return mixed
     */
    public function setNuTaxaCartao($nu_taxa_cartao)
    {
        return $this->nu_taxa_cartao = $nu_taxa_cartao;
    }

    /**
     * @return mixed $nu_taxa_antecipacao
     */
    public function getNuTaxaAntecipacao()
    {
        return $this->nu_taxa_antecipacao;
    }

    /**
     * @param $nu_taxa_antecipacao
     * @return mixed
     */
    public function setNuTaxaAntecipacao($nu_taxa_antecipacao)
    {
        return $this->nu_taxa_antecipacao = $nu_taxa_antecipacao;
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
     * @return PagamentoBandeiraCartaoEntidade $co_pagamento_bandeira_cartao
     */
    public function getCoPagamentoBandeiraCartao()
    {
        return $this->co_pagamento_bandeira_cartao;
    }

    /**
     * @param $co_pagamento_bandeira_cartao
     * @return mixed
     */
    public function setCoPagamentoBandeiraCartao($co_pagamento_bandeira_cartao)
    {
        return $this->co_pagamento_bandeira_cartao = $co_pagamento_bandeira_cartao;
    }

}