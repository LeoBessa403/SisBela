INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, co_cliente, co_profissional, co_servico, co_usuario, dt_cadastro, st_status, ds_observacao) VALUES ("5", "2020-04-14 08:00:00", "2020-04-14 18:00:00", "0.00", "0", "4", "4", "3", "1", "2020-04-15 00:00:01", "6", "Mudou para o Status (Faltou) automaticamente pelo Sistema");

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET st_pagamento = "2", dt_modificado = "2020-04-04T14:01:37.000-03:00" where co_plano_assinante_assinatura = 13;

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET st_pagamento = "2", dt_modificado = "2020-04-04T14:01:37.000-03:00" where co_plano_assinante_assinatura = 13;

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET st_pagamento = "2", dt_modificado = "2020-04-04T14:01:37.000-03:00" where co_plano_assinante_assinatura = 13;

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET st_pagamento = "6", dt_modificado = "2020-03-25T16:18:46.000-03:00" where co_plano_assinante_assinatura = 7;

INSERT INTO TB_CONTATO (ds_email, nu_tel1) VALUES ("teste@gmail.com", "61992556968");

INSERT INTO TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Marcelo Moita", "10", "2020-04-15 10:44:55");

INSERT INTO TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Moitaa coiffer", "2020-04-15 10:44:55");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "40", "7", "2020-04-15 10:44:55", "2020-04-30");

INSERT INTO TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("7", "40", "KHU7VVQ0", "UzBoVk4xWldVVEE9", "I", "2020-04-15 10:44:55");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_profissionais, nu_filiais, st_status, st_pagamento, dt_cadastro, dt_modificado, dt_expiracao, nu_valor_assinatura) VALUES ("1", "7", "3", "0", "A", "3", "2020-04-15 10:45:16", "2020-04-15 10:45:16", "2020-04-30", "0.00");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("15", "2020-04-15 10:45:16", "Plano Grátis", "Usuário SisBela Iniciou o plano de experiência de 15 Dias.", "3");

INSERT INTO TB_USUARIO_PERFIL (co_perfil, co_usuario) VALUES ("2", "10");

INSERT INTO TB_CONTATO (ds_email, nu_tel1) VALUES ("thais.mail@gmail.com", "61558996362");

INSERT INTO TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("JOãO VICTOR PEREIRA FERNANDES", "11", "2020-04-15 10:50:44");

INSERT INTO TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Cabelo Hairs", "2020-04-15 10:50:44");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "41", "8", "2020-04-15 10:50:44", "2020-04-30");

INSERT INTO TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("8", "41", "WMD1OVY0", "VjAxRU1VOVdXVEE9", "I", "2020-04-15 10:50:44");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_profissionais, nu_filiais, st_status, st_pagamento, dt_cadastro, dt_modificado, dt_expiracao, nu_valor_assinatura) VALUES ("1", "8", "3", "0", "A", "3", "2020-04-15 10:50:56", "2020-04-15 10:50:56", "2020-04-30", "0.00");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("16", "2020-04-15 10:50:56", "Plano Grátis", "Usuário SisBela Iniciou o plano de experiência de 15 Dias.", "3");

INSERT INTO TB_USUARIO_PERFIL (co_perfil, co_usuario) VALUES ("2", "11");

INSERT INTO TB_CONTATO (ds_email, nu_tel1) VALUES ("teste@gmail.com", "61599663331");

INSERT INTO TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("HENRIQUE CARVALHO ASSUNçãO", "12", "2020-04-15 10:52:48");

INSERT INTO TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Cabelo Hairs", "2020-04-15 10:52:48");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "42", "9", "2020-04-15 10:52:48", "2020-04-30");

INSERT INTO TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("9", "42", "IRB5YWB8", "U1ZKQ05WbFhRamc9", "I", "2020-04-15 10:52:48");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_profissionais, nu_filiais, st_status, st_pagamento, dt_cadastro, dt_modificado, dt_expiracao, nu_valor_assinatura) VALUES ("1", "9", "3", "0", "A", "3", "2020-04-15 10:52:51", "2020-04-15 10:52:51", "2020-04-30", "0.00");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("17", "2020-04-15 10:52:51", "Plano Grátis", "Usuário SisBela Iniciou o plano de experiência de 15 Dias.", "3");

INSERT INTO TB_USUARIO_PERFIL (co_perfil, co_usuario) VALUES ("2", "12");

INSERT INTO TB_CONTATO (ds_email, nu_tel1) VALUES ("lele.403@hotmail.com", "61995546653");

INSERT INTO TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Marcelo Moita", "13", "2020-04-15 10:54:18");

