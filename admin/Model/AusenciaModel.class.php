<?php

/**
 * AusenciaModel.class [ MODEL ]
 * @copyright (c) 2019, Leo Bessa
 */
class  AusenciaModel extends AbstractModel
{

    public function __construct()
    {
        parent::__construct(AusenciaEntidade::ENTIDADE);
    }

    public function PesquisaAvancada($Condicoes)
    {
        $tabela = AusenciaEntidade::TABELA . " aus" .
            " inner join " . ProfissionalEntidade::TABELA . " prof" .
            " on prof." . ProfissionalEntidade::CHAVE . " = aus." . ProfissionalEntidade::CHAVE;

        $campos = "aus.*";
        $pesquisa = new Pesquisa();
        $where = $pesquisa->getClausula($Condicoes);
        $where = $where . " ORDER BY aus." . AusenciaEntidade::CHAVE . " DESC";
        $pesquisa->Pesquisar($tabela, $where, null, $campos);
        $ausencias = [];
        /** @var AusenciaEntidade $ausencia */
        foreach ($pesquisa->getResult() as $ausencia) {
            $aus[0] = $ausencia;
            $ausencias[] = $this->getUmObjeto(AusenciaEntidade::ENTIDADE, $aus);
        }
        return $ausencias;
    }

}