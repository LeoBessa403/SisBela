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

