INSERT INTO TB_CLIQUE (dt_cadastro, co_botao) VALUES ("2021-06-23 07:59:29", "1");

INSERT INTO TB_CLIQUE (dt_cadastro, co_botao) VALUES ("2021-06-23 08:00:24", "1");

INSERT INTO TB_CLIQUE (dt_cadastro, co_botao) VALUES ("2021-06-23 08:01:26", "1");

INSERT INTO TB_CLIQUE (dt_cadastro, co_botao) VALUES ("2021-06-23 08:01:56", "1");

INSERT INTO TB_CLIQUE (dt_cadastro, co_botao) VALUES ("2021-06-23 08:27:40", "1");

INSERT INTO TB_CLIQUE (dt_cadastro, co_botao) VALUES ("2021-06-23 08:27:51", "1");

INSERT INTO TB_BOTAO (nu_total_cliques) VALUES ("1");

INSERT INTO TB_CLIQUE (dt_cadastro, co_botao) VALUES ("2021-06-23 08:30:49", "1");

UPDATE TB_BOTAO SET nu_total_cliques = "1" where co_botao = 1;

INSERT INTO TB_CLIQUE (dt_cadastro, co_botao) VALUES ("2021-06-23 08:30:57", "1");

UPDATE TB_BOTAO SET nu_total_cliques = "2" where co_botao = 1;

INSERT INTO TB_CLIQUE (dt_cadastro, co_botao) VALUES ("2021-06-23 08:37:02", "1");

UPDATE TB_BOTAO SET nu_total_cliques = "3" where co_botao = 1;

INSERT INTO TB_CLIQUE (dt_cadastro, co_botao) VALUES ("2021-06-23 08:46:38", "10");

INSERT INTO TB_CLIQUE (dt_cadastro, co_botao) VALUES ("2021-06-23 08:49:00", "2");

UPDATE TB_BOTAO SET nu_total_cliques = "1" where co_botao = 2;

INSERT INTO sisbela.TB_FUNCIONALIDADE (no_funcionalidade, ds_action, st_menu, co_controller, st_status) VALUES ("Listar Botão", "Listar Botão", "S", "1", "A");

UPDATE sisbela.TB_FUNCIONALIDADE SET no_funcionalidade = "Botão", ds_action = "ListarBotão", st_menu = "S", co_controller = "1" where co_funcionalidade = 37;

DELETE FROM sisbela.TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (37);

UPDATE sisbela.TB_FUNCIONALIDADE SET no_funcionalidade = "Botões Site", ds_action = "ListarBotão", st_menu = "S", co_controller = "1" where co_funcionalidade = 37;

DELETE FROM sisbela.TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (37);

UPDATE sisbela.TB_FUNCIONALIDADE SET no_funcionalidade = "Botões Site", ds_action = "ListarBotao", st_menu = "S", co_controller = "1" where co_funcionalidade = 37;

DELETE FROM sisbela.TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (37);

INSERT INTO TB_CLIQUE (dt_cadastro, co_botao) VALUES ("2021-06-23 09:18:09", "3");

UPDATE TB_BOTAO SET nu_total_cliques = "1" where co_botao = 3;

INSERT INTO TB_BOTAO (no_botao, ds_botao, nu_total_cliques) VALUES ("Inicio", "Barra de navegação menu superior", "0");

INSERT INTO TB_BOTAO (no_botao, ds_botao, nu_total_cliques) VALUES ("Planos", "Barra de navegação menu superior", "0");

INSERT INTO TB_BOTAO (no_botao, ds_botao, nu_total_cliques) VALUES ("Dúvidas", "Barra de navegação menu superior", "0");

INSERT INTO TB_BOTAO (no_botao, ds_botao, nu_total_cliques) VALUES ("Saiba Mais", "Barra de navegação menu superior", "0");

INSERT INTO TB_BOTAO (no_botao, ds_botao, nu_total_cliques) VALUES ("Bônus", "Barra de navegação menu superior", "0");

INSERT INTO TB_BOTAO (no_botao, ds_botao, nu_total_cliques) VALUES ("Comprar", "Barra de navegação menu superior Botão Checkout", "0");

INSERT INTO TB_BOTAO (no_botao, ds_botao, nu_total_cliques) VALUES ("Quero começar agora 1", "Botão super promessa", "0");

INSERT INTO TB_BOTAO (no_botao, ds_botao, nu_total_cliques) VALUES ("Quero começar agora 2", "Botão MultiPlataforma", "0");

INSERT INTO TB_BOTAO (no_botao, ds_botao, nu_total_cliques) VALUES ("Adquirir Plano Mensal", "Comprar plano", "0");

INSERT INTO TB_BOTAO (no_botao, ds_botao, nu_total_cliques) VALUES ("Adquirir Plano Semestral", "Comprar plano", "0");

INSERT INTO TB_BOTAO (no_botao, ds_botao, nu_total_cliques) VALUES ("Adquirir Plano Anual", "Comprar Plano", "0");

INSERT INTO TB_BOTAO (no_botao, ds_botao, st_status, nu_total_cliques) VALUES ("Quero organizar minha agenda agora", "Botão das Dúvidas, direto para o checkout", "A", "0");

