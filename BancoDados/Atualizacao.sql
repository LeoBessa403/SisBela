INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("32", "4");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("32", "3");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("32", "2");

INSERT INTO TB_SUPORTE (dt_cadastro, ds_assunto, st_tipo_assunto, co_assinante) VALUES ("2020-03-16 10:39:16", "Novo assunto", "1", "2");

INSERT INTO TB_HISTORICO_SUPORTE (co_suporte, dt_cadastro, ds_mensagem, st_lido, co_usuario) VALUES ("1", "2020-03-16 10:39:17", "bem essa mensagem e so pra testar mesmo ok", "N", "6");

INSERT INTO TB_SUPORTE (dt_cadastro, ds_assunto, st_tipo_assunto, co_assinante) VALUES ("2020-03-16 10:41:07", "Novo assunto 22", "2", "2");

INSERT INTO TB_HISTORICO_SUPORTE (co_suporte, dt_cadastro, ds_mensagem, st_lido, co_usuario) VALUES ("2", "2020-03-16 10:41:07", "d wetrtret er wyg reyht try rty", "N", "6");

INSERT INTO TB_SUPORTE (dt_cadastro, ds_assunto, st_tipo_assunto, co_assinante) VALUES ("2020-03-16 10:41:41", "Novo assunto 22", "2", "2");

INSERT INTO TB_HISTORICO_SUPORTE (co_suporte, dt_cadastro, ds_mensagem, st_lido, co_usuario) VALUES ("3", "2020-03-16 10:41:41", "jtyjty jtyjtyh e454h54 h54 h5", "N", "6");

INSERT INTO TB_SUPORTE (dt_cadastro, ds_assunto, st_tipo_assunto, co_assinante) VALUES ("2020-03-16 10:42:39", "Novo assunto 22", "2", "2");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("suporte-4-5e6f824f9975b.jpg");

INSERT INTO TB_HISTORICO_SUPORTE (co_suporte, dt_cadastro, ds_mensagem, st_lido, co_usuario, co_imagem) VALUES ("4", "2020-03-16 10:42:39", "j ytj ytjeyj6 5uj", "N", "6", "48");

INSERT INTO TB_SUPORTE (dt_cadastro, ds_assunto, st_tipo_assunto, co_assinante) VALUES ("2020-03-16 10:43:29", "Novo assunto 22", "2", "2");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("suporte-5-5e6f828184c64.jpg");

INSERT INTO TB_HISTORICO_SUPORTE (co_suporte, dt_cadastro, ds_mensagem, st_lido, co_usuario, co_imagem) VALUES ("5", "2020-03-16 10:43:29", "f ew ew few fe wfe fw", "N", "6", "49");

INSERT INTO TB_SUPORTE (dt_cadastro, ds_assunto, st_tipo_assunto, co_assinante) VALUES ("2020-03-16 10:44:23", "Novo assunto 2663", "3", "2");

INSERT INTO TB_HISTORICO_SUPORTE (co_suporte, dt_cadastro, ds_mensagem, st_lido, co_usuario) VALUES ("6", "2020-03-16 10:44:23", "H RTH TRH AERHER", "N", "6");

UPDATE TB_ENDERECO SET co_endereco = "11", ds_endereco = "", ds_complemento = "", ds_bairro = "", nu_cep = "", no_cidade = "", sg_uf = "" where co_endereco = 11;

UPDATE TB_CONTATO SET co_contato = "53", nu_tel1 = "61993939393", nu_tel2 = "", nu_tel3 = "", nu_tel_0800 = "", ds_email = "lele.403@hotmail.com", ds_site = "", ds_facebook = "", ds_twitter = "", ds_instagram = "" where co_contato = 53;

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("leticia-bessa-5e6f885b0acb5.jpg");

UPDATE TB_PESSOA SET co_pessoa = "41", nu_cpf = "", no_pessoa = "LETICIA BESSA", nu_rg = "", dt_nascimento = "", st_sexo = "", co_contato = "53", co_endereco = "11" where co_pessoa = 41;

UPDATE TB_USUARIO SET ds_code = "TVRJek5EVTJLaW89", ds_senha = "123456**", st_status = "A", co_imagem = "50", co_pessoa = "41", co_assinante = "2" where co_usuario = 6;

INSERT INTO TB_USUARIO_PERFIL (co_perfil) VALUES ("3");

INSERT INTO TB_SUPORTE (dt_cadastro, ds_assunto, st_tipo_assunto, co_assinante) VALUES ("2020-03-16 11:29:01", "Novo assunto 22", "3", "3");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("suporte-7-5e6f8d2d9c786.jpg");

INSERT INTO TB_HISTORICO_SUPORTE (co_suporte, dt_cadastro, ds_mensagem, st_lido, co_usuario, co_imagem) VALUES ("7", "2020-03-16 11:29:01", "tr ghtrhtrh", "N", "7", "51");

INSERT INTO TB_SUPORTE (dt_cadastro, ds_assunto, st_tipo_assunto, co_assinante) VALUES ("2020-03-16 11:40:05", "Novo assunto que não esta funcionando corretamente", "2", "2");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("suporte-8-5e6f8fc539796.jpg");

INSERT INTO TB_HISTORICO_SUPORTE (co_suporte, dt_cadastro, ds_mensagem, st_lido, co_usuario, co_imagem) VALUES ("8", "2020-03-16 11:40:05", "tghrt ht rhtr htrhtr e ssa e uma nova mensagem de teste so pra ver se esta tudo ok pra apresentação da mensagem", "N", "6", "52");

