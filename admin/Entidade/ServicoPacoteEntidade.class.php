<?php

/**
 * ServicoPacote.Entidade [ ENTIDADE ]
 * @copyright (c) 2019, Leo Bessa
 */

class ServicoPacoteEntidade extends AbstractEntidade
{
    const TABELA = 'TB_SERVICO_PACOTE';
    const ENTIDADE = 'ServicoPacoteEntidade';
    const CHAVE = CO_SERVICO_PACOTE;

    private $co_servico_pacote;
    private $co_servico;
    private $co_pacote_serv;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_SERVICO_PACOTE,
            CO_SERVICO,
            CO_PACOTE_SERV,
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
     * @return int $co_servico_pacote
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
     * @return PacoteServEntidade $co_pacote_serv
     */
    public function getCoPacoteServ()
    {
        return $this->co_pacote_serv;
    }

    /**
     * @param $co_pacote_serv
     * @return mixed
     */
    public function setCoPacoteServ($co_pacote_serv)
    {
        return $this->co_pacote_serv = $co_pacote_serv;
    }

}