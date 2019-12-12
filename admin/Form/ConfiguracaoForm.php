<?php

/**
 * ConfiguracaoForm [ FORM ]
 * @copyright (c) 2018, Leo Bessa
 */
class ConfiguracaoForm
{
    public static function ConfigCliente($res = false)
    {
        $id = "configCliente";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action,
            "Cadastrar", 6);
        $formulario->setValor($res);

        $label_options2 = array("<i class='fa fa-check fa-white'></i>", "<i class='fa fa-times fa-white'></i>", "verde", "vermelho");
        $formulario
            ->setLabel("Agendar pelo Site")
            ->setClasses($res[ST_MARCA_SERVICO])
            ->setId(ST_MARCA_SERVICO)
            ->setType(TiposCampoEnum::CHECKBOX)
            ->setInfo('Aceita que o cliente agende serviços pelo site?')
            ->setTamanhoInput(12)
            ->setOptions($label_options2)
            ->CriaInpunt();

        $options = [0 => "0", 1 => 1, 2 => 2, 3 => 3, 4 => 4, 5 => 5, 10 => 10, 200 => 'Sem Limite'];
        $formulario
            ->setType(TiposCampoEnum::SELECT)
            ->setId(NU_AUSENCIA)
            ->setClasses("ob")
            ->setOptions($options)
            ->setTamanhoInput(12)
            ->setLabel("Número de Ausência")
            ->setInfo('Número de ausências do cliente aceitáveis pra marcar serviço pelo site')
            ->CriaInpunt();

        if (!empty($res[CO_CONFIG_CLIENTE])):
            $formulario
                ->setType(TiposCampoEnum::HIDDEN)
                ->setId(CO_CONFIG_CLIENTE)
                ->setValues($res[CO_CONFIG_CLIENTE])
                ->CriaInpunt();
        endif;

