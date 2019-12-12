<?php

/**
 * AgendaForm [ FORM ]
 * @copyright (c) 2019, Leo Bessa
 */
class AgendaForm
{
    public static function CadastroAgendamento()
    {
        $id = "CadastroAgendamento";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action,
            "Cadastrar", 12);

        $options = StatusAgendamentoEnum::$descricao;
        unset($options[StatusAgendamentoEnum::DELETADO]);
        $formulario
            ->setId(ST_STATUS)
            ->setType(TiposCampoEnum::SELECT)
            ->setLabel("Status Agendamento")
            ->setTamanhoInput(3)
            ->setClasses("ob")
            ->setOptions($options)
            ->CriaInpunt();

        $options = ClienteService::clientesCombo();
        $formulario
            ->setId(CO_CLIENTE)
            ->setType(TiposCampoEnum::SELECT)
            ->setLabel("Cliente")
            ->setTamanhoInput(9)
            ->setClasses("ob")
            ->setOptions($options)
            ->CriaInpunt();

        $options = ServicoService::servicosCombo();
        $formulario
            ->setId(CO_SERVICO)
            ->setType(TiposCampoEnum::SELECT)
            ->setLabel("Serviço")
            ->setTamanhoInput(12)
            ->setClasses("ob")
            ->setOptions($options)
            ->CriaInpunt();

        $formulario
            ->setId(NU_VALOR . "2")
            ->setClasses("disabilita")
            ->setLabel("Preço R$")
            ->setTamanhoInput(4)
            ->CriaInpunt();

        $formulario
            ->setType(TiposCampoEnum::HIDDEN)
            ->setId(NU_VALOR)
            ->setValues(null)
            ->CriaInpunt();

        $options = ['' => 'Selecione um Serviço.'];
        $formulario
            ->setId(CO_PROFISSIONAL)
            ->setType(TiposCampoEnum::SELECT)
            ->setLabel("Profissional")
            ->setTamanhoInput(4)
            ->setClasses("ob")
            ->setOptions($options)
            ->CriaInpunt();

        $options = ['' => 'Selecione um Serviço.'];
        $formulario
            ->setId('co_assistente')
            ->setType(TiposCampoEnum::SELECT)
            ->setLabel("Assistente")
            ->setTamanhoInput(4)
            ->setClasses("ob")
            ->setOptions($options)
            ->CriaInpunt();

        $formulario
            ->setId('dt_agenda')
            ->setTamanhoInput(3)
            ->setClasses("data ob")
            ->setIcon("clip-calendar-3")
            ->setLabel("Data de Inicio")
            ->CriaInpunt();

        $formulario
            ->setId(NU_DURACAO)
            ->setTamanhoInput(3)
            ->setClasses("numero ob")
            ->setInfo("Duração do Serviço")
            ->setLabel("Duração (Minutos)")
            ->CriaInpunt();

        $formulario
            ->setId('nu_hora_inicio_agenda')
            ->setTamanhoInput(3)
            ->setClasses("horas ob")
            ->setPlace("Formato 24Hrs")
            ->setIcon("clip-clock-2", "dir")
            ->setLabel("Hórario de Início")
            ->CriaInpunt();

        $formulario
            ->setId('nu_hora_fim_agenda')
            ->setTamanhoInput(3)
            ->setClasses("horas ob")
            ->setPlace("Formato 24Hrs")
            ->setIcon("clip-clock-2", "dir")
            ->setLabel("Hórario de Término")
            ->CriaInpunt();

        $formulario
            ->setType(TiposCampoEnum::TEXTAREA)
            ->setId(DS_OBSERVACAO)
            ->setTamanhoInput(12)
            ->setLabel("Observação")
            ->CriaInpunt();


        $formulario
            ->setType(TiposCampoEnum::HIDDEN)
            ->setId(CO_AGENDA)
            ->setValues(null)
            ->CriaInpunt();

        return $formulario->finalizaForm(false, false);
    }

    public static function DeletarAgendamento()
    {
        $id = "DeletarAgendamento";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . $id,
            "Deletar", 12);

        $formulario
            ->setType(TiposCampoEnum::TEXTAREA)
            ->setId(DS_MOTIVO)
            ->setClasses('ob')
            ->setTamanhoInput(12)
            ->setLabel("Motivo:")
            ->CriaInpunt();

        return $formulario->finalizaForm(false, false);
    }

    public static function Pesquisar($resultPreco)
    {
        $id = "PesquisaAvancadaAgendamento";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action, "Pesquisa", 12);

        $options[''] = 'Selecione um status';
        foreach (StatusAgendamentoEnum::$descricao as $chave => $valor) {
            $options[$chave] = $valor;
        }
        $formulario
            ->setId(ST_STATUS . '-pesquisa')
            ->setType(TiposCampoEnum::SELECT)
            ->setLabel("Status Agendamento")
            ->setTamanhoInput(6)
            ->setOptions($options)
            ->CriaInpunt();

        $options = ClienteService::clientesCombo();
        $formulario
            ->setId(CO_CLIENTE . '-pesquisa')
            ->setType(TiposCampoEnum::SELECT)
            ->setLabel("Cliente")
            ->setTamanhoInput(6)
            ->setOptions($options)
            ->CriaInpunt();

        $formulario
            ->setId(CO_PROFISSIONAL . '-pesquisa')
            ->setType(TiposCampoEnum::SELECT)
            ->setLabel("Profissional")
            ->setTamanhoInput(6)
            ->setOptions(ProfissionalService::ProfissionaisAtivosCombo())
            ->CriaInpunt();

        $formulario
            ->setId('co_assistente-pesquisa')
            ->setType(TiposCampoEnum::SELECT)
            ->setLabel("Assistente")
            ->setTamanhoInput(6)
            ->setOptions(ProfissionalService::AssistentesAtivosCombo())
            ->CriaInpunt();

        $formulario
            ->setId(CO_SERVICO . '-pesquisa')
            ->setType(TiposCampoEnum::SELECT)
            ->setLabel("Serviço")
            ->setTamanhoInput(12)
            ->setOptions(ServicoService::servicosCombo())
            ->CriaInpunt();

        $formulario
            ->setId(NU_VALOR . '-pesquisa')
            ->setTamanhoInput(6)
            ->setIntervalo($resultPreco)
            ->setType(TiposCampoEnum::SLIDER)
            ->setLabel("Valor R$")
            ->CriaInpunt();

        $formulario
            ->setId(NU_DURACAO . '-pesquisa')
            ->setTamanhoInput(6)
            ->setClasses("numero")
            ->setInfo("Duração do Serviço")
            ->setLabel("Duração (Minutos)")
            ->CriaInpunt();

        $formulario
            ->setId('dt1-pesquisa')
            ->setIcon("clip-calendar-3")
            ->setTamanhoInput(6)
            ->setClasses("data dt1 ob")
            ->setValor(date('d/m/Y'))
            ->setLabel("Período Inicío")
            ->CriaInpunt();

        $formulario
            ->setId('dt2-pesquisa')
            ->setIcon("clip-calendar-3")
            ->setTamanhoInput(6)
            ->setValor(date('d/m/Y'))
            ->setClasses("data dt2 ob")
            ->setLabel("Fim")
            ->CriaInpunt();


        return $formulario->finalizaForm('', false);
    }
}
