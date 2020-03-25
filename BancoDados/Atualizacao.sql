INSERT INTO TB_CONTATO (ds_email, nu_tel1) VALUES ("lele.403@hotmail.com", "61991058681");

INSERT INTO TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("LETíCIA MACHADO CARVALHO BESSA", "2", "2020-03-25 12:09:13");

INSERT INTO TB_EMPRESA (no_fantasia, nu_cnpj, dt_cadastro) VALUES ("LETíCIA MACHADO", "", "2020-03-25 12:09:13");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "2", "1", "2020-03-25 12:09:13", "2020-04-09");

INSERT INTO TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("1", "2", "JRU0GSB3", "U2xKVk1FZFRRak09", "I", "2020-03-25 12:09:13");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_profissionais, nu_filiais, st_status, st_pagamento, dt_cadastro, dt_modificado, dt_expiracao, nu_valor_assinatura) VALUES ("1", "1", "3", "0", "A", "3", "2020-03-25 12:09:13", "2020-03-25 12:09:13", "2020-04-09", "0.00");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("1", "2020-03-25 12:09:13", "Plano Grátis", "Usuário SisBela Iniciou o plano de experiência", "3");

INSERT INTO TB_USUARIO_PERFIL (co_perfil, co_usuario) VALUES ("2", "2");

UPDATE TB_CONTATO SET ds_email = "lele.403@hotmail.com", nu_tel1 = "61991058681" where co_contato = 2;

UPDATE TB_EMPRESA SET no_fantasia = "LETíCIA MACHADO", nu_cnpj = "" where co_empresa = 1;

UPDATE TB_PESSOA SET no_pessoa = "LETíCIA MACHADO CARVALHO BESSA" where co_pessoa = 2;

UPDATE TB_ASSINANTE SET tp_assinante = "M" where co_assinante = 1;

UPDATE TB_CONTATO SET ds_email = "lele.403@hotmail.com", nu_tel1 = "61991058681" where co_contato = 2;

UPDATE TB_EMPRESA SET no_fantasia = "LETíCIA MACHADO", nu_cnpj = "" where co_empresa = 1;

UPDATE TB_PESSOA SET no_pessoa = "LETíCIA MACHADO CARVALHO BESSA" where co_pessoa = 2;

UPDATE TB_ASSINANTE SET tp_assinante = "M" where co_assinante = 1;

UPDATE TB_CONTATO SET ds_email = "lele.403@hotmail.com", nu_tel1 = "61991058681" where co_contato = 2;

UPDATE TB_EMPRESA SET no_fantasia = "LETíCIA MACHADO" where co_empresa = 1;

UPDATE TB_PESSOA SET no_pessoa = "LETíCIA MACHADO CARVALHO BESSA" where co_pessoa = 2;

UPDATE TB_ASSINANTE SET tp_assinante = "M" where co_assinante = 1;

UPDATE TB_CONTATO SET ds_email = "lele.403@hotmail.com", nu_tel1 = "61991058681" where co_contato = 2;

UPDATE TB_EMPRESA SET no_fantasia = "LETíCIA MACHADO" where co_empresa = 1;

UPDATE TB_PESSOA SET no_pessoa = "LETíCIA MACHADO CARVALHO BESSA" where co_pessoa = 2;

UPDATE TB_ASSINANTE SET tp_assinante = "M" where co_assinante = 1;

INSERT INTO TB_CONTATO (ds_email, nu_tel1) VALUES ("lucrece.neri@hotmail.com", "61993055454");

INSERT INTO TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("LUCRECE NERI PORTELA", "3", "2020-03-25 12:17:19");

INSERT INTO TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão Novo Stylo", "2020-03-25 12:17:19");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "3", "2", "2020-03-25 12:17:19", "2020-04-09");

INSERT INTO TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("2", "3", "WXY3JNL5", "VjFoWk0wcE9URFU9", "I", "2020-03-25 12:17:19");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_profissionais, nu_filiais, st_status, st_pagamento, dt_cadastro, dt_modificado, dt_expiracao, nu_valor_assinatura) VALUES ("1", "2", "3", "0", "A", "3", "2020-03-25 12:17:19", "2020-03-25 12:17:19", "2020-04-09", "0.00");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("2", "2020-03-25 12:17:19", "Plano Grátis", "Usuário SisBela Iniciou o plano de experiência", "3");

INSERT INTO TB_USUARIO_PERFIL (co_perfil, co_usuario) VALUES ("2", "3");

UPDATE TB_CONTATO SET ds_email = "lele.403@hotmail.com", nu_tel1 = "61991058681" where co_contato = 2;

UPDATE TB_EMPRESA SET no_fantasia = "Esmaltaria Unha Padrão" where co_empresa = 1;

UPDATE TB_PESSOA SET no_pessoa = "LETíCIA MACHADO CARVALHO BESSA" where co_pessoa = 2;

UPDATE TB_ASSINANTE SET tp_assinante = "M" where co_assinante = 1;

UPDATE TB_CONTATO SET ds_email = "lucrece.neri@hotmail.com", nu_tel1 = "61993055454" where co_contato = 3;

UPDATE TB_EMPRESA SET no_fantasia = "Salão Novo Stylo 2" where co_empresa = 2;

