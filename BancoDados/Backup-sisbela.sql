-- Atualizado em: 10/06/2021 22:51:36
-- AMBIENTE: http://localhost/SisBela/
-- BANCO: sisbela

CREATE DATABASE IF NOT EXISTS sisbela;

USE sisbela;

DROP TABLE IF EXISTS TB_AGENDA;


CREATE TABLE `TB_AGENDA` (
  `co_agenda` int(11) NOT NULL AUTO_INCREMENT,
  `ds_motivo` text DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_agenda`,`co_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;


INSERT INTO TB_AGENDA VALUES('1','','2020-03-25 16:37:38','5');

INSERT INTO TB_AGENDA VALUES('2','fd gfdh hhhh','2020-03-25 16:47:42','5');

INSERT INTO TB_AGENDA VALUES('3','','2020-03-25 16:58:31','5');

INSERT INTO TB_AGENDA VALUES('4','','2020-04-07 11:48:49','5');

INSERT INTO TB_AGENDA VALUES('5','','2020-04-07 11:49:18','5');

INSERT INTO TB_AGENDA VALUES('6','','2020-04-07 12:02:04','5');

INSERT INTO TB_AGENDA VALUES('7','','2020-04-07 12:02:48','5');

INSERT INTO TB_AGENDA VALUES('8','','2020-04-07 12:03:20','5');

INSERT INTO TB_AGENDA VALUES('9','','2020-04-07 12:08:46','5');

INSERT INTO TB_AGENDA VALUES('10','','2020-04-07 13:06:58','5');

INSERT INTO TB_AGENDA VALUES('11','','2020-04-07 13:08:32','5');

INSERT INTO TB_AGENDA VALUES('12','','2020-04-07 13:09:50','5');

INSERT INTO TB_AGENDA VALUES('17','','2020-04-07 13:14:21','5');

INSERT INTO TB_AGENDA VALUES('18','','2020-04-07 13:19:21','2');

INSERT INTO TB_AGENDA VALUES('19','','2020-05-02 11:05:28','5');

INSERT INTO TB_AGENDA VALUES('20','','2021-03-30 14:38:47','5');

INSERT INTO TB_AGENDA VALUES('21','','2021-03-31 11:42:23','5');

INSERT INTO TB_AGENDA VALUES('22','','2021-04-05 14:55:10','5');

INSERT INTO TB_AGENDA VALUES('23','','2021-04-05 18:53:54','5');

INSERT INTO TB_AGENDA VALUES('24','','2021-04-05 18:54:15','5');

INSERT INTO TB_AGENDA VALUES('25','','2021-04-05 18:54:35','5');

INSERT INTO TB_AGENDA VALUES('26','','2021-04-05 18:54:51','5');

INSERT INTO TB_AGENDA VALUES('27','','2021-04-05 18:55:07','5');

INSERT INTO TB_AGENDA VALUES('28','','2021-04-06 16:46:41','1');

INSERT INTO TB_AGENDA VALUES('29','','2021-04-06 16:47:05','1');

INSERT INTO TB_AGENDA VALUES('30','','2021-04-06 16:47:29','1');

INSERT INTO TB_AGENDA VALUES('31','','2021-04-11 14:56:21','5');

INSERT INTO TB_AGENDA VALUES('32','','2021-04-11 14:57:31','5');




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


INSERT INTO TB_ASSINANTE VALUES('1','2020-03-25 12:09:13','2022-04-09','N','A','M','1','2');

INSERT INTO TB_ASSINANTE VALUES('2','2020-03-25 12:17:19','2020-04-09','N','A','M','2','3');

INSERT INTO TB_ASSINANTE VALUES('3','2020-03-25 12:53:31','2020-04-09','N','A','M','3','4');

INSERT INTO TB_ASSINANTE VALUES('4','2020-03-25 12:57:07','2020-04-09','N','A','M','4','5');

INSERT INTO TB_ASSINANTE VALUES('5','2020-03-25 13:03:39','2023-04-09','S','A','M','5','6');

INSERT INTO TB_ASSINANTE VALUES('6','2020-04-11 18:20:44','2020-04-26','N','A','M','6','39');

INSERT INTO TB_ASSINANTE VALUES('7','2020-04-15 10:44:55','2020-04-30','N','A','M','7','40');

INSERT INTO TB_ASSINANTE VALUES('8','2020-04-15 10:50:44','2020-04-30','N','A','M','8','41');

INSERT INTO TB_ASSINANTE VALUES('9','2020-04-15 10:52:48','2020-04-30','N','A','M','9','42');

INSERT INTO TB_ASSINANTE VALUES('10','2020-04-15 10:54:18','2020-04-30','N','A','M','10','43');

INSERT INTO TB_ASSINANTE VALUES('11','2020-04-15 10:55:48','2020-04-30','N','A','M','11','44');

INSERT INTO TB_ASSINANTE VALUES('12','2020-04-15 10:57:20','2020-04-30','N','A','M','12','45');

INSERT INTO TB_ASSINANTE VALUES('13','2020-04-15 11:00:01','2020-04-30','N','A','M','13','46');




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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;


INSERT INTO TB_CLIENTE VALUES('1','2020-03-25 16:37:38','A','','','S','S','S','S','','5','8');

INSERT INTO TB_CLIENTE VALUES('2','2020-03-25 16:47:42','A','','','S','S','S','S','','5','10');

INSERT INTO TB_CLIENTE VALUES('3','2020-04-07 11:48:49','A','','','S','S','S','S','','5','14');

INSERT INTO TB_CLIENTE VALUES('4','2020-04-07 11:49:18','A','','','S','S','S','S','','5','16');

INSERT INTO TB_CLIENTE VALUES('5','2020-04-07 12:02:04','A','','','S','S','S','S','','5','18');

INSERT INTO TB_CLIENTE VALUES('6','2020-04-07 12:02:48','A','','','S','S','S','S','','5','20');

INSERT INTO TB_CLIENTE VALUES('7','2020-04-07 12:03:20','A','','','S','S','S','S','','5','22');

INSERT INTO TB_CLIENTE VALUES('8','2020-04-07 12:08:46','A','','','S','S','S','S','','5','24');

INSERT INTO TB_CLIENTE VALUES('9','2020-04-07 13:06:59','A','','','S','S','S','S','','5','26');

INSERT INTO TB_CLIENTE VALUES('10','2020-04-07 13:08:32','A','','','S','S','S','S','','5','28');

INSERT INTO TB_CLIENTE VALUES('11','2020-04-07 13:09:51','A','','','S','S','S','S','','5','30');

INSERT INTO TB_CLIENTE VALUES('14','2020-04-07 13:14:21','A','','','S','S','S','S','','5','36');

INSERT INTO TB_CLIENTE VALUES('15','2020-04-07 13:19:21','A','','','S','S','S','S','','2','38');

INSERT INTO TB_CLIENTE VALUES('16','2021-03-31 11:42:24','A','','','S','S','S','S','','5','49');

INSERT INTO TB_CLIENTE VALUES('17','2021-04-06 16:46:41','A','','','S','S','S','S','','1','51');

INSERT INTO TB_CLIENTE VALUES('18','2021-04-06 16:47:05','A','','','S','S','S','S','','1','53');




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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;


INSERT INTO TB_CONTATO VALUES('1','61993274991','6130826060','0','','sisbela@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('2','6193624436','','','','lele.403@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('3','61993055454','','','','lucrece.neri@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('4','61993126972','','','','ddfds@fdsfjf.com.br','','','','');

INSERT INTO TB_CONTATO VALUES('5','61998110601','','','','fef@rtj.com','','','','');

INSERT INTO TB_CONTATO VALUES('6','6195959565','11999999999','','','leonardomcbessa@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('7','61922565323','','','','henriquecarvalhohca@outlook.com','','','','');

INSERT INTO TB_CONTATO VALUES('8','61995595599','','','','frabriceras15@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('9','6199566323','','','','leonardomcbessa@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('10','61992556968','','','','teste@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('11','61558996362','','','','thais.mail@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('12','61599663331','','','','teste@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('13','61995546653','','','','lele.403@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('14','61599633255','','','','lucrece.neri@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('15','61998863669','','','','leonardomcbessa@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('16','61965963322','','','','thais.mail@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('17','23443243258','','','','colaborador1@gmail.com','','','','');




DROP TABLE IF EXISTS TB_CONTROLLER;


CREATE TABLE `TB_CONTROLLER` (
  `co_controller` int(11) NOT NULL AUTO_INCREMENT,
  `no_controller` varchar(60) DEFAULT NULL,
  `ds_class_icon` varchar(30) DEFAULT NULL COMMENT 'Classe do Ícone',
  PRIMARY KEY (`co_controller`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;


INSERT INTO TB_CONTROLLER VALUES('1','Gestão','clip-data');

INSERT INTO TB_CONTROLLER VALUES('2','Auditoria','fa fa-crosshairs');

INSERT INTO TB_CONTROLLER VALUES('3','Acesso','clip-connection-2');

INSERT INTO TB_CONTROLLER VALUES('4','Funcionalidade','fa fa-outdent');

INSERT INTO TB_CONTROLLER VALUES('5','Perfil','clip-stack-empty');

INSERT INTO TB_CONTROLLER VALUES('6','Usuário','fa fa-group');

INSERT INTO TB_CONTROLLER VALUES('7','Visita','clip-airplane');

INSERT INTO TB_CONTROLLER VALUES('8','Plano','clip-banknote');

INSERT INTO TB_CONTROLLER VALUES('9','Assinante','clip-user-5');

INSERT INTO TB_CONTROLLER VALUES('10','Agenda','fa fa-calendar');

INSERT INTO TB_CONTROLLER VALUES('11','Relatorio','fa fa-clipboard');

INSERT INTO TB_CONTROLLER VALUES('12','Suporte','fa fa-envelope');




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


INSERT INTO TB_EMPRESA VALUES('1','','Esmaltaria Unha Padrão','2020-03-25 12:09:13','','','','','0','2','0','0');

INSERT INTO TB_EMPRESA VALUES('2','','Salão Novo Stylo 2','2020-03-25 12:17:19','','','','','0','3','0','0');

INSERT INTO TB_EMPRESA VALUES('3','','gfasdgfadg','2020-03-25 12:53:31','','','','','0','8','0','0');

INSERT INTO TB_EMPRESA VALUES('4','','rgreh h thtrhrtjrtj','2020-03-25 12:57:07','','','','','0','10','0','0');

INSERT INTO TB_EMPRESA VALUES('5','BARBEARIA NOVA BARBA RAZãO SOCIAL','BARBEARIA NOVA BARBA','2020-03-25 13:03:39','','','nova descrição','','0','4','0','0');

INSERT INTO TB_EMPRESA VALUES('6','','Cabelo Hairs','2020-04-11 18:20:43','','','','','0','0','0','0');

INSERT INTO TB_EMPRESA VALUES('7','','Moitaa coiffer','2020-04-15 10:44:55','','','','','0','0','0','0');

INSERT INTO TB_EMPRESA VALUES('8','','Cabelo Hairs','2020-04-15 10:50:44','','','','','0','0','0','0');

INSERT INTO TB_EMPRESA VALUES('9','','Cabelo Hairs','2020-04-15 10:52:48','','','','','0','0','0','0');

INSERT INTO TB_EMPRESA VALUES('10','','Moitaa coiffer','2020-04-15 10:54:18','','','','','0','0','0','0');

INSERT INTO TB_EMPRESA VALUES('11','','Moitaa coiffer','2020-04-15 10:55:48','','','','','0','0','0','0');

INSERT INTO TB_EMPRESA VALUES('12','','Moitaa coiffer','2020-04-15 10:57:20','','','','','0','0','0','0');

INSERT INTO TB_EMPRESA VALUES('13','','Moitaa coiffer','2020-04-15 11:00:01','','','','','0','0','0','0');




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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;


INSERT INTO TB_ENDERECO VALUES('1','qr 403 conjunto 10 casa 28','','Samambaia Norte','72319111','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('2','','','','','','');

INSERT INTO TB_ENDERECO VALUES('3','','','','','','');

INSERT INTO TB_ENDERECO VALUES('4','QR 403 Conjunto 10','103','Samambaia Norte (Samambaia)','72319111','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('5','','','','','','');

INSERT INTO TB_ENDERECO VALUES('6','QR 403 Conjunto 10','103','Samambaia Norte (Samambaia)','72319111','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('7','QR 403 Conjunto 10','103','Samambaia Norte (Samambaia)','72319111','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('8','','','','','','');

INSERT INTO TB_ENDERECO VALUES('9','','','','','','');

INSERT INTO TB_ENDERECO VALUES('10','','','','','','');

INSERT INTO TB_ENDERECO VALUES('11','','','','','','');

INSERT INTO TB_ENDERECO VALUES('12','','','','','','');




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


INSERT INTO TB_FUNCIONALIDADE VALUES('1','Perfil Master','PerfilMaster','A','S','0');

INSERT INTO TB_FUNCIONALIDADE VALUES('2','Auditoria Listar','ListarAuditoria','A','S','2');

INSERT INTO TB_FUNCIONALIDADE VALUES('3','Auditoria Detalhar','DetalharAuditoria','A','N','2');

INSERT INTO TB_FUNCIONALIDADE VALUES('4','Usuario Cadastrar','CadastroUsuario','A','N','6');

INSERT INTO TB_FUNCIONALIDADE VALUES('5','Usuario Listar','ListarUsuario','A','S','6');

INSERT INTO TB_FUNCIONALIDADE VALUES('6','Meu Perfil Usuario','MeuPerfilUsuario','A','S','6');

INSERT INTO TB_FUNCIONALIDADE VALUES('7','Perfil Listar','ListarPerfil','A','S','5');

INSERT INTO TB_FUNCIONALIDADE VALUES('8','Perfil Cadastrar','CadastroPerfil','A','S','5');

INSERT INTO TB_FUNCIONALIDADE VALUES('9','Funcionalidade Listar','ListarFuncionalidade','A','S','4');

INSERT INTO TB_FUNCIONALIDADE VALUES('10','Funcionalidade Cadastrar','CadastroFuncionalidade','A','S','4');

INSERT INTO TB_FUNCIONALIDADE VALUES('11','Troca Senha Usuario','TrocaSenhaUsuario','A','S','6');

INSERT INTO TB_FUNCIONALIDADE VALUES('12','Dados Complementares Assinante','DadosComplementaresAssinante','A','S','9');

INSERT INTO TB_FUNCIONALIDADE VALUES('13','Listar Visita','ListarVisita','A','S','7');

INSERT INTO TB_FUNCIONALIDADE VALUES('14','Config Gestao','ConfigGestao','A','S','1');

INSERT INTO TB_FUNCIONALIDADE VALUES('15','Gerar Entidades Gestao','GerarEntidadesGestao','A','S','1');

INSERT INTO TB_FUNCIONALIDADE VALUES('16','Gerar Backup Gestao','GerarBackupGestao','A','S','1');

INSERT INTO TB_FUNCIONALIDADE VALUES('17','Listar Acesso','ListarAcesso','A','S','3');

INSERT INTO TB_FUNCIONALIDADE VALUES('18','Listar Plano','ListarPlano','A','S','8');

INSERT INTO TB_FUNCIONALIDADE VALUES('19','Cadastro Plano','CadastroPlano','A','S','8');

INSERT INTO TB_FUNCIONALIDADE VALUES('20','Listar Assinante','ListarAssinante','A','S','9');

INSERT INTO TB_FUNCIONALIDADE VALUES('21','Cadastro Assinante','CadastroAssinante','A','S','9');

INSERT INTO TB_FUNCIONALIDADE VALUES('22','Pre Projeto Gestao','PreProjetoGestao','A','S','1');

INSERT INTO TB_FUNCIONALIDADE VALUES('23','Acompanhar Projeto Gestao','AcompanharProjetoGestao','A','N','1');

INSERT INTO TB_FUNCIONALIDADE VALUES('24','Limpar Banco Gestao','LimparBancoGestao','A','S','1');

INSERT INTO TB_FUNCIONALIDADE VALUES('25','Meu Plano Assinante','MeuPlanoAssinante','A','S','9');

INSERT INTO TB_FUNCIONALIDADE VALUES('26','Calendário','Agendamento','A','S','10');

INSERT INTO TB_FUNCIONALIDADE VALUES('27','Historico agendamento','HistoricoAgendamento','A','N','10');

INSERT INTO TB_FUNCIONALIDADE VALUES('28','Crons','CronsGestao','A','S','1');

INSERT INTO TB_FUNCIONALIDADE VALUES('29','Minificação','MinificacaoGestao','A','S','1');

INSERT INTO TB_FUNCIONALIDADE VALUES('30','Informações','GraficoRelatorio','A','S','11');

INSERT INTO TB_FUNCIONALIDADE VALUES('31','Listar Suporte','ListarSuporte','A','S','12');

INSERT INTO TB_FUNCIONALIDADE VALUES('32','Cadastro Suporte','CadastroSuporte','A','N','12');

INSERT INTO TB_FUNCIONALIDADE VALUES('33','Deleta Suporte','DeletaSuporte','A','N','12');

INSERT INTO TB_FUNCIONALIDADE VALUES('34','Renova Plano Assinante','RenovaPlanoAssinante','A','S','9');

INSERT INTO TB_FUNCIONALIDADE VALUES('35','Detalhar Assinatura Assinante','DetalharAssinaturaAssinante','A','N','9');

INSERT INTO TB_FUNCIONALIDADE VALUES('36','Notificação PagSeguro','NotificacaoPagSeguro','A','S','9');




DROP TABLE IF EXISTS TB_HISTORICO_PAG_ASSINATURA;


CREATE TABLE `TB_HISTORICO_PAG_ASSINATURA` (
  `co_historico_pag_assinatura` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_acao` varchar(100) DEFAULT NULL,
  `ds_usuario` varchar(100) DEFAULT NULL,
  `st_pagamento` int(1) DEFAULT NULL COMMENT '0 - Pendente / 1 - Aguardando pagamento / 2 - Em análise / 3 - Pago / 4 - Disponível / 5 - Em disputa / 6 - Devolvida / 7 - Cancelada\n',
  `co_plano_assinante_assinatura` int(11) NOT NULL,
  PRIMARY KEY (`co_historico_pag_assinatura`,`co_plano_assinante_assinatura`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;


INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('1','2020-03-25 12:09:13','Plano Grátis','Usuário SisBela Iniciou o plano de experiência','3','1');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('2','2020-03-25 12:17:19','Plano Grátis','Usuário SisBela Iniciou o plano de experiência','3','2');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('3','2020-03-25 12:53:31','Plano Grátis','Usuário SisBela Iniciou o plano de experiência','3','3');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('4','2020-03-25 12:57:07','Plano Grátis','Usuário SisBela Iniciou o plano de experiência','3','4');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('5','2020-03-25 13:03:42','Plano Grátis','Usuário SisBela Iniciou o plano de experiência','3','5');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('6','2020-03-25 15:50:56','Inicia o pagamento','LEO Bessa Iniciou o pagamento','0','6');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('7','2020-03-25 15:51:06','Mudou para o Status do pagamento de Em análise','Retorno da operadora do pagamento','2','6');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('8','2020-03-25 15:51:06','Mudou para o Status do pagamento de Em análise','Retorno da operadora do pagamento','2','6');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('9','2020-03-25 16:14:43','Mudou para o Status do pagamento de Cancelada','Suporte Efetuou o cancelamento.','7','6');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('10','2020-03-25 16:15:38','Inicia o pagamento','LEO Bessa Iniciou o pagamento','0','7');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('11','2020-03-25 16:15:46','Mudou para o Status do pagamento de Aguardando pagamento','Retorno da operadora do pagamento','1','7');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('12','2020-03-25 16:17:47','Mudou para o Status do pagamento de Pago ','Retorno da operadora do pagamento','3','7');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('13','2020-03-25 16:18:42','Mudou para o Status do pagamento de Devolvida','Suporte Efetuou o estorno.','6','7');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('14','2020-03-27 19:44:23','Inicia o pagamento','LEO BESSA Iniciou o pagamento','0','8');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('15','2020-03-27 19:44:26','Mudou para o Status do pagamento de Aguardando pagamento','Retorno da operadora do pagamento','1','8');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('16','2020-03-27 20:11:15','Inicia o pagamento','LEO BESSA Iniciou o pagamento','0','9');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('17','2020-03-27 20:11:20','Mudou para o Status do pagamento de Aguardando pagamento','Retorno da operadora do pagamento','1','9');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('18','2020-03-27 20:16:26','Inicia o pagamento','LEO BESSA Iniciou o pagamento','0','10');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('19','2020-03-27 20:16:29','Mudou para o Status do pagamento de Aguardando pagamento','Retorno da operadora do pagamento','1','10');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('20','2020-04-04 13:55:19','Inicia o pagamento','LEO BESSA Iniciou o pagamento','0','11');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('21','2020-04-04 13:55:27','Mudou para o Status do pagamento de Aguardando pagamento','Retorno da operadora do pagamento','1','11');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('22','2020-04-04 13:57:43','Inicia o pagamento','LEO BESSA Iniciou o pagamento','0','12');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('23','2020-04-04 13:57:52','Mudou para o Status do pagamento de Aguardando pagamento','Retorno da operadora do pagamento','1','12');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('24','2020-04-04 14:01:30','Inicia o pagamento','LEO BESSA Iniciou o pagamento','0','13');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('25','2020-04-04 14:01:37','Mudou para o Status do pagamento de Em análise','Retorno da operadora do pagamento','2','13');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('26','2020-04-11 18:20:44','Plano Grátis','Usuário SisBela Iniciou o plano de experiência de 15 Dias.','3','14');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('27','2020-04-15 10:45:16','Plano Grátis','Usuário SisBela Iniciou o plano de experiência de 15 Dias.','3','15');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('28','2020-04-15 10:50:56','Plano Grátis','Usuário SisBela Iniciou o plano de experiência de 15 Dias.','3','16');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('29','2020-04-15 10:52:51','Plano Grátis','Usuário SisBela Iniciou o plano de experiência de 15 Dias.','3','17');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('30','2020-04-15 10:54:34','Plano Grátis','Usuário SisBela Iniciou o plano de experiência de 15 Dias.','3','18');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('31','2020-04-15 10:55:55','Plano Grátis','Usuário SisBela Iniciou o plano de experiência de 15 Dias.','3','19');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('32','2020-04-15 10:57:48','Plano Grátis','Usuário SisBela Iniciou o plano de experiência de 15 Dias.','3','20');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('33','2020-04-15 11:00:35','Plano Grátis','Usuário SisBela Iniciou o plano de experiência de 15 Dias.','3','21');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('34','2020-05-02 10:56:39','Inicia o pagamento','LEO BESSA Iniciou o pagamento','0','22');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('35','2020-05-02 10:56:47','Mudou o Status do pagamento para Aguardando pagamento','Retorno da operadora do pagamento','1','22');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('36','2020-05-02 10:57:57','Mudou o Status do pagamento para Pago ','Retorno da operadora do pagamento','3','22');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('37','2021-04-06 15:40:49','Inicia o pagamento','LETíCIA MACHADO CARVALHO BESSA Iniciou o pagamento','0','23');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('38','2021-04-06 15:40:56','Mudou o Status do pagamento para Aguardando pagamento','Retorno da operadora do pagamento','1','23');

INSERT INTO TB_HISTORICO_PAG_ASSINATURA VALUES('39','2021-04-06 15:45:08','Mudou o Status do pagamento para Pago ','Retorno da operadora do pagamento','3','23');




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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;


INSERT INTO TB_HISTORICO_SUPORTE VALUES('1','2020-03-25 16:53:32','e so pra ver essa novidade mesmo','S','1','6','3');

INSERT INTO TB_HISTORICO_SUPORTE VALUES('2','2020-03-25 16:54:14','dsgsafg dfg hthhjhjjthjarthtdfh ghdfh  dfg fdahadfr greg','S','2','6','4');

INSERT INTO TB_HISTORICO_SUPORTE VALUES('3','2020-03-25 16:56:28','ta ok blz entendido','S','2','1','5');

INSERT INTO TB_HISTORICO_SUPORTE VALUES('4','2020-04-02 22:49:52','fe wqweg rg agrgrg reg','S','2','1','0');

INSERT INTO TB_HISTORICO_SUPORTE VALUES('5','2020-04-02 22:53:27','nh th trh trh','N','2','6','0');

INSERT INTO TB_HISTORICO_SUPORTE VALUES('6','2020-04-02 23:04:19','sdhfhfh5h54 h56h 5h','S','2','6','9');

INSERT INTO TB_HISTORICO_SUPORTE VALUES('7','2020-04-04 11:01:57','Ese esta sem imagens','N','2','1','0');

INSERT INTO TB_HISTORICO_SUPORTE VALUES('8','2020-04-04 11:02:24','Guarda roupas fechado','S','2','1','10');

INSERT INTO TB_HISTORICO_SUPORTE VALUES('9','2021-03-31 11:24:23','Legal','N','3','6','12');

INSERT INTO TB_HISTORICO_SUPORTE VALUES('10','2021-04-05 17:23:23','<h2>R&aacute;pido, f&aacute;cil e seguro de usar. Acabe com a dor de cabe&ccedil;a na hora de fazer a gest&atilde;o do seu negocio!</h2>\n\n\n\n<p>&nbsp;</p>\n\n\n\n<p>Voc&ecirc; pode controlar sua agenda do computador, tablet ou celular. Fa&ccedil;a a gest&atilde;o<span style=\"background-color:#e74c3c\"> completa dos seus agendamentos de qualquer lugar, com Relat&oacute;rios que s&atilde;o simples, claros e co</span>mpletos. R&aacute;pido e f&aacute;cil de usar.</p>','S','4','6','13');

INSERT INTO TB_HISTORICO_SUPORTE VALUES('11','2021-04-05 17:54:36','<p>f df sdf dsfdsa</p>','N','5','6','14');

INSERT INTO TB_HISTORICO_SUPORTE VALUES('12','2021-04-05 17:57:27','<p>fd saf gsda gdsg</p>','S','6','6','15');

INSERT INTO TB_HISTORICO_SUPORTE VALUES('13','2021-04-05 18:17:51','<p>fewafe wafgewgewgewg</p>','N','7','6','16');

INSERT INTO TB_HISTORICO_SUPORTE VALUES('14','2021-04-05 18:23:10','<p>gres htr htrh hgf</p>','S','8','6','17');

INSERT INTO TB_HISTORICO_SUPORTE VALUES('15','2021-04-05 18:24:51','<p>hgf hgfdhfh gfhfg dhfd g</p>','S','9','6','18');




DROP TABLE IF EXISTS TB_IMAGEM;


CREATE TABLE `TB_IMAGEM` (
  `co_imagem` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ds_caminho` varchar(150) NOT NULL,
  PRIMARY KEY (`co_imagem`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;


INSERT INTO TB_IMAGEM VALUES('1','leonardo-m-c-bessa-56e8920c23ab66.jpg');

INSERT INTO TB_IMAGEM VALUES('2','fp-barbearia-nova-barba-5-5e868bd43b6dd.jpg');

INSERT INTO TB_IMAGEM VALUES('3','suporte-1-5e7bb6bc5b319.png');

INSERT INTO TB_IMAGEM VALUES('4','suporte-2-5e7bb6e690064.png');

INSERT INTO TB_IMAGEM VALUES('5','suporte-2-5e7bb76c50418.png');

INSERT INTO TB_IMAGEM VALUES('6','henrique-carvalho-assuncao-5e7bb96caabc1.png');

INSERT INTO TB_IMAGEM VALUES('7','joao-victor-pereira-fernandes-5e868e182c29d.jpg');

INSERT INTO TB_IMAGEM VALUES('8','suporte-2-5e86971784b83.jpg');

INSERT INTO TB_IMAGEM VALUES('9','suporte-2-5e8699a3de762.jpg');

INSERT INTO TB_IMAGEM VALUES('10','suporte-2-5e88937015c50.jpg');

INSERT INTO TB_IMAGEM VALUES('11','lucrece-neri-portela-5e8ca7a40609e.jpg');

INSERT INTO TB_IMAGEM VALUES('12','suporte-3-60648617ea0f3.jpg');

INSERT INTO TB_IMAGEM VALUES('13','suporte-4-606b71bbdd523.jpg');

INSERT INTO TB_IMAGEM VALUES('14','suporte-5-606b790c5bea9.png');

INSERT INTO TB_IMAGEM VALUES('15','suporte-6-606b79b7d5bf2.png');

INSERT INTO TB_IMAGEM VALUES('16','suporte-7-606b7e7f57eba.jpg');

INSERT INTO TB_IMAGEM VALUES('17','suporte-8-606b7fbecd09f.png');

INSERT INTO TB_IMAGEM VALUES('18','suporte-9-606b802385f39.png');




DROP TABLE IF EXISTS TB_IMAGEM_ASSINANTE;


CREATE TABLE `TB_IMAGEM_ASSINANTE` (
  `co_imagem_assinante` int(10) NOT NULL AUTO_INCREMENT,
  `co_assinante` int(11) NOT NULL,
  `co_imagem` int(10) unsigned NOT NULL,
  PRIMARY KEY (`co_imagem_assinante`,`co_assinante`,`co_imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


INSERT INTO TB_IMAGEM_ASSINANTE VALUES('1','5','2');




DROP TABLE IF EXISTS TB_PACOTE;


CREATE TABLE `TB_PACOTE` (
  `co_pacote` int(11) NOT NULL AUTO_INCREMENT,
  `no_pacote` varchar(50) DEFAULT NULL,
  `ds_descricao` text DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_lancamento` date DEFAULT NULL,
  PRIMARY KEY (`co_pacote`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


INSERT INTO TB_PACOTE VALUES('1','Assinante','Gestão do assinante no sistema da beleza','2018-07-30 14:00:00','2018-11-02');

INSERT INTO TB_PACOTE VALUES('2','Principal','Onde consta todas as funcionalidades padrões e básicas do sistema','2018-07-30 14:00:00','2018-11-02');




DROP TABLE IF EXISTS TB_PERFIL;


CREATE TABLE `TB_PERFIL` (
  `co_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `no_perfil` varchar(45) NOT NULL COMMENT 'Nome do Perfil',
  `st_status` varchar(1) NOT NULL DEFAULT 'A' COMMENT '''A - Ativo / I - Inativo''',
  PRIMARY KEY (`co_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;


INSERT INTO TB_PERFIL VALUES('1','Master','A');

INSERT INTO TB_PERFIL VALUES('2','Gestor','A');

INSERT INTO TB_PERFIL VALUES('3','Colaborador','A');

INSERT INTO TB_PERFIL VALUES('4','Gerente','A');




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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;


INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('1','1','1','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('2','27','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('3','26','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('4','25','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('5','12','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('6','11','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('7','6','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('8','5','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('10','27','3','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('11','26','3','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('12','11','3','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('13','6','3','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('22','27','4','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('23','26','4','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('24','12','4','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('25','11','4','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('26','6','4','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('27','5','4','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('29','4','4','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('30','4','3','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('31','4','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('33','31','4','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('34','31','3','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('35','31','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('36','32','4','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('37','32','3','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('38','32','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('39','33','4','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('40','33','3','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('41','33','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('42','34','4','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('43','34','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('44','35','4','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('45','35','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('46','30','2','0');




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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;


INSERT INTO TB_PESSOA VALUES('1','','Usuário SisBela','','2016-10-31 00:00:00','','M','1','1','1');

INSERT INTO TB_PESSOA VALUES('2','01304694160','LETíCIA MACHADO CARVALHO BESSA','','2020-03-25 12:09:13','','','0','2','0');

INSERT INTO TB_PESSOA VALUES('3','','LUCRECE NERI PORTELA','','2020-03-25 12:17:19','','','9','3','0');

INSERT INTO TB_PESSOA VALUES('4','','sdaf dsf agsdg','','2020-03-25 12:53:31','','','0','4','0');

INSERT INTO TB_PESSOA VALUES('5','','EFWEGRG NOVIDADES','','2020-03-25 12:57:07','','','12','5','0');

INSERT INTO TB_PESSOA VALUES('6','12345678909','LEO BESSA','','2020-03-25 13:03:39','','','5','6','0');

INSERT INTO TB_PESSOA VALUES('7','','O Cara','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('8','','Juju','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('9','','Profiça 10','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('10','','Lele','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('11','05418337157','HENRIQUE CARVALHO ASSUNçãO','3481937','2020-03-25 17:05:01','1998-03-05','M','6','7','0');

INSERT INTO TB_PESSOA VALUES('12','07970134157','JOãO VICTOR PEREIRA FERNANDES','3947853','2020-03-25 17:33:09','1981-03-05','M','7','8','0');

INSERT INTO TB_PESSOA VALUES('13','','O Cara 33','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('14','','Juju 333','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('15','','O Cara 33','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('16','','Juju 333','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('17','','O Cara 33','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('18','','Juju 333','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('19','','O Cara 33','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('20','','Juju 333','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('21','','O Cara 33','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('22','','Juju 333','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('23','','O Cara 33','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('24','','Juju 333','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('25','','O Cara 33','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('26','','Juju 333','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('27','','O Cara 33','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('28','','Juju 333','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('29','','O Cara 33','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('30','','Juju 333','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('35','','O Cara 33','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('36','','Juju 333','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('37','','O Cara 33','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('38','','Juju 333','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('39','','HENRIQUE CARVALHO ASSUNçãO','','2020-04-11 18:20:43','','','0','9','0');

INSERT INTO TB_PESSOA VALUES('40','','Marcelo Moita','','2020-04-15 10:44:55','','','0','10','0');

INSERT INTO TB_PESSOA VALUES('41','','JOãO VICTOR PEREIRA FERNANDES','','2020-04-15 10:50:44','','','0','11','0');

INSERT INTO TB_PESSOA VALUES('42','','HENRIQUE CARVALHO ASSUNçãO','','2020-04-15 10:52:48','','','0','12','0');

INSERT INTO TB_PESSOA VALUES('43','','Marcelo Moita','','2020-04-15 10:54:18','','','0','13','0');

INSERT INTO TB_PESSOA VALUES('44','','HENRIQUE CARVALHO ASSUNçãO','','2020-04-15 10:55:48','','','0','14','0');

INSERT INTO TB_PESSOA VALUES('45','','JOãO VICTOR PEREIRA FERNANDES','','2020-04-15 10:57:20','','','0','15','0');

INSERT INTO TB_PESSOA VALUES('46','','Marcelo Moita','','2020-04-15 11:00:01','','','0','16','0');

INSERT INTO TB_PESSOA VALUES('47','','Nota 10','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('48','','Profissa 10','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('49','','Teste 1010','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('50','','Meu novo Profissa','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('51','','Karlena','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('52','','Nota 10','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('53','','Teste 1010','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('54','','novidades','','','','','0','0','0');

INSERT INTO TB_PESSOA VALUES('55','49978109080','NOVO COLABORADOR','','2021-04-19 14:16:33','','','11','17','0');




DROP TABLE IF EXISTS TB_PLANO;


CREATE TABLE `TB_PLANO` (
  `co_plano` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `no_plano` varchar(100) DEFAULT NULL,
  `nu_mes_ativo` int(1) DEFAULT NULL COMMENT 'Número de meses ativo do plano (1, 3, 6, 12 e 24)',
  `st_status` varchar(1) DEFAULT 'A' COMMENT 'Status do plano A - Ativo / I - Inativo',
  PRIMARY KEY (`co_plano`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


INSERT INTO TB_PLANO VALUES('1','2018-07-31 10:17:46','Padrão','1','A');

INSERT INTO TB_PLANO VALUES('2','2020-01-29 18:49:51','Mensal','1','A');

INSERT INTO TB_PLANO VALUES('3','2020-01-29 18:59:12','Trimestral','3','A');

INSERT INTO TB_PLANO VALUES('4','2020-01-29 19:00:40','Semestral','6','A');

INSERT INTO TB_PLANO VALUES('5','2020-01-29 19:01:53','Anual','12','A');

INSERT INTO TB_PLANO VALUES('6','2020-01-29 19:03:13','Bienal','24','A');

INSERT INTO TB_PLANO VALUES('7','2020-03-18 10:39:16','Trienal','36','A');




DROP TABLE IF EXISTS TB_PLANO_ASSINANTE;


CREATE TABLE `TB_PLANO_ASSINANTE` (
  `co_plano_assinante` int(11) NOT NULL AUTO_INCREMENT,
  `nu_valor` decimal(8,2) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_observacao` text DEFAULT NULL,
  `co_plano` int(11) NOT NULL,
  PRIMARY KEY (`co_plano_assinante`,`co_plano`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


INSERT INTO TB_PLANO_ASSINANTE VALUES('1','0.00','2018-07-31 10:17:46','Plano Padrão','1');

INSERT INTO TB_PLANO_ASSINANTE VALUES('2','29.90','2020-03-18 10:33:16','Por 1 meses','2');

INSERT INTO TB_PLANO_ASSINANTE VALUES('3','79.90','2020-03-18 10:33:46','Por 3 meses','3');

INSERT INTO TB_PLANO_ASSINANTE VALUES('4','139.90','2020-03-18 10:34:07','Por 6 Meses','4');

INSERT INTO TB_PLANO_ASSINANTE VALUES('5','249.90','2020-03-18 10:35:36','Por 12 Meses','5');

INSERT INTO TB_PLANO_ASSINANTE VALUES('6','449.90','2020-03-18 10:35:18','Por 24 Meses','6');

INSERT INTO TB_PLANO_ASSINANTE VALUES('7','599.90','2020-03-18 10:39:16','Por 36 Meses','7');




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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;


INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES('1','2020-03-25 12:09:13','2020-04-09','','1','3','2020-03-25 12:09:13','0.00','0.00','null','0','0','I','null','0.00','3','1','1');

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES('2','2020-03-25 12:17:19','2020-04-09','','1','3','2020-03-25 12:09:13','0.00','0.00','null','0','0','A','null','0.00','3','2','1');

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES('3','2020-03-25 12:53:31','2020-04-09','','1','3','2020-03-25 12:09:13','0.00','0.00','null','0','0','A','null','0.00','3','3','1');

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES('4','2020-03-25 12:57:07','2020-04-09','','1','3','2020-03-25 12:09:13','0.00','0.00','null','0','0','A','null','0.00','3','4','1');

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES('5','2020-03-25 13:03:42','2020-04-09','','1','3','2020-03-25 12:09:13','0.00','0.00','null','0','0','I','null','0.00','3','5','1');

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES('6','2020-03-25 15:50:56','2022-04-09','','3','7','2020-03-25 16:14:48','17.03','222.87','','0','5','I','5E706DDC-A10D-4D74-A0B6-3B6AF09E97D8','239.90','49','5','6');

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES('7','2020-03-25 16:15:38','2021-04-09','2020-03-25 16:17:47','5','6','2020-03-25 16:18:46','5.38','119.52','https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=7b44c80e5b528387bc67d405b29d4d7827c2f0f5f1425d56c8d41170005505e083fbc0f342424194','0','5','I','EDA0F0A7-B225-4F2B-877D-AE6021DE7077','124.90','25','5','5');

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES('8','2020-03-27 19:44:23','2022-04-09','','4','1','2020-03-27 19:44:26','9.97','229.93','https://sandbox.pagseguro.uol.com.br/checkout/payment/eft/print.jhtml?c=af67f2b0e357cfc862c36dd336d24b136ff153d2f084c2671d65f056ee5c9a190f48b18f41a05961','0','5','I','65150A2A-1D95-4220-8EBA-9D1EC6233B3D','239.90','49','5','6');

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES('9','2020-03-27 20:11:15','2020-10-09','','5','1','2020-03-27 20:11:20','3.19','66.71','https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=eae56d9b6d547ac5aac0e4ca1a28ecc4b6d3173595fee1ab347a2a9e1b9a667f7b18b61f16abbd4a','0','5','I','3F9F1DF4-44DD-437F-92D4-F1DF473A8C6C','69.90','13','5','4');

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES('10','2020-03-27 20:16:26','2021-04-09','','5','1','2020-03-27 20:16:29','5.38','119.52','https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=2c3663994b33bfcfed4b5db4fc3bebd38e82aa2cd5c32442634547b3a165d8ef3ece4f60594d7970','0','5','I','069BC6BF-743D-4282-96B9-0A25391A040C','124.90','25','5','5');

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES('11','2020-04-04 13:55:19','2020-07-09','','5','1','2020-04-04 13:55:27','1.99','37.91','https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=035c74e4680fe8b271bd056c44f457a7fe00437c0fe106dcdfe145f256ab5acd53092dfb85a827ec','0','5','I','CD6110D9-4252-41E8-93DE-815263F3C02D','39.90','7','5','3');

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES('12','2020-04-04 13:57:43','2021-04-09','','5','1','2020-04-04 13:57:52','5.38','119.52','https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=d71b3af5146918cb665df8d98fe28ff091c013353b587e74bc21ee64b415f9ae67b7766690138a66','0','5','I','29439106-A1B4-47FA-B558-BBA1AA16FCBC','124.90','25','5','5');

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES('13','2020-04-04 14:01:30','2020-05-09','','3','2','2020-04-04 14:01:37','0.99','13.91','','0','5','I','DCAB740B-F6D5-4150-AFF2-9CE647BF8038','14.90','3','5','2');

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES('22','2020-05-02 10:56:39','2023-04-09','2020-05-02 10:57:57','5','3','2020-05-02 10:57:57','24.34','575.56','https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=7805e93ce3b5c3268c8c6dde3d6e1f171b2cf06a5e50796513a73637fd8cc0295f65051d85332945','0','5','A','6710D77B-B25A-40CF-A304-3709F56904F0','599.90','73','5','7');

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES('23','2021-04-06 15:40:49','2022-04-09','2021-04-06 15:45:08','3','3','2021-04-06 15:45:08','18.35','431.55','https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=eb4c07a642d56690e875d70950cb68f41264f3c8e77e74fc1f02e2d4015dbb7f307d2bad55d686b9','0','1','A','F27F48AE-4DF1-4A73-83E8-46805053F681','449.90','49','1','6');




DROP TABLE IF EXISTS TB_PLANO_PACOTE;


CREATE TABLE `TB_PLANO_PACOTE` (
  `co_plano_pacote` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Planos do Módulo',
  `co_plano` int(11) NOT NULL,
  `co_pacote` int(11) NOT NULL,
  PRIMARY KEY (`co_plano_pacote`,`co_plano`,`co_pacote`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;


INSERT INTO TB_PLANO_PACOTE VALUES('1','1','1');

INSERT INTO TB_PLANO_PACOTE VALUES('2','1','2');

INSERT INTO TB_PLANO_PACOTE VALUES('3','2','1');

INSERT INTO TB_PLANO_PACOTE VALUES('4','2','2');

INSERT INTO TB_PLANO_PACOTE VALUES('5','3','1');

INSERT INTO TB_PLANO_PACOTE VALUES('6','3','2');

INSERT INTO TB_PLANO_PACOTE VALUES('7','4','1');

INSERT INTO TB_PLANO_PACOTE VALUES('8','4','2');

INSERT INTO TB_PLANO_PACOTE VALUES('9','6','1');

INSERT INTO TB_PLANO_PACOTE VALUES('10','6','2');

INSERT INTO TB_PLANO_PACOTE VALUES('11','5','1');

INSERT INTO TB_PLANO_PACOTE VALUES('12','5','2');

INSERT INTO TB_PLANO_PACOTE VALUES('13','7','1');

INSERT INTO TB_PLANO_PACOTE VALUES('14','7','2');




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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;


INSERT INTO TB_PROFISSIONAL VALUES('16','2021-03-30 14:38:47','','S','','','','S','S','A','','','','0','47','0','5');

INSERT INTO TB_PROFISSIONAL VALUES('17','2021-03-31 11:42:23','','S','','','','S','S','A','','','','0','48','0','5');

INSERT INTO TB_PROFISSIONAL VALUES('18','2021-04-06 16:46:41','','S','','','','S','S','A','','','','0','50','0','1');

INSERT INTO TB_PROFISSIONAL VALUES('19','2021-04-06 16:47:05','','S','','','','S','S','A','','','','0','52','0','1');

INSERT INTO TB_PROFISSIONAL VALUES('20','2021-04-06 16:47:30','','S','','','','S','S','A','','','','0','54','0','1');




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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;


INSERT INTO TB_SERVICO VALUES('15','2021-03-30 14:38:47','A','','Corte cabelo novo','','','0','0','5');

INSERT INTO TB_SERVICO VALUES('16','2021-03-31 11:42:24','A','','Corte da Barba','','','0','0','5');

INSERT INTO TB_SERVICO VALUES('17','2021-04-06 16:46:41','A','','Escova elastica','','','0','0','1');

INSERT INTO TB_SERVICO VALUES('18','2021-04-06 16:47:05','A','','Corte cabelo novo','','','0','0','1');




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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;


INSERT INTO TB_STATUS_AGENDA VALUES('1','2020-03-25 16:37:38','2','2020-03-18 17:50:00','2020-03-18 18:00:00','0.00','0','frf rg rg','1','1','6','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('2','2020-03-25 16:41:56','3','2020-03-18 17:50:00','2020-03-18 18:00:00','0.00','0','frf rg rg','1','1','6','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('3','2020-03-25 16:47:42','1','2020-03-25 11:00:00','2020-03-25 18:00:00','0.00','0','f dsaf g','2','2','6','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('6','2020-03-25 16:58:31','4','2020-03-27 08:00:00','2020-03-27 18:00:00','0.00','0','ghmghmhgmgmd  f bfdb d dfg fdg rthg th','2','3','6','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('7','2020-04-02 00:00:01','5','2020-03-27 08:00:00','2020-03-27 18:00:00','0.00','0','Mudou para o Status (Cancelado) automaticamente pelo Sistema','2','3','1','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('8','2020-04-07 11:48:49','1','2020-04-08 08:00:00','2020-04-08 18:00:00','0.00','0','htr trh trh','3','4','6','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('9','2020-04-07 11:49:18','1','2020-04-14 08:00:00','2020-04-14 18:00:00','0.00','0','gg er greg r eg','4','5','6','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('10','2020-04-07 12:02:04','1','2020-04-22 08:00:00','2020-04-22 18:00:00','0.00','0','re gre gr eh','5','6','6','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('11','2020-04-07 12:02:48','1','2020-04-22 08:00:00','2020-04-22 18:00:00','0.00','0','re gre gr eh','6','7','6','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('12','2020-04-07 12:03:20','1','2020-03-31 08:00:00','2020-03-31 18:00:00','0.00','0','g erg re g gre','7','8','6','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('13','2020-04-07 12:08:46','3','2020-04-15 08:00:00','2020-04-15 18:00:00','0.00','0','t ytryh 65ju k tjk','8','9','6','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('14','2020-04-07 13:06:58','1','2020-04-16 08:00:00','2020-04-16 18:00:00','0.00','0','rg eg h jy tjytjyt','9','10','6','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('15','2020-04-07 13:08:32','1','2020-04-16 08:00:00','2020-04-16 18:00:00','0.00','0','rg eg h jy tjytjyt','10','11','6','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('16','2020-04-07 13:09:50','1','2020-04-16 08:00:00','2020-04-16 18:00:00','0.00','0','rg eg h jy tjytjyt','11','12','6','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('19','2020-04-07 13:14:21','1','2020-04-16 08:00:00','2020-04-16 18:00:00','0.00','0','rg eg h jy tjytjyt','14','17','6','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('20','2020-04-07 13:19:21','1','2020-04-08 08:00:00','2020-04-08 18:00:00','0.00','0','rtf rgerh','15','18','3','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('21','2020-04-08 00:00:01','6','2020-03-31 08:00:00','2020-03-31 18:00:00','0.00','0','Mudou para o Status (Faltou) automaticamente pelo Sistema','7','8','1','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('22','2020-04-09 00:00:01','6','2020-04-08 08:00:00','2020-04-08 18:00:00','0.00','0','Mudou para o Status (Faltou) automaticamente pelo Sistema','15','18','1','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('23','2020-04-09 00:00:01','6','2020-04-08 08:00:00','2020-04-08 18:00:00','0.00','0','Mudou para o Status (Faltou) automaticamente pelo Sistema','3','4','1','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('24','2020-04-15 00:00:01','6','2020-04-14 08:00:00','2020-04-14 18:00:00','0.00','0','Mudou para o Status (Faltou) automaticamente pelo Sistema','4','5','1','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('25','2020-04-28 00:00:01','6','2020-04-16 08:00:00','2020-04-16 18:00:00','0.00','0','Mudou para o Status (Faltou) automaticamente pelo Sistema','14','17','1','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('26','2020-04-28 00:00:01','6','2020-04-16 08:00:00','2020-04-16 18:00:00','0.00','0','Mudou para o Status (Faltou) automaticamente pelo Sistema','11','12','1','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('27','2020-04-28 00:00:01','6','2020-04-16 08:00:00','2020-04-16 18:00:00','0.00','0','Mudou para o Status (Faltou) automaticamente pelo Sistema','10','11','1','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('28','2020-04-28 00:00:01','6','2020-04-16 08:00:00','2020-04-16 18:00:00','0.00','0','Mudou para o Status (Faltou) automaticamente pelo Sistema','9','10','1','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('29','2020-04-28 00:00:01','5','2020-04-15 08:00:00','2020-04-15 18:00:00','0.00','0','Mudou para o Status (Cancelado) automaticamente pelo Sistema','8','9','1','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('30','2020-04-28 00:00:01','6','2020-04-22 08:00:00','2020-04-22 18:00:00','0.00','0','Mudou para o Status (Faltou) automaticamente pelo Sistema','6','7','1','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('31','2020-04-28 00:00:01','6','2020-04-22 08:00:00','2020-04-22 18:00:00','0.00','0','Mudou para o Status (Faltou) automaticamente pelo Sistema','5','6','1','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('32','2020-05-02 11:05:28','2','2020-05-06 08:00:00','2020-05-06 18:00:00','0.00','0','fefef','14','19','6','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('34','2021-03-24 00:00:01','6','2020-05-06 08:00:00','2020-05-06 18:00:00','0.00','0','Mudou para o Status (Faltou) automaticamente pelo Sistema','14','19','1','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('35','2021-03-24 00:00:01','6','2020-03-25 11:00:00','2020-03-25 18:00:00','0.00','0','Mudou para o Status (Faltou) automaticamente pelo Sistema','2','2','1','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('36','2021-03-24 00:00:01','5','2020-03-18 17:50:00','2020-03-18 18:00:00','0.00','0','Mudou para o Status (Cancelado) automaticamente pelo Sistema','1','1','1','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('37','2021-03-30 14:38:47','1','2021-03-30 08:00:00','2021-03-30 09:00:00','0.00','0','','14','20','6','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('38','2021-03-30 14:41:37','7','2021-03-30 08:00:00','2021-03-30 09:00:00','0.00','0','','14','20','6','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('39','2021-03-31 11:42:23','1','2021-03-31 08:00:00','2021-03-31 10:00:00','0.00','0','So pra testar o campo de observação','16','21','6','17','16');

INSERT INTO TB_STATUS_AGENDA VALUES('40','2021-03-31 11:43:07','1','2021-04-02 08:00:00','2021-04-02 10:00:00','0.00','0','So pra testar o campo de observação','16','21','6','17','16');

INSERT INTO TB_STATUS_AGENDA VALUES('41','2021-04-05 00:00:01','6','2021-04-02 08:00:00','2021-04-02 10:00:00','0.00','0','Mudou para o Status (Faltou) automaticamente pelo Sistema','16','21','1','17','16');

INSERT INTO TB_STATUS_AGENDA VALUES('42','2021-04-05 14:55:10','1','2021-04-06 08:00:00','2021-04-06 10:00:00','0.00','0','s dgsd fg','9','22','6','17','15');

INSERT INTO TB_STATUS_AGENDA VALUES('43','2021-04-05 18:53:54','4','2021-02-01 08:00:00','2021-02-01 10:00:00','0.00','0','','10','23','6','17','15');

INSERT INTO TB_STATUS_AGENDA VALUES('44','2021-04-05 18:54:15','4','2021-02-09 08:00:00','2021-02-09 10:00:00','0.00','0','','16','24','6','17','16');

INSERT INTO TB_STATUS_AGENDA VALUES('45','2021-04-05 18:54:35','7','2021-01-06 08:00:00','2021-01-06 09:00:00','0.00','0','','16','25','6','17','16');

INSERT INTO TB_STATUS_AGENDA VALUES('46','2021-04-05 18:54:51','1','2021-01-14 08:00:00','2021-01-14 10:00:00','0.00','0','','16','26','6','17','15');

INSERT INTO TB_STATUS_AGENDA VALUES('47','2021-04-05 18:55:07','2','2021-01-08 08:00:00','2021-01-08 10:00:00','0.00','0','','16','27','6','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('48','2021-04-06 00:00:01','6','2021-01-08 08:00:00','2021-01-08 10:00:00','0.00','0','Mudou para o Status (Faltou) automaticamente pelo Sistema','16','27','1','16','15');

INSERT INTO TB_STATUS_AGENDA VALUES('49','2021-04-06 00:00:01','6','2021-01-14 08:00:00','2021-01-14 10:00:00','0.00','0','Mudou para o Status (Faltou) automaticamente pelo Sistema','16','26','1','17','15');

INSERT INTO TB_STATUS_AGENDA VALUES('50','2021-04-06 00:00:01','5','2021-02-09 08:00:00','2021-02-09 10:00:00','0.00','0','Mudou para o Status (Cancelado) automaticamente pelo Sistema','16','24','1','17','16');

INSERT INTO TB_STATUS_AGENDA VALUES('51','2021-04-06 00:00:01','5','2021-02-01 08:00:00','2021-02-01 10:00:00','0.00','0','Mudou para o Status (Cancelado) automaticamente pelo Sistema','10','23','1','17','15');

INSERT INTO TB_STATUS_AGENDA VALUES('52','2021-04-06 00:00:01','6','2021-04-06 08:00:00','2021-04-06 10:00:00','0.00','0','Mudou para o Status (Faltou) automaticamente pelo Sistema','9','22','1','17','15');

INSERT INTO TB_STATUS_AGENDA VALUES('53','2021-04-06 16:46:41','2','2021-04-06 08:00:00','2021-04-06 10:00:00','0.00','0','fd dsf dsaf','17','28','2','18','17');

INSERT INTO TB_STATUS_AGENDA VALUES('54','2021-04-06 16:47:05','7','2021-04-07 08:00:00','2021-04-07 09:00:00','0.00','0','bvnbvn','18','29','2','19','18');

INSERT INTO TB_STATUS_AGENDA VALUES('55','2021-04-06 16:47:30','3','2021-04-07 08:00:00','2021-04-07 09:00:00','0.00','0','','17','30','2','20','17');

INSERT INTO TB_STATUS_AGENDA VALUES('56','2021-04-08 00:00:01','5','2021-04-07 08:00:00','2021-04-07 09:00:00','0.00','0','Mudou para o Status (Cancelado) automaticamente pelo Sistema','17','30','1','20','17');

INSERT INTO TB_STATUS_AGENDA VALUES('57','2021-04-08 00:00:01','6','2021-04-06 08:00:00','2021-04-06 10:00:00','0.00','0','Mudou para o Status (Faltou) automaticamente pelo Sistema','17','28','1','18','17');

INSERT INTO TB_STATUS_AGENDA VALUES('58','2021-04-11 14:56:21','6','2020-12-16 08:00:00','2020-12-16 10:00:00','0.00','0','','16','31','6','17','16');

INSERT INTO TB_STATUS_AGENDA VALUES('59','2021-04-11 14:57:31','1','2021-05-11 08:00:00','2021-05-11 10:00:00','0.00','0','','2','32','6','17','15');

INSERT INTO TB_STATUS_AGENDA VALUES('60','2021-05-12 00:00:01','6','2021-05-11 08:00:00','2021-05-11 10:00:00','0.00','0','Mudou para o Status (Faltou) automaticamente pelo Sistema','2','32','1','17','15');




DROP TABLE IF EXISTS TB_SUPORTE;


CREATE TABLE `TB_SUPORTE` (
  `co_suporte` int(11) NOT NULL AUTO_INCREMENT,
  `st_status` varchar(1) DEFAULT 'A' COMMENT 'A - Ativa / I - Inativa',
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_assunto` varchar(100) DEFAULT NULL,
  `st_tipo_assunto` int(1) DEFAULT NULL COMMENT '1 - Sugestão ou Melhorias / 2 - Reclamação / 3 -  Correção no Sistema / 4 - Outros',
  `co_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_suporte`,`co_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;


INSERT INTO TB_SUPORTE VALUES('1','I','2020-03-25 16:53:32','Novidade','2','5');

INSERT INTO TB_SUPORTE VALUES('2','I','2020-03-25 16:54:14','Novidade','2','5');

INSERT INTO TB_SUPORTE VALUES('3','I','2021-03-31 11:24:23','Ta ficando masssa','1','5');

INSERT INTO TB_SUPORTE VALUES('4','I','2021-04-05 17:23:23','Ta ficando masssa','2','5');

INSERT INTO TB_SUPORTE VALUES('5','I','2021-04-05 17:54:36','Ta ficando masssa','2','5');

INSERT INTO TB_SUPORTE VALUES('6','I','2021-04-05 17:57:27','Ta ficando masssa','1','5');

INSERT INTO TB_SUPORTE VALUES('7','I','2021-04-05 18:17:50','Ta ficando masssa','2','5');

INSERT INTO TB_SUPORTE VALUES('8','I','2021-04-05 18:23:10','gregre g','2','5');

INSERT INTO TB_SUPORTE VALUES('9','I','2021-04-05 18:24:51','gregre g','3','5');




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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;


INSERT INTO TB_USUARIO VALUES('1','123456**','TVRJek5EVTJLaW89','A','S','2016-10-31 00:00:00','1','1','0');

INSERT INTO TB_USUARIO VALUES('2','123456**','TVRJek5EVTJLaW89','A','N','2020-03-25 12:09:13','0','2','1');

INSERT INTO TB_USUARIO VALUES('3','123456**','TVRJek5EVTJLaW89','A','N','2020-03-25 12:17:19','11','3','2');

INSERT INTO TB_USUARIO VALUES('4','QYK2NEW6','VVZsTE1rNUZWelk9','I','N','2020-03-25 12:53:31','0','4','3');

INSERT INTO TB_USUARIO VALUES('5','ALO7ZKC0','UVV4UE4xcExRekE9','A','N','2020-03-25 12:57:07','0','5','4');

INSERT INTO TB_USUARIO VALUES('6','12345678**','TVRJek5EVTJOemdxS2c9PQ==','A','S','2020-03-25 13:03:39','0','6','5');

INSERT INTO TB_USUARIO VALUES('7','12345678**','TVRJek5EVTJOemdxS2c9PQ==','A','N','2020-03-25 17:05:01','6','11','5');

INSERT INTO TB_USUARIO VALUES('8','12345678**','TVRJek5EVTJOemdxS2c9PQ==','A','N','2020-03-25 17:33:09','7','12','5');

INSERT INTO TB_USUARIO VALUES('9','12345678**','TVRJek5EVTJOemdxS2c9PQ==','I','N','2020-04-11 18:20:44','0','39','6');

INSERT INTO TB_USUARIO VALUES('10','KHU7VVQ0','UzBoVk4xWldVVEE9','I','N','2020-04-15 10:44:55','0','40','7');

INSERT INTO TB_USUARIO VALUES('11','WMD1OVY0','VjAxRU1VOVdXVEE9','I','N','2020-04-15 10:50:44','0','41','8');

INSERT INTO TB_USUARIO VALUES('12','IRB5YWB8','U1ZKQ05WbFhRamc9','I','N','2020-04-15 10:52:48','0','42','9');

INSERT INTO TB_USUARIO VALUES('13','NYU4PBQ8','VGxsVk5GQkNVVGc9','I','N','2020-04-15 10:54:18','0','43','10');

INSERT INTO TB_USUARIO VALUES('14','WHZ5KYN6','VjBoYU5VdFpUalk9','I','N','2020-04-15 10:55:48','0','44','11');

INSERT INTO TB_USUARIO VALUES('15','HEX8AWT0','U0VWWU9FRlhWREE9','I','N','2020-04-15 10:57:20','0','45','12');

INSERT INTO TB_USUARIO VALUES('16','OWR3KWM1','VDFkU00wdFhUVEU9','I','N','2020-04-15 11:00:01','0','46','13');

INSERT INTO TB_USUARIO VALUES('17','123456**','TVRJek5EVTJLaW89','A','N','2021-04-19 14:16:33','0','55','1');




DROP TABLE IF EXISTS TB_USUARIO_PERFIL;


CREATE TABLE `TB_USUARIO_PERFIL` (
  `co_usuario_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `co_usuario` int(10) NOT NULL,
  `co_perfil` int(11) NOT NULL,
  `co_perfil_assinante` int(10) NOT NULL,
  PRIMARY KEY (`co_usuario_perfil`,`co_usuario`,`co_perfil`,`co_perfil_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;


INSERT INTO TB_USUARIO_PERFIL VALUES('1','1','1','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('2','2','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('3','3','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('4','4','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('6','6','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('7','7','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('10','8','4','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('11','8','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('12','0','4','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('13','0','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('14','0','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('15','0','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('16','9','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('17','10','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('18','11','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('19','12','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('20','13','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('21','14','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('22','15','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('23','16','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('25','0','4','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('26','0','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('27','0','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('28','0','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('29','0','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('30','0','4','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('31','0','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('32','0','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('33','5','4','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('34','5','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('35','17','4','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('36','17','3','0');




