INSERT INTO TB_PERFIL (no_perfil) VALUES ("Gerente");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_perfil, co_funcionalidade) VALUES ("4", "27");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_perfil, co_funcionalidade) VALUES ("4", "26");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_perfil, co_funcionalidade) VALUES ("4", "19");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_perfil, co_funcionalidade) VALUES ("4", "12");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_perfil, co_funcionalidade) VALUES ("4", "11");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_perfil, co_funcionalidade) VALUES ("4", "6");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_perfil, co_funcionalidade) VALUES ("4", "5");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_perfil, co_funcionalidade) VALUES ("4", "4");

UPDATE TB_PERFIL SET no_perfil = "Gerente" where co_perfil = 4;

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_perfil in (4);

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_perfil, co_funcionalidade) VALUES ("4", "27");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_perfil, co_funcionalidade) VALUES ("4", "26");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_perfil, co_funcionalidade) VALUES ("4", "12");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_perfil, co_funcionalidade) VALUES ("4", "11");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_perfil, co_funcionalidade) VALUES ("4", "6");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_perfil, co_funcionalidade) VALUES ("4", "5");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_perfil, co_funcionalidade) VALUES ("4", "4");

INSERT INTO TB_HISTORIA (ds_titulo, ds_observacao, co_sessao, st_situacao, dt_atualizado, dt_cadastro) VALUES ("Trocar Senha", "Confirmar senha antiga e nova e se esqueceu a senha encaminhar no email", "7", "I", "2020-03-04 11:13:55", "2020-03-04 11:13:55");

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("8", "8"_restante, "2020-03-04 11:13:55", "46");

UPDATE TB_USUARIO SET ds_code = "TVRJek5EVTJLaW89", ds_senha = "123456**", st_troca_senha = "S" where co_usuario = 2;

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "", ds_complemento = "", ds_bairro = "", nu_cep = "", no_cidade = "", sg_uf = "" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "", "", "", "lele.403@hotmail.com", "", "", "", "");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("leticia-bessa-5e5fc01e141bd.jpg");

INSERT INTO TB_PESSOA (nu_cpf, no_pessoa, nu_rg, dt_cadastro, dt_nascimento, st_sexo, co_endereco, co_contato) VALUES ("", "LETíCIA BESSA", "", "2020-03-04 11:50:06", "0001-11-30", "", "2", "5");

UPDATE TB_USUARIO SET ds_code = "TVRJek5EVTJLaW89", ds_senha = "123456**", st_status = "A", co_imagem = "14", co_pessoa = "5" where co_usuario = 2;

INSERT INTO TB_USUARIO_PERFIL (co_perfil) VALUES ("3");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "", ds_complemento = "", ds_bairro = "", nu_cep = "", no_cidade = "", sg_uf = "" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "", "", "", "lele.403@hotmail.com", "", "", "", "");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("leticia-bessa-5e5fc04f01566.jpg");

INSERT INTO TB_PESSOA (nu_cpf, no_pessoa, nu_rg, dt_cadastro, dt_nascimento, st_sexo, co_endereco, co_contato) VALUES ("", "LETíCIA BESSA", "", "2020-03-04 11:50:55", "0001-11-30", "", "2", "6");

UPDATE TB_USUARIO SET ds_code = "TVRJek5EVTJLaW89", ds_senha = "123456**", st_status = "I", co_imagem = "15", co_pessoa = "6" where co_usuario = 2;

INSERT INTO TB_USUARIO_PERFIL (co_perfil_assinante) VALUES ("4");

INSERT INTO TB_USUARIO_PERFIL (co_perfil_assinante, co_perfil) VALUES ("4", "3");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "", ds_complemento = "", ds_bairro = "", nu_cep = "", no_cidade = "", sg_uf = "" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "", "", "", "lele.403@hotmail.com", "", "", "", "");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("");

INSERT INTO TB_PESSOA (nu_cpf, no_pessoa, nu_rg, dt_cadastro, dt_nascimento, st_sexo, co_endereco, co_contato) VALUES ("", "LETíCIA BESSA", "", "2020-03-04 11:51:37", "2001-11-01", "", "2", "7");

UPDATE TB_USUARIO SET ds_code = "TVRJek5EVTJLaW89", ds_senha = "123456**", st_status = "I", co_imagem = "16", co_pessoa = "7" where co_usuario = 2;

INSERT INTO TB_USUARIO_PERFIL (co_perfil_assinante) VALUES ("2");

