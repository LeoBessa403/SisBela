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

UPDATE TB_PESSOA SET nu_cpf = "12345678909" where co_pessoa = 6;

UPDATE TB_CONTATO SET nu_tel1 = "6199999999" where co_contato = 6;

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_profissionais, nu_filiais, nu_valor_assinatura, tp_pagamento, dt_cadastro, dt_expiracao, co_plano_assinante_assinatura_ativo) VALUES ("6", "5", "49", "0", "239.90", "3", "2020-03-25 15:50:56", "2022-04-09", "6"_assinatura_ativo);

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("6", "2020-03-25 15:50:56", "Inicia o pagamento", "LEO Bessa Iniciou o pagamento", "0");

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET st_pagamento = "2", dt_modificado = "2020-03-25T15:51:06.000-03:00", nu_valor_desconto = "17.03", nu_valor_real = "222.87", ds_link_boleto = "", ds_code_transacao = "5E706DDC-A10D-4D74-A0B6-3B6AF09E97D8", co_plano_assinante = "6" where co_plano_assinante_assinatura = 6;

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("6", "2020-03-25T15:51:06.000-03:00", "Mudou para o Status do pagamento de Em análise", "Retorno da operadora do pagamento", "2");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("6", "2020-03-25T15:51:06.000-03:00", "Mudou para o Status do pagamento de Em análise", "Retorno da operadora do pagamento", "2");

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET st_pagamento = "2", dt_modificado = "2020-03-25T15:51:06.000-03:00" where co_plano_assinante_assinatura = 6;

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET st_pagamento = "2", dt_modificado = "2020-03-25T15:51:06.000-03:00" where co_plano_assinante_assinatura = 6;

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("6", "2020-03-25 16:14:43", "Mudou para o Status do pagamento de Cancelada", "Suporte Efetuou o cancelamento.", "7");

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET dt_modificado = "2020-03-25 16:14:43", st_status = "I", st_pagamento = "7" where co_plano_assinante_assinatura = 6;

UPDATE TB_PESSOA SET nu_cpf = "12345678909" where co_pessoa = 6;

UPDATE TB_CONTATO SET nu_tel1 = "11651561115" where co_contato = 6;

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_profissionais, nu_filiais, nu_valor_assinatura, tp_pagamento, dt_cadastro, dt_expiracao, co_plano_assinante_assinatura_ativo) VALUES ("5", "5", "25", "0", "124.90", "5", "2020-03-25 16:15:38", "2021-04-09", "5"_assinatura_ativo);

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("7", "2020-03-25 16:15:38", "Inicia o pagamento", "LEO Bessa Iniciou o pagamento", "0");

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET st_pagamento = "1", dt_modificado = "2020-03-25T16:15:46.000-03:00", nu_valor_desconto = "5.38", nu_valor_real = "119.52", ds_link_boleto = "https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=7b44c80e5b528387bc67d405b29d4d7827c2f0f5f1425d56c8d41170005505e083fbc0f342424194", ds_code_transacao = "EDA0F0A7-B225-4F2B-877D-AE6021DE7077", co_plano_assinante = "5" where co_plano_assinante_assinatura = 7;

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("7", "2020-03-25T16:15:46.000-03:00", "Mudou para o Status do pagamento de Aguardando pagamento", "Retorno da operadora do pagamento", "1");

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET st_status = "I" where co_plano_assinante_assinatura = 5;

UPDATE TB_ASSINANTE SET dt_expiracao = "2021-04-09" where co_assinante = 5;

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("7", "2020-03-25T16:17:47.000-03:00", "Mudou para o Status do pagamento de Pago ", "Retorno da operadora do pagamento", "3");

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET st_pagamento = "3", dt_modificado = "2020-03-25T16:17:47.000-03:00", dt_confirma_pagamento = "2020-03-25T16:17:47.000-03:00", st_status = "A" where co_plano_assinante_assinatura = 7;

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("7", "2020-03-25 16:18:42", "Mudou para o Status do pagamento de Devolvida", "Suporte Efetuou o estorno.", "6");

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET st_status = "A" where co_plano_assinante_assinatura = 5;

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET dt_modificado = "2020-03-25 16:18:42", st_status = "I", st_pagamento = "6" where co_plano_assinante_assinatura = 7;

UPDATE TB_ASSINANTE SET dt_expiracao = "2020-04-09" where co_assinante = 5;

UPDATE TB_PESSOA SET no_pessoa = "LEO BESSA", dt_nascimento = "" where co_pessoa = 6;

UPDATE TB_EMPRESA SET no_empresa = "BARBEARIA NOVA BARBA RAZãO SOCIAL", no_fantasia = "BARBEARIA NOVA BARBA", nu_cnpj = "", nu_insc_estadual = "", ds_observacao = "nova descrição" where co_empresa = 5;

UPDATE TB_ENDERECO SET ds_endereco = "QR 403 Conjunto 10", ds_complemento = "103", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 4;

UPDATE TB_EMPRESA SET co_endereco = "4" where co_empresa = 5;

UPDATE TB_CONTATO SET nu_tel1 = "11651561115", nu_tel2 = "11999999999", nu_tel3 = "", nu_tel_0800 = "", ds_email = "leonardo.bessa@basis.com.br", ds_site = "", ds_facebook = "", ds_twitter = "", ds_instagram = "" where co_contato = 6;

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("fp-barbearia-nova-barba-5-5e7bb232d988d.png");

INSERT INTO TB_IMAGEM_ASSINANTE (co_assinante, co_imagem) VALUES ("5", "2");

UPDATE TB_ASSINANTE SET st_dados_complementares = "S" where co_assinante = 5;

