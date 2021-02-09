-- Atualizado em: 22/12/2020 10:12:12
-- AMBIENTE: http://localhost/SisBela/
-- BANCO: sisbela

CREATE DATABASE IF NOT EXISTS sisbela;

USE sisbela;

DROP TABLE IF EXISTS TB_ACESSO;


CREATE TABLE `TB_ACESSO` (
  `co_acesso` int(11) NOT NULL AUTO_INCREMENT,
  `ds_session_id` varchar(255) DEFAULT NULL,
  `dt_inicio_acesso` datetime DEFAULT NULL,
  `dt_fim_acesso` datetime DEFAULT NULL,
  `tp_situacao` varchar(1) DEFAULT NULL COMMENT 'A - Ativo / F - Finalizado',
  `co_usuario` int(10) NOT NULL,
  `co_trafego` int(11) NOT NULL,
  PRIMARY KEY (`co_acesso`,`co_usuario`,`co_trafego`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;


INSERT INTO TB_ACESSO VALUES("72","apsf1h4dh3hn5b85lobrn40c0i","2020-04-28 19:12:37","2020-04-28 19:54:45","F","1","72");

INSERT INTO TB_ACESSO VALUES("73","9hm52pn5qr4n7p13d4vkd1jkn9","2020-05-02 10:55:30","2020-05-02 10:58:15","F","6","73");

INSERT INTO TB_ACESSO VALUES("74","9hm52pn5qr4n7p13d4vkd1jkn9","2020-05-02 10:58:19","2020-05-02 11:01:46","F","1","74");

INSERT INTO TB_ACESSO VALUES("75","9hm52pn5qr4n7p13d4vkd1jkn9","2020-05-02 11:01:50","2020-05-02 11:38:16","F","6","75");

INSERT INTO TB_ACESSO VALUES("76","9hm52pn5qr4n7p13d4vkd1jkn9","2020-05-02 11:39:29","2020-05-02 12:12:13","F","6","76");

INSERT INTO TB_ACESSO VALUES("77","ae5f872kqq9sds2pj84fcnui3u","2020-05-06 16:47:34","2020-05-06 17:17:34","A","1","77");




DROP TABLE IF EXISTS TB_AGENDA;


CREATE TABLE `TB_AGENDA` (
  `co_agenda` int(11) NOT NULL AUTO_INCREMENT,
  `ds_motivo` text DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_agenda`,`co_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;


INSERT INTO TB_AGENDA VALUES("1","","2020-03-25 16:37:38","5");

INSERT INTO TB_AGENDA VALUES("2","fd gfdh hhhh","2020-03-25 16:47:42","5");

INSERT INTO TB_AGENDA VALUES("3","","2020-03-25 16:58:31","5");

INSERT INTO TB_AGENDA VALUES("4","","2020-04-07 11:48:49","5");

INSERT INTO TB_AGENDA VALUES("5","","2020-04-07 11:49:18","5");

INSERT INTO TB_AGENDA VALUES("6","","2020-04-07 12:02:04","5");

INSERT INTO TB_AGENDA VALUES("7","","2020-04-07 12:02:48","5");

INSERT INTO TB_AGENDA VALUES("8","","2020-04-07 12:03:20","5");

INSERT INTO TB_AGENDA VALUES("9","","2020-04-07 12:08:46","5");

INSERT INTO TB_AGENDA VALUES("10","","2020-04-07 13:06:58","5");

INSERT INTO TB_AGENDA VALUES("11","","2020-04-07 13:08:32","5");

INSERT INTO TB_AGENDA VALUES("12","","2020-04-07 13:09:50","5");

INSERT INTO TB_AGENDA VALUES("17","","2020-04-07 13:14:21","5");

INSERT INTO TB_AGENDA VALUES("18","","2020-04-07 13:19:21","2");

INSERT INTO TB_AGENDA VALUES("19","","2020-05-02 11:05:28","5");




DROP TABLE IF EXISTS TB_ANOTACAO;


CREATE TABLE `TB_ANOTACAO` (
  `co_anotacao` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_observacao` text DEFAULT NULL,
  `ds_titulo` varchar(80) DEFAULT NULL,
  `co_historia` int(11) NOT NULL,
  PRIMARY KEY (`co_anotacao`,`co_historia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_ASSINANTE;


CREATE TABLE `TB_ASSINANTE` (
  `co_assinante` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_expiracao` date DEFAULT NULL COMMENT 'Data da expiração de utilização do sistema',
  `st_dados_complementares` varchar(1) DEFAULT 'N' COMMENT 'S - Sim / N - Não',
  `st_status` varchar(1) DEFAULT 'A' COMMENT 'A - Ativo / I - inativo',
  `tp_assinante` varchar(1) DEFAULT 'M' COMMENT 'M  - Matriz / F - Filial',
  `co_empresa` int(11) NOT NULL,
  `co_pessoa` int(11) NOT NULL COMMENT 'Responsável pelo Assinante',
  PRIMARY KEY (`co_assinante`,`co_empresa`,`co_pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;


INSERT INTO TB_ASSINANTE VALUES("1","2020-03-25 12:09:13","2020-04-09","N","A","M","1","2");

INSERT INTO TB_ASSINANTE VALUES("2","2020-03-25 12:17:19","2020-04-09","N","A","M","2","3");

INSERT INTO TB_ASSINANTE VALUES("3","2020-03-25 12:53:31","2020-04-09","N","A","M","3","4");

INSERT INTO TB_ASSINANTE VALUES("4","2020-03-25 12:57:07","2020-04-09","N","A","M","4","5");

INSERT INTO TB_ASSINANTE VALUES("5","2020-03-25 13:03:39","2023-04-09","S","A","M","5","6");

INSERT INTO TB_ASSINANTE VALUES("6","2020-04-11 18:20:44","2020-04-26","N","A","M","6","39");

INSERT INTO TB_ASSINANTE VALUES("7","2020-04-15 10:44:55","2020-04-30","N","A","M","7","40");

INSERT INTO TB_ASSINANTE VALUES("8","2020-04-15 10:50:44","2020-04-30","N","A","M","8","41");

INSERT INTO TB_ASSINANTE VALUES("9","2020-04-15 10:52:48","2020-04-30","N","A","M","9","42");

INSERT INTO TB_ASSINANTE VALUES("10","2020-04-15 10:54:18","2020-04-30","N","A","M","10","43");

INSERT INTO TB_ASSINANTE VALUES("11","2020-04-15 10:55:48","2020-04-30","N","A","M","11","44");

INSERT INTO TB_ASSINANTE VALUES("12","2020-04-15 10:57:20","2020-04-30","N","A","M","12","45");

INSERT INTO TB_ASSINANTE VALUES("13","2020-04-15 11:00:01","2020-04-30","N","A","M","13","46");




DROP TABLE IF EXISTS TB_AUDITORIA;


CREATE TABLE `TB_AUDITORIA` (
  `co_auditoria` int(11) NOT NULL AUTO_INCREMENT,
  `dt_realizado` datetime DEFAULT NULL,
  `ds_perfil_usuario` text DEFAULT NULL,
  `co_usuario` int(10) NOT NULL,
  PRIMARY KEY (`co_auditoria`,`co_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;


INSERT INTO TB_AUDITORIA VALUES("125","2020-05-02 10:56:39","Gestor","6");

INSERT INTO TB_AUDITORIA VALUES("126","2020-05-02 10:59:44","Master","1");

INSERT INTO TB_AUDITORIA VALUES("127","2020-05-02 11:05:28","Gestor","6");

INSERT INTO TB_AUDITORIA VALUES("128","2020-05-02 11:07:32","Gestor","6");




DROP TABLE IF EXISTS TB_AUDITORIA_ITENS;


CREATE TABLE `TB_AUDITORIA_ITENS` (
  `co_auditoria_itens` int(11) NOT NULL AUTO_INCREMENT,
  `ds_item_anterior` varchar(255) DEFAULT NULL,
  `ds_item_atual` varchar(255) DEFAULT NULL,
  `ds_campo` varchar(120) DEFAULT NULL,
  `co_auditoria_tabela` int(11) NOT NULL,
  PRIMARY KEY (`co_auditoria_itens`,`co_auditoria_tabela`)
) ENGINE=InnoDB AUTO_INCREMENT=2892 DEFAULT CHARSET=utf8;


INSERT INTO TB_AUDITORIA_ITENS VALUES("1522","","2","co_suporte","213");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1523","","2020-04-02 23:04:19","dt_cadastro","213");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1524","","sdhfhfh5h54 h56h 5h","ds_mensagem","213");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1525","","N","st_lido","213");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1526","","6","co_usuario","213");

INSERT INTO TB_AUDITORIA_ITENS VALUES("1527","","9","co_imagem","213");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2762","6","","co_pessoa","439");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2763","12345678909","12345678909","nu_cpf","439");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2764","LEO BESSA","","no_pessoa","439");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2765","","","nu_rg","439");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2766","2020-03-25 13:03:39","","dt_cadastro","439");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2767","","","dt_nascimento","439");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2768","","","st_sexo","439");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2769","5","","co_endereco","439");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2770","6","","co_contato","439");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2771","0","","co_imagem","439");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2772","6","","co_contato","440");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2773","6184455656","6195959565","nu_tel1","440");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2774","11999999999","","nu_tel2","440");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2775","","","nu_tel3","440");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2776","","","nu_tel_0800","440");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2777","leonardo.bessa@basis.com.br","","ds_email","440");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2778","","","ds_site","440");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2779","","","ds_facebook","440");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2780","","","ds_twitter","440");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2781","","","ds_instagram","440");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2782","","7","co_plano_assinante","441");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2783","","5","co_assinante","441");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2784","","73","nu_profissionais","441");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2785","","0","nu_filiais","441");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2786","","599.90","nu_valor_assinatura","441");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2787","","5","tp_pagamento","441");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2788","","2020-05-02 10:56:39","dt_cadastro","441");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2789","","2023-04-09","dt_expiracao","441");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2790","","5","co_plano_assinante_assinatura_ativo","441");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2791","","22","co_plano_assinante_assinatura","442");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2792","","2020-05-02 10:56:39","dt_cadastro","442");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2793","","Inicia o pagamento","ds_acao","442");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2794","","LEO BESSA Iniciou o pagamento","ds_usuario","442");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2795","","0","st_pagamento","442");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2796","22","","co_plano_assinante_assinatura","443");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2797","2020-05-02 10:56:39","","dt_cadastro","443");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2798","2023-04-09","","dt_expiracao","443");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2799","","","dt_confirma_pagamento","443");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2800","5","","tp_pagamento","443");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2801","0","1","st_pagamento","443");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2802","","2020-05-02T10:56:47.000-03:00","dt_modificado","443");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2803","","24.34","nu_valor_desconto","443");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2804","","575.56","nu_valor_real","443");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2805","null","https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=7805e93ce3b5c3268c8c6dde3d6e1f171b2cf06a5e50796513a73637fd8cc0295f65051d85332945","ds_link_boleto","443");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2806","0","","nu_filiais","443");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2807","5","","co_plano_assinante_assinatura_ativo","443");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2808","I","","st_status","443");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2809","null","6710D77B-B25A-40CF-A304-3709F56904F0","ds_code_transacao","443");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2810","599.90","","nu_valor_assinatura","443");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2811","73","","nu_profissionais","443");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2812","5","","co_assinante","443");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2813","7","7","co_plano_assinante","443");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2814","","22","co_plano_assinante_assinatura","444");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2815","","2020-05-02T10:56:47.000-03:00","dt_cadastro","444");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2816","","Mudou o Status do pagamento para Aguardando pagamento","ds_acao","444");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2817","","Retorno da operadora do pagamento","ds_usuario","444");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2818","","1","st_pagamento","444");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2819","5","","co_plano_assinante_assinatura","445");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2820","2020-03-25 13:03:42","","dt_cadastro","445");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2821","2020-04-09","","dt_expiracao","445");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2822","","","dt_confirma_pagamento","445");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2823","","","tp_pagamento","445");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2824","3","","st_pagamento","445");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2825","2020-03-25 13:03:42","","dt_modificado","445");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2826","","","nu_valor_desconto","445");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2827","","","nu_valor_real","445");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2828","null","","ds_link_boleto","445");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2829","0","","nu_filiais","445");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2830","0","","co_plano_assinante_assinatura_ativo","445");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2831","A","I","st_status","445");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2832","null","","ds_code_transacao","445");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2833","0.00","","nu_valor_assinatura","445");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2834","3","","nu_profissionais","445");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2835","5","","co_assinante","445");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2836","1","","co_plano_assinante","445");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2837","5","","co_assinante","446");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2838","2020-03-25 13:03:39","","dt_cadastro","446");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2839","2020-04-09","2023-04-09","dt_expiracao","446");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2840","S","","st_dados_complementares","446");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2841","A","","st_status","446");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2842","M","","tp_assinante","446");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2843","5","","co_empresa","446");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2844","6","","co_pessoa","446");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2845","","22","co_plano_assinante_assinatura","447");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2846","","2020-05-02T10:57:57.000-03:00","dt_cadastro","447");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2847","","Mudou o Status do pagamento para Pago ","ds_acao","447");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2848","","Retorno da operadora do pagamento","ds_usuario","447");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2849","","3","st_pagamento","447");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2850","22","","co_plano_assinante_assinatura","448");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2851","2020-05-02 10:56:39","","dt_cadastro","448");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2852","2023-04-09","","dt_expiracao","448");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2853","","2020-05-02T10:57:57.000-03:00","dt_confirma_pagamento","448");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2854","5","","tp_pagamento","448");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2855","1","3","st_pagamento","448");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2856","2020-05-02 10:56:47","2020-05-02T10:57:57.000-03:00","dt_modificado","448");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2857","24.34","","nu_valor_desconto","448");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2858","575.56","","nu_valor_real","448");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2859","https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=7805e93ce3b5c3268c8c6dde3d6e1f171b2cf06a5e50796513a73637fd8cc0295f65051d85332945","","ds_link_boleto","448");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2860","0","","nu_filiais","448");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2861","5","","co_plano_assinante_assinatura_ativo","448");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2862","I","A","st_status","448");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2863","6710D77B-B25A-40CF-A304-3709F56904F0","","ds_code_transacao","448");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2864","599.90","","nu_valor_assinatura","448");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2865","73","","nu_profissionais","448");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2866","5","","co_assinante","448");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2867","7","","co_plano_assinante","448");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2868","","2020-05-02 11:05:28","dt_cadastro","449");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2869","","5","co_assinante","449");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2870","","19","co_agenda","450");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2871","","2020-05-02 11:05:28","dt_cadastro","450");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2872","","2","st_status","450");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2873","","2020-05-06 08:00:00","dt_inicio_agenda","450");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2874","","2020-05-06 18:00:00","dt_fim_agenda","450");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2875","","0","nu_valor","450");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2876","","0","nu_duracao","450");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2877","","fefef","ds_observacao","450");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2878","","6","co_usuario","450");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2879","","1","co_profissional","450");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2880","","14","co_cliente","450");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2881","","7","co_servico","450");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2882","","19","co_agenda","451");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2883","","2020-05-02 11:07:31","dt_cadastro","451");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2884","","7","st_status","451");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2885","","2020-05-06 08:00:00","dt_inicio_agenda","451");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2886","","2020-05-06 18:00:00","dt_fim_agenda","451");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2887","","fefef","ds_observacao","451");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2888","","6","co_usuario","451");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2889","","14","co_cliente","451");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2890","","7","co_servico","451");

INSERT INTO TB_AUDITORIA_ITENS VALUES("2891","","1","co_profissional","451");




DROP TABLE IF EXISTS TB_AUDITORIA_TABELA;


CREATE TABLE `TB_AUDITORIA_TABELA` (
  `co_auditoria_tabela` int(11) NOT NULL AUTO_INCREMENT,
  `no_tabela` varchar(45) DEFAULT NULL,
  `tp_operacao` varchar(1) DEFAULT NULL,
  `co_registro` int(11) DEFAULT NULL,
  `co_auditoria` int(11) NOT NULL,
  PRIMARY KEY (`co_auditoria_tabela`,`co_auditoria`)
) ENGINE=InnoDB AUTO_INCREMENT=452 DEFAULT CHARSET=utf8;


INSERT INTO TB_AUDITORIA_TABELA VALUES("213","TB_HISTORICO_SUPORTE","I","6","62");

INSERT INTO TB_AUDITORIA_TABELA VALUES("439","TB_PESSOA","U","6","125");

INSERT INTO TB_AUDITORIA_TABELA VALUES("440","TB_CONTATO","U","6","125");

INSERT INTO TB_AUDITORIA_TABELA VALUES("441","TB_PLANO_ASSINANTE_ASSINATURA","I","22","125");

INSERT INTO TB_AUDITORIA_TABELA VALUES("442","TB_HISTORICO_PAG_ASSINATURA","I","34","125");

INSERT INTO TB_AUDITORIA_TABELA VALUES("443","TB_PLANO_ASSINANTE_ASSINATURA","U","22","125");

INSERT INTO TB_AUDITORIA_TABELA VALUES("444","TB_HISTORICO_PAG_ASSINATURA","I","35","125");

INSERT INTO TB_AUDITORIA_TABELA VALUES("445","TB_PLANO_ASSINANTE_ASSINATURA","U","5","126");

INSERT INTO TB_AUDITORIA_TABELA VALUES("446","TB_ASSINANTE","U","5","126");

INSERT INTO TB_AUDITORIA_TABELA VALUES("447","TB_HISTORICO_PAG_ASSINATURA","I","36","126");

INSERT INTO TB_AUDITORIA_TABELA VALUES("448","TB_PLANO_ASSINANTE_ASSINATURA","U","22","126");

INSERT INTO TB_AUDITORIA_TABELA VALUES("449","TB_AGENDA","I","19","127");

INSERT INTO TB_AUDITORIA_TABELA VALUES("450","TB_STATUS_AGENDA","I","32","127");

INSERT INTO TB_AUDITORIA_TABELA VALUES("451","TB_STATUS_AGENDA","I","33","128");




DROP TABLE IF EXISTS TB_BANCO;


CREATE TABLE `TB_BANCO` (
  `co_banco` int(11) NOT NULL COMMENT 'Código do banco',
  `no_banco` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`co_banco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_CLIENTE;


CREATE TABLE `TB_CLIENTE` (
  `co_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `st_status` varchar(1) DEFAULT 'A' COMMENT 'A - Ativo / I - Inativo\n',
  `no_apelido` varchar(45) DEFAULT NULL,
  `ds_observacao` text DEFAULT NULL,
  `st_receber_email_agendamento` varchar(1) DEFAULT 'S' COMMENT 'S - Sim / N - Não',
  `st_lembrete_horario_agendamento` varchar(1) DEFAULT 'S' COMMENT 'S - Sim / N - Não',
  `st_sms_marketing` varchar(1) DEFAULT 'S' COMMENT 'S - Sim / N - Não',
  `st_email_marketing` varchar(1) DEFAULT 'S' COMMENT 'S - Sim / N - Não',
  `nu_como_conheceu` varchar(1) DEFAULT NULL COMMENT 'ComoConheceuEnum',
  `co_assinante` int(11) NOT NULL,
  `co_pessoa` int(11) NOT NULL,
  PRIMARY KEY (`co_cliente`,`co_assinante`,`co_pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;


INSERT INTO TB_CLIENTE VALUES("1","2020-03-25 16:37:38","A","","","S","S","S","S","","5","8");

INSERT INTO TB_CLIENTE VALUES("2","2020-03-25 16:47:42","A","","","S","S","S","S","","5","10");

INSERT INTO TB_CLIENTE VALUES("3","2020-04-07 11:48:49","A","","","S","S","S","S","","5","14");

INSERT INTO TB_CLIENTE VALUES("4","2020-04-07 11:49:18","A","","","S","S","S","S","","5","16");

INSERT INTO TB_CLIENTE VALUES("5","2020-04-07 12:02:04","A","","","S","S","S","S","","5","18");

INSERT INTO TB_CLIENTE VALUES("6","2020-04-07 12:02:48","A","","","S","S","S","S","","5","20");

INSERT INTO TB_CLIENTE VALUES("7","2020-04-07 12:03:20","A","","","S","S","S","S","","5","22");

INSERT INTO TB_CLIENTE VALUES("8","2020-04-07 12:08:46","A","","","S","S","S","S","","5","24");

INSERT INTO TB_CLIENTE VALUES("9","2020-04-07 13:06:59","A","","","S","S","S","S","","5","26");

INSERT INTO TB_CLIENTE VALUES("10","2020-04-07 13:08:32","A","","","S","S","S","S","","5","28");

INSERT INTO TB_CLIENTE VALUES("11","2020-04-07 13:09:51","A","","","S","S","S","S","","5","30");

INSERT INTO TB_CLIENTE VALUES("14","2020-04-07 13:14:21","A","","","S","S","S","S","","5","36");

INSERT INTO TB_CLIENTE VALUES("15","2020-04-07 13:19:21","A","","","S","S","S","S","","2","38");




DROP TABLE IF EXISTS TB_CONTATO;


CREATE TABLE `TB_CONTATO` (
  `co_contato` int(11) NOT NULL AUTO_INCREMENT,
  `nu_tel1` varchar(15) DEFAULT NULL,
  `nu_tel2` varchar(15) DEFAULT NULL,
  `nu_tel3` varchar(15) DEFAULT NULL,
  `nu_tel_0800` varchar(30) DEFAULT NULL,
  `ds_email` varchar(150) DEFAULT NULL,
  `ds_site` varchar(100) DEFAULT NULL,
  `ds_facebook` varchar(90) DEFAULT NULL,
  `ds_twitter` varchar(90) DEFAULT NULL,
  `ds_instagram` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`co_contato`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;


INSERT INTO TB_CONTATO VALUES("1","61993274991","6130826060","0","","leonardomcbessa@gmail.com","","","","");

INSERT INTO TB_CONTATO VALUES("2","61991058681","","","","lele.403@hotmail.com","","","","");

INSERT INTO TB_CONTATO VALUES("3","61993055454","","","","lucrece.neri@hotmail.com","","","","");

INSERT INTO TB_CONTATO VALUES("4","61993126972","","","","ddfds@fdsfjf.com.br","","","","");

INSERT INTO TB_CONTATO VALUES("5","61998110601","","","","fef@rtj.com","","","","");

INSERT INTO TB_CONTATO VALUES("6","6195959565","11999999999","","","leonardo.bessa@basis.com.br","","","","");

INSERT INTO TB_CONTATO VALUES("7","61922565323","","","","henriquecarvalhohca@outlook.com","","","","");

INSERT INTO TB_CONTATO VALUES("8","61995595599","","","","frabriceras15@gmail.com","","","","");

INSERT INTO TB_CONTATO VALUES("9","6199566323","","","","leonardo.bessa@basis.com.br","","","","");

INSERT INTO TB_CONTATO VALUES("10","61992556968","","","","teste@gmail.com","","","","");

INSERT INTO TB_CONTATO VALUES("11","61558996362","","","","thais.mail@gmail.com","","","","");

INSERT INTO TB_CONTATO VALUES("12","61599663331","","","","teste@gmail.com","","","","");

INSERT INTO TB_CONTATO VALUES("13","61995546653","","","","lele.403@hotmail.com","","","","");

INSERT INTO TB_CONTATO VALUES("14","61599633255","","","","lucrece.neri@hotmail.com","","","","");

INSERT INTO TB_CONTATO VALUES("15","61998863669","","","","leonardo.bessa@basis.com.br","","","","");

INSERT INTO TB_CONTATO VALUES("16","61965963322","","","","thais.mail@gmail.com","","","","");




DROP TABLE IF EXISTS TB_CONTROLLER;


CREATE TABLE `TB_CONTROLLER` (
  `co_controller` int(11) NOT NULL AUTO_INCREMENT,
  `no_controller` varchar(60) DEFAULT NULL,
  `ds_class_icon` varchar(30) DEFAULT NULL COMMENT 'Classe do Ícone',
  PRIMARY KEY (`co_controller`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;


INSERT INTO TB_CONTROLLER VALUES("1","Gestão","clip-data");

INSERT INTO TB_CONTROLLER VALUES("2","Auditoria","fa fa-crosshairs");

INSERT INTO TB_CONTROLLER VALUES("3","Acesso","clip-connection-2");

INSERT INTO TB_CONTROLLER VALUES("4","Funcionalidade","fa fa-outdent");

INSERT INTO TB_CONTROLLER VALUES("5","Perfil","clip-stack-empty");

INSERT INTO TB_CONTROLLER VALUES("6","Usuário","fa fa-group");

INSERT INTO TB_CONTROLLER VALUES("7","Visita","clip-airplane");

INSERT INTO TB_CONTROLLER VALUES("8","Plano","clip-banknote");

INSERT INTO TB_CONTROLLER VALUES("9","Assinante","clip-user-5");

INSERT INTO TB_CONTROLLER VALUES("10","Agenda","fa fa-calendar");

INSERT INTO TB_CONTROLLER VALUES("11","Relatorio","fa fa-clipboard");

INSERT INTO TB_CONTROLLER VALUES("12","Suporte","fa fa-envelope");




DROP TABLE IF EXISTS TB_CRONS;


CREATE TABLE `TB_CRONS` (
  `co_cron` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `no_cron` varchar(70) DEFAULT NULL,
  `ds_sql` text DEFAULT NULL,
  PRIMARY KEY (`co_cron`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_EMPRESA;


CREATE TABLE `TB_EMPRESA` (
  `co_empresa` int(11) NOT NULL AUTO_INCREMENT,
  `no_empresa` varchar(250) DEFAULT NULL COMMENT 'Razão Social\n',
  `no_fantasia` varchar(150) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `nu_cnpj` varchar(20) DEFAULT NULL,
  `nu_insc_estadual` varchar(20) DEFAULT NULL,
  `ds_observacao` text DEFAULT NULL,
  `st_status` varchar(1) DEFAULT NULL,
  `co_pessoa` int(11) NOT NULL COMMENT 'Pessoa responsável pela empresa\n',
  `co_endereco` int(11) NOT NULL,
  `co_contato` int(11) NOT NULL,
  `co_imagem` int(11) NOT NULL,
  PRIMARY KEY (`co_empresa`,`co_pessoa`,`co_endereco`,`co_contato`,`co_imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;


INSERT INTO TB_EMPRESA VALUES("1","","Esmaltaria Unha Padrão","2020-03-25 12:09:13","","","","","0","2","0","0");

INSERT INTO TB_EMPRESA VALUES("2","","Salão Novo Stylo 2","2020-03-25 12:17:19","","","","","0","3","0","0");

INSERT INTO TB_EMPRESA VALUES("3","","gfasdgfadg","2020-03-25 12:53:31","","","","","0","8","0","0");

INSERT INTO TB_EMPRESA VALUES("4","","rgreh h thtrhrtjrtj","2020-03-25 12:57:07","","","","","0","0","0","0");

INSERT INTO TB_EMPRESA VALUES("5","BARBEARIA NOVA BARBA RAZãO SOCIAL","BARBEARIA NOVA BARBA","2020-03-25 13:03:39","","","nova descrição","","0","4","0","0");

INSERT INTO TB_EMPRESA VALUES("6","","Cabelo Hairs","2020-04-11 18:20:43","","","","","0","0","0","0");

INSERT INTO TB_EMPRESA VALUES("7","","Moitaa coiffer","2020-04-15 10:44:55","","","","","0","0","0","0");

INSERT INTO TB_EMPRESA VALUES("8","","Cabelo Hairs","2020-04-15 10:50:44","","","","","0","0","0","0");

INSERT INTO TB_EMPRESA VALUES("9","","Cabelo Hairs","2020-04-15 10:52:48","","","","","0","0","0","0");

INSERT INTO TB_EMPRESA VALUES("10","","Moitaa coiffer","2020-04-15 10:54:18","","","","","0","0","0","0");

INSERT INTO TB_EMPRESA VALUES("11","","Moitaa coiffer","2020-04-15 10:55:48","","","","","0","0","0","0");

INSERT INTO TB_EMPRESA VALUES("12","","Moitaa coiffer","2020-04-15 10:57:20","","","","","0","0","0","0");

INSERT INTO TB_EMPRESA VALUES("13","","Moitaa coiffer","2020-04-15 11:00:01","","","","","0","0","0","0");




DROP TABLE IF EXISTS TB_ENDERECO;


CREATE TABLE `TB_ENDERECO` (
  `co_endereco` int(11) NOT NULL AUTO_INCREMENT,
  `ds_endereco` varchar(150) DEFAULT NULL,
  `ds_complemento` varchar(100) DEFAULT NULL,
  `ds_bairro` varchar(80) DEFAULT NULL,
  `nu_cep` varchar(12) DEFAULT NULL,
  `no_cidade` varchar(80) DEFAULT NULL,
  `sg_uf` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`co_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;


INSERT INTO TB_ENDERECO VALUES("1","qr 403 conjunto 10 casa 28","","Samambaia Norte","72319111","Brasília","DF");

INSERT INTO TB_ENDERECO VALUES("2","","","","","","");

INSERT INTO TB_ENDERECO VALUES("3","","","","","","");

INSERT INTO TB_ENDERECO VALUES("4","QR 403 Conjunto 10","103","Samambaia Norte (Samambaia)","72319111","Brasília","DF");

INSERT INTO TB_ENDERECO VALUES("5","","","","","","");

INSERT INTO TB_ENDERECO VALUES("6","QR 403 Conjunto 10","103","Samambaia Norte (Samambaia)","72319111","Brasília","DF");

INSERT INTO TB_ENDERECO VALUES("7","QR 403 Conjunto 10","103","Samambaia Norte (Samambaia)","72319111","Brasília","DF");

INSERT INTO TB_ENDERECO VALUES("8","","","","","","");

INSERT INTO TB_ENDERECO VALUES("9","","","","","","");




DROP TABLE IF EXISTS TB_FUNCIONALIDADE;


CREATE TABLE `TB_FUNCIONALIDADE` (
  `co_funcionalidade` int(11) NOT NULL AUTO_INCREMENT,
  `no_funcionalidade` varchar(150) NOT NULL,
  `ds_action` varchar(120) DEFAULT NULL,
  `st_status` varchar(1) DEFAULT 'A' COMMENT '''A - Ativo / I - Inativo''',
  `st_menu` varchar(1) DEFAULT 'S' COMMENT 'S - Sim / N - Não (Se apresenta no menu)',
  `co_controller` int(11) NOT NULL,
  PRIMARY KEY (`co_funcionalidade`,`co_controller`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;


INSERT INTO TB_FUNCIONALIDADE VALUES("1","Perfil Master","PerfilMaster","A","S","0");

INSERT INTO TB_FUNCIONALIDADE VALUES("2","Auditoria Listar","ListarAuditoria","A","S","2");

INSERT INTO TB_FUNCIONALIDADE VALUES("3","Auditoria Detalhar","DetalharAuditoria","A","N","2");

INSERT INTO TB_FUNCIONALIDADE VALUES("4","Usuario Cadastrar","CadastroUsuario","A","N","6");

INSERT INTO TB_FUNCIONALIDADE VALUES("5","Usuario Listar","ListarUsuario","A","S","6");

INSERT INTO TB_FUNCIONALIDADE VALUES("6","Meu Perfil Usuario","MeuPerfilUsuario","A","S","6");

INSERT INTO TB_FUNCIONALIDADE VALUES("7","Perfil Listar","ListarPerfil","A","S","5");

INSERT INTO TB_FUNCIONALIDADE VALUES("8","Perfil Cadastrar","CadastroPerfil","A","S","5");

INSERT INTO TB_FUNCIONALIDADE VALUES("9","Funcionalidade Listar","ListarFuncionalidade","A","S","4");

INSERT INTO TB_FUNCIONALIDADE VALUES("10","Funcionalidade Cadastrar","CadastroFuncionalidade","A","S","4");

INSERT INTO TB_FUNCIONALIDADE VALUES("11","Troca Senha Usuario","TrocaSenhaUsuario","A","S","6");

INSERT INTO TB_FUNCIONALIDADE VALUES("12","Dados Complementares Assinante","DadosComplementaresAssinante","A","S","9");

INSERT INTO TB_FUNCIONALIDADE VALUES("13","Listar Visita","ListarVisita","A","S","7");

INSERT INTO TB_FUNCIONALIDADE VALUES("14","Config Gestao","ConfigGestao","A","S","1");

INSERT INTO TB_FUNCIONALIDADE VALUES("15","Gerar Entidades Gestao","GerarEntidadesGestao","A","S","1");

INSERT INTO TB_FUNCIONALIDADE VALUES("16","Gerar Backup Gestao","GerarBackupGestao","A","S","1");

INSERT INTO TB_FUNCIONALIDADE VALUES("17","Listar Acesso","ListarAcesso","A","S","3");

INSERT INTO TB_FUNCIONALIDADE VALUES("18","Listar Plano","ListarPlano","A","S","8");

INSERT INTO TB_FUNCIONALIDADE VALUES("19","Cadastro Plano","CadastroPlano","A","S","8");

INSERT INTO TB_FUNCIONALIDADE VALUES("20","Listar Assinante","ListarAssinante","A","S","9");

INSERT INTO TB_FUNCIONALIDADE VALUES("21","Cadastro Assinante","CadastroAssinante","A","S","9");

INSERT INTO TB_FUNCIONALIDADE VALUES("22","Pre Projeto Gestao","PreProjetoGestao","A","S","1");

INSERT INTO TB_FUNCIONALIDADE VALUES("23","Acompanhar Projeto Gestao","AcompanharProjetoGestao","A","N","1");

INSERT INTO TB_FUNCIONALIDADE VALUES("24","Limpar Banco Gestao","LimparBancoGestao","A","S","1");

INSERT INTO TB_FUNCIONALIDADE VALUES("25","Meu Plano Assinante","MeuPlanoAssinante","A","S","9");

INSERT INTO TB_FUNCIONALIDADE VALUES("26","Calendário","Agendamento","A","S","10");

INSERT INTO TB_FUNCIONALIDADE VALUES("27","Historico agendamento","HistoricoAgendamento","A","N","10");

INSERT INTO TB_FUNCIONALIDADE VALUES("28","Crons","CronsGestao","A","S","1");

INSERT INTO TB_FUNCIONALIDADE VALUES("29","Minificação","MinificacaoGestao","A","S","1");

INSERT INTO TB_FUNCIONALIDADE VALUES("30","Gráfico","GraficoRelatorio","A","S","11");

INSERT INTO TB_FUNCIONALIDADE VALUES("31","Listar Suporte","ListarSuporte","A","S","12");

INSERT INTO TB_FUNCIONALIDADE VALUES("32","Cadastro Suporte","CadastroSuporte","A","N","12");

INSERT INTO TB_FUNCIONALIDADE VALUES("33","Deleta Suporte","DeletaSuporte","A","N","12");

INSERT INTO TB_FUNCIONALIDADE VALUES("34","Renova Plano Assinante","RenovaPlanoAssinante","A","S","9");

INSERT INTO TB_FUNCIONALIDADE VALUES("35","Detalhar Assinatura Assinante","DetalharAssinaturaAssinante","A","N","9");

INSERT INTO TB_FUNCIONALIDADE VALUES("36","Notificação PagSeguro","NotificacaoPagSeguro","A","S","9");




DROP TABLE IF EXISTS TB_HISTORIA;


CREATE TABLE `TB_HISTORIA` (
  `co_historia` int(11) NOT NULL AUTO_INCREMENT,
  `ds_titulo` varchar(80) DEFAULT NULL,
  `ds_observacao` text DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_atualizado` datetime DEFAULT NULL,
  `st_situacao` varchar(1) DEFAULT 'N' COMMENT 'N - Não iniciada / I - Iniciada / C - Concluida',
  `co_sessao` int(11) NOT NULL,
  PRIMARY KEY (`co_historia`,`co_sessao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;


INSERT INTO TB_HISTORIA VALUES("2","Manter Assinante","Manter assinante do sistema e com data de expiração do sistema para o assinante, criar contato, criar pessoa, envio de email de confirmação com senha gerada.\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nCriar o usuário quando criar o assinante, plano assinado\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nModelagem: Assinante (Junção de pessoa, contato, usuário, data de expiração, status)","2019-12-18 12:11:52","2020-03-23 15:38:30","C","1");

INSERT INTO TB_HISTORIA VALUES("4","Configuração inicial do projeto","Configuração inicial do projeto","2019-12-18 12:16:19","2020-03-17 18:39:45","C","1");

INSERT INTO TB_HISTORIA VALUES("5","Mudar loguin","Mudar loguin para logar com email tb, recuperar senha e notificar de mudar senha.","2019-12-18 12:16:48","2020-03-09 16:49:59","C","1");

INSERT INTO TB_HISTORIA VALUES("6","Criar mensagem de expiração e bloqueio do sistema","Criar mensagem de expiração e bloqueio do sistema","2019-12-18 12:17:13","2020-03-09 16:40:54","C","1");

INSERT INTO TB_HISTORIA VALUES("8","Pesquisa Avançada dos Assinantes","Pesquisa Avançada dos Assinantes por razão social, nome fantasia, Responsável, cidade e UF, email, valor assinatura atual.","2019-12-18 12:18:35","2020-03-09 15:40:05","C","1");

INSERT INTO TB_HISTORIA VALUES("9","Dados complementares básicos","Manter dados: (Endereço, telefone, CNPJ, fantasia, razão e outros)\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nModelagem: Contato, endereço e empresa ou pessoa","2019-12-18 12:20:44","2020-03-03 14:28:17","C","2");

INSERT INTO TB_HISTORIA VALUES("10","Manter Fotos do Estabelecimento","Manter Fotos do Estabelecimento para o Site\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nModelagem: Imagem (FK Assinante)","2019-12-18 12:21:59","2020-03-03 14:28:08","C","2");

INSERT INTO TB_HISTORIA VALUES("11","Gestão de notificações","Gestão de notificações com as mensagens geradas do sistema de sucesso erro e avisos","2019-12-18 12:22:23","2020-03-03 14:28:35","C","2");

INSERT INTO TB_HISTORIA VALUES("12","Cadastrar Agendamento","Cadastrar Agendamento (Opção da recorrência)\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nVários serviços e pacotes\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nModelagem: (FK cliente, Serviço, Profissional, Assistente","2019-12-18 12:23:46","2020-03-10 12:11:11","C","3");

INSERT INTO TB_HISTORIA VALUES("13","Edição Agendamento","Edição Agendamento\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nValidação dos status do agendamento e status do serviço","2019-12-18 12:24:38","2020-03-10 17:25:45","C","3");

INSERT INTO TB_HISTORIA VALUES("14","Implantação Agenda","Agenda CSS (Responsivo)","2019-12-18 12:25:03","2020-03-09 18:51:22","C","3");

INSERT INTO TB_HISTORIA VALUES("15","Pesquisa Avançada dos Agendamentos","Pesquisa de agendamento  por período, status, profissional, serviço, assistente, valor r$, cliente","2019-12-18 12:25:41","2020-03-10 17:25:56","C","3");

INSERT INTO TB_HISTORIA VALUES("16","Alterar Status do agendamento","Alterar Status do agendamento","2019-12-18 12:26:18","2020-03-10 17:26:12","C","3");

INSERT INTO TB_HISTORIA VALUES("17","Listagem dos agendamento (Calendário)","Listagem dos agendamento e auto render","2019-12-18 12:26:45","2020-03-10 12:11:25","C","3");

INSERT INTO TB_HISTORIA VALUES("18","Histórico do Agendamento","Histórico do Agendamento (Modal)","2019-12-18 12:27:19","2020-03-10 17:26:22","C","3");

INSERT INTO TB_HISTORIA VALUES("19","Deletar Agendamento","Deletar Agendamento (Modal) com Justificativa\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nVisualizar na listagem da grid","2019-12-18 12:27:55","2020-03-10 17:26:31","C","3");

INSERT INTO TB_HISTORIA VALUES("20","Listagem dos agendamento (Grid)","Listagem dos agendamento (Grid)","2019-12-18 12:28:13","2020-03-10 12:11:48","C","3");

INSERT INTO TB_HISTORIA VALUES("21","Event Dragging & Resizing","Criar eventos Dragging & Resizing","2019-12-18 12:28:41","2020-03-10 17:55:15","C","3");

INSERT INTO TB_HISTORIA VALUES("22","Visualizar Agendamento","Visualizar Agendamento","2019-12-18 12:29:06","2020-03-10 12:11:58","C","3");

INSERT INTO TB_HISTORIA VALUES("23","Validações dos botões","Validações dos botões da tela de visualizar agendamento","2019-12-18 12:29:42","2020-03-10 12:12:10","C","3");

INSERT INTO TB_HISTORIA VALUES("24","Iniciar o sistema com as configurações básicas","Iniciar o sistema com as configurações básicas para depois iniciar o painel","2019-12-18 12:31:44","2020-03-18 12:13:12","C","4");

INSERT INTO TB_HISTORIA VALUES("25","Implantar sistema Suporte","Implantar sistema Suporte\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nModelagem: suporte (FK Assinante, Categoria Suporte)\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTabela base Categoria Suporte","2019-12-18 12:32:21","2020-03-12 15:29:04","C","5");

INSERT INTO TB_HISTORIA VALUES("26","Relatórios de agendamentos","Relatórios de agendamentos por status do agendamento e período, Profissional, serviço e cliente\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Impressão dos gráficos e dados","2019-12-18 12:34:22","2020-03-11 15:07:26","C","6");

INSERT INTO TB_HISTORIA VALUES("27","Manter Usuário","Manter Usuário","2019-12-18 12:35:02","2020-03-05 15:48:01","C","7");

INSERT INTO TB_HISTORIA VALUES("28","Criar Cron de desativar agendamento","Criar Cron de desativar agendamento","2019-12-18 12:35:39","2020-03-18 09:57:55","C","8");

INSERT INTO TB_HISTORIA VALUES("29","Página de captura de cliente","Página de captura de cliente","2019-12-18 12:37:50","2019-12-18 12:37:50","N","9");

INSERT INTO TB_HISTORIA VALUES("30","Vídeos para a Página de captura de cliente","Vídeos para a Página de captura de cliente","2019-12-18 12:38:09","2019-12-18 12:38:09","N","9");

INSERT INTO TB_HISTORIA VALUES("31","Página de captura de lead","Página de captura de lead","2019-12-18 12:38:28","2019-12-18 12:38:28","N","9");

INSERT INTO TB_HISTORIA VALUES("32","Cadastro pelo site para o assinante","verificar o cadastro pelo site para manter um plano mesmo que que por experiência","2019-12-18 12:38:52","2019-12-18 12:38:52","N","9");

INSERT INTO TB_HISTORIA VALUES("33","Material do Pré Lançamento","Produção e Disponibilização do material para lista de lead\n\n\n\n\n\n\n\n\n\n\n\n\n\nDuração de 7 a 10 dias antes do Lançamento de 3 a 4 vídeos","2019-12-18 12:39:57","2019-12-18 12:39:57","N","11");

INSERT INTO TB_HISTORIA VALUES("34","Direcionar para o lançamento","Após Lançamento Direcionar para o lançamento o tráfego do PL","2019-12-18 12:40:34","2019-12-18 12:40:34","N","11");

INSERT INTO TB_HISTORIA VALUES("35","Criação da Lista de Lead","Criação da Lista de Lead já trabalhadas nas redes sociais e mais..","2019-12-18 12:42:55","2019-12-18 12:42:55","N","10");

INSERT INTO TB_HISTORIA VALUES("36","Criar conteúdos e Entregas","Criar conteúdos para entrega e ir formulando a lista de lead\n\n\n\n\n\n\n\n\n\n\n\n\n\nInicio da divulgação para o lançamento.","2019-12-18 12:43:22","2019-12-18 12:43:22","N","10");

INSERT INTO TB_HISTORIA VALUES("37","Lançamento das Vendas","de 1 a 7 dias de vendas com página aquecida","2019-12-18 12:44:04","2019-12-18 12:44:04","N","12");

INSERT INTO TB_HISTORIA VALUES("38","Vídeos para lançamento de vendas","produção de Vídeos para lançamento de vendas","2019-12-18 12:44:29","2019-12-18 12:44:38","N","12");

INSERT INTO TB_HISTORIA VALUES("39","Teste sessão assinante","Teste sessão assinante","2019-12-18 12:45:23","2019-12-18 12:45:23","N","13");

INSERT INTO TB_HISTORIA VALUES("40","Teste sessão Complemento do assinante","Teste sessão Complemento do assinante","2019-12-18 12:45:36","2020-03-17 18:44:03","N","13");

INSERT INTO TB_HISTORIA VALUES("41","Teste sessão Agendamento","Teste sessão Agendamento","2019-12-18 12:45:56","2020-03-17 18:43:49","N","13");

INSERT INTO TB_HISTORIA VALUES("42","Teste sessão Iniciar o sistema","Teste sessão Iniciar o sistema","2019-12-18 12:46:20","2019-12-18 12:46:20","N","13");

INSERT INTO TB_HISTORIA VALUES("43","Teste sessão Suporte","Teste sessão Suporte","2019-12-18 12:46:50","2019-12-18 12:46:50","N","13");

INSERT INTO TB_HISTORIA VALUES("44","Teste sessão Relatório","Teste sessão Relatório","2019-12-18 12:47:05","2019-12-18 12:47:05","N","13");

INSERT INTO TB_HISTORIA VALUES("45","Teste sessão Usuário","Teste sessão Usuário","2019-12-18 12:47:20","2019-12-18 12:47:20","N","13");

INSERT INTO TB_HISTORIA VALUES("46","Trocar Senha","Confirmar senha antiga e nova e se esqueceu a senha encaminhar no email","2020-03-04 11:13:55","2020-03-04 11:52:53","C","7");

INSERT INTO TB_HISTORIA VALUES("47","Dados complementares Perfil Master edição","Dados complementares Perfil Master edição","2020-03-09 11:46:09","2020-03-09 11:46:18","C","2");

INSERT INTO TB_HISTORIA VALUES("50","Relatório Agendamentos Gráficos","Relatório Agendamentos Gráficos por status do agendamento e período, Profissional, serviço e cliente","2020-03-10 18:03:50","2020-03-11 15:06:52","C","6");

INSERT INTO TB_HISTORIA VALUES("51","Listar Suporte","Listar Suporte","2020-03-12 15:29:22","2020-03-17 17:38:02","C","5");

INSERT INTO TB_HISTORIA VALUES("52","Criar Suporte","Criar Suporte","2020-03-12 15:29:36","2020-03-16 14:44:29","C","5");

INSERT INTO TB_HISTORIA VALUES("53","Excluir Suporte","Excluir Suporte","2020-03-12 15:29:57","2020-03-17 17:38:22","C","5");

INSERT INTO TB_HISTORIA VALUES("54","Responder Suporte","Responder Suporte","2020-03-12 15:30:12","2020-03-16 15:42:55","C","5");

INSERT INTO TB_HISTORIA VALUES("55","Criar Notificação de Mensagem","Criar Notificação de Mensagem","2020-03-17 17:38:57","2020-03-17 18:25:18","C","5");

INSERT INTO TB_HISTORIA VALUES("56","Configurar Ambiente de Teste","Configurar Todo Ambiente de Teste no site e carregar projeto pra ser testado","2020-03-17 18:46:29","2020-03-17 18:46:29","N","14");

INSERT INTO TB_HISTORIA VALUES("57","Validar Número de profissionais no cadastro","Validar Número de profissionais no cadastro","2020-03-18 11:09:50","2020-03-18 11:59:28","C","3");

INSERT INTO TB_HISTORIA VALUES("58","Listar pagamentos","Listar pagamentos Assinante / Perfil Master","2020-03-23 15:25:32","2020-03-23 15:25:32","C","15");

INSERT INTO TB_HISTORIA VALUES("59","Renovar Assinatura","Renovar Assinatura Boleo / Cartao e transferencia","2020-03-23 15:26:14","2020-03-23 15:39:03","C","15");

INSERT INTO TB_HISTORIA VALUES("60","Estorno / Cancelamento do assinatura","Estorno / Cancelamento do assinatura","2020-03-23 15:26:55","2020-03-23 19:35:23","C","15");

INSERT INTO TB_HISTORIA VALUES("61","Detalhes da transação da assinatura","Modal Detalhes da transação da assinatura","2020-03-23 15:27:35","2020-03-24 12:45:03","C","15");

INSERT INTO TB_HISTORIA VALUES("62","Manter Planos do Assinante Sistema Expirado","Manter Planos do Assinante Sistema Expirado","2020-03-23 15:32:59","2020-03-24 19:28:39","C","15");

INSERT INTO TB_HISTORIA VALUES("63","Notificação do PagSeguro","Notificação do PagSeguro atualização automática mais funcionalidade de teste","2020-03-23 15:39:51","2020-03-23 17:29:00","C","15");

INSERT INTO TB_HISTORIA VALUES("64","Abrir Boleto e redirecionar para banco","Abrir Boleto e redirecionar para banco","2020-03-23 19:35:56","2020-03-24 16:59:37","C","15");

INSERT INTO TB_HISTORIA VALUES("65","Adaptação da estrutura do site","Adaptação da estrutura do site","2020-04-04 11:06:57","2020-04-04 11:06:57","I","9");

INSERT INTO TB_HISTORIA VALUES("66","Tela Inicial","Dados para o Assinante dados para o perfil master","2020-04-08 11:37:38","2020-04-08 11:37:38","N","4");




DROP TABLE IF EXISTS TB_HISTORICO_HISTORIA;


CREATE TABLE `TB_HISTORICO_HISTORIA` (
  `co_historico_historia` int(11) NOT NULL AUTO_INCREMENT,
  `nu_esforco` varchar(2) DEFAULT NULL,
  `nu_esforco_restante` varchar(2) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_historia` int(11) NOT NULL,
  PRIMARY KEY (`co_historico_historia`,`co_historia`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;


INSERT INTO TB_HISTORICO_HISTORIA VALUES("2","20","8","2019-12-18 12:11:52","2");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("4","8","3","2019-12-18 12:16:19","4");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("5","20","8","2019-12-18 12:16:48","5");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("6","13","3","2019-12-18 12:17:13","6");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("8","20","20","2019-12-18 12:18:35","8");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("9","20","8","2019-12-18 12:20:44","9");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("10","8","3","2019-12-18 12:21:59","10");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("11","20","8","2019-12-18 12:22:23","11");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("12","20","8","2019-12-18 12:23:46","12");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("13","20","13","2019-12-18 12:23:55","12");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("14","","8","2019-12-18 12:24:38","13");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("15","8","3","2019-12-18 12:25:03","14");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("16","13","5","2019-12-18 12:25:41","15");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("17","20","8","2019-12-18 12:25:53","13");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("18","5","2","2019-12-18 12:26:18","16");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("19","8","3","2019-12-18 12:26:45","17");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("20","13","8","2019-12-18 12:27:19","18");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("21","5","2","2019-12-18 12:27:55","19");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("22","13","5","2019-12-18 12:28:13","20");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("23","13","5","2019-12-18 12:28:41","21");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("24","8","4","2019-12-18 12:29:06","22");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("25","3","1","2019-12-18 12:29:42","23");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("26","13","8","2019-12-18 12:31:44","24");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("27","40","40","2019-12-18 12:32:21","25");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("28","13","13","2019-12-18 12:34:22","26");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("29","20","13","2019-12-18 12:35:02","27");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("30","8","8","2019-12-18 12:35:39","28");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("31","40","40","2019-12-18 12:37:50","29");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("32","30","30","2019-12-18 12:38:09","30");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("33","20","20","2019-12-18 12:38:28","31");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("34","8","8","2019-12-18 12:38:52","32");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("35","40","40","2019-12-18 12:39:57","33");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("36","13","13","2019-12-18 12:40:34","34");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("37","40","40","2019-12-18 12:42:55","35");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("38","40","40","2019-12-18 12:43:22","36");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("39","40","40","2019-12-18 12:44:04","37");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("40","20","20","2019-12-18 12:44:29","38");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("41","30","30","2019-12-18 12:44:38","38");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("42","40","40","2019-12-18 12:45:23","39");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("43","13","13","2019-12-18 12:45:36","40");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("44","20","20","2019-12-18 12:45:56","41");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("45","8","8","2019-12-18 12:46:20","42");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("46","20","20","2019-12-18 12:46:50","43");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("47","8","8","2019-12-18 12:47:05","44");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("48","13","13","2019-12-18 12:47:20","45");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("50","20","0","2020-01-30 12:54:32","2");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("51","20","5","2020-01-30 12:55:05","27");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("52","8","0","2020-03-03 14:28:08","10");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("53","20","0","2020-03-03 14:28:17","9");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("54","20","0","2020-03-03 14:28:35","11");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("55","8","5","2020-03-04 11:13:55","46");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("56","8","0","2020-03-04 11:52:53","46");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("57","40","20","2020-03-04 11:53:10","27");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("58","40","0","2020-03-05 15:48:01","27");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("59","5","5","2020-03-09 11:46:09","47");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("60","5","0","2020-03-09 11:46:18","47");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("61","20","20","2020-03-09 12:06:45","8");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("62","20","10","2020-03-09 13:45:33","8");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("63","20","0","2020-03-09 15:40:05","8");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("65","13","0","2020-03-09 16:40:54","6");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("66","8","0","2020-03-09 16:49:59","5");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("67","20","3","2020-03-09 17:15:16","14");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("68","13","10","2020-03-09 17:15:29","15");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("69","13","10","2020-03-09 17:15:43","14");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("70","5","4","2020-03-09 17:15:54","16");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("71","8","6","2020-03-09 17:16:04","17");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("72","13","10","2020-03-09 17:16:13","18");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("73","5","4","2020-03-09 17:16:21","19");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("74","13","10","2020-03-09 17:16:31","20");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("75","13","10","2020-03-09 17:16:41","21");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("76","8","6","2020-03-09 17:16:49","22");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("77","13","0","2020-03-09 18:51:22","14");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("79","20","8","2020-03-09 18:53:32","12");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("80","20","0","2020-03-10 12:11:11","12");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("81","8","0","2020-03-10 12:11:25","17");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("82","13","0","2020-03-10 12:11:48","20");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("83","8","0","2020-03-10 12:11:58","22");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("84","3","0","2020-03-10 12:12:10","23");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("85","20","0","2020-03-10 17:25:45","13");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("86","13","0","2020-03-10 17:25:56","15");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("87","5","0","2020-03-10 17:26:12","16");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("88","13","0","2020-03-10 17:26:22","18");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("89","5","0","2020-03-10 17:26:31","19");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("90","13","0","2020-03-10 17:55:15","21");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("91","13","13","2020-03-10 18:03:22","26");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("92","13","13","2020-03-10 18:03:50","50");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("93","13","13","2020-03-10 18:04:17","26");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("94","13","13","2020-03-10 18:04:33","50");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("95","13","0","2020-03-11 15:06:52","50");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("96","1","0","2020-03-11 15:07:26","26");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("97","8","0","2020-03-12 15:29:04","25");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("98","13","13","2020-03-12 15:29:22","51");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("99","13","13","2020-03-12 15:29:36","52");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("100","5","5","2020-03-12 15:29:57","53");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("101","13","13","2020-03-12 15:30:12","54");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("102","13","3","2020-03-16 14:44:19","51");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("103","8","0","2020-03-16 14:44:29","52");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("104","8","5","2020-03-16 14:44:43","54");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("105","8","0","2020-03-16 15:42:55","54");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("106","13","0","2020-03-17 17:38:02","51");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("107","5","5","2020-03-17 17:38:15","53");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("108","5","0","2020-03-17 17:38:22","53");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("109","5","5","2020-03-17 17:38:57","55");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("110","5","0","2020-03-17 18:25:18","55");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("111","13","5","2020-03-17 18:37:11","24");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("112","8","0","2020-03-17 18:39:45","4");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("114","30","30","2020-03-17 18:43:49","41");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("115","8","8","2020-03-17 18:44:03","40");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("116","40","40","2020-03-17 18:46:29","56");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("117","8","0","2020-03-18 09:57:55","28");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("118","5","5","2020-03-18 11:09:50","57");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("119","5","0","2020-03-18 11:59:28","57");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("120","13","0","2020-03-18 12:13:12","24");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("126","13","0","2020-03-23 15:25:32","58");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("127","30","0","2020-03-23 15:26:14","59");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("128","13","5","2020-03-23 15:26:55","60");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("129","8","8","2020-03-23 15:27:35","61");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("130","13","13","2020-03-23 15:32:59","62");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("131","30","0","2020-03-23 15:38:30","2");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("132","20","5","2020-03-23 15:38:48","60");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("133","40","0","2020-03-23 15:39:03","59");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("134","20","8","2020-03-23 15:39:51","63");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("135","20","0","2020-03-23 17:29:00","63");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("136","20","0","2020-03-23 19:35:23","60");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("137","5","5","2020-03-23 19:35:56","64");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("138","8","0","2020-03-24 12:45:03","61");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("139","5","0","2020-03-24 16:59:37","64");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("140","13","0","2020-03-24 19:28:39","62");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("141","20","10","2020-04-04 11:06:57","65");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("142","20","20","2020-04-08 11:37:38","66");




DROP TABLE IF EXISTS TB_HISTORICO_PAG_ASSINATURA;


CREATE TABLE `TB_HISTORICO_PAG_ASSINATURA` (
  `co_historico_pag_assinatura` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_acao` varchar(100) DEFAULT NULL,
  `ds_usuario` varchar(100) DEFAULT NULL,
  `st_pagamento` int(1) DEFAULT NULL COMMENT '0 - Pendente / 1 - Aguardando pagamento / 2 - Em análise / 3 - Pago / 4 - Disponível / 5 - Em disputa / 6 - Devolvida / 7 - Cancelada\n',
  `co_plano_assinante_assinatura` int(11) NOT NULL,
  PRIMARY KEY (`co_historico_pag_assinatura`,`co_plano_assinante_assinatura`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;


INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("1","2020-03-25 12:09:13","Plano Grátis","Usuário SisBela Iniciou o plano de experiência","3","1");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("2","2020-03-25 12:17:19","Plano Grátis","Usuário SisBela Iniciou o plano de experiência","3","2");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("3","2020-03-25 12:53:31","Plano Grátis","Usuário SisBela Iniciou o plano de experiência","3","3");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("4","2020-03-25 12:57:07","Plano Grátis","Usuário SisBela Iniciou o plano de experiência","3","4");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("5","2020-03-25 13:03:42","Plano Grátis","Usuário SisBela Iniciou o plano de experiência","3","5");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("6","2020-03-25 15:50:56","Inicia o pagamento","LEO Bessa Iniciou o pagamento","0","6");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("7","2020-03-25 15:51:06","Mudou para o Status do pagamento de Em análise","Retorno da operadora do pagamento","2","6");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("8","2020-03-25 15:51:06","Mudou para o Status do pagamento de Em análise","Retorno da operadora do pagamento","2","6");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("9","2020-03-25 16:14:43","Mudou para o Status do pagamento de Cancelada","Suporte Efetuou o cancelamento.","7","6");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("10","2020-03-25 16:15:38","Inicia o pagamento","LEO Bessa Iniciou o pagamento","0","7");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("11","2020-03-25 16:15:46","Mudou para o Status do pagamento de Aguardando pagamento","Retorno da operadora do pagamento","1","7");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("12","2020-03-25 16:17:47","Mudou para o Status do pagamento de Pago ","Retorno da operadora do pagamento","3","7");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("13","2020-03-25 16:18:42","Mudou para o Status do pagamento de Devolvida","Suporte Efetuou o estorno.","6","7");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("14","2020-03-27 19:44:23","Inicia o pagamento","LEO BESSA Iniciou o pagamento","0","8");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("15","2020-03-27 19:44:26","Mudou para o Status do pagamento de Aguardando pagamento","Retorno da operadora do pagamento","1","8");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("16","2020-03-27 20:11:15","Inicia o pagamento","LEO BESSA Iniciou o pagamento","0","9");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("17","2020-03-27 20:11:20","Mudou para o Status do pagamento de Aguardando pagamento","Retorno da operadora do pagamento","1","9");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("18","2020-03-27 20:16:26","Inicia o pagamento","LEO BESSA Iniciou o pagamento","0","10");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("19","2020-03-27 20:16:29","Mudou para o Status do pagamento de Aguardando pagamento","Retorno da operadora do pagamento","1","10");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("20","2020-04-04 13:55:19","Inicia o pagamento","LEO BESSA Iniciou o pagamento","0","11");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("21","2020-04-04 13:55:27","Mudou para o Status do pagamento de Aguardando pagamento","Retorno da operadora do pagamento","1","11");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("22","2020-04-04 13:57:43","Inicia o pagamento","LEO BESSA Iniciou o pagamento","0","12");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("23","2020-04-04 13:57:52","Mudou para o Status do pagamento de Aguardando pagamento","Retorno da operadora do pagamento","1","12");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("24","2020-04-04 14:01:30","Inicia o pagamento","LEO BESSA Iniciou o pagamento","0","13");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("25","2020-04-04 14:01:37","Mudou para o Status do pagamento de Em análise","Retorno da operadora do pagamento","2","13");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("26","2020-04-11 18:20:44","Plano Grátis","Usuário SisBela Iniciou o plano de experiência de 15 Dias.","3","14");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("27","2020-04-15 10:45:16","Plano Grátis","Usuário SisBela Iniciou o plano de experiência de 15 Dias.","3","15");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("28","2020-04-15 10:50:56","Plano Grátis","Usuário SisBela Iniciou o plano de experiência de 15 Dias.","3","16");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("29","2020-04-15 10:52:51","Plano Grátis","Usuário SisBela Iniciou o plano de experiência de 15 Dias.","3","17");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("30","2020-04-15 10:54:34","Plano Grátis","Usuário SisBela Iniciou o plano de experiência de 15 Dias.","3","18");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("31","2020-04-15 10:55:55","Plano Grátis","Usuário SisBela Iniciou o plano de experiência de 15 Dias.","3","19");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("32","2020-04-15 10:57:48","Plano Grátis","Usuário SisBela Iniciou o plano de experiência de 15 Dias.","3","20");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("33","2020-04-15 11:00:35","Plano Grátis","Usuário SisBela Iniciou o plano de experiência de 15 Dias.","3","21");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("34","2020-05-02 10:56:39","Inicia o pagamento","LEO BESSA Iniciou o pagamento","0","22");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("35","2020-05-02 10:56:47","Mudou o Status do pagamento para Aguardando pagamento","Retorno da operadora do pagamento","1","22");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES("36","2020-05-02 10:57:57","Mudou o Status do pagamento para Pago ","Retorno da operadora do pagamento","3","22");




DROP TABLE IF EXISTS TB_HISTORICO_SUPORTE;


CREATE TABLE `TB_HISTORICO_SUPORTE` (
  `co_historico_suporte` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_mensagem` text DEFAULT NULL,
  `st_lido` varchar(1) DEFAULT 'N' COMMENT 'S - Sim / N - Não',
  `co_suporte` int(11) NOT NULL,
  `co_usuario` int(10) NOT NULL,
  `co_imagem` int(10) unsigned NOT NULL COMMENT 'Chave do Anexo.',
  PRIMARY KEY (`co_historico_suporte`,`co_suporte`,`co_usuario`,`co_imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;


INSERT INTO TB_HISTORICO_SUPORTE VALUES("1","2020-03-25 16:53:32","e so pra ver essa novidade mesmo","S","1","6","3");

INSERT INTO TB_HISTORICO_SUPORTE VALUES("2","2020-03-25 16:54:14","dsgsafg dfg hthhjhjjthjarthtdfh ghdfh  dfg fdahadfr greg","S","2","6","4");

INSERT INTO TB_HISTORICO_SUPORTE VALUES("3","2020-03-25 16:56:28","ta ok blz entendido","S","2","1","5");

INSERT INTO TB_HISTORICO_SUPORTE VALUES("4","2020-04-02 22:49:52","fe wqweg rg agrgrg reg","S","2","1","0");

INSERT INTO TB_HISTORICO_SUPORTE VALUES("5","2020-04-02 22:53:27","nh th trh trh","N","2","6","0");

INSERT INTO TB_HISTORICO_SUPORTE VALUES("6","2020-04-02 23:04:19","sdhfhfh5h54 h56h 5h","S","2","6","9");

INSERT INTO TB_HISTORICO_SUPORTE VALUES("7","2020-04-04 11:01:57","Ese esta sem imagens","N","2","1","0");

INSERT INTO TB_HISTORICO_SUPORTE VALUES("8","2020-04-04 11:02:24","Guarda roupas fechado","S","2","1","10");




DROP TABLE IF EXISTS TB_IMAGEM;


CREATE TABLE `TB_IMAGEM` (
  `co_imagem` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ds_caminho` varchar(150) NOT NULL,
  PRIMARY KEY (`co_imagem`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;


INSERT INTO TB_IMAGEM VALUES("1","leonardo-m-c-bessa-56e8920c23ab66.jpg");

INSERT INTO TB_IMAGEM VALUES("2","fp-barbearia-nova-barba-5-5e868bd43b6dd.jpg");

INSERT INTO TB_IMAGEM VALUES("3","suporte-1-5e7bb6bc5b319.png");

INSERT INTO TB_IMAGEM VALUES("4","suporte-2-5e7bb6e690064.png");

INSERT INTO TB_IMAGEM VALUES("5","suporte-2-5e7bb76c50418.png");

INSERT INTO TB_IMAGEM VALUES("6","henrique-carvalho-assuncao-5e7bb96caabc1.png");

INSERT INTO TB_IMAGEM VALUES("7","joao-victor-pereira-fernandes-5e868e182c29d.jpg");

INSERT INTO TB_IMAGEM VALUES("8","suporte-2-5e86971784b83.jpg");

INSERT INTO TB_IMAGEM VALUES("9","suporte-2-5e8699a3de762.jpg");

INSERT INTO TB_IMAGEM VALUES("10","suporte-2-5e88937015c50.jpg");

INSERT INTO TB_IMAGEM VALUES("11","lucrece-neri-portela-5e8ca7a40609e.jpg");




DROP TABLE IF EXISTS TB_IMAGEM_ASSINANTE;


CREATE TABLE `TB_IMAGEM_ASSINANTE` (
  `co_imagem_assinante` int(10) NOT NULL AUTO_INCREMENT,
  `co_assinante` int(11) NOT NULL,
  `co_imagem` int(10) unsigned NOT NULL,
  PRIMARY KEY (`co_imagem_assinante`,`co_assinante`,`co_imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


INSERT INTO TB_IMAGEM_ASSINANTE VALUES("1","5","2");




DROP TABLE IF EXISTS TB_MODULO;


CREATE TABLE `TB_MODULO` (
  `co_modulo` int(11) NOT NULL AUTO_INCREMENT,
  `no_modulo` varchar(50) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_projeto` int(11) NOT NULL,
  PRIMARY KEY (`co_modulo`,`co_projeto`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;


INSERT INTO TB_MODULO VALUES("1","Assinante","2019-12-18 11:29:02","1");

INSERT INTO TB_MODULO VALUES("2","Principal","2019-12-18 11:29:11","1");

INSERT INTO TB_MODULO VALUES("3","Site","2019-12-18 11:29:28","1");

INSERT INTO TB_MODULO VALUES("4","Lançamento do SisBela","2019-12-18 11:29:36","1");

INSERT INTO TB_MODULO VALUES("5","Teste","2019-12-18 11:29:44","1");




DROP TABLE IF EXISTS TB_PACOTE;


CREATE TABLE `TB_PACOTE` (
  `co_pacote` int(11) NOT NULL AUTO_INCREMENT,
  `no_pacote` varchar(50) DEFAULT NULL,
  `ds_descricao` text DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_lancamento` date DEFAULT NULL,
  PRIMARY KEY (`co_pacote`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


INSERT INTO TB_PACOTE VALUES("1","Assinante","Gestão do assinante no sistema da beleza","2018-07-30 14:00:00","2018-11-02");

INSERT INTO TB_PACOTE VALUES("2","Principal","Onde consta todas as funcionalidades padrões e básicas do sistema","2018-07-30 14:00:00","2018-11-02");




DROP TABLE IF EXISTS TB_PAGINA;


CREATE TABLE `TB_PAGINA` (
  `co_pagina` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_titulo_url_amigavel` varchar(255) DEFAULT NULL COMMENT 'Url amigável da página',
  `nu_visualizacao` int(11) DEFAULT NULL,
  `nu_usuario` int(11) DEFAULT NULL COMMENT 'Número de usuário que visitou a página',
  PRIMARY KEY (`co_pagina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_PAGINA_VISITA;


CREATE TABLE `TB_PAGINA_VISITA` (
  `co_pagina_visita` int(11) NOT NULL AUTO_INCREMENT,
  `co_visita` int(11) NOT NULL,
  `co_pagina` int(11) NOT NULL,
  PRIMARY KEY (`co_pagina_visita`,`co_visita`,`co_pagina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_PERFIL;


CREATE TABLE `TB_PERFIL` (
  `co_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `no_perfil` varchar(45) NOT NULL COMMENT 'Nome do Perfil',
  `st_status` varchar(1) NOT NULL DEFAULT 'A' COMMENT '''A - Ativo / I - Inativo''',
  PRIMARY KEY (`co_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;


INSERT INTO TB_PERFIL VALUES("1","Master","A");

INSERT INTO TB_PERFIL VALUES("2","Gestor","A");

INSERT INTO TB_PERFIL VALUES("3","Colaborador","A");

INSERT INTO TB_PERFIL VALUES("4","Gerente","A");




DROP TABLE IF EXISTS TB_PERFIL_ASSINANTE;


CREATE TABLE `TB_PERFIL_ASSINANTE` (
  `co_perfil_assinante` int(11) NOT NULL AUTO_INCREMENT,
  `no_perfil` varchar(45) DEFAULT NULL,
  `st_status` varchar(1) DEFAULT NULL,
  `co_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_perfil_assinante`,`co_assinante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_PERFIL_FUNCIONALIDADE;


CREATE TABLE `TB_PERFIL_FUNCIONALIDADE` (
  `co_perfil_funcionalidade` int(11) NOT NULL AUTO_INCREMENT,
  `co_funcionalidade` int(11) NOT NULL,
  `co_perfil` int(11) NOT NULL,
  `co_perfil_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_perfil_funcionalidade`,`co_funcionalidade`,`co_perfil`,`co_perfil_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;


INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("1","1","1","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("2","27","2","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("3","26","2","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("4","25","2","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("5","12","2","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("6","11","2","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("7","6","2","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("8","5","2","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("10","27","3","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("11","26","3","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("12","11","3","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("13","6","3","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("22","27","4","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("23","26","4","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("24","12","4","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("25","11","4","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("26","6","4","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("27","5","4","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("29","4","4","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("30","4","3","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("31","4","2","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("32","30","2","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("33","31","4","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("34","31","3","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("35","31","2","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("36","32","4","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("37","32","3","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("38","32","2","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("39","33","4","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("40","33","3","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("41","33","2","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("42","34","4","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("43","34","2","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("44","35","4","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("45","35","2","0");




DROP TABLE IF EXISTS TB_PESSOA;


CREATE TABLE `TB_PESSOA` (
  `co_pessoa` int(11) NOT NULL AUTO_INCREMENT,
  `nu_cpf` varchar(15) DEFAULT NULL,
  `no_pessoa` varchar(100) DEFAULT NULL,
  `nu_rg` varchar(45) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_nascimento` date DEFAULT NULL,
  `st_sexo` varchar(1) DEFAULT NULL COMMENT 'M - Masculino ou F - Feminino',
  `co_endereco` int(11) NOT NULL,
  `co_contato` int(11) NOT NULL,
  `co_imagem` int(10) NOT NULL,
  PRIMARY KEY (`co_pessoa`,`co_endereco`,`co_contato`,`co_imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;


INSERT INTO TB_PESSOA VALUES("1","","Usuário SisBela","","2016-10-31 00:00:00","0000-00-00","M","1","1","1");

INSERT INTO TB_PESSOA VALUES("2","","LETíCIA MACHADO CARVALHO BESSA","","2020-03-25 12:09:13","0000-00-00","","0","2","0");

INSERT INTO TB_PESSOA VALUES("3","","LUCRECE NERI PORTELA","","2020-03-25 12:17:19","0000-00-00","","9","3","0");

INSERT INTO TB_PESSOA VALUES("4","","sdaf dsf agsdg","","2020-03-25 12:53:31","0000-00-00","","0","4","0");

INSERT INTO TB_PESSOA VALUES("5","","efwegrg","","2020-03-25 12:57:07","0000-00-00","","0","5","0");

INSERT INTO TB_PESSOA VALUES("6","12345678909","LEO BESSA","","2020-03-25 13:03:39","0000-00-00","","5","6","0");

INSERT INTO TB_PESSOA VALUES("7","","O Cara","","0000-00-00 00:00:00","0000-00-00","","0","0","0");

INSERT INTO TB_PESSOA VALUES("8","","Juju","","0000-00-00 00:00:00","0000-00-00","","0","0","0");

INSERT INTO TB_PESSOA VALUES("9","","Profiça 10","","0000-00-00 00:00:00","0000-00-00","","0","0","0");

INSERT INTO TB_PESSOA VALUES("10","","Lele","","0000-00-00 00:00:00","0000-00-00","","0","0","0");

INSERT INTO TB_PESSOA VALUES("11","05418337157","HENRIQUE CARVALHO ASSUNçãO","3481937","2020-03-25 17:05:01","1998-03-05","M","6","7","0");

INSERT INTO TB_PESSOA VALUES("12","07970134157","JOãO VICTOR PEREIRA FERNANDES","3947853","2020-03-25 17:33:09","1981-03-05","M","7","8","0");

INSERT INTO TB_PESSOA VALUES("13","","O Cara 33","","0000-00-00 00:00:00","0000-00-00","","0","0","0");

INSERT INTO TB_PESSOA VALUES("14","","Juju 333","","0000-00-00 00:00:00","0000-00-00","","0","0","0");

INSERT INTO TB_PESSOA VALUES("15","","O Cara 33","","0000-00-00 00:00:00","0000-00-00","","0","0","0");

INSERT INTO TB_PESSOA VALUES("16","","Juju 333","","0000-00-00 00:00:00","0000-00-00","","0","0","0");

INSERT INTO TB_PESSOA VALUES("17","","O Cara 33","","0000-00-00 00:00:00","0000-00-00","","0","0","0");

INSERT INTO TB_PESSOA VALUES("18","","Juju 333","","0000-00-00 00:00:00","0000-00-00","","0","0","0");

INSERT INTO TB_PESSOA VALUES("19","","O Cara 33","","0000-00-00 00:00:00","0000-00-00","","0","0","0");

INSERT INTO TB_PESSOA VALUES("20","","Juju 333","","0000-00-00 00:00:00","0000-00-00","","0","0","0");

INSERT INTO TB_PESSOA VALUES("21","","O Cara 33","","0000-00-00 00:00:00","0000-00-00","","0","0","0");

INSERT INTO TB_PESSOA VALUES("22","","Juju 333","","0000-00-00 00:00:00","0000-00-00","","0","0","0");

INSERT INTO TB_PESSOA VALUES("23","","O Cara 33","","0000-00-00 00:00:00","0000-00-00","","0","0","0");

INSERT INTO TB_PESSOA VALUES("24","","Juju 333","","0000-00-00 00:00:00","0000-00-00","","0","0","0");

INSERT INTO TB_PESSOA VALUES("25","","O Cara 33","","0000-00-00 00:00:00","0000-00-00","","0","0","0");

INSERT INTO TB_PESSOA VALUES("26","","Juju 333","","0000-00-00 00:00:00","0000-00-00","","0","0","0");

INSERT INTO TB_PESSOA VALUES("27","","O Cara 33","","0000-00-00 00:00:00","0000-00-00","","0","0","0");

INSERT INTO TB_PESSOA VALUES("28","","Juju 333","","0000-00-00 00:00:00","0000-00-00","","0","0","0");

INSERT INTO TB_PESSOA VALUES("29","","O Cara 33","","0000-00-00 00:00:00","0000-00-00","","0","0","0");

INSERT INTO TB_PESSOA VALUES("30","","Juju 333","","0000-00-00 00:00:00","0000-00-00","","0","0","0");

INSERT INTO TB_PESSOA VALUES("35","","O Cara 33","","0000-00-00 00:00:00","0000-00-00","","0","0","0");

INSERT INTO TB_PESSOA VALUES("36","","Juju 333","","0000-00-00 00:00:00","0000-00-00","","0","0","0");

INSERT INTO TB_PESSOA VALUES("37","","O Cara 33","","0000-00-00 00:00:00","0000-00-00","","0","0","0");

INSERT INTO TB_PESSOA VALUES("38","","Juju 333","","0000-00-00 00:00:00","0000-00-00","","0","0","0");

INSERT INTO TB_PESSOA VALUES("39","","HENRIQUE CARVALHO ASSUNçãO","","2020-04-11 18:20:43","0000-00-00","","0","9","0");

INSERT INTO TB_PESSOA VALUES("40","","Marcelo Moita","","2020-04-15 10:44:55","0000-00-00","","0","10","0");

INSERT INTO TB_PESSOA VALUES("41","","JOãO VICTOR PEREIRA FERNANDES","","2020-04-15 10:50:44","0000-00-00","","0","11","0");

INSERT INTO TB_PESSOA VALUES("42","","HENRIQUE CARVALHO ASSUNçãO","","2020-04-15 10:52:48","0000-00-00","","0","12","0");

INSERT INTO TB_PESSOA VALUES("43","","Marcelo Moita","","2020-04-15 10:54:18","0000-00-00","","0","13","0");

INSERT INTO TB_PESSOA VALUES("44","","HENRIQUE CARVALHO ASSUNçãO","","2020-04-15 10:55:48","0000-00-00","","0","14","0");

INSERT INTO TB_PESSOA VALUES("45","","JOãO VICTOR PEREIRA FERNANDES","","2020-04-15 10:57:20","0000-00-00","","0","15","0");

INSERT INTO TB_PESSOA VALUES("46","","Marcelo Moita","","2020-04-15 11:00:01","0000-00-00","","0","16","0");




DROP TABLE IF EXISTS TB_PLANO;


CREATE TABLE `TB_PLANO` (
  `co_plano` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `no_plano` varchar(100) DEFAULT NULL,
  `nu_mes_ativo` int(1) DEFAULT NULL COMMENT 'Número de meses ativo do plano (1, 3, 6, 12 e 24)',
  `st_status` varchar(1) DEFAULT 'A' COMMENT 'Status do plano A - Ativo / I - Inativo',
  PRIMARY KEY (`co_plano`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


INSERT INTO TB_PLANO VALUES("1","2018-07-31 10:17:46","Padrão","1","A");

INSERT INTO TB_PLANO VALUES("2","2020-01-29 18:49:51","Mensal","1","A");

INSERT INTO TB_PLANO VALUES("3","2020-01-29 18:59:12","Trimestral","3","A");

INSERT INTO TB_PLANO VALUES("4","2020-01-29 19:00:40","Semestral","6","A");

INSERT INTO TB_PLANO VALUES("5","2020-01-29 19:01:53","Anual","12","A");

INSERT INTO TB_PLANO VALUES("6","2020-01-29 19:03:13","Bienal","24","A");

INSERT INTO TB_PLANO VALUES("7","2020-03-18 10:39:16","Trienal","36","A");




DROP TABLE IF EXISTS TB_PLANO_ASSINANTE;


CREATE TABLE `TB_PLANO_ASSINANTE` (
  `co_plano_assinante` int(11) NOT NULL AUTO_INCREMENT,
  `nu_valor` decimal(8,2) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_observacao` text DEFAULT NULL,
  `co_plano` int(11) NOT NULL,
  PRIMARY KEY (`co_plano_assinante`,`co_plano`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


INSERT INTO TB_PLANO_ASSINANTE VALUES("1","0.00","2018-07-31 10:17:46","Plano Padrão","1");

INSERT INTO TB_PLANO_ASSINANTE VALUES("2","29.90","2020-03-18 10:33:16","Por 1 meses","2");

INSERT INTO TB_PLANO_ASSINANTE VALUES("3","79.90","2020-03-18 10:33:46","Por 3 meses","3");

INSERT INTO TB_PLANO_ASSINANTE VALUES("4","139.90","2020-03-18 10:34:07","Por 6 Meses","4");

INSERT INTO TB_PLANO_ASSINANTE VALUES("5","249.90","2020-03-18 10:35:36","Por 12 Meses","5");

INSERT INTO TB_PLANO_ASSINANTE VALUES("6","449.90","2020-03-18 10:35:18","Por 24 Meses","6");

INSERT INTO TB_PLANO_ASSINANTE VALUES("7","599.90","2020-03-18 10:39:16","Por 36 Meses","7");




DROP TABLE IF EXISTS TB_PLANO_ASSINANTE_ASSINATURA;


CREATE TABLE `TB_PLANO_ASSINANTE_ASSINATURA` (
  `co_plano_assinante_assinatura` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_expiracao` date DEFAULT NULL COMMENT 'data de expiriração da assinatura',
  `dt_confirma_pagamento` datetime DEFAULT NULL COMMENT 'Data que confirmou o pagamento',
  `tp_pagamento` int(1) DEFAULT NULL COMMENT '3 - Cartão de Crédito / 4 - Depósito ou Transferência / 5 - Boleto',
  `st_pagamento` int(1) DEFAULT 0 COMMENT '0 - Pendente / 1 - Aguardando pagamento / 2 - Em análise / 3 - Pago / 4 - Disponível / 5 - Em disputa / 6 - Devolvida / 7 - Cancelada',
  `dt_modificado` datetime DEFAULT NULL COMMENT 'Data da ùltima modificação',
  `nu_valor_desconto` decimal(8,2) DEFAULT NULL COMMENT 'Valor de Desconto do PagSeguro',
  `nu_valor_real` decimal(8,2) DEFAULT NULL COMMENT 'Valor de recebimento do PagSeguro\n',
  `ds_link_boleto` text DEFAULT 'null' COMMENT 'Link do Boleto que retorno da PagSeguro',
  `nu_filiais` int(11) DEFAULT 0 COMMENT 'Número de filiais para a assinatura',
  `co_plano_assinante_assinatura_ativo` int(11) DEFAULT 0 COMMENT 'Número do co_plano_assinante_assinatura que esta ativo',
  `st_status` varchar(1) DEFAULT 'I' COMMENT 'A - Ativo / I - Inativo',
  `ds_code_transacao` varchar(80) DEFAULT 'null' COMMENT 'Code da transação do PagSeguro',
  `nu_valor_assinatura` decimal(8,2) DEFAULT NULL COMMENT 'Valor final da assinatura',
  `nu_profissionais` int(3) DEFAULT NULL COMMENT 'Número de profissionais que o sistema ira gerenciar',
  `co_assinante` int(11) NOT NULL,
  `co_plano_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_plano_assinante_assinatura`,`co_assinante`,`co_plano_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;


INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("1","2020-03-25 12:09:13","2020-04-09","0000-00-00 00:00:00","0","3","2020-03-25 12:09:13","0.00","0.00","null","0","0","A","null","0.00","3","1","1");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("2","2020-03-25 12:17:19","2020-04-09","0000-00-00 00:00:00","0","3","2020-03-25 12:17:19","0.00","0.00","null","0","0","A","null","0.00","3","2","1");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("3","2020-03-25 12:53:31","2020-04-09","0000-00-00 00:00:00","0","3","2020-03-25 12:53:31","0.00","0.00","null","0","0","A","null","0.00","3","3","1");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("4","2020-03-25 12:57:07","2020-04-09","0000-00-00 00:00:00","0","3","2020-03-25 12:57:07","0.00","0.00","null","0","0","A","null","0.00","3","4","1");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("5","2020-03-25 13:03:42","2020-04-09","0000-00-00 00:00:00","0","3","2020-03-25 13:03:42","0.00","0.00","null","0","0","I","null","0.00","3","5","1");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("6","2020-03-25 15:50:56","2022-04-09","0000-00-00 00:00:00","3","7","2020-03-25 16:14:48","17.03","222.87","","0","5","I","5E706DDC-A10D-4D74-A0B6-3B6AF09E97D8","239.90","49","5","6");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("7","2020-03-25 16:15:38","2021-04-09","2020-03-25 16:17:47","5","6","2020-03-25 16:18:46","5.38","119.52","https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=7b44c80e5b528387bc67d405b29d4d7827c2f0f5f1425d56c8d41170005505e083fbc0f342424194","0","5","I","EDA0F0A7-B225-4F2B-877D-AE6021DE7077","124.90","25","5","5");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("8","2020-03-27 19:44:23","2022-04-09","0000-00-00 00:00:00","4","1","2020-03-27 19:44:26","9.97","229.93","https://sandbox.pagseguro.uol.com.br/checkout/payment/eft/print.jhtml?c=af67f2b0e357cfc862c36dd336d24b136ff153d2f084c2671d65f056ee5c9a190f48b18f41a05961","0","5","I","65150A2A-1D95-4220-8EBA-9D1EC6233B3D","239.90","49","5","6");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("9","2020-03-27 20:11:15","2020-10-09","0000-00-00 00:00:00","5","1","2020-03-27 20:11:20","3.19","66.71","https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=eae56d9b6d547ac5aac0e4ca1a28ecc4b6d3173595fee1ab347a2a9e1b9a667f7b18b61f16abbd4a","0","5","I","3F9F1DF4-44DD-437F-92D4-F1DF473A8C6C","69.90","13","5","4");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("10","2020-03-27 20:16:26","2021-04-09","0000-00-00 00:00:00","5","1","2020-03-27 20:16:29","5.38","119.52","https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=2c3663994b33bfcfed4b5db4fc3bebd38e82aa2cd5c32442634547b3a165d8ef3ece4f60594d7970","0","5","I","069BC6BF-743D-4282-96B9-0A25391A040C","124.90","25","5","5");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("11","2020-04-04 13:55:19","2020-07-09","0000-00-00 00:00:00","5","1","2020-04-04 13:55:27","1.99","37.91","https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=035c74e4680fe8b271bd056c44f457a7fe00437c0fe106dcdfe145f256ab5acd53092dfb85a827ec","0","5","I","CD6110D9-4252-41E8-93DE-815263F3C02D","39.90","7","5","3");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("12","2020-04-04 13:57:43","2021-04-09","0000-00-00 00:00:00","5","1","2020-04-04 13:57:52","5.38","119.52","https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=d71b3af5146918cb665df8d98fe28ff091c013353b587e74bc21ee64b415f9ae67b7766690138a66","0","5","I","29439106-A1B4-47FA-B558-BBA1AA16FCBC","124.90","25","5","5");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("13","2020-04-04 14:01:30","2020-05-09","0000-00-00 00:00:00","3","2","2020-04-04 14:01:37","0.99","13.91","","0","5","I","DCAB740B-F6D5-4150-AFF2-9CE647BF8038","14.90","3","5","2");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("14","2020-04-11 18:20:44","2020-04-26","0000-00-00 00:00:00","0","3","2020-04-11 18:20:44","0.00","0.00","null","0","0","A","null","0.00","3","6","1");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("15","2020-04-15 10:45:16","2020-04-30","0000-00-00 00:00:00","0","3","2020-04-15 10:45:16","0.00","0.00","null","0","0","A","null","0.00","3","7","1");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("16","2020-04-15 10:50:56","2020-04-30","0000-00-00 00:00:00","0","3","2020-04-15 10:50:56","0.00","0.00","null","0","0","A","null","0.00","3","8","1");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("17","2020-04-15 10:52:51","2020-04-30","0000-00-00 00:00:00","0","3","2020-04-15 10:52:51","0.00","0.00","null","0","0","A","null","0.00","3","9","1");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("18","2020-04-15 10:54:34","2020-04-30","0000-00-00 00:00:00","0","3","2020-04-15 10:54:34","0.00","0.00","null","0","0","A","null","0.00","3","10","1");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("19","2020-04-15 10:55:55","2020-04-30","0000-00-00 00:00:00","0","3","2020-04-15 10:55:55","0.00","0.00","null","0","0","A","null","0.00","3","11","1");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("20","2020-04-15 10:57:48","2020-04-30","0000-00-00 00:00:00","0","3","2020-04-15 10:57:48","0.00","0.00","null","0","0","A","null","0.00","3","12","1");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("21","2020-04-15 11:00:35","2020-04-30","0000-00-00 00:00:00","0","3","2020-04-15 11:00:35","0.00","0.00","null","0","0","A","null","0.00","3","13","1");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("22","2020-05-02 10:56:39","2023-04-09","2020-05-02 10:57:57","5","3","2020-05-02 10:57:57","24.34","575.56","https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=7805e93ce3b5c3268c8c6dde3d6e1f171b2cf06a5e50796513a73637fd8cc0295f65051d85332945","0","5","A","6710D77B-B25A-40CF-A304-3709F56904F0","599.90","73","5","7");




DROP TABLE IF EXISTS TB_PLANO_PACOTE;


CREATE TABLE `TB_PLANO_PACOTE` (
  `co_plano_pacote` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Planos do Módulo',
  `co_plano` int(11) NOT NULL,
  `co_pacote` int(11) NOT NULL,
  PRIMARY KEY (`co_plano_pacote`,`co_plano`,`co_pacote`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;


INSERT INTO TB_PLANO_PACOTE VALUES("1","1","1");

INSERT INTO TB_PLANO_PACOTE VALUES("2","1","2");

INSERT INTO TB_PLANO_PACOTE VALUES("3","2","1");

INSERT INTO TB_PLANO_PACOTE VALUES("4","2","2");

INSERT INTO TB_PLANO_PACOTE VALUES("5","3","1");

INSERT INTO TB_PLANO_PACOTE VALUES("6","3","2");

INSERT INTO TB_PLANO_PACOTE VALUES("7","4","1");

INSERT INTO TB_PLANO_PACOTE VALUES("8","4","2");

INSERT INTO TB_PLANO_PACOTE VALUES("9","6","1");

INSERT INTO TB_PLANO_PACOTE VALUES("10","6","2");

INSERT INTO TB_PLANO_PACOTE VALUES("11","5","1");

INSERT INTO TB_PLANO_PACOTE VALUES("12","5","2");

INSERT INTO TB_PLANO_PACOTE VALUES("13","7","1");

INSERT INTO TB_PLANO_PACOTE VALUES("14","7","2");




DROP TABLE IF EXISTS TB_PRECO_SERVICO;


CREATE TABLE `TB_PRECO_SERVICO` (
  `co_preco_servico` int(11) NOT NULL AUTO_INCREMENT,
  `nu_valor` decimal(6,2) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_observacao` varchar(120) DEFAULT NULL,
  `co_servico` int(11) NOT NULL,
  `co_usuario` int(10) NOT NULL,
  PRIMARY KEY (`co_preco_servico`,`co_servico`,`co_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_PROFISSIONAL;


CREATE TABLE `TB_PROFISSIONAL` (
  `co_profissional` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_cor_agenda` varchar(7) DEFAULT NULL COMMENT 'Valor Hexadecimal',
  `st_assistente` varchar(1) DEFAULT 'S' COMMENT 'S - Sim / N - Não * Se pode ser assitente de outro profissional',
  `ds_sobre` text DEFAULT NULL,
  `no_apelido` varchar(45) DEFAULT NULL,
  `ds_motivo` text DEFAULT NULL,
  `st_agenda` varchar(1) DEFAULT 'S' COMMENT 'S - Sim / N - Não * Se possui agenda',
  `st_agenda_online` varchar(1) DEFAULT 'S' COMMENT 'S - Sim / N - Não * Se pode ser ter agendamento on line',
  `st_status` varchar(1) DEFAULT 'A' COMMENT 'A - Ativo / I - Inativo',
  `tp_contratacao` int(1) DEFAULT NULL COMMENT '1 - Contrato de trabalho CLT / 2 - Contrato de trabalho por prazo determinado / 3 - Sem vínculo empregatício / 4 - Contrato de Locação de espaço / 5 - Outros',
  `dt_admissao` date DEFAULT NULL,
  `dt_demissao` date DEFAULT NULL,
  `co_imagem` int(10) unsigned NOT NULL,
  `co_pessoa` int(10) unsigned NOT NULL,
  `co_usuario` int(10) NOT NULL,
  `co_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_profissional`,`co_imagem`,`co_pessoa`,`co_usuario`,`co_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;


INSERT INTO TB_PROFISSIONAL VALUES("1","2020-03-25 16:37:38","","S","","","","S","S","A","0","0000-00-00","0000-00-00","0","7","0","5");

INSERT INTO TB_PROFISSIONAL VALUES("2","2020-03-25 16:47:42","","S","","","","S","S","A","0","0000-00-00","0000-00-00","0","9","0","5");

INSERT INTO TB_PROFISSIONAL VALUES("3","2020-04-07 11:48:49","","S","","","","S","S","A","0","0000-00-00","0000-00-00","0","13","0","5");

INSERT INTO TB_PROFISSIONAL VALUES("4","2020-04-07 11:49:18","","S","","","","S","S","A","0","0000-00-00","0000-00-00","0","15","0","5");

INSERT INTO TB_PROFISSIONAL VALUES("5","2020-04-07 12:02:04","","S","","","","S","S","A","0","0000-00-00","0000-00-00","0","17","0","5");

INSERT INTO TB_PROFISSIONAL VALUES("6","2020-04-07 12:02:48","","S","","","","S","S","A","0","0000-00-00","0000-00-00","0","19","0","5");

INSERT INTO TB_PROFISSIONAL VALUES("7","2020-04-07 12:03:20","","S","","","","S","S","A","0","0000-00-00","0000-00-00","0","21","0","5");

INSERT INTO TB_PROFISSIONAL VALUES("8","2020-04-07 12:08:46","","S","","","","S","S","A","0","0000-00-00","0000-00-00","0","23","0","5");

INSERT INTO TB_PROFISSIONAL VALUES("9","2020-04-07 13:06:59","","S","","","","S","S","A","0","0000-00-00","0000-00-00","0","25","0","5");

INSERT INTO TB_PROFISSIONAL VALUES("10","2020-04-07 13:08:32","","S","","","","S","S","A","0","0000-00-00","0000-00-00","0","27","0","5");

INSERT INTO TB_PROFISSIONAL VALUES("11","2020-04-07 13:09:50","","S","","","","S","S","A","0","0000-00-00","0000-00-00","0","29","0","5");

INSERT INTO TB_PROFISSIONAL VALUES("14","2020-04-07 13:14:21","","S","","","","S","S","A","0","0000-00-00","0000-00-00","0","35","0","5");

INSERT INTO TB_PROFISSIONAL VALUES("15","2020-04-07 13:19:21","","S","","","","S","S","A","0","0000-00-00","0000-00-00","0","37","0","2");




DROP TABLE IF EXISTS TB_PROJETO;


CREATE TABLE `TB_PROJETO` (
  `co_projeto` int(11) NOT NULL AUTO_INCREMENT,
  `no_projeto` varchar(80) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  PRIMARY KEY (`co_projeto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


INSERT INTO TB_PROJETO VALUES("1","SisBela","2018-07-25 11:07:40");




DROP TABLE IF EXISTS TB_SERVICO;


CREATE TABLE `TB_SERVICO` (
  `co_servico` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `st_status` varchar(1) DEFAULT 'A' COMMENT 'A - Ativo / I - Inativo',
  `st_assistente` varchar(1) DEFAULT NULL COMMENT 'S - Sim / N - Não * Se precisa ter um assitente',
  `no_servico` varchar(100) DEFAULT NULL,
  `nu_duracao` int(3) DEFAULT NULL,
  `ds_descricao` text DEFAULT NULL,
  `co_categoria_servico` int(11) NOT NULL,
  `co_imagem` int(10) NOT NULL,
  `co_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_servico`,`co_categoria_servico`,`co_imagem`,`co_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;


INSERT INTO TB_SERVICO VALUES("1","2020-03-25 16:37:38","A","","Penteado afro","0","","0","0","5");

INSERT INTO TB_SERVICO VALUES("2","2020-04-07 11:48:49","A","","Penteado afro  333 ","0","","0","0","5");

INSERT INTO TB_SERVICO VALUES("3","2020-04-07 11:49:18","A","","Penteado afro  333","0","","0","0","5");

INSERT INTO TB_SERVICO VALUES("4","2020-04-07 12:02:04","A","","Penteado afro  333","0","","0","0","5");

INSERT INTO TB_SERVICO VALUES("5","2020-04-07 12:02:48","A","","Penteado afro  333","0","","0","0","5");

INSERT INTO TB_SERVICO VALUES("6","2020-04-07 12:03:20","A","","Penteado afro  333","0","","0","0","5");

INSERT INTO TB_SERVICO VALUES("7","2020-04-07 12:08:46","A","","Penteado afro  333","0","","0","0","5");

INSERT INTO TB_SERVICO VALUES("8","2020-04-07 13:06:59","A","","Penteado afro  333","0","","0","0","5");

INSERT INTO TB_SERVICO VALUES("9","2020-04-07 13:08:32","A","","Penteado afro  333","0","","0","0","5");

INSERT INTO TB_SERVICO VALUES("10","2020-04-07 13:09:51","A","","Penteado afro  333","0","","0","0","5");

INSERT INTO TB_SERVICO VALUES("13","2020-04-07 13:14:21","A","","Penteado afro  333","0","","0","0","5");

INSERT INTO TB_SERVICO VALUES("14","2020-04-07 13:19:21","A","","Penteado afro  333","0","","0","0","2");




DROP TABLE IF EXISTS TB_SESSAO;


CREATE TABLE `TB_SESSAO` (
  `co_sessao` int(11) NOT NULL AUTO_INCREMENT,
  `no_sessao` varchar(80) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_modulo` int(11) NOT NULL,
  PRIMARY KEY (`co_sessao`,`co_modulo`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;


INSERT INTO TB_SESSAO VALUES("1","Assinante","2019-12-18 11:36:52","1");

INSERT INTO TB_SESSAO VALUES("2","Complemento do assinante","2019-12-18 11:37:00","1");

INSERT INTO TB_SESSAO VALUES("3","Agendamento","2019-12-18 11:39:46","2");

INSERT INTO TB_SESSAO VALUES("4","Iniciar o sistema","2019-12-18 11:40:59","2");

INSERT INTO TB_SESSAO VALUES("5","Suporte","2019-12-18 11:41:25","2");

INSERT INTO TB_SESSAO VALUES("6","Relatório","2019-12-18 11:41:33","2");

INSERT INTO TB_SESSAO VALUES("7","Usuário","2019-12-18 11:41:47","1");

INSERT INTO TB_SESSAO VALUES("8","Cron Jobs","2019-12-18 11:42:19","2");

INSERT INTO TB_SESSAO VALUES("9","Site do Sistema SisBela","2019-12-18 11:43:29","3");

INSERT INTO TB_SESSAO VALUES("10","PPL - Pré Pré Lançamento","2019-12-18 11:44:07","4");

INSERT INTO TB_SESSAO VALUES("11","PL - Pré Lançamento","2019-12-18 11:43:50","4");

INSERT INTO TB_SESSAO VALUES("12","L - Lançamento","2019-12-18 11:44:00","4");

INSERT INTO TB_SESSAO VALUES("13","Teste das Sessões","2019-12-18 11:45:19","5");

INSERT INTO TB_SESSAO VALUES("14","Configurar Ambiente de Teste","2020-03-17 18:45:38","5");

INSERT INTO TB_SESSAO VALUES("15","Pagamento","2020-03-23 15:24:26","1");




DROP TABLE IF EXISTS TB_STATUS_AGENDA;


CREATE TABLE `TB_STATUS_AGENDA` (
  `co_status_agenda` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `st_status` int(2) DEFAULT NULL COMMENT '1 - Agendado / 2 - Confirmado / 3 - Aguardando / 4 - Em Atendimento / 5 - Cancelado / 6 - Faltou / 7 - Finalizado \n',
  `dt_inicio_agenda` datetime DEFAULT NULL,
  `dt_fim_agenda` datetime DEFAULT NULL,
  `nu_valor` decimal(8,2) DEFAULT NULL COMMENT 'Valor total do agendamento',
  `nu_duracao` int(3) DEFAULT NULL COMMENT 'Em minutos',
  `ds_observacao` text DEFAULT NULL,
  `co_cliente` int(11) NOT NULL,
  `co_agenda` int(11) NOT NULL,
  `co_usuario` int(10) NOT NULL,
  `co_profissional` int(11) NOT NULL,
  `co_servico` int(11) NOT NULL,
  PRIMARY KEY (`co_status_agenda`,`co_cliente`,`co_agenda`,`co_usuario`,`co_profissional`,`co_servico`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;


INSERT INTO TB_STATUS_AGENDA VALUES("1","2020-03-25 16:37:38","2","2020-03-18 17:50:00","2020-03-18 18:00:00","0.00","0","frf rg rg","1","1","6","1","1");

INSERT INTO TB_STATUS_AGENDA VALUES("2","2020-03-25 16:41:56","3","2020-03-18 17:50:00","2020-03-18 18:00:00","0.00","0","frf rg rg","1","1","6","1","1");

INSERT INTO TB_STATUS_AGENDA VALUES("3","2020-03-25 16:47:42","1","2020-03-25 11:00:00","2020-03-25 18:00:00","0.00","0","f dsaf g","2","2","6","2","1");

INSERT INTO TB_STATUS_AGENDA VALUES("4","2020-03-25 16:49:39","8","2020-03-25 11:00:00","2020-03-25 18:00:00","0.00","0","f dsaf g","2","2","6","2","1");

INSERT INTO TB_STATUS_AGENDA VALUES("5","2020-03-25 16:50:11","7","2020-03-18 17:50:00","2020-03-18 18:00:00","0.00","0","frf rg rg","1","1","6","1","1");

INSERT INTO TB_STATUS_AGENDA VALUES("6","2020-03-25 16:58:31","4","2020-03-27 08:00:00","2020-03-27 18:00:00","0.00","0","ghmghmhgmgmd  f bfdb d dfg fdg rthg th","2","3","6","2","1");

INSERT INTO TB_STATUS_AGENDA VALUES("7","2020-04-02 00:00:01","5","2020-03-27 08:00:00","2020-03-27 18:00:00","0.00","0","Mudou para o Status (Cancelado) automaticamente pelo Sistema","2","3","1","2","1");

INSERT INTO TB_STATUS_AGENDA VALUES("8","2020-04-07 11:48:49","1","2020-04-08 08:00:00","2020-04-08 18:00:00","0.00","0","htr trh trh","3","4","6","3","2");

INSERT INTO TB_STATUS_AGENDA VALUES("9","2020-04-07 11:49:18","1","2020-04-14 08:00:00","2020-04-14 18:00:00","0.00","0","gg er greg r eg","4","5","6","4","3");

INSERT INTO TB_STATUS_AGENDA VALUES("10","2020-04-07 12:02:04","1","2020-04-22 08:00:00","2020-04-22 18:00:00","0.00","0","re gre gr eh","5","6","6","5","4");

INSERT INTO TB_STATUS_AGENDA VALUES("11","2020-04-07 12:02:48","1","2020-04-22 08:00:00","2020-04-22 18:00:00","0.00","0","re gre gr eh","6","7","6","6","5");

INSERT INTO TB_STATUS_AGENDA VALUES("12","2020-04-07 12:03:20","1","2020-03-31 08:00:00","2020-03-31 18:00:00","0.00","0","g erg re g gre","7","8","6","7","6");

INSERT INTO TB_STATUS_AGENDA VALUES("13","2020-04-07 12:08:46","3","2020-04-15 08:00:00","2020-04-15 18:00:00","0.00","0","t ytryh 65ju k tjk","8","9","6","8","7");

INSERT INTO TB_STATUS_AGENDA VALUES("14","2020-04-07 13:06:58","1","2020-04-16 08:00:00","2020-04-16 18:00:00","0.00","0","rg eg h jy tjytjyt","9","10","6","9","8");

INSERT INTO TB_STATUS_AGENDA VALUES("15","2020-04-07 13:08:32","1","2020-04-16 08:00:00","2020-04-16 18:00:00","0.00","0","rg eg h jy tjytjyt","10","11","6","10","9");

INSERT INTO TB_STATUS_AGENDA VALUES("16","2020-04-07 13:09:50","1","2020-04-16 08:00:00","2020-04-16 18:00:00","0.00","0","rg eg h jy tjytjyt","11","12","6","11","10");

INSERT INTO TB_STATUS_AGENDA VALUES("19","2020-04-07 13:14:21","1","2020-04-16 08:00:00","2020-04-16 18:00:00","0.00","0","rg eg h jy tjytjyt","14","17","6","14","13");

INSERT INTO TB_STATUS_AGENDA VALUES("20","2020-04-07 13:19:21","1","2020-04-08 08:00:00","2020-04-08 18:00:00","0.00","0","rtf rgerh","15","18","3","15","14");

INSERT INTO TB_STATUS_AGENDA VALUES("21","2020-04-08 00:00:01","6","2020-03-31 08:00:00","2020-03-31 18:00:00","0.00","0","Mudou para o Status (Faltou) automaticamente pelo Sistema","7","8","1","7","6");

INSERT INTO TB_STATUS_AGENDA VALUES("22","2020-04-09 00:00:01","6","2020-04-08 08:00:00","2020-04-08 18:00:00","0.00","0","Mudou para o Status (Faltou) automaticamente pelo Sistema","15","18","1","15","14");

INSERT INTO TB_STATUS_AGENDA VALUES("23","2020-04-09 00:00:01","6","2020-04-08 08:00:00","2020-04-08 18:00:00","0.00","0","Mudou para o Status (Faltou) automaticamente pelo Sistema","3","4","1","3","2");

INSERT INTO TB_STATUS_AGENDA VALUES("24","2020-04-15 00:00:01","6","2020-04-14 08:00:00","2020-04-14 18:00:00","0.00","0","Mudou para o Status (Faltou) automaticamente pelo Sistema","4","5","1","4","3");

INSERT INTO TB_STATUS_AGENDA VALUES("25","2020-04-28 00:00:01","6","2020-04-16 08:00:00","2020-04-16 18:00:00","0.00","0","Mudou para o Status (Faltou) automaticamente pelo Sistema","14","17","1","14","13");

INSERT INTO TB_STATUS_AGENDA VALUES("26","2020-04-28 00:00:01","6","2020-04-16 08:00:00","2020-04-16 18:00:00","0.00","0","Mudou para o Status (Faltou) automaticamente pelo Sistema","11","12","1","11","10");

INSERT INTO TB_STATUS_AGENDA VALUES("27","2020-04-28 00:00:01","6","2020-04-16 08:00:00","2020-04-16 18:00:00","0.00","0","Mudou para o Status (Faltou) automaticamente pelo Sistema","10","11","1","10","9");

INSERT INTO TB_STATUS_AGENDA VALUES("28","2020-04-28 00:00:01","6","2020-04-16 08:00:00","2020-04-16 18:00:00","0.00","0","Mudou para o Status (Faltou) automaticamente pelo Sistema","9","10","1","9","8");

INSERT INTO TB_STATUS_AGENDA VALUES("29","2020-04-28 00:00:01","5","2020-04-15 08:00:00","2020-04-15 18:00:00","0.00","0","Mudou para o Status (Cancelado) automaticamente pelo Sistema","8","9","1","8","7");

INSERT INTO TB_STATUS_AGENDA VALUES("30","2020-04-28 00:00:01","6","2020-04-22 08:00:00","2020-04-22 18:00:00","0.00","0","Mudou para o Status (Faltou) automaticamente pelo Sistema","6","7","1","6","5");

INSERT INTO TB_STATUS_AGENDA VALUES("31","2020-04-28 00:00:01","6","2020-04-22 08:00:00","2020-04-22 18:00:00","0.00","0","Mudou para o Status (Faltou) automaticamente pelo Sistema","5","6","1","5","4");

INSERT INTO TB_STATUS_AGENDA VALUES("32","2020-05-02 11:05:28","2","2020-05-06 08:00:00","2020-05-06 18:00:00","0.00","0","fefef","14","19","6","1","7");

INSERT INTO TB_STATUS_AGENDA VALUES("33","2020-05-02 11:07:31","7","2020-05-06 08:00:00","2020-05-06 18:00:00","0.00","0","fefef","14","19","6","1","7");




DROP TABLE IF EXISTS TB_SUPORTE;


CREATE TABLE `TB_SUPORTE` (
  `co_suporte` int(11) NOT NULL AUTO_INCREMENT,
  `st_status` varchar(1) DEFAULT 'A' COMMENT 'A - Ativa / I - Inativa',
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_assunto` varchar(100) DEFAULT NULL,
  `st_tipo_assunto` int(1) DEFAULT NULL COMMENT '1 - Sugestão ou Melhorias / 2 - Reclamação / 3 -  Correção no Sistema / 4 - Outros',
  `co_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_suporte`,`co_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


INSERT INTO TB_SUPORTE VALUES("1","I","2020-03-25 16:53:32","Novidade","2","5");

INSERT INTO TB_SUPORTE VALUES("2","A","2020-03-25 16:54:14","Novidade","2","5");




DROP TABLE IF EXISTS TB_TRAFEGO;


CREATE TABLE `TB_TRAFEGO` (
  `co_trafego` int(11) NOT NULL AUTO_INCREMENT,
  `nu_ip` varchar(20) DEFAULT NULL,
  `ds_pais` varchar(100) DEFAULT NULL,
  `ds_code_pais` varchar(100) DEFAULT NULL,
  `ds_uf` varchar(45) DEFAULT NULL,
  `ds_estado` varchar(100) DEFAULT NULL,
  `ds_cidade` varchar(120) DEFAULT NULL,
  `ds_navegador` varchar(45) DEFAULT NULL,
  `ds_sistema_operacional` varchar(45) DEFAULT NULL,
  `ds_dispositivo` varchar(45) DEFAULT NULL,
  `ds_agente` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`co_trafego`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;


INSERT INTO TB_TRAFEGO VALUES("72","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0");

INSERT INTO TB_TRAFEGO VALUES("73","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0");

INSERT INTO TB_TRAFEGO VALUES("74","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0");

INSERT INTO TB_TRAFEGO VALUES("75","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0");

INSERT INTO TB_TRAFEGO VALUES("76","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0");

INSERT INTO TB_TRAFEGO VALUES("77","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0");




DROP TABLE IF EXISTS TB_USUARIO;


CREATE TABLE `TB_USUARIO` (
  `co_usuario` int(10) NOT NULL AUTO_INCREMENT,
  `ds_senha` varchar(100) NOT NULL,
  `ds_code` varchar(50) NOT NULL COMMENT 'Senha criptografada',
  `st_status` varchar(1) NOT NULL DEFAULT 'I' COMMENT '''A - Ativo / I - Inativo''',
  `st_troca_senha` varchar(1) DEFAULT 'N',
  `dt_cadastro` datetime NOT NULL,
  `co_imagem` int(10) NOT NULL,
  `co_pessoa` int(11) NOT NULL,
  `co_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_usuario`,`co_imagem`,`co_pessoa`,`co_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;


INSERT INTO TB_USUARIO VALUES("1","123456**","TVRJek5EVTJLaW89","A","S","2016-10-31 00:00:00","1","1","0");

INSERT INTO TB_USUARIO VALUES("2","JRU0GSB3","U2xKVk1FZFRRak09","I","N","2020-03-25 12:09:13","0","2","1");

INSERT INTO TB_USUARIO VALUES("3","123456**","TVRJek5EVTJLaW89","A","N","2020-03-25 12:17:19","11","3","2");

INSERT INTO TB_USUARIO VALUES("4","QYK2NEW6","VVZsTE1rNUZWelk9","I","N","2020-03-25 12:53:31","0","4","3");

INSERT INTO TB_USUARIO VALUES("5","ALO7ZKC0","UVV4UE4xcExRekE9","I","N","2020-03-25 12:57:07","0","5","4");

INSERT INTO TB_USUARIO VALUES("6","12345678**","TVRJek5EVTJOemdxS2c9PQ==","A","S","2020-03-25 13:03:39","0","6","5");

INSERT INTO TB_USUARIO VALUES("7","12345678**","TVRJek5EVTJOemdxS2c9PQ==","A","N","2020-03-25 17:05:01","6","11","5");

INSERT INTO TB_USUARIO VALUES("8","12345678**","TVRJek5EVTJOemdxS2c9PQ==","A","N","2020-03-25 17:33:09","7","12","5");

INSERT INTO TB_USUARIO VALUES("9","BIJ6HMC7","UWtsS05raE5RemM9","I","N","2020-04-11 18:20:44","0","39","6");

INSERT INTO TB_USUARIO VALUES("10","KHU7VVQ0","UzBoVk4xWldVVEE9","I","N","2020-04-15 10:44:55","0","40","7");

INSERT INTO TB_USUARIO VALUES("11","WMD1OVY0","VjAxRU1VOVdXVEE9","I","N","2020-04-15 10:50:44","0","41","8");

INSERT INTO TB_USUARIO VALUES("12","IRB5YWB8","U1ZKQ05WbFhRamc9","I","N","2020-04-15 10:52:48","0","42","9");

INSERT INTO TB_USUARIO VALUES("13","NYU4PBQ8","VGxsVk5GQkNVVGc9","I","N","2020-04-15 10:54:18","0","43","10");

INSERT INTO TB_USUARIO VALUES("14","WHZ5KYN6","VjBoYU5VdFpUalk9","I","N","2020-04-15 10:55:48","0","44","11");

INSERT INTO TB_USUARIO VALUES("15","HEX8AWT0","U0VWWU9FRlhWREE9","I","N","2020-04-15 10:57:20","0","45","12");

INSERT INTO TB_USUARIO VALUES("16","OWR3KWM1","VDFkU00wdFhUVEU9","I","N","2020-04-15 11:00:01","0","46","13");




DROP TABLE IF EXISTS TB_USUARIO_PERFIL;


CREATE TABLE `TB_USUARIO_PERFIL` (
  `co_usuario_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `co_usuario` int(10) NOT NULL,
  `co_perfil` int(11) NOT NULL,
  `co_perfil_assinante` int(10) NOT NULL,
  PRIMARY KEY (`co_usuario_perfil`,`co_usuario`,`co_perfil`,`co_perfil_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;


INSERT INTO TB_USUARIO_PERFIL VALUES("1","1","1","0");

INSERT INTO TB_USUARIO_PERFIL VALUES("2","2","2","0");

INSERT INTO TB_USUARIO_PERFIL VALUES("3","3","2","0");

INSERT INTO TB_USUARIO_PERFIL VALUES("4","4","2","0");

INSERT INTO TB_USUARIO_PERFIL VALUES("5","5","2","0");

INSERT INTO TB_USUARIO_PERFIL VALUES("6","6","2","0");

INSERT INTO TB_USUARIO_PERFIL VALUES("7","7","3","0");

INSERT INTO TB_USUARIO_PERFIL VALUES("10","8","4","0");

INSERT INTO TB_USUARIO_PERFIL VALUES("11","8","3","0");

INSERT INTO TB_USUARIO_PERFIL VALUES("12","0","4","0");

INSERT INTO TB_USUARIO_PERFIL VALUES("13","0","3","0");

INSERT INTO TB_USUARIO_PERFIL VALUES("14","0","2","0");

INSERT INTO TB_USUARIO_PERFIL VALUES("15","0","3","0");

INSERT INTO TB_USUARIO_PERFIL VALUES("16","9","2","0");

INSERT INTO TB_USUARIO_PERFIL VALUES("17","10","2","0");

INSERT INTO TB_USUARIO_PERFIL VALUES("18","11","2","0");

INSERT INTO TB_USUARIO_PERFIL VALUES("19","12","2","0");

INSERT INTO TB_USUARIO_PERFIL VALUES("20","13","2","0");

INSERT INTO TB_USUARIO_PERFIL VALUES("21","14","2","0");

INSERT INTO TB_USUARIO_PERFIL VALUES("22","15","2","0");

INSERT INTO TB_USUARIO_PERFIL VALUES("23","16","2","0");




DROP TABLE IF EXISTS TB_VISITA;


CREATE TABLE `TB_VISITA` (
  `co_visita` int(11) NOT NULL AUTO_INCREMENT,
  `dt_realizado` datetime DEFAULT NULL,
  `dt_atualizado` datetime DEFAULT NULL,
  `nu_visitas` int(11) DEFAULT NULL,
  `co_trafego` int(11) NOT NULL,
  PRIMARY KEY (`co_visita`,`co_trafego`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