INSERT INTO TB_USUARIO_PERFIL (co_perfil_assinante, co_perfil) VALUES ("2", "3");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "", ds_complemento = "", ds_bairro = "", nu_cep = "", no_cidade = "", sg_uf = "" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "", "", "", "lele.403@hotmail.com", "", "", "", "");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("leticia-bessa-5e5fc088305f3.jpg");

INSERT INTO TB_PESSOA (nu_cpf, no_pessoa, nu_rg, dt_cadastro, dt_nascimento, st_sexo, co_endereco, co_contato) VALUES ("", "LETíCIA BESSA", "", "2020-03-04 11:51:52", "2001-11-01", "", "2", "8");

UPDATE TB_USUARIO SET ds_code = "TVRJek5EVTJLaW89", ds_senha = "123456**", st_status = "A", co_imagem = "17", co_pessoa = "8" where co_usuario = 2;

INSERT INTO TB_USUARIO_PERFIL (co_perfil) VALUES ("3");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "", ds_complemento = "", ds_bairro = "", nu_cep = "", no_cidade = "", sg_uf = "" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "", "", "", "lele.403@hotmail.com", "", "", "", "");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("");

INSERT INTO TB_PESSOA (nu_cpf, no_pessoa, nu_rg, dt_cadastro, dt_nascimento, st_sexo, co_endereco, co_contato) VALUES ("", "LETíCIA BESSA", "", "2020-03-04 11:52:00", "2001-11-01", "", "2", "9");

UPDATE TB_USUARIO SET ds_code = "TVRJek5EVTJLaW89", ds_senha = "123456**", st_status = "A", co_imagem = "18", co_pessoa = "9" where co_usuario = 2;

INSERT INTO TB_USUARIO_PERFIL (co_perfil_assinante) VALUES ("2");

INSERT INTO TB_USUARIO_PERFIL (co_perfil_assinante, co_perfil) VALUES ("2", "3");

UPDATE TB_HISTORIA SET ds_titulo = "Trocar Senha", ds_observacao = "Confirmar senha antiga e nova e se esqueceu a senha encaminhar no email", co_sessao = "7", st_situacao = "C", dt_atualizado = "2020-03-04 11:52:53" where co_historia = 46;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("8", "8"_restante, "2020-03-04 11:52:53", "46");

UPDATE TB_HISTORIA SET ds_titulo = "Manter Usuário", ds_observacao = "Manter Usuário", co_sessao = "7", st_situacao = "I", dt_atualizado = "2020-03-04 11:53:10" where co_historia = 27;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("40", "40"_restante, "2020-03-04 11:53:10", "27");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "", ds_complemento = "", ds_bairro = "", nu_cep = "", no_cidade = "", sg_uf = "" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "", "", "", "lele.403@hotmail.com", "", "", "", "");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("");

INSERT INTO TB_PESSOA (nu_cpf, no_pessoa, nu_rg, dt_cadastro, dt_nascimento, st_sexo, co_endereco, co_contato) VALUES ("", "LETíCIA BESSA", "", "2020-03-04 12:03:13", "2001-11-01", "", "2", "10");

UPDATE TB_USUARIO SET ds_code = "TVRJek5EVTJLaW89", ds_senha = "123456**", st_status = "I", co_imagem = "19", co_pessoa = "10" where co_usuario = 2;

INSERT INTO TB_USUARIO_PERFIL (co_perfil) VALUES ("3");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "", ds_complemento = "", ds_bairro = "", nu_cep = "", no_cidade = "", sg_uf = "" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "", "", "", "lele.403@hotmail.com", "", "", "", "");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("");

INSERT INTO TB_PESSOA (nu_cpf, no_pessoa, nu_rg, dt_cadastro, dt_nascimento, st_sexo, co_endereco, co_contato) VALUES ("", "LETíCIA BESSA", "", "2020-03-04 12:03:22", "2001-11-01", "", "2", "11");

UPDATE TB_USUARIO SET ds_code = "TVRJek5EVTJLaW89", ds_senha = "123456**", st_status = "I", co_imagem = "20", co_pessoa = "11" where co_usuario = 2;

INSERT INTO TB_USUARIO_PERFIL (co_perfil) VALUES ("3");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "", ds_complemento = "", ds_bairro = "", nu_cep = "", no_cidade = "", sg_uf = "" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "", "", "", "lele.403@hotmail.com", "", "", "", "");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("");