INSERT INTO TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Moitaa coiffer", "2020-04-15 10:54:18");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "43", "10", "2020-04-15 10:54:18", "2020-04-30");

INSERT INTO TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("10", "43", "NYU4PBQ8", "VGxsVk5GQkNVVGc9", "I", "2020-04-15 10:54:18");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_profissionais, nu_filiais, st_status, st_pagamento, dt_cadastro, dt_modificado, dt_expiracao, nu_valor_assinatura) VALUES ("1", "10", "3", "0", "A", "3", "2020-04-15 10:54:34", "2020-04-15 10:54:34", "2020-04-30", "0.00");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("18", "2020-04-15 10:54:34", "Plano Grátis", "Usuário SisBela Iniciou o plano de experiência de 15 Dias.", "3");

INSERT INTO TB_USUARIO_PERFIL (co_perfil, co_usuario) VALUES ("2", "13");

INSERT INTO TB_CONTATO (ds_email, nu_tel1) VALUES ("lucrece.neri@hotmail.com", "61599633255");

INSERT INTO TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("HENRIQUE CARVALHO ASSUNçãO", "14", "2020-04-15 10:55:48");

INSERT INTO TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Moitaa coiffer", "2020-04-15 10:55:48");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "44", "11", "2020-04-15 10:55:48", "2020-04-30");

INSERT INTO TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("11", "44", "WHZ5KYN6", "VjBoYU5VdFpUalk9", "I", "2020-04-15 10:55:48");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_profissionais, nu_filiais, st_status, st_pagamento, dt_cadastro, dt_modificado, dt_expiracao, nu_valor_assinatura) VALUES ("1", "11", "3", "0", "A", "3", "2020-04-15 10:55:55", "2020-04-15 10:55:55", "2020-04-30", "0.00");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("19", "2020-04-15 10:55:55", "Plano Grátis", "Usuário SisBela Iniciou o plano de experiência de 15 Dias.", "3");

INSERT INTO TB_USUARIO_PERFIL (co_perfil, co_usuario) VALUES ("2", "14");

INSERT INTO TB_CONTATO (ds_email, nu_tel1) VALUES ("leonardo.bessa@basis.com.br", "61998863669");

INSERT INTO TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("JOãO VICTOR PEREIRA FERNANDES", "15", "2020-04-15 10:57:20");

INSERT INTO TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Moitaa coiffer", "2020-04-15 10:57:20");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "45", "12", "2020-04-15 10:57:20", "2020-04-30");

INSERT INTO TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("12", "45", "HEX8AWT0", "U0VWWU9FRlhWREE9", "I", "2020-04-15 10:57:20");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_profissionais, nu_filiais, st_status, st_pagamento, dt_cadastro, dt_modificado, dt_expiracao, nu_valor_assinatura) VALUES ("1", "12", "3", "0", "A", "3", "2020-04-15 10:57:48", "2020-04-15 10:57:48", "2020-04-30", "0.00");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("20", "2020-04-15 10:57:48", "Plano Grátis", "Usuário SisBela Iniciou o plano de experiência de 15 Dias.", "3");

INSERT INTO TB_USUARIO_PERFIL (co_perfil, co_usuario) VALUES ("2", "15");

INSERT INTO TB_CONTATO (ds_email, nu_tel1) VALUES ("thais.mail@gmail.com", "61965963322");

INSERT INTO TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Marcelo Moita", "16", "2020-04-15 11:00:01");

INSERT INTO TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Moitaa coiffer", "2020-04-15 11:00:01");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "46", "13", "2020-04-15 11:00:01", "2020-04-30");

INSERT INTO TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("13", "46", "OWR3KWM1", "VDFkU00wdFhUVEU9", "I", "2020-04-15 11:00:01");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_profissionais, nu_filiais, st_status, st_pagamento, dt_cadastro, dt_modificado, dt_expiracao, nu_valor_assinatura) VALUES ("1", "13", "3", "0", "A", "3", "2020-04-15 11:00:35", "2020-04-15 11:00:35", "2020-04-30", "0.00");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("21", "2020-04-15 11:00:35", "Plano Grátis", "Usuário SisBela Iniciou o plano de experiência de 15 Dias.", "3");

INSERT INTO TB_USUARIO_PERFIL (co_perfil, co_usuario) VALUES ("2", "16");

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET st_pagamento = "1", dt_modificado = "2020-04-04T13:57:52.000-03:00" where co_plano_assinante_assinatura = 12;

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET st_pagamento = "1", dt_modificado = "2020-04-04T13:57:52.000-03:00" where co_plano_assinante_assinatura = 12;

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET st_pagamento = "7", dt_modificado = "2020-03-25T16:14:48.000-03:00" where co_plano_assinante_assinatura = 6;

