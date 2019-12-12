<?php

/**
 * ProfissionalModel.class [ MODEL ]
 * @copyright (c) 2018, Leo Bessa
 */
class  ProfissionalModel extends AbstractModel
{

    public function __construct()
    {
        parent::__construct(ProfissionalEntidade::ENTIDADE);
    }

    public function PesquisaAvancada($Condicoes)
    {
        $tabela = ProfissionalEntidade::TABELA . " prof" .
            " inner join " . PessoaEntidade::TABELA . " pes" .
            " on prof." . PessoaEntidade::CHAVE . " = pes." . PessoaEntidade::CHAVE .
            " inner join " . ProfissionalCargoEntidade::TABELA . " procar" .
            " on prof." . ProfissionalEntidade::CHAVE . " = procar." . ProfissionalEntidade::CHAVE .
            " left join " . JornadaTrabalhoEntidade::TABELA . " jortra" .
            " on prof." . ProfissionalEntidade::CHAVE . " = jortra." . ProfissionalEntidade::CHAVE .
            " inner join " . EnderecoEntidade::TABELA . " end" .
            " on end." . EnderecoEntidade::CHAVE . " = pes." . EnderecoEntidade::CHAVE .
            " inner join " . ContaBancariaEntidade::TABELA . " conban" .
            " on conban." . ContaBancariaEntidade::CHAVE . " = prof." . ContaBancariaEntidade::CHAVE;

        $campos = "DISTINCT prof.*";
        $pesquisa = new Pesquisa();
        $where = $pesquisa->getClausula($Condicoes);
        $pesquisa->Pesquisar($tabela, $where, null, $campos);
        $profissionais = [];
        /** @var ProfissionalEntidade $profissional */
        foreach ($pesquisa->getResult() as $profissional) {
            $prof[0] = $profissional;
            $profissionais[] = $this->getUmObjeto(ProfissionalEntidade::ENTIDADE, $prof);
        }
        return $profissionais;
    }

}