INSERT INTO TB_PESSOA (nu_cpf, no_pessoa, nu_rg, dt_cadastro, dt_nascimento, st_sexo, co_endereco, co_contato) VALUES ("", "LETíCIA BESSA", "", "2020-03-04 12:03:52", "2001-11-01", "", "2", "12");

UPDATE TB_USUARIO SET ds_code = "TVRJek5EVTJLaW89", ds_senha = "123456**", st_status = "A", co_imagem = "21", co_pessoa = "12" where co_usuario = 2;

INSERT INTO TB_USUARIO_PERFIL (co_perfil) VALUES ("2");

INSERT INTO TB_USUARIO_PERFIL (co_perfil) VALUES ("3");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "", ds_complemento = "", ds_bairro = "", nu_cep = "", no_cidade = "", sg_uf = "" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "", "", "", "lele.403@hotmail.com", "", "", "", "");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("");

INSERT INTO TB_PESSOA (nu_cpf, no_pessoa, nu_rg, dt_cadastro, dt_nascimento, st_sexo, co_endereco, co_contato) VALUES ("", "LETíCIA BESSA", "", "2020-03-04 12:05:17", "2001-11-01", "", "2", "13");

UPDATE TB_USUARIO SET ds_code = "TVRJek5EVTJLaW89", ds_senha = "123456**", st_status = "I", co_imagem = "22", co_pessoa = "13" where co_usuario = 2;

INSERT INTO TB_USUARIO_PERFIL (co_perfil) VALUES ("3");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "", ds_complemento = "", ds_bairro = "", nu_cep = "", no_cidade = "", sg_uf = "" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "", "", "", "lele.403@hotmail.com", "", "", "", "");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("");

INSERT INTO TB_PESSOA (nu_cpf, no_pessoa, nu_rg, dt_cadastro, dt_nascimento, st_sexo, co_endereco, co_contato) VALUES ("", "LETíCIA BESSA", "", "2020-03-04 12:07:01", "2001-11-01", "", "2", "14");

UPDATE TB_USUARIO SET ds_code = "TVRJek5EVTJLaW89", ds_senha = "123456**", st_status = "I", co_imagem = "23", co_pessoa = "14" where co_usuario = 2;

INSERT INTO TB_USUARIO_PERFIL (co_perfil) VALUES ("3");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "", ds_complemento = "", ds_bairro = "", nu_cep = "", no_cidade = "", sg_uf = "" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "", "", "", "lele.403@hotmail.com", "", "", "", "");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("");

INSERT INTO TB_PESSOA (nu_cpf, no_pessoa, nu_rg, dt_cadastro, dt_nascimento, st_sexo, co_endereco, co_contato) VALUES ("", "LETíCIA BESSA", "", "2020-03-04 12:07:37", "2001-11-01", "", "2", "15");

UPDATE TB_USUARIO SET ds_code = "TVRJek5EVTJLaW89", ds_senha = "123456**", st_status = "A", co_imagem = "24", co_pessoa = "15" where co_usuario = 2;

INSERT INTO TB_USUARIO_PERFIL (co_perfil) VALUES ("2");

INSERT INTO TB_USUARIO_PERFIL (co_perfil) VALUES ("3");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "", ds_complemento = "", ds_bairro = "", nu_cep = "", no_cidade = "", sg_uf = "" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "", "", "", "lele.403@hotmail.com", "", "", "", "");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("");

INSERT INTO TB_PESSOA (nu_cpf, no_pessoa, nu_rg, dt_cadastro, dt_nascimento, st_sexo, co_endereco, co_contato) VALUES ("", "LETíCIA BESSA", "", "2020-03-04 12:07:54", "2001-11-01", "", "2", "16");

UPDATE TB_USUARIO SET ds_code = "TVRJek5EVTJLaW89", ds_senha = "123456**", st_status = "I", co_imagem = "25", co_pessoa = "16" where co_usuario = 2;

INSERT INTO TB_USUARIO_PERFIL (co_perfil) VALUES ("3");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "", ds_complemento = "", ds_bairro = "", nu_cep = "", no_cidade = "", sg_uf = "" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "", "", "", "lele.403@hotmail.com", "", "", "", "");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("");

INSERT INTO TB_PESSOA (nu_cpf, no_pessoa, nu_rg, dt_cadastro, dt_nascimento, st_sexo, co_endereco, co_contato) VALUES ("", "LETíCIA BESSA", "", "2020-03-04 12:09:15", "2001-11-01", "", "2", "17");

