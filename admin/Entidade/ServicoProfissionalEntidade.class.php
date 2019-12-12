<?php

/**
 * ServicoProfissional.Entidade [ ENTIDADE ]
 * @copyright (c) 2019, Leo Bessa
 */

class ServicoProfissionalEntidade extends AbstractEntidade
{
    const TABELA = 'TB_SERVICO_PROFISSIONAL';
    const ENTIDADE = 'ServicoProfissionalEntidade';
    const CHAVE = CO_SERVICO_PROFISSIONAL;

    private $co_servico_profissional;
    private $st_status;
    private $co_profissional;
    private $co_servico;
    private $co_percentual_comissao;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_SERVICO_PROFISSIONAL,
            ST_STATUS,
            CO_PROFISSIONAL,
            CO_SERVICO,
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
     * @return int $co_servico_profissional
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

    /**
     * @return mixed $st_status
     */
    public function getStStatus()
    {
        return $this->st_status;
    }

    /**
     * @param $st_status
     * @return mixed
     */
    public function setStStatus($st_status)
    {
        return $this->st_status = $st_status;
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
     * @return PercentualComissaoEntidade $co_percentual_comissao
     */
    public function getCoPercentualComissao()
    {
        return $this->co_percentual_comissao;
    }

    /**
     * @param mixed $co_percentual_comissao
     */
    public function setCoPercentualComissao($co_percentual_comissao)
    {
        $this->co_percentual_comissao = $co_percentual_comissao;
    }

    /**
     * @param mixed $tipoComissao
     * @return PercentualComissaoEntidade $co_percentual_comissao
     */
    public function getNuUltimoComissaoPorTipo($tipoComissao)
    {
        $perc = array_reverse($this->getCoPercentualComissao());
        /** @var PercentualComissaoEntidade $percComis */
        foreach ($perc as $percComis) {
            if ($percComis->getNuTipoComissao() == $tipoComissao) {
                return $percComis->getNuComissao();
                break;
            }
        }
        return null;
    }

}