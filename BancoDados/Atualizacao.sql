INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, co_cliente, co_profissional, co_servico, co_usuario, dt_cadastro, st_status, ds_observacao) VALUES ("3", "2020-03-27 08:00:00", "2020-03-27 18:00:00", "0.00", "0", "2", "2", "1", "1", "2020-04-02 00:00:01", "5", "Mudou para o Status (Cancelado) automaticamente pelo Sistema");

UPDATE TB_PESSOA SET no_pessoa = "LEO BESSA", dt_nascimento = "" where co_pessoa = 6;

UPDATE TB_EMPRESA SET no_empresa = "BARBEARIA NOVA BARBA RAZãO SOCIAL", no_fantasia = "BARBEARIA NOVA BARBA", nu_cnpj = "", nu_insc_estadual = "", ds_observacao = "nova descrição" where co_empresa = 5;

UPDATE TB_ENDERECO SET ds_endereco = "QR 403 Conjunto 10", ds_complemento = "103", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 4;

UPDATE TB_EMPRESA SET co_endereco = "4" where co_empresa = 5;

UPDATE TB_CONTATO SET nu_tel1 = "7855522225", nu_tel2 = "11999999999", nu_tel3 = "", nu_tel_0800 = "", ds_email = "leonardo.bessa@basis.com.br", ds_site = "", ds_facebook = "", ds_twitter = "", ds_instagram = "" where co_contato = 6;

UPDATE TB_IMAGEM SET ds_caminho = "fp-barbearia-nova-barba-5-5e868bd43b6dd.jpg" where co_imagem = 2;

UPDATE TB_IMAGEM_ASSINANTE SET co_assinante = "5", co_imagem = "1" where co_imagem_assinante = 2;

UPDATE TB_ASSINANTE SET st_dados_complementares = "S" where co_assinante = 5;

UPDATE TB_ENDERECO SET co_endereco = "7", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "103", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 7;

UPDATE TB_CONTATO SET co_contato = "8", nu_tel1 = "61995595599", nu_tel2 = "", nu_tel3 = "", nu_tel_0800 = "", ds_email = "frabriceras15@gmail.com", ds_site = "", ds_facebook = "", ds_twitter = "", ds_instagram = "" where co_contato = 8;

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("joao-victor-pereira-fernandes-5e868e182c29d.jpg");

UPDATE TB_PESSOA SET co_pessoa = "12", nu_cpf = "07970134157", no_pessoa = "JOãO VICTOR PEREIRA FERNANDES", nu_rg = "3947853", dt_nascimento = "1981-03-05", st_sexo = "M", co_contato = "8", co_endereco = "7" where co_pessoa = 12;

UPDATE TB_USUARIO SET ds_code = "TVRJek5EVTJOemdxS2c9PQ==", ds_senha = "12345678**", st_status = "A", co_imagem = "7", co_pessoa = "12", co_assinante = "5" where co_usuario = 8;

INSERT INTO TB_USUARIO_PERFIL (co_perfil) VALUES ("4");

INSERT INTO TB_USUARIO_PERFIL (co_perfil) VALUES ("3");

INSERT INTO TB_ENDERECO (ds_endereco) VALUES ("");

UPDATE TB_EMPRESA SET co_endereco = "8" where co_empresa = 3;

UPDATE TB_HISTORICO_SUPORTE SET st_lido = "S" where co_historico_suporte = 1;

UPDATE TB_HISTORICO_SUPORTE SET st_lido = "S" where co_historico_suporte = 1;

INSERT INTO TB_HISTORICO_SUPORTE (co_suporte, dt_cadastro, ds_mensagem, st_lido, co_usuario) VALUES ("2", "2020-04-02 22:49:52", "fe wqweg rg agrgrg reg", "N", "1");

UPDATE TB_HISTORICO_SUPORTE SET st_lido = "S" where co_historico_suporte = 1;

UPDATE TB_HISTORICO_SUPORTE SET st_lido = "S" where co_historico_suporte = 4;

