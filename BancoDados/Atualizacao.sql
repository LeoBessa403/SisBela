UPDATE TB_PESSOA SET nu_cpf = "12345678909" where co_pessoa = 6;

UPDATE TB_CONTATO SET nu_tel1 = "6195959565" where co_contato = 6;

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_profissionais, nu_filiais, nu_valor_assinatura, tp_pagamento, dt_cadastro, dt_expiracao, co_plano_assinante_assinatura_ativo) VALUES ("7", "5", "73", "0", "599.90", "5", "2020-05-02 10:56:39", "2023-04-09", "7"_assinatura_ativo);

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("22", "2020-05-02 10:56:39", "Inicia o pagamento", "LEO BESSA Iniciou o pagamento", "0");

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET st_pagamento = "1", dt_modificado = "2020-05-02T10:56:47.000-03:00", nu_valor_desconto = "24.34", nu_valor_real = "575.56", ds_link_boleto = "https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=7805e93ce3b5c3268c8c6dde3d6e1f171b2cf06a5e50796513a73637fd8cc0295f65051d85332945", ds_code_transacao = "6710D77B-B25A-40CF-A304-3709F56904F0", co_plano_assinante = "7" where co_plano_assinante_assinatura = 22;

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("22", "2020-05-02T10:56:47.000-03:00", "Mudou o Status do pagamento para Aguardando pagamento", "Retorno da operadora do pagamento", "1");

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET st_status = "I" where co_plano_assinante_assinatura = 5;

UPDATE TB_ASSINANTE SET dt_expiracao = "2023-04-09" where co_assinante = 5;

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("22", "2020-05-02T10:57:57.000-03:00", "Mudou o Status do pagamento para Pago ", "Retorno da operadora do pagamento", "3");

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET st_pagamento = "3", dt_modificado = "2020-05-02T10:57:57.000-03:00", dt_confirma_pagamento = "2020-05-02T10:57:57.000-03:00", st_status = "A" where co_plano_assinante_assinatura = 22;

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2020-05-02 11:05:28", "5");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_profissional, co_cliente, co_servico) VALUES ("19", "2020-05-02 11:05:28", "2", "2020-05-06 08:00:00", "2020-05-06 18:00:00", "0", "0", "fefef", "6", "1", "14", "7");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, ds_observacao, co_usuario, co_cliente, co_servico, co_profissional) VALUES ("19", "2020-05-02 11:07:31", "7", "2020-05-06 08:00:00", "2020-05-06 18:00:00", "fefef", "6", "14", "7", "1");

