<?php

/**
 * AgendaModel.class [ MODEL ]
 * @copyright (c) 2019, Leo Bessa
 */
class  AgendaModel extends AbstractModel
{

    public function __construct()
    {
        parent::__construct(AgendaEntidade::ENTIDADE);
    }

    public function PesquisaAgendamentos($Condicoes, $maisCampos)
    {
        $Condicoes['tsa.' . CO_STATUS_AGENDA] = '(SELECT max(sa.co_status_agenda) FROM tb_status_agenda sa
          WHERE sa.co_agenda = ta.co_agenda)';
        $tabela = "tb_agenda ta
                        inner join tb_status_agenda tsa on ta.co_agenda = tsa.co_agenda
                        left join tb_profissional tp on tp.co_profissional = tsa.co_profissional
                        left join tb_cliente tc on tc.co_cliente = tsa.co_cliente
                        left join tb_servico ts on tsa.co_servico = ts.co_servico
                        left join tb_pessoa t1 on tc.co_pessoa = t1.co_pessoa
                        left join tb_pessoa t2 on tp.co_pessoa = t2.co_pessoa
                        inner join tb_usuario tu on tu.co_usuario = tsa.co_usuario
                        inner join tb_pessoa t3 on tu.co_pessoa = t3.co_pessoa";

        $campos = "ta.co_agenda, dt_inicio_agenda, dt_fim_agenda, t1.no_pessoa as cliente, 
                t2.no_pessoa as profissional, no_servico, tsa.st_status, t3.no_pessoa as usuario";

        if ($maisCampos)
            $campos .= ', ' . $maisCampos;

        $pesquisa = new Pesquisa();
        $where = $pesquisa->getClausula($Condicoes);
        $pesquisa->Pesquisar($tabela, $where . ' order by dt_inicio_agenda asc', null, $campos);
        return $pesquisa->getResult();
    }

}