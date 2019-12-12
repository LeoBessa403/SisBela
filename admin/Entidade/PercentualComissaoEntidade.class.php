<?php

/**
 * PercentualComissao.Entidade [ ENTIDADE ]
 * @copyright (c) 2019, Leo Bessa
 */

class PercentualComissaoEntidade extends AbstractEntidade
{
    const TABELA = 'TB_PERCENTUAL_COMISSAO';
    const ENTIDADE = 'PercentualComissaoEntidade';
    const CHAVE = CO_PERCENTUAL_COMISSAO;

    private $co_percentual_comissao;
    private $nu_comissao;
    private $nu_tipo_comissao;
    private $dt_cadastro;
    private $dt_atualizado;
    private $co_historico_comissao;
    private $co_servico;
    private $co_profissional;
    private $co_servico_profissional;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_PERCENTUAL_COMISSAO,
            NU_COMISSAO,
            NU_TIPO_COMISSAO,
            DT_CADASTRO,
            DT_ATUALIZADO,
            CO_HISTORICO_COMISSAO,
            CO_SERVICO,
            CO_PROFISSIONAL,
            CO_SERVICO_PROFISSIONAL,
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
     * @return int $co_percentual_comissao
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
     * @return mixed $nu_comissao
     */
    public function getNuComissao()
    {
        return $this->nu_comissao;
    }

    /**
     * @param $nu_comissao
     * @return mixed
     */
    public function setNuComissao($nu_comissao)
    {
        return $this->nu_comissao = $nu_comissao;
    }

    /**
     * @return mixed $nu_tipo_comissao
     */
    public function getNuTipoComissao()
    {
        return $this->nu_tipo_comissao;
    }

    /**
     * @param $nu_tipo_comissao
     * @return mixed
     */
    public function setNuTipoComissao($nu_tipo_comissao)
    {
        return $this->nu_tipo_comissao = $nu_tipo_comissao;
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
     * @return mixed $dt_atualizado
     */
    public function getDtAtualizado()
    {
        return $this->dt_atualizado;
    }

    /**
     * @param $dt_atualizado
     * @return mixed
     */
    public function setDtAtualizado($dt_atualizado)
    {
        return $this->dt_atualizado = $dt_atualizado;
    }

    /**
     * @return HistoricoComissaoService $co_historico_comissao
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
     * @return ServicoEntidade $co_servico
     */
    public function getCoServico()
    {
        return $this->co_servico;
    }

    /**
     * @param $co_servico
     * @return mixed
     */
    public function setCoServico($co_servico)
    {
        return $this->co_servico = $co_servico;
    }

    /**
     * @return ProfissionalEntidade $co_profissional
     */
    public function getCoProfissional()
    {
        return $this->co_profissional;
    }

    /**
     * @param $co_profissional
     * @return mixed
     */
    public function setCoProfissional($co_profissional)
    {
        return $this->co_profissional = $co_profissional;
    }

    /**
     * @return ServicoProfissionalEntidade $co_servico_profissional
     */
    public function getCoServicoProfissional()
    {
        return $this->co_servico_profissional;
    }

    /**
     * @param $co_servico_profissional
     * @return mixed
     */
    public function setCoServicoProfissional($co_servico_profissional)
    {
        return $this->co_servico_profissional = $co_servico_profissional;
    }

}