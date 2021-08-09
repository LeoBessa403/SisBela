INSERT INTO sisbela100.TB_CONTATO (ds_email, nu_tel1) VALUES ("barbecue@gmail.com", "61993277377");

INSERT INTO sisbela100.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Lele Bessa", "5", "2021-08-02 17:08:48");

INSERT INTO sisbela100.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Novo salão 10", "2021-08-02 17:08:48");

UPDATE TB_PLANO SET no_plano = "Trienal", nu_mes_ativo = "36", st_status = "A" where co_plano = 7;

DELETE FROM TB_PLANO_PACOTE where co_plano in (7);

INSERT INTO TB_PLANO_PACOTE (co_plano, co_pacote) VALUES ("7", "1");

INSERT INTO TB_PLANO_PACOTE (co_plano, co_pacote) VALUES ("7", "2");

INSERT INTO TB_PLANO_ASSINANTE (ds_observacao, nu_valor, dt_cadastro, co_plano) VALUES ("Por 36 Meses", "599.97", "2021-08-02 17:51:58", "7");

UPDATE TB_PLANO SET no_plano = "Trienal", nu_mes_ativo = "36", st_status = "I" where co_plano = 7;

DELETE FROM TB_PLANO_PACOTE where co_plano in (7);

INSERT INTO TB_PLANO_PACOTE (co_plano, co_pacote) VALUES ("7", "1");

INSERT INTO TB_PLANO_PACOTE (co_plano, co_pacote) VALUES ("7", "2");

INSERT INTO TB_PLANO_ASSINANTE (ds_observacao, nu_valor, dt_cadastro, co_plano) VALUES ("Por 36 Meses", "599.97", "2021-08-02 17:52:40", "7");

INSERT INTO TB_PLANO (no_plano, nu_mes_ativo, st_status, dt_cadastro) VALUES ("Novidades", "1", "A", "2021-08-02 17:53:18");

DELETE FROM TB_PLANO_PACOTE where co_plano in (8);

INSERT INTO TB_PLANO_PACOTE (co_plano, co_pacote) VALUES ("8", "1");

INSERT INTO TB_PLANO_PACOTE (co_plano, co_pacote) VALUES ("8", "2");

INSERT INTO TB_PLANO_ASSINANTE (ds_observacao, nu_valor, dt_cadastro, co_plano) VALUES ("", "0.99", "2021-08-02 17:53:18", "8");

INSERT INTO TB_CLIQUE (dt_cadastro, co_botao) VALUES ("2021-08-02 17:53:42", "2");

UPDATE TB_BOTAO SET nu_total_cliques = "5" where co_botao = 2;

UPDATE TB_PLANO SET no_plano = "Novidades", nu_mes_ativo = "1", st_status = "I" where co_plano = 8;

DELETE FROM TB_PLANO_PACOTE where co_plano in (8);

INSERT INTO TB_PLANO_PACOTE (co_plano, co_pacote) VALUES ("8", "1");

INSERT INTO TB_PLANO_PACOTE (co_plano, co_pacote) VALUES ("8", "2");

INSERT INTO TB_PLANO_ASSINANTE (ds_observacao, nu_valor, dt_cadastro, co_plano) VALUES ("", "0.99", "2021-08-02 17:54:00", "8");

INSERT INTO sisbela100.TB_CONTATO (ds_email, nu_tel1) VALUES ("lelenovinha@gmail.com", "61998849444");

INSERT INTO sisbela100.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Lele Bessa", "6", "2021-08-02 18:07:44");

INSERT INTO sisbela100.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Centauros Hair", "2021-08-02 18:07:44");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "6", "5", "2021-08-02 18:07:44", "2021-09-02");

INSERT INTO sisbela100.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("4", "6", "CSL6WCJ1", "UTFOTU5sZERTakU9", "I", "2021-08-02 18:07:45");

INSERT INTO sisbela100.TB_CONTATO (ds_email, nu_tel1) VALUES ("lelenovinha@gmail.com", "61998849444");

INSERT INTO sisbela100.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Lele Bessa", "7", "2021-08-02 18:08:24");

INSERT INTO sisbela100.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Centauros Hair", "2021-08-02 18:08:24");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "7", "6", "2021-08-02 18:08:24", "2021-09-02");

INSERT INTO sisbela100.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("5", "7", "SDC1SDM0", "VTBSRE1WTkVUVEE9", "I", "2021-08-02 18:08:25");

INSERT INTO sisbela100.TB_CONTATO (ds_email, nu_tel1) VALUES ("lelenovinha@gmail.com", "61998849444");