UPDATE TB_USUARIO SET ds_code = "TVRJek5EVTJLaW89", ds_senha = "123456**", st_status = "A", co_imagem = "26", co_pessoa = "17" where co_usuario = 2;

INSERT INTO TB_USUARIO_PERFIL (co_perfil) VALUES ("2");

INSERT INTO TB_USUARIO_PERFIL (co_perfil) VALUES ("3");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "", ds_complemento = "", ds_bairro = "", nu_cep = "", no_cidade = "", sg_uf = "" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "", "", "", "lele.403@hotmail.com", "", "", "", "");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("");

INSERT INTO TB_PESSOA (nu_cpf, no_pessoa, nu_rg, dt_cadastro, dt_nascimento, st_sexo, co_endereco, co_contato) VALUES ("", "LETíCIA BESSA", "", "2020-03-04 12:11:20", "2001-11-01", "", "2", "18");

UPDATE TB_USUARIO SET ds_code = "TVRJek5EVTJLaW89", ds_senha = "123456**", st_status = "A", co_imagem = "27", co_pessoa = "18" where co_usuario = 2;

INSERT INTO TB_USUARIO_PERFIL (co_perfil) VALUES ("3");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "61959595956", "", "", "lele.403@hotmail.com", "", "", "", "");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("leticia-bessa-5e5fc55cf2729.jpg");

INSERT INTO TB_PESSOA (nu_cpf, no_pessoa, nu_rg, dt_cadastro, dt_nascimento, st_sexo, co_endereco, co_contato) VALUES ("12345678909", "LETíCIA BESSA", "202020", "2020-03-04 12:12:29", "2001-11-01", "F", "2", "19");

UPDATE TB_USUARIO SET ds_code = "TVRJek5EVTJLaW89", ds_senha = "123456**", st_status = "A", co_imagem = "28", co_pessoa = "19" where co_usuario = 2;

INSERT INTO TB_USUARIO_PERFIL (co_perfil) VALUES ("3");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "61959595956", "", "", "lele.403@hotmail.com", "", "", "", "");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("leticia-bessa-5e5fc6b19d313.jpg");

INSERT INTO TB_PESSOA (nu_cpf, no_pessoa, nu_rg, dt_cadastro, dt_nascimento, st_sexo, co_endereco, co_contato) VALUES ("12345678909", "LETíCIA BESSA", "202020", "2020-03-04 12:18:10", "2001-11-01", "F", "2", "20");

UPDATE TB_USUARIO SET ds_code = "TVRJek5EVTJLaW89", ds_senha = "123456**", st_status = "A", co_imagem = "29", co_pessoa = "20" where co_usuario = 2;

INSERT INTO TB_USUARIO_PERFIL (co_perfil) VALUES ("3");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "61959595956", "", "", "lele.403@hotmail.com", "", "", "", "");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "61959595956", "", "", "lele.403@hotmail.com", "", "", "", "");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "61959595956", "", "", "lele.403@hotmail.com", "", "", "", "");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("leticia-bessa-5e5fc71439d6d.jpg");

INSERT INTO TB_PESSOA (nu_cpf, no_pessoa, nu_rg, dt_cadastro, dt_nascimento, st_sexo, co_endereco, co_contato) VALUES ("12345678909", "LETíCIA BESSA", "202020", "2020-03-04 12:19:48", "2001-11-01", "F", "2", "23");

UPDATE TB_USUARIO SET ds_code = "TVRJek5EVTJLaW89", ds_senha = "123456**", st_status = "A", co_imagem = "30", co_pessoa = "21" where co_usuario = 2;

INSERT INTO TB_USUARIO_PERFIL (co_perfil) VALUES ("3");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "61959595956", "", "", "lele.403@hotmail.com", "", "", "", "");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("leticia-bessa-5e5fc8998696c.jpg");

INSERT INTO TB_PESSOA (nu_cpf, no_pessoa, nu_rg, dt_cadastro, dt_nascimento, st_sexo, co_endereco, co_contato) VALUES ("12345678909", "LETíCIA BESSA", "202020", "2020-03-04 12:26:17", "2001-11-01", "F", "2", "24");

UPDATE TB_USUARIO SET ds_code = "TVRJek5EVTJLaW89", ds_senha = "123456**", st_status = "A", co_imagem = "31", co_pessoa = "22" where co_usuario = 2;

