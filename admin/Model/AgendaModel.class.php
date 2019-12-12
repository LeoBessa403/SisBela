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
        $Condicoes['stpro.' . CO_STATUS_AGENDA_PROFISSIONAL] = '(SELECT max(sap.co_status_agenda_profissional)
           FROM tb_status_agenda_profissional sap
            WHERE sap.co_status_agenda_servico = stser.co_status_agenda_servico
                  AND sap.tp_profissional = 1)';
        $Condicoes['stpro2.' . CO_STATUS_AGENDA_PROFISSIONAL] = '(SELECT max(sap2.co_status_agenda_profissional)
           FROM tb_status_agenda_profissional sap2
            WHERE sap2.co_status_agenda_servico = stser.co_status_agenda_servico
                  AND sap2.tp_profissional = 2)';
        $Condicoes['stag.' . CO_STATUS_AGENDA] = '(SELECT max(sa.co_status_agenda) FROM tb_status_agenda sa
          WHERE sa.co_agenda = age.co_agenda)';
        $Condicoes['stser.' . CO_STATUS_AGENDA_SERVICO] = '(SELECT max(sas.co_status_agenda_servico) FROM tb_status_agenda_servico sas
          WHERE sas.co_status_agenda = stag.co_status_agenda)';
        $Condicoes["pre." . CO_PRECO_SERVICO] =
            "(SELECT max(co_preco_servico) from tb_preco_servico where co_servico = ser.co_servico)";
        $tabela = "tb_agenda age
                      INNER JOIN tb_status_agenda stag
                        ON age.co_agenda = stag.co_agenda
                      INNER JOIN tb_status_agenda_servico stser
                        ON stag.co_status_agenda = stser.co_status_agenda
                      INNER JOIN tb_status_agenda_profissional stpro
                        ON stser.co_status_agenda_servico = stpro.co_status_agenda_servico
                      INNER JOIN tb_status_agenda_profissional stpro2
                        ON stser.co_status_agenda_servico = stpro2.co_status_agenda_servico
                      INNER JOIN tb_cliente cli
                        ON stag.co_cliente = cli.co_cliente
                      INNER JOIN tb_pessoa pes
                        ON pes.co_pessoa = cli.co_pessoa
                      INNER JOIN tb_profissional pro
                        ON stpro.co_profissional = pro.co_profissional
                      LEFT JOIN tb_profissional pro2
                        ON stpro2.co_profissional = pro2.co_profissional
                      LEFT JOIN tb_pessoa pes2
                        ON pes2.co_pessoa = pro.co_pessoa
                      LEFT JOIN tb_pessoa pes3
                        ON pes3.co_pessoa = pro2.co_pessoa
                      INNER JOIN tb_servico ser
                        ON ser.co_servico = stser.co_servico
                      INNER JOIN tb_preco_servico pre
                        ON ser.co_servico = pre.co_servico";

        $campos = "age.co_agenda, dt_inicio_agenda, dt_fim_agenda, pes.no_pessoa as cliente, 
                pes2.no_pessoa as profissional, pes3.no_pessoa AS assistente, no_servico, stag.st_status";

        if ($maisCampos)
            $campos .= ', ' . $maisCampos;

        $pesquisa = new Pesquisa();
        $where = $pesquisa->getClausula($Condicoes);
        $pesquisa->Pesquisar($tabela, $where . ' order by dt_inicio_agenda asc', null, $campos);
        return $pesquisa->getResult();
    }

}