UPDATE TB_HISTORICO_SUPORTE SET st_lido = "S" where co_historico_suporte = 4;

UPDATE TB_HISTORICO_SUPORTE SET st_lido = "S" where co_historico_suporte = 4;

UPDATE TB_HISTORICO_SUPORTE SET st_lido = "S" where co_historico_suporte = 4;

UPDATE TB_HISTORICO_SUPORTE SET st_lido = "S" where co_historico_suporte = 4;

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("suporte-2-5e86971784b83.jpg");

INSERT INTO TB_HISTORICO_SUPORTE (co_suporte, dt_cadastro, ds_mensagem, st_lido, co_usuario, co_imagem) VALUES ("2", "2020-04-02 22:53:27", "nh th trh trh", "N", "6", "8");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("suporte-2-5e8699a3de762.jpg");

INSERT INTO TB_HISTORICO_SUPORTE (co_suporte, dt_cadastro, ds_mensagem, st_lido, co_usuario, co_imagem) VALUES ("2", "2020-04-02 23:04:19", "sdhfhfh5h54 h56h 5h", "N", "6", "9");

UPDATE TB_HISTORICO_SUPORTE SET st_lido = "S" where co_historico_suporte = 6;

UPDATE TB_HISTORICO_SUPORTE SET st_lido = "S" where co_historico_suporte = 6;

UPDATE TB_HISTORICO_SUPORTE SET st_lido = "S" where co_historico_suporte = 6;

UPDATE TB_HISTORICO_SUPORTE SET st_lido = "S" where co_historico_suporte = 6;

UPDATE TB_HISTORICO_SUPORTE SET st_lido = "S" where co_historico_suporte = 6;

UPDATE TB_HISTORICO_SUPORTE SET st_lido = "S" where co_historico_suporte = 6;

UPDATE TB_HISTORICO_SUPORTE SET st_lido = "S" where co_historico_suporte = 6;

UPDATE TB_HISTORICO_SUPORTE SET st_lido = "S" where co_historico_suporte = 6;

UPDATE TB_HISTORICO_SUPORTE SET st_lido = "S" where co_historico_suporte = 6;

UPDATE TB_HISTORICO_SUPORTE SET st_lido = "S" where co_historico_suporte = 6;

UPDATE TB_HISTORICO_SUPORTE SET st_lido = "S" where co_historico_suporte = 6;

UPDATE TB_HISTORICO_SUPORTE SET st_lido = "S" where co_historico_suporte = 6;

UPDATE TB_HISTORICO_SUPORTE SET st_lido = "S" where co_historico_suporte = 6;

UPDATE TB_HISTORICO_SUPORTE SET st_lido = "S" where co_historico_suporte = 6;

UPDATE TB_HISTORICO_SUPORTE SET st_lido = "S" where co_historico_suporte = 6;

UPDATE TB_HISTORICO_SUPORTE SET st_lido = "S" where co_historico_suporte = 6;

INSERT INTO TB_HISTORICO_SUPORTE (co_suporte, dt_cadastro, ds_mensagem, st_lido, co_usuario) VALUES ("2", "2020-04-04 11:01:57", "Ese esta sem imagens", "N", "1");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("suporte-2-5e88937015c50.jpg");

INSERT INTO TB_HISTORICO_SUPORTE (co_suporte, dt_cadastro, ds_mensagem, st_lido, co_usuario, co_imagem) VALUES ("2", "2020-04-04 11:02:24", "Guarda roupas fechado", "N", "1", "10");

INSERT INTO TB_HISTORIA (ds_titulo, ds_observacao, co_sessao, st_situacao, dt_atualizado, dt_cadastro) VALUES ("Adaptação da estrutura do site", "Adaptação da estrutura do site", "9", "I", "2020-04-04 11:06:57", "2020-04-04 11:06:57");

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("20", "20"_restante, "2020-04-04 11:06:57", "65");