INSERT INTO TB_USUARIO_PERFIL (co_perfil) VALUES ("3");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "61959595956", "", "", "lele.403@hotmail.com", "", "", "", "");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("");

INSERT INTO TB_PESSOA (nu_cpf, no_pessoa, nu_rg, dt_cadastro, dt_nascimento, st_sexo, co_endereco, co_contato) VALUES ("12345678909", "LETíCIA BESSA", "202020", "2020-03-04 12:26:25", "2001-11-01", "F", "2", "25");

UPDATE TB_USUARIO SET ds_code = "TVRJek5EVTJLaW89", ds_senha = "123456**", st_status = "A", co_imagem = "32", co_pessoa = "23" where co_usuario = 2;

INSERT INTO TB_USUARIO_PERFIL (co_perfil) VALUES ("3");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "61959595956", "", "", "lele.403@hotmail.com", "", "", "", "");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "61959595956", "", "", "lele.403@hotmail.com", "", "", "", "");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("leticia-bessa-5e5fc8cc1ae45.jpg");

INSERT INTO TB_PESSOA (nu_cpf, no_pessoa, nu_rg, dt_cadastro, dt_nascimento, st_sexo, co_endereco, co_contato) VALUES ("12345678909", "LETíCIA BESSA", "202020", "2020-03-04 12:27:08", "2001-11-01", "F", "2", "27");

UPDATE TB_USUARIO SET ds_code = "TVRJek5EVTJLaW89", ds_senha = "123456**", st_status = "A", co_imagem = "33", co_pessoa = "24" where co_usuario = 2;

INSERT INTO TB_USUARIO_PERFIL (co_perfil) VALUES ("3");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "61959595956", "", "", "lele.403@hotmail.com", "", "", "", "");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "61959595956", "", "", "lele.403@hotmail.com", "", "", "", "");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("");

INSERT INTO TB_PESSOA (nu_cpf, no_pessoa, nu_rg, dt_cadastro, dt_nascimento, st_sexo, co_endereco, co_contato) VALUES ("12345678909", "LETíCIA BESSA", "202020", "2020-03-04 13:10:52", "2001-11-01", "F", "2", "29");

UPDATE TB_USUARIO SET ds_code = "TVRJek5EVTJLaW89", ds_senha = "123456**", st_status = "A", co_imagem = "34", co_pessoa = "25" where co_usuario = 2;

INSERT INTO TB_USUARIO_PERFIL (co_perfil) VALUES ("3");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "61959595956", "", "", "lele.403@hotmail.com", "", "", "", "");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "61959595956", "", "", "lele.403@hotmail.com", "", "", "", "");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("leticia-bessa-5e5fd3540eadb.jpg");

INSERT INTO TB_PESSOA (nu_cpf, no_pessoa, nu_rg, dt_cadastro, dt_nascimento, st_sexo, co_endereco, co_contato) VALUES ("12345678909", "LETíCIA BESSA", "202020", "2020-03-04 13:12:04", "2001-11-01", "F", "2", "31");

UPDATE TB_USUARIO SET ds_code = "TVRJek5EVTJLaW89", ds_senha = "123456**", st_status = "A", co_imagem = "35", co_pessoa = "26" where co_usuario = 2;

INSERT INTO TB_USUARIO_PERFIL (co_perfil) VALUES ("3");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "61959595956", "", "", "lele.403@hotmail.com", "", "", "", "");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "61959595956", "", "", "lele.403@hotmail.com", "", "", "", "");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "61959595956", "", "", "lele.403@hotmail.com", "", "", "", "");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "61959595956", "", "", "lele.403@hotmail.com", "", "", "", "");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "61959595956", "", "", "lele.403@hotmail.com", "", "", "", "");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "61959595956", "", "", "lele.403@hotmail.com", "", "", "", "");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "61959595956", "", "", "lele.403@hotmail.com", "", "", "", "");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "61959595956", "", "", "lele.403@hotmail.com", "", "", "", "");

INSERT INTO TB_PESSOA (nu_cpf, no_pessoa, nu_rg, dt_cadastro, dt_nascimento, st_sexo, co_endereco, co_contato) VALUES ("12345678909", "LETíCIA BESSA", "202020", "2020-03-04 13:15:07", "2001-11-01", "F", "2", "39");

UPDATE TB_USUARIO SET ds_code = "TVRJek5EVTJLaW89", ds_senha = "123456**", st_status = "A", co_pessoa = "27" where co_usuario = 2;