UPDATE TB_PESSOA SET no_pessoa = "LUCRECE NERI PORTELA" where co_pessoa = 3;

UPDATE TB_ASSINANTE SET tp_assinante = "M" where co_assinante = 2;

INSERT INTO TB_ENDERECO (ds_endereco) VALUES ("");

UPDATE TB_EMPRESA SET co_endereco = "2" where co_empresa = 1;

INSERT INTO TB_ENDERECO (ds_endereco) VALUES ("");

UPDATE TB_EMPRESA SET co_endereco = "3" where co_empresa = 2;

INSERT INTO TB_CONTATO (ds_email, nu_tel1) VALUES ("leonardo.bessa@basis.com.br", "61993126972");

INSERT INTO TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("LEONARDO MACHADO BESSA", "4", "2020-03-25 12:53:31");

INSERT INTO TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Barbearia nova barba", "2020-03-25 12:53:31");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "4", "3", "2020-03-25 12:53:31", "2020-04-09");

INSERT INTO TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("3", "4", "QYK2NEW6", "VVZsTE1rNUZWelk9", "I", "2020-03-25 12:53:31");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_profissionais, nu_filiais, st_status, st_pagamento, dt_cadastro, dt_modificado, dt_expiracao, nu_valor_assinatura) VALUES ("1", "3", "3", "0", "A", "3", "2020-03-25 12:53:31", "2020-03-25 12:53:31", "2020-04-09", "0.00");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("3", "2020-03-25 12:53:31", "Plano Grátis", "Usuário SisBela Iniciou o plano de experiência", "3");

INSERT INTO TB_USUARIO_PERFIL (co_perfil, co_usuario) VALUES ("2", "4");

UPDATE TB_CONTATO SET ds_email = "ddfds@fdsfjf.com.br", nu_tel1 = "61993126972" where co_contato = 4;

UPDATE TB_EMPRESA SET no_fantasia = "gfasdgfadg" where co_empresa = 3;

UPDATE TB_PESSOA SET no_pessoa = "sdaf dsf agsdg" where co_pessoa = 4;

UPDATE TB_ASSINANTE SET tp_assinante = "M" where co_assinante = 3;

INSERT INTO TB_CONTATO (ds_email, nu_tel1) VALUES ("leonardo.bessa@basis.com.br", "61998110601");

INSERT INTO TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessinha", "5", "2020-03-25 12:57:07");

INSERT INTO TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Barbearia nova barba", "2020-03-25 12:57:07");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "5", "4", "2020-03-25 12:57:07", "2020-04-09");

INSERT INTO TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("4", "5", "ALO7ZKC0", "UVV4UE4xcExRekE9", "I", "2020-03-25 12:57:07");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_profissionais, nu_filiais, st_status, st_pagamento, dt_cadastro, dt_modificado, dt_expiracao, nu_valor_assinatura) VALUES ("1", "4", "3", "0", "A", "3", "2020-03-25 12:57:07", "2020-03-25 12:57:07", "2020-04-09", "0.00");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("4", "2020-03-25 12:57:07", "Plano Grátis", "Usuário SisBela Iniciou o plano de experiência", "3");

INSERT INTO TB_USUARIO_PERFIL (co_perfil, co_usuario) VALUES ("2", "5");

UPDATE TB_CONTATO SET ds_email = "fef@rtj.com", nu_tel1 = "61998110601" where co_contato = 5;

UPDATE TB_EMPRESA SET no_fantasia = "rgreh h thtrhrtjrtj" where co_empresa = 4;

UPDATE TB_PESSOA SET no_pessoa = "efwegrg" where co_pessoa = 5;

UPDATE TB_ASSINANTE SET tp_assinante = "M" where co_assinante = 4;

INSERT INTO TB_CONTATO (ds_email, nu_tel1) VALUES ("leonardo.bessa@basis.com.br", "6193704240");

INSERT INTO TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("LEO Bessa", "6", "2020-03-25 13:03:39");

INSERT INTO TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Barbearia nova barba", "2020-03-25 13:03:39");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "6", "5", "2020-03-25 13:03:39", "2020-04-09");

INSERT INTO TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("5", "6", "PRM5EQF2", "VUZKTk5VVlJSakk9", "I", "2020-03-25 13:03:39");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_profissionais, nu_filiais, st_status, st_pagamento, dt_cadastro, dt_modificado, dt_expiracao, nu_valor_assinatura) VALUES ("1", "5", "3", "0", "A", "3", "2020-03-25 13:03:42", "2020-03-25 13:03:42", "2020-04-09", "0.00");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("5", "2020-03-25 13:03:42", "Plano Grátis", "Usuário SisBela Iniciou o plano de experiência", "3");

INSERT INTO TB_USUARIO_PERFIL (co_perfil, co_usuario) VALUES ("2", "6");

UPDATE TB_USUARIO SET st_status = "A" where co_usuario = 6;

UPDATE TB_USUARIO SET ds_code = "TVRJek5EVTJOemdxS2c9PQ==", ds_senha = "12345678**", st_troca_senha = "S" where co_usuario = 6;

INSERT INTO TB_ENDERECO (ds_endereco) VALUES ("");

UPDATE TB_EMPRESA SET co_endereco = "4" where co_empresa = 5;

