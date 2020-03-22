INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("35", "4");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("35", "2");

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (35);

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("35", "4");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("35", "2");

UPDATE TB_PESSOA SET nu_cpf = "12345678909" where co_pessoa = 42;

UPDATE TB_CONTATO SET nu_tel1 = "1694113154" where co_contato = 54;

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_profissionais, nu_filiais, nu_valor_assinatura, tp_pagamento, dt_cadastro, dt_expiracao) VALUES ("25", "3", "73", "0", "339.90", "3", "2020-03-22 00:51:45", "2023-03-20");

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET st_pagamento = "2", dt_modificado = "2020-03-22T00:51:48.000-03:00", nu_valor_desconto = "23.96", nu_valor_real = "315.94", ds_link_boleto = "", ds_code_transacao = "1418B304-276E-4CB8-AB9E-238EA9F61B48", co_plano_assinante = "25" where co_plano_assinante_assinatura = 7;