INSERT INTO TB_USUARIO_PERFIL (co_perfil) VALUES ("3");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "61959595956", "", "", "lele.403@hotmail.com", "", "", "", "");

INSERT INTO TB_PESSOA (nu_cpf, no_pessoa, nu_rg, dt_cadastro, dt_nascimento, st_sexo, co_endereco, co_contato) VALUES ("12345678909", "LETíCIA BESSA", "202020", "2020-03-04 13:15:14", "2001-11-01", "F", "2", "40");

UPDATE TB_USUARIO SET ds_code = "TVRJek5EVTJLaW89", ds_senha = "123456**", st_status = "A", co_pessoa = "28" where co_usuario = 2;

INSERT INTO TB_USUARIO_PERFIL (co_perfil) VALUES ("3");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "61959595956", "", "", "lele.403@hotmail.com", "", "", "", "");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("leticia-bessa-5e5fd41a8f5b4.jpg");

INSERT INTO TB_PESSOA (nu_cpf, no_pessoa, nu_rg, dt_cadastro, dt_nascimento, st_sexo, co_endereco, co_contato) VALUES ("12345678909", "LETíCIA BESSA", "202020", "2020-03-04 13:15:22", "2001-11-01", "F", "2", "41");

UPDATE TB_USUARIO SET ds_code = "TVRJek5EVTJLaW89", ds_senha = "123456**", st_status = "A", co_imagem = "41", co_pessoa = "29" where co_usuario = 2;

INSERT INTO TB_USUARIO_PERFIL (co_perfil) VALUES ("3");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "61959595956", "", "", "lele.403@hotmail.com", "", "", "", "");

INSERT INTO TB_PESSOA (nu_cpf, no_pessoa, nu_rg, dt_cadastro, dt_nascimento, st_sexo, co_endereco, co_contato) VALUES ("12345678909", "LETíCIA BESSA", "202020", "2020-03-04 13:15:30", "2001-11-01", "F", "2", "42");

UPDATE TB_USUARIO SET ds_code = "TVRJek5EVTJLaW89", ds_senha = "123456**", st_status = "A", co_pessoa = "30" where co_usuario = 2;

INSERT INTO TB_USUARIO_PERFIL (co_perfil) VALUES ("3");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "61959595956", "", "", "lele.403@hotmail.com", "", "", "", "");

INSERT INTO TB_PESSOA (nu_cpf, no_pessoa, nu_rg, dt_cadastro, dt_nascimento, st_sexo, co_endereco, co_contato) VALUES ("12345678909", "LETíCIA BESSA", "202020", "2020-03-04 13:15:36", "2001-11-01", "F", "2", "43");

UPDATE TB_USUARIO SET ds_code = "TVRJek5EVTJLaW89", ds_senha = "123456**", st_status = "A", co_pessoa = "31" where co_usuario = 2;

INSERT INTO TB_USUARIO_PERFIL (co_perfil) VALUES ("3");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "61959595956", "", "", "lele.403@hotmail.com", "", "", "", "");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("leticia-bessa-5e5fd4306d354.jpg");

INSERT INTO TB_PESSOA (nu_cpf, no_pessoa, nu_rg, dt_cadastro, dt_nascimento, st_sexo, co_endereco, co_contato) VALUES ("12345678909", "LETíCIA BESSA", "202020", "2020-03-04 13:15:44", "2001-11-01", "F", "2", "44");

UPDATE TB_USUARIO SET ds_code = "TVRJek5EVTJLaW89", ds_senha = "123456**", st_status = "A", co_imagem = "42", co_pessoa = "32" where co_usuario = 2;

INSERT INTO TB_USUARIO_PERFIL (co_perfil) VALUES ("3");

UPDATE TB_ENDERECO SET co_endereco = "2", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 2;

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61993939393", "61959595956", "", "", "lele.403@hotmail.com", "", "", "", "");

INSERT INTO TB_PESSOA (nu_cpf, no_pessoa, nu_rg, dt_cadastro, dt_nascimento, st_sexo, co_endereco, co_contato) VALUES ("12345678909", "LETíCIA BESSA", "202020", "2020-03-04 13:15:58", "2001-11-01", "F", "2", "45");

UPDATE TB_USUARIO SET ds_code = "TVRJek5EVTJLaW89", ds_senha = "123456**", st_status = "A", co_pessoa = "33" where co_usuario = 2;

INSERT INTO TB_USUARIO_PERFIL (co_perfil) VALUES ("3");