INSERT INTO TB_BOTAO (no_botao, ds_botao, st_status, nu_total_cliques) VALUES ("Visualizar Vídeo", "Botão para visualizar o vídeo de Saiba Mais", "A", "0");

INSERT INTO TB_BOTAO (no_botao, ds_botao, st_status, nu_total_cliques) VALUES ("Quero ese bônus 1", "Comprar o plano mensal direto no checkout", "A", "0");

INSERT INTO TB_BOTAO (no_botao, ds_botao, st_status, nu_total_cliques) VALUES ("Quero esse bônus 2", "Comprar o plano semestral direto no checkout", "A", "0");

UPDATE TB_BOTAO SET no_botao = "Quero esse bônus 1", ds_botao = "Comprar o plano mensal direto no checkout", st_status = "A" where co_botao = 14;

INSERT INTO TB_BOTAO (no_botao, ds_botao, st_status, nu_total_cliques) VALUES ("Quero esse bônus 3", "Comprar o plano Anual direto no checkout", "A", "0");

INSERT INTO TB_BOTAO (no_botao, ds_botao, st_status, nu_total_cliques) VALUES ("Botão do WhatsApp", "Botão de suporte no Site do nosso WhatsApp", "A", "0");

INSERT INTO TB_CLIQUE (dt_cadastro, co_botao) VALUES ("2021-06-23 19:10:46", "2");

UPDATE TB_BOTAO SET nu_total_cliques = "1" where co_botao = 2;

INSERT INTO TB_CLIQUE (dt_cadastro, co_botao) VALUES ("2021-06-23 19:14:55", "10");

UPDATE TB_BOTAO SET nu_total_cliques = "1" where co_botao = 10;

INSERT INTO TB_CLIQUE (dt_cadastro, co_botao) VALUES ("2021-06-23 19:15:09", "10");

UPDATE TB_BOTAO SET nu_total_cliques = "2" where co_botao = 10;

INSERT INTO TB_CLIQUE (dt_cadastro, co_botao) VALUES ("2021-06-23 19:15:22", "11");

UPDATE TB_BOTAO SET nu_total_cliques = "1" where co_botao = 11;

INSERT INTO TB_CLIQUE (dt_cadastro, co_botao) VALUES ("2021-06-23 23:05:23", "17");

UPDATE TB_BOTAO SET nu_total_cliques = "1" where co_botao = 17;

INSERT INTO TB_CLIQUE (dt_cadastro, co_botao) VALUES ("2021-06-23 23:05:33", "13");

UPDATE TB_BOTAO SET nu_total_cliques = "1" where co_botao = 13;

INSERT INTO TB_CLIQUE (dt_cadastro, co_botao) VALUES ("2021-06-23 23:06:34", "17");

UPDATE TB_BOTAO SET nu_total_cliques = "2" where co_botao = 17;

INSERT INTO TB_CLIQUE (dt_cadastro, co_botao) VALUES ("2021-06-23 23:06:59", "15");

UPDATE TB_BOTAO SET nu_total_cliques = "1" where co_botao = 15;

INSERT INTO TB_CLIQUE (dt_cadastro, co_botao) VALUES ("2021-06-23 23:12:25", "3");

UPDATE TB_BOTAO SET nu_total_cliques = "1" where co_botao = 3;

INSERT INTO TB_CLIQUE (dt_cadastro, co_botao) VALUES ("2021-06-23 23:13:05", "3");

UPDATE TB_BOTAO SET nu_total_cliques = "2" where co_botao = 3;

INSERT INTO TB_CLIQUE (dt_cadastro, co_botao) VALUES ("2021-06-23 23:14:35", "16");

UPDATE TB_BOTAO SET nu_total_cliques = "1" where co_botao = 16;

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "3444455553");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "136", "2021-06-23 23:15:21");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo 1010", "2021-06-23 23:15:21");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "174", "132", "2021-06-23 23:15:22", "2022-06-23");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("56", "174", "LZE7SZT7", "VEZwRk4xTmFWRGM9", "I", "2021-06-23 23:15:22");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_filiais, nu_valor_assinatura, tp_pagamento, dt_cadastro, dt_expiracao) VALUES ("16", "56", "0", "187.97", "5", "2021-06-23 23:15:22", "2022-06-23");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("61", "2021-06-23 23:15:22", "Inicia o pagamento", "Leo Bessa Iniciou o pagamento", "0");

UPDATE TB_PLANO_ASSINANTE_ASSINATURA SET st_pagamento = "1", dt_modificado = "2021-06-23T23:15:24.000-03:00", nu_valor_desconto = "7.90", nu_valor_real = "180.07", ds_link_boleto = "https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=c95a6b9ed7763ed9846d6d667362126d74f7f9dbb4ce6354264e198a4bfbf70cf2d9a470350a3632", ds_code_transacao = "EB482D7F-5BFF-455C-8339-E88EBE7AECF6", co_plano_assinante = "16" where co_plano_assinante_assinatura = 61;

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("61", "2021-06-23T23:15:24.000-03:00", "Mudou o Status do pagamento para Aguardando pagamento", "Retorno da operadora do pagamento", "1");

INSERT INTO sisbela.TB_USUARIO_PERFIL (co_perfil, co_usuario) VALUES ("2", "135");

