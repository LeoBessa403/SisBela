<?php

/**
 * Servico.Entidade [ ENTIDADE ]
 * @copyright (c) 2019, Leo Bessa
 */

class ServicoEntidade extends AbstractEntidade
{
    const TABELA = 'TB_SERVICO';
    const ENTIDADE = 'ServicoEntidade';
    const CHAVE = CO_SERVICO;

    private $co_servico;
    private $dt_cadastro;
    private $st_status;
    private $st_assistente;
    private $no_servico;
    private $nu_duracao;
    private $ds_descricao;
    private $co_categoria_servico;
    private $co_preco_servico;
    private $co_percentual_comissao;
    private $co_servico_profissional;
    private $co_imagem;
    private $co_servico_pacote;
    private $co_preco_promocao;
    private $co_cortesia;
    private $co_status_agenda_servico;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_SERVICO,
            DT_CADASTRO,
            ST_STATUS,
            ST_ASSISTENTE,
            NO_SERVICO,
            NU_DURACAO,
            DS_DESCRICAO,
            CO_CATEGORIA_SERVICO,
            CO_IMAGEM,
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
     * @return int $co_servico
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
     * @return mixed $st_assistente
     */
    public function getStAssistente()
    {
        return $this->st_assistente;
    }

    /**
     * @param $st_assistente
     * @return mixed
     */
    public function setStAssistente($st_assistente)
    {
        return $this->st_assistente = $st_assistente;
    }

    /**
     * @return mixed $no_servico
     */
    public function getNoServico()
    {
        return $this->no_servico;
    }

    /**
     * @param $no_servico
     * @return mixed
     */
    public function setNoServico($no_servico)
    {
        return $this->no_servico = $no_servico;
    }

    /**
     * @return mixed $nu_duracao
     */
    public function getNuDuracao()
    {
        return $this->nu_duracao;
    }

    /**
     * @param $nu_duracao
     * @return mixed
     */
    public function setNuDuracao($nu_duracao)
    {
        return $this->nu_duracao = $nu_duracao;
    }

    /**
     * @return mixed $ds_descricao
     */
    public function getDsDescricao()
    {
        return $this->ds_descricao;
    }

    /**
     * @param $ds_descricao
     * @return mixed
     */
    public function setDsDescricao($ds_descricao)
    {
        return $this->ds_descricao = $ds_descricao;
    }

    /**
     * @return CategoriaServicoEntidade $co_categoria_servico
     */
    public function getCoCategoriaServico()
    {
        return $this->co_categoria_servico;
    }

    /**
     * @param $co_categoria_servico
     * @return mixed
     */
    public function setCoCategoriaServico($co_categoria_servico)
    {
        return $this->co_categoria_servico = $co_categoria_servico;
    }

    /**
     * @return PrecoServicoEntidade $co_preco_servico
     */
    public function getCoPrecoServico()
    {
        return $this->co_preco_servico;
    }

    /**
     * @param $co_preco_servico
     * @return mixed
     */
    public function setCoPrecoServico($co_preco_servico)
    {
        return $this->co_preco_servico = $co_preco_servico;
    }

    /**
     * @return ImagemEntidade $co_imagem
     */
    public function getCoImagem()
    {
        return $this->co_imagem;
    }

    /**
     * @param $co_imagem
     * @return mixed
     */
    public function setCoImagem($co_imagem)
    {
        return $this->co_imagem = $co_imagem;
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

    /**
     * @return PrecoServicoEntidade $co_preco_servico
     */
    public function getCoUltimoPrecoServico()
    {
        return $this->ultimo($this->getCoPrecoServico());
    }

    /**
     * @return ServicoPacoteEntidade $co_servico_pacote
     */
    public function getCoServicoPacote()
    {
        return $this->co_servico_pacote;
    }

    /**
     * @param $co_servico_pacote
     * @return mixed
     */
    public function setCoServicoPacote($co_servico_pacote)
    {
        return $this->co_servico_pacote = $co_servico_pacote;
    }

    /**
     * @return PrecoPromocaoEntidade $co_preco_promocao
     */
    public function getCoPrecoPromocao()
    {
        return $this->co_preco_promocao;
    }

    /**
     * @param $co_preco_promocao
     * @return mixed
     */
    public function setCoPrecoPromocao($co_preco_promocao)
    {
        return $this->co_preco_promocao = $co_preco_promocao;
    }

    /**
     * @return CortesiaEntidade $co_cortesia
     */
    public function getCoCortesia()
    {
        return $this->co_cortesia;
    }

    /**
     * @param mixed $co_cortesia
     */
    public function setCoCortesia($co_cortesia)
    {
        $this->co_cortesia = $co_cortesia;
    }

    /**
     * @return StatusAgendaServicoEntidade $co_status_agenda_servico
     */
    public function getCoStatusAgendaServico()
    {
        return $this->co_status_agenda_servico;
    }

    /**
     * @param $co_status_agenda_servico
     * @return mixed
     */
    public function setCoStatusAgendaServico($co_status_agenda_servico)
    {
        return $this->co_status_agenda_servico = $co_status_agenda_servico;
    }

    /**
     * @return StatusAgendaServicoEntidade $co_status_agenda_servico
     */
    public function getCoUltimoStatusAgendaServico()
    {
        return $this->ultimo($this->getCoStatusAgendaServico());
    }
}