INSERT INTO sisbela100.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Lele Bessa", "8", "2021-08-02 18:09:10");

INSERT INTO sisbela100.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Centauros Hair", "2021-08-02 18:09:10");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "8", "7", "2021-08-02 18:09:10", "2021-09-02");

INSERT INTO sisbela100.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("6", "8", "ZCG6JXB0", "V2tOSE5rcFlRakE9", "I", "2021-08-02 18:09:10");

INSERT INTO sisbela100.TB_CONTATO (ds_email, nu_tel1) VALUES ("lelenovinha@gmail.com", "61998849444");

INSERT INTO sisbela100.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Lele Bessa", "9", "2021-08-02 18:09:33");

INSERT INTO sisbela100.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Centauros Hair", "2021-08-02 18:09:33");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "9", "8", "2021-08-02 18:09:33", "2021-09-02");

INSERT INTO sisbela100.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("7", "9", "IRB2UKC9", "U1ZKQ01sVkxRems9", "I", "2021-08-02 18:09:33");

INSERT INTO sisbela100.TB_CONTATO (ds_email, nu_tel1) VALUES ("lelenovinha@gmail.com", "61998849444");

INSERT INTO sisbela100.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Lele Bessa", "10", "2021-08-02 18:10:09");

INSERT INTO sisbela100.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Centauros Hair", "2021-08-02 18:10:09");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "10", "9", "2021-08-02 18:10:09", "2021-09-02");

INSERT INTO sisbela100.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("8", "10", "MDW7HEI0", "VFVSWE4waEZTVEE9", "I", "2021-08-02 18:10:09");

INSERT INTO sisbela100.TB_CONTATO (ds_email, nu_tel1) VALUES ("lelenovinha@gmail.com", "61998849444");

INSERT INTO sisbela100.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Lele Bessa", "11", "2021-08-02 18:10:39");

INSERT INTO sisbela100.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Centauros Hair", "2021-08-02 18:10:39");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "11", "10", "2021-08-02 18:10:39", "2021-09-02");

INSERT INTO sisbela100.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("9", "11", "VKM4HQL0", "Vmt0Tk5FaFJUREE9", "I", "2021-08-02 18:10:39");

INSERT INTO sisbela100.TB_CONTATO (ds_email, nu_tel1) VALUES ("lelenovinha@gmail.com", "61998849444");

INSERT INTO sisbela100.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Lele Bessa", "12", "2021-08-02 18:10:49");

INSERT INTO sisbela100.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Centauros Hair", "2021-08-02 18:10:49");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "12", "11", "2021-08-02 18:10:49", "2021-09-02");

INSERT INTO sisbela100.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("10", "12", "KLD3YAD1", "UzB4RU0xbEJSREU9", "I", "2021-08-02 18:10:49");

INSERT INTO sisbela100.TB_CONTATO (ds_email, nu_tel1) VALUES ("lelenovinha@gmail.com", "61998849444");

INSERT INTO sisbela100.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Lele Bessa", "13", "2021-08-02 18:11:20");

INSERT INTO sisbela100.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Centauros Hair", "2021-08-02 18:11:20");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "13", "12", "2021-08-02 18:11:20", "2021-09-02");

INSERT INTO sisbela100.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("11", "13", "DRP0UGR5", "UkZKUU1GVkhValU9", "I", "2021-08-02 18:11:20");

INSERT INTO sisbela100.TB_CONTATO (ds_email, nu_tel1) VALUES ("lelenovinha@gmail.com", "61998849444");

INSERT INTO sisbela100.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Lele Bessa", "14", "2021-08-02 18:13:14");

INSERT INTO sisbela100.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Centauros Hair", "2021-08-02 18:13:14");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "14", "13", "2021-08-02 18:13:14", "2021-09-02");

INSERT INTO sisbela100.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("12", "14", "SNJ5OOO6", "VTA1S05VOVBUelk9", "I", "2021-08-02 18:13:14");

INSERT INTO sisbela100.TB_CONTATO (ds_email, nu_tel1) VALUES ("lelenovinha@gmail.com", "61998849444");

INSERT INTO sisbela100.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Lele Bessa", "15", "2021-08-02 18:13:47");

INSERT INTO sisbela100.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Centauros Hair", "2021-08-02 18:13:47");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "15", "14", "2021-08-02 18:13:47", "2021-09-02");

INSERT INTO sisbela100.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("13", "15", "CZA5SYP1", "UTFwQk5WTlpVREU9", "I", "2021-08-02 18:13:47");

