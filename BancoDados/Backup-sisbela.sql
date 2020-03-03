-- Atualizado em: 03/03/2020 14:29:06
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
  PRIMARY KEY (`co_acesso`,`co_usuario`,`co_trafego`),
  KEY `fk_TB_ACESSO_TB_USUARIO1_idx` (`co_usuario`),
  KEY `fk_TB_ACESSO_TB_TRAFEGO1_idx` (`co_trafego`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;


INSERT INTO TB_ACESSO VALUES("37","bbh555bdtkvi95ohv654vmchu4","2020-03-03 14:27:34","2020-03-03 14:59:06","A","1","37");




DROP TABLE IF EXISTS TB_AGENDA;


CREATE TABLE `TB_AGENDA` (
  `co_agenda` int(11) NOT NULL AUTO_INCREMENT,
  `ds_motivo` text DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_agenda`,`co_assinante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_ANOTACAO;


CREATE TABLE `TB_ANOTACAO` (
  `co_anotacao` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_observacao` text DEFAULT NULL,
  `ds_titulo` varchar(80) DEFAULT NULL,
  `co_historia` int(11) NOT NULL,
  PRIMARY KEY (`co_anotacao`,`co_historia`),
  KEY `fk_TB_ANOTACAO_TB_HISTORIA1_idx` (`co_historia`)
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
  PRIMARY KEY (`co_assinante`,`co_empresa`,`co_pessoa`),
  KEY `fk_TB_ASSINANTE_TB_EMPRESA1_idx` (`co_empresa`),
  KEY `fk_TB_ASSINANTE_TB_PESSOA1_idx` (`co_pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


INSERT INTO TB_ASSINANTE VALUES("1","2020-01-29 19:14:25","2020-02-13","S","A","M","1","2");




DROP TABLE IF EXISTS TB_AUDITORIA;


CREATE TABLE `TB_AUDITORIA` (
  `co_auditoria` int(11) NOT NULL AUTO_INCREMENT,
  `dt_realizado` datetime DEFAULT NULL,
  `ds_perfil_usuario` text DEFAULT NULL,
  `co_usuario` int(10) NOT NULL,
  PRIMARY KEY (`co_auditoria`,`co_usuario`),
  KEY `fk_TB_AUDITORIA_TB_USUARIO1_idx` (`co_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_AUDITORIA_ITENS;


CREATE TABLE `TB_AUDITORIA_ITENS` (
  `co_auditoria_itens` int(11) NOT NULL AUTO_INCREMENT,
  `ds_item_anterior` varchar(255) DEFAULT NULL,
  `ds_item_atual` varchar(255) DEFAULT NULL,
  `ds_campo` varchar(120) DEFAULT NULL,
  `co_auditoria_tabela` int(11) NOT NULL,
  PRIMARY KEY (`co_auditoria_itens`,`co_auditoria_tabela`),
  KEY `fk_TB_AUDITORIA_ITENS_TB_AUDITORIA_TABELA1_idx` (`co_auditoria_tabela`)
) ENGINE=InnoDB AUTO_INCREMENT=2213 DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_AUDITORIA_TABELA;


CREATE TABLE `TB_AUDITORIA_TABELA` (
  `co_auditoria_tabela` int(11) NOT NULL AUTO_INCREMENT,
  `no_tabela` varchar(45) DEFAULT NULL,
  `tp_operacao` varchar(1) DEFAULT NULL,
  `co_registro` int(11) DEFAULT NULL,
  `co_auditoria` int(11) NOT NULL,
  PRIMARY KEY (`co_auditoria_tabela`,`co_auditoria`),
  KEY `fk_TB_AUDITORIA_TABELA_TB_AUDITORIA1_idx` (`co_auditoria`)
) ENGINE=InnoDB AUTO_INCREMENT=314 DEFAULT CHARSET=utf8;





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
  PRIMARY KEY (`co_cliente`,`co_assinante`,`co_pessoa`),
  KEY `fk_TB_CLIENTE_TB_ASSINANTE1_idx` (`co_assinante`),
  KEY `fk_TB_CLIENTE_TB_PESSOA1_idx` (`co_pessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;


INSERT INTO TB_CONTATO VALUES("1","61993274991","6130826060","0","","leonardomcbessa@gmail.com","","","","");

INSERT INTO TB_CONTATO VALUES("2","61993939393","","","","lele.403@hotmail.com","","","","");

INSERT INTO TB_CONTATO VALUES("3","61993939393","","","","lele.403@hotmail.com","","","","");

INSERT INTO TB_CONTATO VALUES("4","61993939393","","","","lele.403@hotmail.com","","","","");




DROP TABLE IF EXISTS TB_CONTROLLER;


CREATE TABLE `TB_CONTROLLER` (
  `co_controller` int(11) NOT NULL AUTO_INCREMENT,
  `no_controller` varchar(60) DEFAULT NULL,
  `ds_class_icon` varchar(30) DEFAULT NULL COMMENT 'Classe do Ícone',
  PRIMARY KEY (`co_controller`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;


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
  PRIMARY KEY (`co_empresa`,`co_pessoa`,`co_endereco`,`co_contato`,`co_imagem`),
  KEY `fk_TB_EMPRESA_TB_PESSOA1_idx` (`co_pessoa`),
  KEY `fk_TB_EMPRESA_TB_ENDERECO1_idx` (`co_endereco`),
  KEY `fk_TB_EMPRESA_TB_CONTATO1_idx` (`co_contato`),
  KEY `fk_TB_EMPRESA_TB_IMAGEM1_idx` (`co_imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


INSERT INTO TB_EMPRESA VALUES("1","","SALãO DA BELEZA","2020-01-29 19:14:24","","","","","0","3","0","0");




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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


INSERT INTO TB_ENDERECO VALUES("1","qr 403 conjunto 10 casa 28","","Samambaia Norte","72319111","Brasília","DF");

INSERT INTO TB_ENDERECO VALUES("2","","","","","","");

INSERT INTO TB_ENDERECO VALUES("3","QR 403 Conjunto 10","","Samambaia Norte (Samambaia)","72319111","Brasília","DF");




DROP TABLE IF EXISTS TB_FUNCIONALIDADE;


CREATE TABLE `TB_FUNCIONALIDADE` (
  `co_funcionalidade` int(11) NOT NULL AUTO_INCREMENT,
  `no_funcionalidade` varchar(150) NOT NULL,
  `ds_action` varchar(120) DEFAULT NULL,
  `st_status` varchar(1) DEFAULT 'A' COMMENT '''A - Ativo / I - Inativo''',
  `st_menu` varchar(1) DEFAULT 'S' COMMENT 'S - Sim / N - Não (Se apresenta no menu)',
  `co_controller` int(11) NOT NULL,
  PRIMARY KEY (`co_funcionalidade`,`co_controller`),
  KEY `fk_TB_FUNCIONALIDADE_TB_CONTROLLER1_idx` (`co_controller`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;


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




DROP TABLE IF EXISTS TB_HISTORIA;


CREATE TABLE `TB_HISTORIA` (
  `co_historia` int(11) NOT NULL AUTO_INCREMENT,
  `ds_titulo` varchar(80) DEFAULT NULL,
  `ds_observacao` text DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_atualizado` datetime DEFAULT NULL,
  `st_situacao` varchar(1) DEFAULT 'N' COMMENT 'N - Não iniciada / I - Iniciada / C - Concluida',
  `co_sessao` int(11) NOT NULL,
  PRIMARY KEY (`co_historia`,`co_sessao`),
  KEY `fk_TB_HISTORIA_TB_SESSAO1_idx` (`co_sessao`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;


INSERT INTO TB_HISTORIA VALUES("1","Manter Planos do sistema","Manter planos do sistema da beleza, onde terá que manter os desconto com período para o plano\n\n\nModelagem: Plano e histórico plano módulos","2019-12-18 12:06:25","2020-01-29 19:06:52","C","1");

INSERT INTO TB_HISTORIA VALUES("2","Manter Assinante","Manter assinante do sistema e com data de expiração do sistema para o assinante, criar contato, criar pessoa, envio de email de confirmação com senha gerada.\n\n\n\n\n\nCriar o usuário quando criar o assinante, plano assinado\n\n\n\n\n\nModelagem: Assinante (Junção de pessoa, contato, usuário, data de expiração, status)","2019-12-18 12:11:52","2020-01-30 12:54:32","C","1");

INSERT INTO TB_HISTORIA VALUES("3","Gestão de pagamentos dos assinantes","Dar baixas no pagamento, e atualizar o prazo de expiração do assinante \n\n\n\n\n\nCriar histórico dos pagamentos\n\n\n\n\n\n Modelagem: Pagamento assinante (Ligada com plano e assinante)","2019-12-18 12:15:49","2019-12-18 12:15:49","I","1");

INSERT INTO TB_HISTORIA VALUES("4","Configuração inicial do projeto","Configuração inicial do projeto","2019-12-18 12:16:19","2019-12-18 12:16:19","I","1");

INSERT INTO TB_HISTORIA VALUES("5","Mudar loguin","Mudar loguin para logar com email tb, recuperar senha e notificar de mudar senha.","2019-12-18 12:16:48","2019-12-18 12:16:48","I","1");

INSERT INTO TB_HISTORIA VALUES("6","Criar mensagem de expiração e bloqueio do sistema","Criar mensagem de expiração e bloqueio do sistema","2019-12-18 12:17:13","2019-12-18 12:17:13","I","1");

INSERT INTO TB_HISTORIA VALUES("7","Manter Planos do Assinante","Manter Planos do Assinante, alterar seu plano aumentando o plano","2019-12-18 12:17:44","2019-12-18 12:17:44","N","1");

INSERT INTO TB_HISTORIA VALUES("8","Pesquisa Avançada dos Assinantes","Pesquisa Avançada dos Assinantes por razão social, nome fantasia, Responsável, cidade e UF, email, Tipo de estabelecimento, Atendimento, Género Especializado, funcionamento, data de expiração (Período), número de filiais, valor assinatura atual, número de profissionais,","2019-12-18 12:18:35","2019-12-18 12:18:35","N","1");

INSERT INTO TB_HISTORIA VALUES("9","Dados complementares básicos","Manter dados: (Endereço, telefone, CNPJ, fantasia, razão e outros)\n\n\n\n\n\nModelagem: Contato, endereço e empresa ou pessoa","2019-12-18 12:20:44","2020-03-03 14:28:17","C","2");

INSERT INTO TB_HISTORIA VALUES("10","Manter Fotos do Estabelecimento","Manter Fotos do Estabelecimento para o Site\n\n\n\n\n\nModelagem: Imagem (FK Assinante)","2019-12-18 12:21:59","2020-03-03 14:28:08","C","2");

INSERT INTO TB_HISTORIA VALUES("11","Gestão de notificações","Gestão de notificações com as mensagens geradas do sistema de sucesso erro e avisos","2019-12-18 12:22:23","2020-03-03 14:28:35","C","2");

INSERT INTO TB_HISTORIA VALUES("12","Cadastrar Agendamento","Cadastrar Agendamento (Opção da recorrência)\n\n\n\n\n\nVários serviços e pacotes\n\n\n\n\n\nModelagem: (FK cliente, Serviço, Profissional, Assistente","2019-12-18 12:23:46","2019-12-18 12:23:55","I","3");

INSERT INTO TB_HISTORIA VALUES("13","Edição Agendamento","Edição Agendamento\n\n\n\n\n\nValidação dos status do agendamento e status do serviço","2019-12-18 12:24:38","2019-12-18 12:25:53","I","3");

INSERT INTO TB_HISTORIA VALUES("14","Implantação Agenda","Agenda CSS (Responsivo)","2019-12-18 12:25:03","2019-12-18 12:25:03","I","3");

INSERT INTO TB_HISTORIA VALUES("15","Pesquisa Avançada dos Agendamentos","Pesquisa de agendamento  por período, status, profissional, serviço, assistente, valor r$, cliente","2019-12-18 12:25:41","2019-12-18 12:25:41","I","3");

INSERT INTO TB_HISTORIA VALUES("16","Alterar Status do agendamento","Alterar Status do agendamento","2019-12-18 12:26:18","2019-12-18 12:26:18","I","3");

INSERT INTO TB_HISTORIA VALUES("17","Listagem dos agendamento (Calendário)","Listagem dos agendamento e auto render","2019-12-18 12:26:45","2019-12-18 12:26:45","I","3");

INSERT INTO TB_HISTORIA VALUES("18","Histórico do Agendamento","Histórico do Agendamento (Modal)","2019-12-18 12:27:19","2019-12-18 12:27:19","I","3");

INSERT INTO TB_HISTORIA VALUES("19","Deletar Agendamento","Deletar Agendamento (Modal) com Justificativa\n\n\n\n\n\nVisualizar na listagem da grid","2019-12-18 12:27:55","2019-12-18 12:27:55","I","3");

INSERT INTO TB_HISTORIA VALUES("20","Listagem dos agendamento (Grid)","Listagem dos agendamento (Grid)","2019-12-18 12:28:13","2019-12-18 12:28:13","I","3");

INSERT INTO TB_HISTORIA VALUES("21","Event Dragging & Resizing","Criar eventos Dragging & Resizing","2019-12-18 12:28:41","2019-12-18 12:28:41","I","3");

INSERT INTO TB_HISTORIA VALUES("22","Visualizar Agendamento","Visualizar Agendamento","2019-12-18 12:29:06","2019-12-18 12:29:06","I","3");

INSERT INTO TB_HISTORIA VALUES("23","Validações dos botões","Validações dos botões da tela de visualizar agendamento","2019-12-18 12:29:42","2019-12-18 12:29:42","I","3");

INSERT INTO TB_HISTORIA VALUES("24","Iniciar o sistema com as configurações básicas","Iniciar o sistema com as configurações básicas para depois iniciar o painel","2019-12-18 12:31:44","2019-12-18 12:31:44","I","4");

INSERT INTO TB_HISTORIA VALUES("25","Manter Suporte","Manter Suporte, responder suporte, apresentar resposta\n\n\n\n\n\nModelagem: suporte (FK Assinante, Categoria Suporte)\n\n\n\n\n\nTabela base Categoria Suporte","2019-12-18 12:32:21","2019-12-18 12:32:21","N","5");

INSERT INTO TB_HISTORIA VALUES("26","Agendamento detalhes","Agendamentos Gerar Gráficos e Relatórios de agendamentos por status do agendamento e período\n\n\n\n\n\n Impressão dos gráficos e dados","2019-12-18 12:34:22","2019-12-18 12:34:22","N","6");

INSERT INTO TB_HISTORIA VALUES("27","Manter Usuário","Manter Usuário","2019-12-18 12:35:02","2020-01-30 12:55:05","I","7");

INSERT INTO TB_HISTORIA VALUES("28","Criar Cron de desativar agendamento","Criar Cron de desativar agendamento","2019-12-18 12:35:39","2019-12-18 12:35:39","N","8");

INSERT INTO TB_HISTORIA VALUES("29","Página de captura de cliente","Página de captura de cliente","2019-12-18 12:37:50","2019-12-18 12:37:50","N","9");

INSERT INTO TB_HISTORIA VALUES("30","Vídeos para a Página de captura de cliente","Vídeos para a Página de captura de cliente","2019-12-18 12:38:09","2019-12-18 12:38:09","N","9");

INSERT INTO TB_HISTORIA VALUES("31","Página de captura de lead","Página de captura de lead","2019-12-18 12:38:28","2019-12-18 12:38:28","N","9");

INSERT INTO TB_HISTORIA VALUES("32","Cadastro pelo site para o assinante","verificar o cadastro pelo site para manter um plano mesmo que que por experiência","2019-12-18 12:38:52","2019-12-18 12:38:52","N","9");

INSERT INTO TB_HISTORIA VALUES("33","Material do Pré Lançamento","Produção e Disponibilização do material para lista de lead\n\n\n\n\n\nDuração de 7 a 10 dias antes do Lançamento de 3 a 4 vídeos","2019-12-18 12:39:57","2019-12-18 12:39:57","N","11");

INSERT INTO TB_HISTORIA VALUES("34","Direcionar para o lançamento","Após Lançamento Direcionar para o lançamento o tráfego do PL","2019-12-18 12:40:34","2019-12-18 12:40:34","N","11");

INSERT INTO TB_HISTORIA VALUES("35","Criação da Lista de Lead","Criação da Lista de Lead já trabalhadas nas redes sociais e mais..","2019-12-18 12:42:55","2019-12-18 12:42:55","N","10");

INSERT INTO TB_HISTORIA VALUES("36","Criar conteúdos e Entregas","Criar conteúdos para entrega e ir formulando a lista de lead\n\n\n\n\n\nInicio da divulgação para o lançamento.","2019-12-18 12:43:22","2019-12-18 12:43:22","N","10");

INSERT INTO TB_HISTORIA VALUES("37","Lançamento das Vendas","de 1 a 7 dias de vendas com página aquecida","2019-12-18 12:44:04","2019-12-18 12:44:04","N","12");

INSERT INTO TB_HISTORIA VALUES("38","Vídeos para lançamento de vendas","produção de Vídeos para lançamento de vendas","2019-12-18 12:44:29","2019-12-18 12:44:38","N","12");

INSERT INTO TB_HISTORIA VALUES("39","Teste sessão assinante","Teste sessão assinante","2019-12-18 12:45:23","2019-12-18 12:45:23","N","13");

INSERT INTO TB_HISTORIA VALUES("40","Teste sessão Complemento do assinante","Teste sessão Complemento do assinante","2019-12-18 12:45:36","2019-12-18 12:45:36","N","13");

INSERT INTO TB_HISTORIA VALUES("41","Teste sessão Agendamento","Teste sessão Agendamento","2019-12-18 12:45:56","2019-12-18 12:45:56","N","13");

INSERT INTO TB_HISTORIA VALUES("42","Teste sessão Iniciar o sistema","Teste sessão Iniciar o sistema","2019-12-18 12:46:20","2019-12-18 12:46:20","N","13");

INSERT INTO TB_HISTORIA VALUES("43","Teste sessão Suporte","Teste sessão Suporte","2019-12-18 12:46:50","2019-12-18 12:46:50","N","13");

INSERT INTO TB_HISTORIA VALUES("44","Teste sessão Relatório","Teste sessão Relatório","2019-12-18 12:47:05","2019-12-18 12:47:05","N","13");

INSERT INTO TB_HISTORIA VALUES("45","Teste sessão Usuário","Teste sessão Usuário","2019-12-18 12:47:20","2019-12-18 12:47:20","N","13");




DROP TABLE IF EXISTS TB_HISTORICO_HISTORIA;


CREATE TABLE `TB_HISTORICO_HISTORIA` (
  `co_historico_historia` int(11) NOT NULL AUTO_INCREMENT,
  `nu_esforco` varchar(2) DEFAULT NULL,
  `nu_esforco_restante` varchar(2) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_historia` int(11) NOT NULL,
  PRIMARY KEY (`co_historico_historia`,`co_historia`),
  KEY `fk_TB_HISTORICO_HISTORIA_TB_HISTORIA1_idx` (`co_historia`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;


INSERT INTO TB_HISTORICO_HISTORIA VALUES("1","13","5","2019-12-18 12:06:25","1");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("2","20","8","2019-12-18 12:11:52","2");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("3","20","8","2019-12-18 12:15:49","3");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("4","8","3","2019-12-18 12:16:19","4");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("5","20","8","2019-12-18 12:16:48","5");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("6","13","3","2019-12-18 12:17:13","6");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("7","13","13","2019-12-18 12:17:44","7");

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

INSERT INTO TB_HISTORICO_HISTORIA VALUES("49","13","0","2020-01-29 19:06:52","1");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("50","20","0","2020-01-30 12:54:32","2");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("51","20","5","2020-01-30 12:55:05","27");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("52","8","0","2020-03-03 14:28:08","10");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("53","20","0","2020-03-03 14:28:17","9");

INSERT INTO TB_HISTORICO_HISTORIA VALUES("54","20","0","2020-03-03 14:28:35","11");




DROP TABLE IF EXISTS TB_IMAGEM;


CREATE TABLE `TB_IMAGEM` (
  `co_imagem` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ds_caminho` varchar(150) NOT NULL,
  PRIMARY KEY (`co_imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;


INSERT INTO TB_IMAGEM VALUES("1","leonardo-m-c-bessa-56e8920c23ab66.jpg");

INSERT INTO TB_IMAGEM VALUES("2","");

INSERT INTO TB_IMAGEM VALUES("3","");

INSERT INTO TB_IMAGEM VALUES("4","fp-salao-da-beleza-1-5e5e840217f89.jpg");

INSERT INTO TB_IMAGEM VALUES("5","Assinante/Assinante-1/salao-da-beleza-1-5e5e83e08b846.jpg");

INSERT INTO TB_IMAGEM VALUES("6","Assinante/Assinante-1/salao-da-beleza-1-5e5e83e093ccc.jpg");

INSERT INTO TB_IMAGEM VALUES("7","Assinante/Assinante-1/salao-da-beleza-1-5e5e83e09c2e8.jpg");

INSERT INTO TB_IMAGEM VALUES("8","Assinante/Assinante-1/salao-da-beleza-1-5e5e83e0a4a60.jpg");

INSERT INTO TB_IMAGEM VALUES("9","Assinante/Assinante-1/salao-da-beleza-1-5e5e840223fd2.jpg");

INSERT INTO TB_IMAGEM VALUES("10","Assinante/Assinante-1/salao-da-beleza-1-5e5e8402386c8.jpg");

INSERT INTO TB_IMAGEM VALUES("11","Assinante/Assinante-1/salao-da-beleza-1-5e5e8402460a6.jpg");

INSERT INTO TB_IMAGEM VALUES("12","Assinante/Assinante-1/salao-da-beleza-1-5e5e8402590ae.jpg");

INSERT INTO TB_IMAGEM VALUES("13","Assinante/Assinante-1/salao-da-beleza-1-5e5e84026bf2c.jpg");




DROP TABLE IF EXISTS TB_IMAGEM_ASSINANTE;


CREATE TABLE `TB_IMAGEM_ASSINANTE` (
  `co_imagem_assinante` int(10) NOT NULL AUTO_INCREMENT,
  `co_assinante` int(11) NOT NULL,
  `co_imagem` int(10) unsigned NOT NULL,
  PRIMARY KEY (`co_imagem_assinante`,`co_assinante`,`co_imagem`),
  KEY `fk_TB_ASSINANTE_has_TB_IMAGEM_TB_IMAGEM1_idx` (`co_imagem`),
  KEY `fk_TB_ASSINANTE_has_TB_IMAGEM_TB_ASSINANTE1_idx` (`co_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;


INSERT INTO TB_IMAGEM_ASSINANTE VALUES("1","1","4");

INSERT INTO TB_IMAGEM_ASSINANTE VALUES("2","1","5");

INSERT INTO TB_IMAGEM_ASSINANTE VALUES("3","1","6");

INSERT INTO TB_IMAGEM_ASSINANTE VALUES("4","1","1");

INSERT INTO TB_IMAGEM_ASSINANTE VALUES("5","1","8");

INSERT INTO TB_IMAGEM_ASSINANTE VALUES("6","1","9");

INSERT INTO TB_IMAGEM_ASSINANTE VALUES("7","1","10");

INSERT INTO TB_IMAGEM_ASSINANTE VALUES("8","1","11");

INSERT INTO TB_IMAGEM_ASSINANTE VALUES("9","1","12");

INSERT INTO TB_IMAGEM_ASSINANTE VALUES("10","1","13");




DROP TABLE IF EXISTS TB_MODULO;


CREATE TABLE `TB_MODULO` (
  `co_modulo` int(11) NOT NULL AUTO_INCREMENT,
  `no_modulo` varchar(50) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_projeto` int(11) NOT NULL,
  PRIMARY KEY (`co_modulo`,`co_projeto`),
  KEY `fk_TB_MODULO_TB_PROJETO1_idx` (`co_projeto`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


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
  PRIMARY KEY (`co_pagina_visita`,`co_visita`,`co_pagina`),
  KEY `fk_TB_PAGINA_has_TB_VISITA_TB_VISITA1_idx` (`co_visita`),
  KEY `fk_TB_PAGINA_has_TB_VISITA_TB_PAGINA1_idx` (`co_pagina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_PERFIL;


CREATE TABLE `TB_PERFIL` (
  `co_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `no_perfil` varchar(45) NOT NULL COMMENT 'Nome do Perfil',
  `st_status` varchar(1) NOT NULL DEFAULT 'A' COMMENT '''A - Ativo / I - Inativo''',
  PRIMARY KEY (`co_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


INSERT INTO TB_PERFIL VALUES("1","Master","A");

INSERT INTO TB_PERFIL VALUES("2","Gestor","A");

INSERT INTO TB_PERFIL VALUES("3","Colaborador","A");




DROP TABLE IF EXISTS TB_PERFIL_ASSINANTE;


CREATE TABLE `TB_PERFIL_ASSINANTE` (
  `co_perfil_assinante` int(11) NOT NULL AUTO_INCREMENT,
  `no_perfil` varchar(45) DEFAULT NULL,
  `st_status` varchar(1) DEFAULT NULL,
  `co_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_perfil_assinante`,`co_assinante`),
  KEY `fk_TB_PERFIL_ASSINANTE_TB_ASSINANTE1_idx` (`co_assinante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_PERFIL_FUNCIONALIDADE;


CREATE TABLE `TB_PERFIL_FUNCIONALIDADE` (
  `co_perfil_funcionalidade` int(11) NOT NULL AUTO_INCREMENT,
  `co_funcionalidade` int(11) NOT NULL,
  `co_perfil` int(11) NOT NULL,
  `co_perfil_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_perfil_funcionalidade`,`co_funcionalidade`,`co_perfil`,`co_perfil_assinante`),
  KEY `fk_tb_perfil_tb_funcionalidade_tb_funcionalidade1_idx` (`co_funcionalidade`),
  KEY `fk_tb_perfil_tb_funcionalidade_tb_perfil1_idx` (`co_perfil`),
  KEY `fk_TB_PERFIL_FUNCIONALIDADE_TB_PERFIL_ASSINANTE1_idx` (`co_perfil_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;


INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("1","1","1","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("2","27","2","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("3","26","2","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("4","25","2","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("5","12","2","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("6","11","2","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("7","6","2","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("8","5","2","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("9","4","2","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("10","27","3","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("11","26","3","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("12","11","3","0");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("13","6","3","0");




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
  PRIMARY KEY (`co_pessoa`,`co_endereco`,`co_contato`,`co_imagem`),
  KEY `fk_TB_PESSOA_TB_ENDERECO1_idx` (`co_endereco`),
  KEY `fk_TB_PESSOA_TB_CONTATO1_idx` (`co_contato`),
  KEY `fk_TB_PESSOA_TB_IMAGEM1_idx` (`co_imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;


INSERT INTO TB_PESSOA VALUES("1","","Usuário SisBela","","2016-10-31 00:00:00","0000-00-00","M","1","1","1");

INSERT INTO TB_PESSOA VALUES("2","","LETíCIA BESSA","","2020-01-29 19:14:24","","","0","2","0");

INSERT INTO TB_PESSOA VALUES("3","","LETíCIA BESSA","","2020-01-29 19:56:49","0000-00-00","","2","3","0");

INSERT INTO TB_PESSOA VALUES("4","","LETíCIA BESSA","","2020-01-29 20:07:15","0000-00-00","","2","4","0");




DROP TABLE IF EXISTS TB_PLANO;


CREATE TABLE `TB_PLANO` (
  `co_plano` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `no_plano` varchar(100) DEFAULT NULL,
  `nu_mes_ativo` int(1) DEFAULT NULL COMMENT 'Número de meses ativo do plano (1, 3, 6, 12 e 24)',
  `st_status` varchar(1) DEFAULT 'A' COMMENT 'Status do plano A - Ativo / I - Inativo',
  PRIMARY KEY (`co_plano`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;


INSERT INTO TB_PLANO VALUES("1","2018-07-31 10:17:46","Plano Padrão","1","A");

INSERT INTO TB_PLANO VALUES("2","2020-01-29 18:49:51","Plano Mensal","1","A");

INSERT INTO TB_PLANO VALUES("3","2020-01-29 18:59:12","Plano Trimestral","3","A");

INSERT INTO TB_PLANO VALUES("4","2020-01-29 19:00:40","Plano Semestral","6","A");

INSERT INTO TB_PLANO VALUES("5","2020-01-29 19:01:53","Plano Anual","12","A");

INSERT INTO TB_PLANO VALUES("6","2020-01-29 19:03:13","Plano Bienal","24","A");




DROP TABLE IF EXISTS TB_PLANO_ASSINANTE;


CREATE TABLE `TB_PLANO_ASSINANTE` (
  `co_plano_assinante` int(11) NOT NULL AUTO_INCREMENT,
  `nu_valor` decimal(8,2) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_observacao` text DEFAULT NULL,
  `co_plano` int(11) NOT NULL,
  PRIMARY KEY (`co_plano_assinante`,`co_plano`),
  KEY `fk_TB_PLANO_ASSINANTE_TB_PLANO1_idx` (`co_plano`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;


INSERT INTO TB_PLANO_ASSINANTE VALUES("1","0.00","2018-07-31 10:17:46","texto","1");

INSERT INTO TB_PLANO_ASSINANTE VALUES("2","14.99","2020-01-29 18:49:51","","2");

INSERT INTO TB_PLANO_ASSINANTE VALUES("3","34.90","2020-01-29 18:59:12","","3");

INSERT INTO TB_PLANO_ASSINANTE VALUES("4","59.99","2020-01-29 19:00:40","","4");

INSERT INTO TB_PLANO_ASSINANTE VALUES("5","99.99","2020-01-29 19:01:53","","5");

INSERT INTO TB_PLANO_ASSINANTE VALUES("6","179.99","2020-01-29 19:03:13","","6");




DROP TABLE IF EXISTS TB_PLANO_ASSINANTE_ASSINATURA;


CREATE TABLE `TB_PLANO_ASSINANTE_ASSINATURA` (
  `co_plano_assinante_assinatura` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_expiracao` date DEFAULT NULL COMMENT 'data de expiriração da assinatura',
  `nu_filiais` int(11) DEFAULT 0 COMMENT 'Número de filiais para a assinatura',
  `nu_valor_assinatura` decimal(8,2) DEFAULT NULL COMMENT 'Valor final da assinatura',
  `nu_profissionais` int(3) DEFAULT NULL COMMENT 'Número de profissionais que o sistema ira gerenciar',
  `co_assinante` int(11) NOT NULL,
  `co_plano_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_plano_assinante_assinatura`,`co_assinante`,`co_plano_assinante`),
  KEY `fk_TB_PLANO_ASSINANTE_ASSINATURA_TB_ASSINANTE1_idx` (`co_assinante`),
  KEY `fk_TB_PLANO_ASSINANTE_ASSINATURA_TB_PLANO_ASSINANTE1_idx` (`co_plano_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA VALUES("1","2020-01-29 19:14:25","2020-02-13","0","0.00","3","1","1");




DROP TABLE IF EXISTS TB_PLANO_PACOTE;


CREATE TABLE `TB_PLANO_PACOTE` (
  `co_plano_pacote` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Planos do Módulo',
  `co_plano` int(11) NOT NULL,
  `co_pacote` int(11) NOT NULL,
  PRIMARY KEY (`co_plano_pacote`,`co_plano`,`co_pacote`),
  KEY `fk_TB_PLANO_has_TB_MODULO_TB_MODULO1_idx` (`co_pacote`),
  KEY `fk_TB_PLANO_has_TB_MODULO_TB_PLANO1_idx` (`co_plano`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;


INSERT INTO TB_PLANO_PACOTE VALUES("1","1","1");

INSERT INTO TB_PLANO_PACOTE VALUES("2","1","2");

INSERT INTO TB_PLANO_PACOTE VALUES("3","2","1");

INSERT INTO TB_PLANO_PACOTE VALUES("4","2","2");

INSERT INTO TB_PLANO_PACOTE VALUES("5","3","1");

INSERT INTO TB_PLANO_PACOTE VALUES("6","3","2");

INSERT INTO TB_PLANO_PACOTE VALUES("7","4","1");

INSERT INTO TB_PLANO_PACOTE VALUES("8","4","2");

INSERT INTO TB_PLANO_PACOTE VALUES("9","5","1");

INSERT INTO TB_PLANO_PACOTE VALUES("10","5","2");

INSERT INTO TB_PLANO_PACOTE VALUES("11","6","1");

INSERT INTO TB_PLANO_PACOTE VALUES("12","6","2");




DROP TABLE IF EXISTS TB_PRECO_SERVICO;


CREATE TABLE `TB_PRECO_SERVICO` (
  `co_preco_servico` int(11) NOT NULL AUTO_INCREMENT,
  `nu_valor` decimal(6,2) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_observacao` varchar(120) DEFAULT NULL,
  `co_servico` int(11) NOT NULL,
  `co_usuario` int(10) NOT NULL,
  PRIMARY KEY (`co_preco_servico`,`co_servico`,`co_usuario`),
  KEY `fk_TB_PRECO_SERVICO_TB_SERVICO1_idx` (`co_servico`),
  KEY `fk_TB_PRECO_SERVICO_TB_USUARIO1_idx` (`co_usuario`)
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
  `co_conta_bancaria` int(11) NOT NULL,
  PRIMARY KEY (`co_profissional`,`co_imagem`,`co_pessoa`,`co_usuario`,`co_assinante`,`co_conta_bancaria`),
  KEY `fk_TB_PROFISSIONAL_TB_IMAGEM1_idx` (`co_imagem`),
  KEY `fk_TB_PROFISSIONAL_TB_PESSOA1_idx` (`co_pessoa`),
  KEY `fk_TB_PROFISSIONAL_TB_USUARIO1_idx` (`co_usuario`),
  KEY `fk_TB_PROFISSIONAL_TB_ASSINANTE1_idx` (`co_assinante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





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
  `st_status` varchar(1) DEFAULT NULL COMMENT 'A - Ativo / I - Inativo',
  `st_assistente` varchar(1) DEFAULT NULL COMMENT 'S - Sim / N - Não * Se precisa ter um assitente',
  `no_servico` varchar(100) DEFAULT NULL,
  `nu_duracao` int(3) DEFAULT NULL,
  `ds_descricao` text DEFAULT NULL,
  `co_categoria_servico` int(11) NOT NULL,
  `co_imagem` int(10) NOT NULL,
  PRIMARY KEY (`co_servico`,`co_categoria_servico`,`co_imagem`),
  KEY `fk_TB_SERVICO_TB_IMAGEM1_idx` (`co_imagem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_SESSAO;


CREATE TABLE `TB_SESSAO` (
  `co_sessao` int(11) NOT NULL AUTO_INCREMENT,
  `no_sessao` varchar(80) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_modulo` int(11) NOT NULL,
  PRIMARY KEY (`co_sessao`,`co_modulo`),
  KEY `fk_TB_SESSAO_TB_MODULO1_idx` (`co_modulo`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;


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
  PRIMARY KEY (`co_status_agenda`,`co_cliente`,`co_agenda`,`co_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;


INSERT INTO TB_TRAFEGO VALUES("37","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0");




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
  PRIMARY KEY (`co_usuario`,`co_imagem`,`co_pessoa`,`co_assinante`),
  KEY `fk_TB_USUARIO_TB_IMAGEM1_idx` (`co_imagem`),
  KEY `fk_TB_USUARIO_TB_PESSOA1_idx` (`co_pessoa`),
  KEY `fk_TB_USUARIO_TB_ASSINANTE1_idx` (`co_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


INSERT INTO TB_USUARIO VALUES("1","123456**","TVRJek5EVTJLaW89","A","S","2016-10-31 00:00:00","1","1","0");

INSERT INTO TB_USUARIO VALUES("2","123456**","TVRJek5EVTJLaW89","A","S","2020-01-29 19:14:25","3","4","1");




DROP TABLE IF EXISTS TB_USUARIO_PERFIL;


CREATE TABLE `TB_USUARIO_PERFIL` (
  `co_usuario_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `co_usuario` int(10) NOT NULL,
  `co_perfil` int(11) NOT NULL,
  `co_perfil_assinante` int(10) NOT NULL,
  PRIMARY KEY (`co_usuario_perfil`,`co_usuario`,`co_perfil`,`co_perfil_assinante`),
  KEY `fk_tb_usuario_tb_perfil_tb_perfil1_idx` (`co_perfil`),
  KEY `fk_tb_usuario_tb_perfil_tb_usuario_idx` (`co_usuario`),
  KEY `fk_TB_USUARIO_PERFIL_TB_PERFIL_ASSINANTE1_idx` (`co_perfil_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;


INSERT INTO TB_USUARIO_PERFIL VALUES("1","1","1","0");

INSERT INTO TB_USUARIO_PERFIL VALUES("2","2","2","0");

INSERT INTO TB_USUARIO_PERFIL VALUES("3","0","2","0");

INSERT INTO TB_USUARIO_PERFIL VALUES("4","0","0","2");




DROP TABLE IF EXISTS TB_VISITA;


CREATE TABLE `TB_VISITA` (
  `co_visita` int(11) NOT NULL AUTO_INCREMENT,
  `dt_realizado` datetime DEFAULT NULL,
  `dt_atualizado` datetime DEFAULT NULL,
  `nu_visitas` int(11) DEFAULT NULL,
  `co_trafego` int(11) NOT NULL,
  PRIMARY KEY (`co_visita`,`co_trafego`),
  KEY `fk_TB_VISITA_TB_TRAFEGO1_idx` (`co_trafego`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