        return $formulario->finalizaForm();
    }

    public static function ConfigAgendamento($res = false)
    {
        $id = "configAgendamento";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action,
            "Cadastrar", 6);
        $formulario->setValor($res);

        $label_options2 = array("<i class='fa fa-check fa-white'></i>", "<i class='fa fa-times fa-white'></i>", "verde", "vermelho");
        $formulario
            ->setLabel("Receber E-mail de Agendamento")
            ->setClasses($res[ST_RECEBER_EMAIL_AGENDAMENTO])
            ->setId(ST_RECEBER_EMAIL_AGENDAMENTO)
            ->setType(TiposCampoEnum::CHECKBOX)
            ->setInfo('Receber E-mail de Agendamento feito pelo site?')
            ->setTamanhoInput(12)
            ->setOptions($label_options2)
            ->CriaInpunt();

        $formulario
            ->setLabel("Enviar E-mail de Confirmação")
            ->setClasses($res[ST_ENVIAR_EMAIL_CONFIRMACAO])
            ->setId(ST_ENVIAR_EMAIL_CONFIRMACAO)
            ->setType(TiposCampoEnum::CHECKBOX)
            ->setInfo('Enviar E-mail de Confirmação de agendamento confirmado?')
            ->setTamanhoInput(12)
            ->setOptions($label_options2)
            ->CriaInpunt();

        $formulario
            ->setId(NU_ANTECEDENCIA_AGENDAMENTO)
            ->setClasses("numero")
            ->setIcon("clip-clock-2")
            ->setLabel("Intervalo em minutos")
            ->setInfo('Intervalo entre agendamentos dos clientes')
            ->setTamanhoInput(6)
            ->CriaInpunt();

        $options = [1 => "Sem Restrições", 2 => "1 Dia", 3 => "3 Dias", 4 => "7 Dias", 5 => "15 dias", 6 => "1 mês"];
        $formulario
            ->setType(TiposCampoEnum::SELECT)
            ->setId(NU_INTERVALO)
            ->setClasses("ob")
            ->setOptions($options)
            ->setTamanhoInput(6)
            ->setLabel("Antecedência no Agendamento")
            ->CriaInpunt();

        $status = ["" => Mensagens::MSG_SEM_ITEM_SELECIONADO,
            StatusAgendamentoEnum::AGENDADO =>
                StatusAgendamentoEnum::getDescricaoValor(StatusAgendamentoEnum::AGENDADO),
            StatusAgendamentoEnum::CONFIRMADO =>
                StatusAgendamentoEnum::getDescricaoValor(StatusAgendamentoEnum::CONFIRMADO)];
        $formulario
            ->setId(ST_STATUS_AGENDAMENTO_SITE)
            ->setLabel("Status Agendamento")
            ->setClasses("ob")
            ->setInfo("Status do Agendamento realizado pelo site")
            ->setType(TiposCampoEnum::SELECT)
            ->setTamanhoInput(12)
            ->setOptions($status)
            ->CriaInpunt();

        if (!empty($res[CO_CONFIG_AGENDAMENTO])):
            $formulario
                ->setType(TiposCampoEnum::HIDDEN)
                ->setId(CO_CONFIG_AGENDAMENTO)
                ->setValues($res[CO_CONFIG_AGENDAMENTO])
                ->CriaInpunt();
        endif;

        return $formulario->finalizaForm();
    }

    public static function ConfigProfissional($res = false)
    {
        $id = "configProfissional";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action,
            "Cadastrar", 6);
        $formulario->setValor($res);

        $label_options2 = array("<i class='fa fa-check fa-white'></i>", "<i class='fa fa-times fa-white'></i>", "verde", "vermelho");
        $formulario
            ->setLabel("Receber E-mail de Faturamento?")
            ->setClasses($res[ST_RECEBE_EMAIL_FATURAMENTO])
            ->setId(ST_RECEBE_EMAIL_FATURAMENTO)
            ->setType(TiposCampoEnum::CHECKBOX)
            ->setInfo('Receber E-mail de Faturamento diário')
            ->setTamanhoInput(12)
            ->setOptions($label_options2)
            ->CriaInpunt();

        $label_options2 = array("<i class='fa fa-check fa-white'></i>", "<i class='fa fa-times fa-white'></i>", "verde", "vermelho");
        $formulario
            ->setLabel("Edição dos Serviços?")
            ->setClasses($res[ST_EDICAO_SERVICOS])
            ->setId(ST_EDICAO_SERVICOS)
            ->setType(TiposCampoEnum::CHECKBOX)
            ->setInfo('Aceita Edição dos Serviços prestados')
            ->setTamanhoInput(12)
            ->setOptions($label_options2)
            ->CriaInpunt();

        $label_options2 = array("<i class='fa fa-check fa-white'></i>", "<i class='fa fa-times fa-white'></i>", "verde", "vermelho");
        $formulario
            ->setLabel("Edição dos Atendimentos?")
            ->setClasses($res[ST_EDICAO_ATENDIMENTO])
            ->setId(ST_EDICAO_ATENDIMENTO)
            ->setType(TiposCampoEnum::CHECKBOX)
            ->setInfo('Aceita Edição dos atendimentos futuros.')
            ->setTamanhoInput(12)
            ->setOptions($label_options2)
            ->CriaInpunt();

        $formulario
            ->setId(NU_PERIODO_AGENDA)
            ->setClasses("numero")
            ->setLabel("Número de dias da agenda")
            ->setInfo('Dias abertos da agenda futura.')
            ->setTamanhoInput(4)
            ->CriaInpunt();

        if (!empty($res[CO_CONFIG_PROFISSIONAL])):
            $formulario
                ->setType(TiposCampoEnum::HIDDEN)
                ->setId(CO_CONFIG_PROFISSIONAL)
                ->setValues($res[CO_CONFIG_PROFISSIONAL])
                ->CriaInpunt();
        endif;

        return $formulario->finalizaForm();
    }

    public static function ConfigComissao($res = false)
    {
        $id = "configComissao";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action,
            "Cadastrar", 6);
        $formulario->setValor($res);

        $label_options2 = array("<i class='fa fa-check fa-white'></i>", "<i class='fa fa-times fa-white'></i>", "verde", "vermelho");
        $formulario
            ->setLabel("Considerar Taxas de antecipação?")
            ->setClasses($res[ST_TAXA_ANTECIPACAO])
            ->setId(ST_TAXA_ANTECIPACAO)
            ->setType(TiposCampoEnum::CHECKBOX)
            ->setInfo('Desconta as Taxas de antecipação')
            ->setTamanhoInput(6)
            ->setOptions($label_options2)
            ->CriaInpunt();

        $formulario
            ->setLabel("Considerar Taxas dos cartões?")
            ->setClasses($res[ST_TAXA_ADMINISTRATIVA])
            ->setId(ST_TAXA_ADMINISTRATIVA)
            ->setType(TiposCampoEnum::CHECKBOX)
            ->setInfo('Considerar ou não as Taxas das administradoras das operados dos cartões')
            ->setTamanhoInput(6)
            ->setOptions($label_options2)
            ->CriaInpunt();

        $formulario
            ->setLabel("Considerar Taxas cartão de crédito?")
            ->setClasses($res[ST_TAXA_CARTAO_CREDITO])
            ->setId(ST_TAXA_CARTAO_CREDITO)
            ->setType(TiposCampoEnum::CHECKBOX)
            ->setInfo('Considerar ou não as Taxas de  cartão de crédito')
            ->setTamanhoInput(6)
            ->setOptions($label_options2)
            ->CriaInpunt();

        $formulario
            ->setLabel("Considerar Taxas cartão de débito?")
            ->setClasses($res[ST_TAXA_CARTAO_DEBITO])
            ->setId(ST_TAXA_CARTAO_DEBITO)
            ->setType(TiposCampoEnum::CHECKBOX)
            ->setInfo('Considerar ou não as Taxas de  cartão de débito')
            ->setTamanhoInput(6)
            ->setOptions($label_options2)
            ->CriaInpunt();

        $formulario
            ->setLabel("Recebe comissão antes?")
            ->setClasses($res[ST_RECEBIMENTO_PRE_VENDA])
            ->setId(ST_RECEBIMENTO_PRE_VENDA)
            ->setType(TiposCampoEnum::CHECKBOX)
            ->setInfo('Recebi comissão antes de executar o serviço')
            ->setTamanhoInput(6)
            ->setOptions($label_options2)
            ->CriaInpunt();

        $formulario
            ->setId(NU_TIPO_COMISSAO . TipoComissaoEnum::UNICO_PROFISSIONAL)
            ->setClasses("porc-int ob")
            ->setLabel("Único Profissional")
            ->setIcon("%", 'dir')
            ->setInfo('Comissão quando for Único Profissional.')
            ->setTamanhoInput(6)
            ->CriaInpunt();

        $formulario
            ->setId(NU_TIPO_COMISSAO . TipoComissaoEnum::COM_ASSISTENTE)
            ->setClasses("porc-int ob")
            ->setIcon("%", 'dir')
            ->setLabel("Com Assistente")
            ->setInfo('Comissão quando for Com Assistente.')
            ->setTamanhoInput(6)
            ->CriaInpunt();

        $formulario
            ->setId(NU_TIPO_COMISSAO . TipoComissaoEnum::ASSISTENTE)
            ->setClasses("porc-int ob")
            ->setIcon("%", 'dir')
            ->setLabel("Assistente")
            ->setInfo('Comissão quando for O Assistente.')
            ->setTamanhoInput(6)
            ->CriaInpunt();

        $options = FormaComissaoEnum::$descricao;
        $formulario
            ->setType(TiposCampoEnum::SELECT)
            ->setLabel("Forma de comissão")
            ->setId(NU_FORMA_COMISSAO)
            ->setClasses("ob")
            ->setOptions($options)
            ->setTamanhoInput(6)
            ->CriaInpunt();

        $formulario
            ->setId(DT_VALIDO)
            ->setClasses("ob data")
            ->setLabel("Data Válida")
            ->setInfo('A partir da data é válido a configuração')
            ->setTamanhoInput(6)
            ->CriaInpunt();

        if (!empty($res[CO_CONFIG_COMISSAO])):
            $formulario
                ->setType(TiposCampoEnum::HIDDEN)
                ->setId(CO_CONFIG_COMISSAO)
                ->setValues($res[CO_CONFIG_COMISSAO])
                ->CriaInpunt();

            // Campo para Validar a mudança para avisar o Usuário que esta modificando todas as comissões ja salvas
            $formulario
                ->setType(TiposCampoEnum::HIDDEN)
                ->setId(NU_FORMA_COMISSAO . '-valida')
                ->setValues($res[NU_FORMA_COMISSAO])
                ->CriaInpunt();
        endif;

        return $formulario->finalizaForm();
    }


}