INSERT INTO sisbela100.TB_CONTATO (ds_email, nu_tel1) VALUES ("lelenovinha@gmail.com", "61998849444");

INSERT INTO sisbela100.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Lele Bessa", "16", "2021-08-02 18:17:51");

INSERT INTO sisbela100.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Centauros Hair", "2021-08-02 18:17:51");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "16", "15", "2021-08-02 18:17:51", "2021-09-02");

INSERT INTO sisbela100.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("14", "16", "KHZ2DNZ5", "UzBoYU1rUk9XalU9", "I", "2021-08-02 18:17:51");

INSERT INTO sisbela100.TB_CONTATO (ds_email, nu_tel1) VALUES ("lelenovinha@gmail.com", "61998849444");

INSERT INTO sisbela100.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Lele Bessa", "17", "2021-08-02 18:19:08");

INSERT INTO sisbela100.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Centauros Hair", "2021-08-02 18:19:08");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "17", "16", "2021-08-02 18:19:08", "2021-09-02");

INSERT INTO sisbela100.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("15", "17", "VXR0ECP0", "VmxoU01FVkRVREE9", "I", "2021-08-02 18:19:08");

INSERT INTO sisbela100.TB_CONTATO (ds_email, nu_tel1) VALUES ("lelenovinha@gmail.com", "61998849444");

INSERT INTO sisbela100.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Lele Bessa", "18", "2021-08-02 18:19:31");

INSERT INTO sisbela100.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Centauros Hair", "2021-08-02 18:19:31");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "18", "17", "2021-08-02 18:19:31", "2021-09-02");

INSERT INTO sisbela100.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("16", "18", "GIN2EBS5", "UjBsT01rVkNVelU9", "I", "2021-08-02 18:19:31");

INSERT INTO sisbela100.TB_CONTATO (ds_email, nu_tel1) VALUES ("lelenovinha@gmail.com", "61998849444");

INSERT INTO sisbela100.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Lele Bessa", "19", "2021-08-02 18:19:41");

INSERT INTO sisbela100.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Centauros Hair", "2021-08-02 18:19:41");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "19", "18", "2021-08-02 18:19:41", "2021-09-02");

INSERT INTO sisbela100.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("17", "19", "KBK5PNG1", "UzBKTE5WQk9SekU9", "I", "2021-08-02 18:19:41");

INSERT INTO sisbela100.TB_CONTATO (ds_email, nu_tel1) VALUES ("lelenovinha@gmail.com", "61998849444");

INSERT INTO sisbela100.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Lele Bessa", "20", "2021-08-02 18:19:52");

INSERT INTO sisbela100.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Centauros Hair", "2021-08-02 18:19:52");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "20", "19", "2021-08-02 18:19:52", "2021-09-02");

INSERT INTO sisbela100.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("18", "20", "BQK2JAK6", "UWxGTE1rcEJTelk9", "I", "2021-08-02 18:19:52");

INSERT INTO sisbela100.TB_CONTATO (ds_email, nu_tel1) VALUES ("lelenovinha@gmail.com", "61998849444");

INSERT INTO sisbela100.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Lele Bessa", "21", "2021-08-02 18:20:04");

INSERT INTO sisbela100.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Centauros Hair", "2021-08-02 18:20:04");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "21", "20", "2021-08-02 18:20:04", "2021-09-02");

INSERT INTO sisbela100.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("19", "21", "PJO3DFX0", "VUVwUE0wUkdXREE9", "I", "2021-08-02 18:20:04");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_filiais, nu_valor_assinatura, tp_pagamento, dt_cadastro, dt_expiracao) VALUES ("13", "19", "0", "27.97", "5", "2021-08-02 18:20:04", "2021-09-02");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("6", "2021-08-02 18:20:04", "Inicia o pagamento", "Lele Bessa Iniciou o pagamento", "0");

INSERT INTO sisbela100.TB_CONTATO (ds_email, nu_tel1) VALUES ("lelenovinha@gmail.com", "61998849444");

INSERT INTO sisbela100.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Lele Bessa", "22", "2021-08-02 18:21:29");

INSERT INTO sisbela100.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Centauros Hair", "2021-08-02 18:21:29");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "22", "21", "2021-08-02 18:21:29", "2021-09-02");

INSERT INTO sisbela100.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("20", "22", "VJK6GSA6", "VmtwTE5rZFRRVFk9", "I", "2021-08-02 18:21:29");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_filiais, nu_valor_assinatura, tp_pagamento, dt_cadastro, dt_expiracao) VALUES ("13", "20", "0", "27.97", "5", "2021-08-02 18:21:29", "2021-09-02");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("7", "2021-08-02 18:21:29", "Inicia o pagamento", "Lele Bessa Iniciou o pagamento", "0");

INSERT INTO sisbela100.TB_CONTATO (ds_email, nu_tel1) VALUES ("lelenovinha@gmail.com", "61998849444");

INSERT INTO sisbela100.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Lele Bessa", "23", "2021-08-02 18:22:00");

INSERT INTO sisbela100.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Centauros Hair", "2021-08-02 18:22:00");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "23", "22", "2021-08-02 18:22:00", "2021-09-02");

INSERT INTO sisbela100.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("21", "23", "ECY5NHM2", "UlVOWk5VNUlUVEk9", "I", "2021-08-02 18:22:00");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_filiais, nu_valor_assinatura, tp_pagamento, dt_cadastro, dt_expiracao) VALUES ("13", "21", "0", "27.97", "5", "2021-08-02 18:22:00", "2021-09-02");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("8", "2021-08-02 18:22:00", "Inicia o pagamento", "Lele Bessa Iniciou o pagamento", "0");

INSERT INTO sisbela100.TB_CONTATO (ds_email, nu_tel1) VALUES ("lelenovinha@gmail.com", "61998849444");

INSERT INTO sisbela100.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Lele Bessa", "24", "2021-08-02 18:22:10");

INSERT INTO sisbela100.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Centauros Hair", "2021-08-02 18:22:10");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "24", "23", "2021-08-02 18:22:10", "2021-09-02");

INSERT INTO sisbela100.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("22", "24", "NLE1JXH8", "VGt4Rk1VcFlTRGc9", "I", "2021-08-02 18:22:10");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_filiais, nu_valor_assinatura, tp_pagamento, dt_cadastro, dt_expiracao) VALUES ("13", "22", "0", "27.97", "5", "2021-08-02 18:22:10", "2021-09-02");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("9", "2021-08-02 18:22:10", "Inicia o pagamento", "Lele Bessa Iniciou o pagamento", "0");

INSERT INTO sisbela100.TB_CONTATO (ds_email, nu_tel1) VALUES ("lelenovinha@gmail.com", "61998849444");

INSERT INTO sisbela100.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Lele Bessa", "25", "2021-08-02 18:24:51");

INSERT INTO sisbela100.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Centauros Hair", "2021-08-02 18:24:51");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "25", "24", "2021-08-02 18:24:51", "2021-09-02");

INSERT INTO sisbela100.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("23", "25", "DWZ9UAV6", "UkZkYU9WVkJWalk9", "I", "2021-08-02 18:24:51");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_filiais, nu_valor_assinatura, tp_pagamento, dt_cadastro, dt_expiracao) VALUES ("13", "23", "0", "27.97", "5", "2021-08-02 18:24:52", "2021-09-02");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("10", "2021-08-02 18:24:52", "Inicia o pagamento", "Lele Bessa Iniciou o pagamento", "0");

UPDATE sisbela100.TB_FUNCIONALIDADE SET no_funcionalidade = "Cadastro Assinante", ds_action = "CadastroAssinante", st_menu = "N", co_controller = "9" where co_funcionalidade = 21;

DELETE FROM sisbela100.TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (21);

UPDATE sisbela100.TB_CONTATO SET nu_tel1 = "6193394999" where co_contato = 3;

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_filiais, nu_valor_assinatura, tp_pagamento, dt_cadastro, dt_expiracao, co_plano_assinante_assinatura_ativo) VALUES ("10", "2", "0", "187.97", "5", "2021-08-02 18:37:11", "2021-04-26", "10"_assinatura_ativo);

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("11", "2021-08-02 18:37:11", "Inicia o pagamento", "Moita Marcelo Iniciou o pagamento", "0");

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET st_pagamento = "1", dt_modificado = "2021-08-02T18:37:17.000-03:00", nu_valor_desconto = "7.90", nu_valor_real = "180.07", ds_link_boleto = "https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=aaf6480ac797fa3c8b616e4c8268f6928a55911ca955d9a7867ea517fc887b51ebae6017dc1a22d1", ds_code_transacao = "76C6DB19-2E89-45B9-A4DF-D86246EE951E", co_plano_assinante = "10" where co_plano_assinante_assinatura = 11;

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("11", "2021-08-02T18:37:17.000-03:00", "Mudou o Status do pagamento para Aguardando pagamento", "Retorno da operadora do pagamento", "1");

