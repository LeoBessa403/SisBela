UPDATE TB_HISTORICO_SUPORTE SET st_lido = "S" where co_historico_suporte = 13;

UPDATE TB_PLANO SET no_plano = "Trienal", nu_mes_ativo = "36", st_status = "I" where co_plano = 7;

DELETE FROM TB_PLANO_PACOTE where co_plano in (7);

INSERT INTO TB_PLANO_PACOTE (co_plano, co_pacote) VALUES ("7", "2");

INSERT INTO TB_PLANO_PACOTE (co_plano, co_pacote) VALUES ("7", "1");

INSERT INTO TB_PLANO_ASSINANTE (ds_observacao, nu_valor, dt_cadastro, co_plano) VALUES ("Por 36 Meses", "599.90", "2021-06-14 16:13:21", "7");

UPDATE TB_PLANO SET no_plano = "Bienal", nu_mes_ativo = "24", st_status = "I" where co_plano = 6;

DELETE FROM TB_PLANO_PACOTE where co_plano in (6);

INSERT INTO TB_PLANO_PACOTE (co_plano, co_pacote) VALUES ("6", "2");

INSERT INTO TB_PLANO_PACOTE (co_plano, co_pacote) VALUES ("6", "1");

INSERT INTO TB_PLANO_ASSINANTE (ds_observacao, nu_valor, dt_cadastro, co_plano) VALUES ("Por 24 Meses", "449.90", "2021-06-14 16:16:19", "6");

UPDATE TB_PLANO SET no_plano = "Trimestral", nu_mes_ativo = "3", st_status = "I" where co_plano = 3;

DELETE FROM TB_PLANO_PACOTE where co_plano in (3);

INSERT INTO TB_PLANO_PACOTE (co_plano, co_pacote) VALUES ("3", "2");

INSERT INTO TB_PLANO_PACOTE (co_plano, co_pacote) VALUES ("3", "1");

INSERT INTO TB_PLANO_ASSINANTE (ds_observacao, nu_valor, dt_cadastro, co_plano) VALUES ("Por 3 meses", "79.90", "2021-06-14 16:16:31", "3");

UPDATE TB_PLANO SET no_plano = "Anual", nu_mes_ativo = "12", st_status = "A" where co_plano = 5;

DELETE FROM TB_PLANO_PACOTE where co_plano in (5);

INSERT INTO TB_PLANO_PACOTE (co_plano, co_pacote) VALUES ("5", "2");

INSERT INTO TB_PLANO_PACOTE (co_plano, co_pacote) VALUES ("5", "1");

INSERT INTO TB_PLANO_ASSINANTE (ds_observacao, nu_valor, dt_cadastro, co_plano) VALUES ("Por 12 Meses", "187.00", "2021-06-14 16:16:47", "5");

UPDATE TB_PLANO SET no_plano = "Semestral", nu_mes_ativo = "6", st_status = "A" where co_plano = 4;

DELETE FROM TB_PLANO_PACOTE where co_plano in (4);

INSERT INTO TB_PLANO_PACOTE (co_plano, co_pacote) VALUES ("4", "2");

INSERT INTO TB_PLANO_PACOTE (co_plano, co_pacote) VALUES ("4", "1");

INSERT INTO TB_PLANO_ASSINANTE (ds_observacao, nu_valor, dt_cadastro, co_plano) VALUES ("Por 6 Meses", "97.00", "2021-06-14 16:16:58", "4");

UPDATE TB_PLANO SET no_plano = "Mensal", nu_mes_ativo = "1", st_status = "A" where co_plano = 2;

DELETE FROM TB_PLANO_PACOTE where co_plano in (2);

INSERT INTO TB_PLANO_PACOTE (co_plano, co_pacote) VALUES ("2", "2");

INSERT INTO TB_PLANO_PACOTE (co_plano, co_pacote) VALUES ("2", "1");

INSERT INTO TB_PLANO_ASSINANTE (ds_observacao, nu_valor, dt_cadastro, co_plano) VALUES ("Por 1 meses", "17.00", "2021-06-14 16:17:09", "2");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "34324324555");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "18", "2021-06-14 16:40:44");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 16:40:44");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "34324324555");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "19", "2021-06-14 16:59:37");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 16:59:37");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "57", "15", "2021-06-14 16:59:37", "2022-06-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("14", "57", "WIT9MZJ4", "VjBsVU9VMWFTalE9", "I", "2021-06-14 16:59:37");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "56765899888");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "20", "2021-06-14 17:00:10");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:00:10");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "58", "16", "2021-06-14 17:00:10", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("15", "58", "PKV0JAY6", "VUV0V01FcEJXVFk9", "I", "2021-06-14 17:00:10");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "56765899888");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "21", "2021-06-14 17:00:42");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:00:42");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "59", "17", "2021-06-14 17:00:42", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("16", "59", "AMF0AZI5", "UVUxR01FRmFTVFU9", "I", "2021-06-14 17:00:42");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "53253252666");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "22", "2021-06-14 17:01:47");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:01:47");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "60", "18", "2021-06-14 17:01:47", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("17", "60", "DLM8ZBZ4", "UkV4Tk9GcENXalE9", "I", "2021-06-14 17:01:47");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "53253252666");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "23", "2021-06-14 17:02:01");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:02:01");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "61", "19", "2021-06-14 17:02:01", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("18", "61", "VTT2JOH8", "VmxSVU1rcFBTRGc9", "I", "2021-06-14 17:02:01");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "53253252666");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "24", "2021-06-14 17:05:04");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:05:04");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "62", "20", "2021-06-14 17:05:04", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("19", "62", "WEZ7TBR8", "VjBWYU4xUkNVamc9", "I", "2021-06-14 17:05:04");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "53253252666");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "25", "2021-06-14 17:06:21");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:06:21");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "63", "21", "2021-06-14 17:06:21", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("20", "63", "ZIW3NYP2", "V2tsWE0wNVpVREk9", "I", "2021-06-14 17:06:21");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "53253252666");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "26", "2021-06-14 17:06:52");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:06:52");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "64", "22", "2021-06-14 17:06:52", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("21", "64", "SCD0SFT3", "VTBORU1GTkdWRE09", "I", "2021-06-14 17:06:52");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "53253252666");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "27", "2021-06-14 17:08:10");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:08:10");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "65", "23", "2021-06-14 17:08:10", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("22", "65", "LLT9EIX7", "VEV4VU9VVkpXRGM9", "I", "2021-06-14 17:08:10");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "53253252666");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "28", "2021-06-14 17:08:56");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:08:56");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "66", "24", "2021-06-14 17:08:56", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("23", "66", "SHY1WRA3", "VTBoWk1WZFNRVE09", "I", "2021-06-14 17:08:56");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "53253252666");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "29", "2021-06-14 17:09:03");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:09:03");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "67", "25", "2021-06-14 17:09:03", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("24", "67", "WMN9UWE1", "VjAxT09WVlhSVEU9", "I", "2021-06-14 17:09:03");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "53253252666");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "30", "2021-06-14 17:09:13");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:09:13");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "68", "26", "2021-06-14 17:09:13", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("25", "68", "ONF7JCY8", "VDA1R04wcERXVGc9", "I", "2021-06-14 17:09:13");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "53253252666");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "31", "2021-06-14 17:09:20");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:09:20");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "69", "27", "2021-06-14 17:09:20", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("26", "69", "CNQ9QKY4", "UTA1Uk9WRkxXVFE9", "I", "2021-06-14 17:09:20");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "53253252666");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "32", "2021-06-14 17:09:26");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:09:26");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "70", "28", "2021-06-14 17:09:26", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("27", "70", "PQC6QXA1", "VUZGRE5sRllRVEU9", "I", "2021-06-14 17:09:26");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "53253252666");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "33", "2021-06-14 17:09:33");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:09:33");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "71", "29", "2021-06-14 17:09:33", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("28", "71", "JWL8OMK1", "U2xkTU9FOU5TekU9", "I", "2021-06-14 17:09:33");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "53253252666");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "34", "2021-06-14 17:10:28");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:10:28");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "72", "30", "2021-06-14 17:10:28", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("29", "72", "MIS9XOT4", "VFVsVE9WaFBWRFE9", "I", "2021-06-14 17:10:28");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "53253252666");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "35", "2021-06-14 17:10:50");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:10:50");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "73", "31", "2021-06-14 17:10:50", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("30", "73", "ABI5JNY0", "UVVKSk5VcE9XVEE9", "I", "2021-06-14 17:10:50");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "53253252666");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "36", "2021-06-14 17:36:09");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:36:09");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "74", "32", "2021-06-14 17:36:09", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("31", "74", "AML3WVA9", "UVUxTU0xZFdRVGs9", "I", "2021-06-14 17:36:09");

INSERT INTO sisbela.TB_USUARIO_PERFIL (co_perfil, co_usuario) VALUES ("2", "35");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "34554554547");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "37", "2021-06-14 17:36:43");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:36:43");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "75", "33", "2021-06-14 17:36:43", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("32", "75", "OEF6DPE6", "VDBWR05rUlFSVFk9", "I", "2021-06-14 17:36:43");

INSERT INTO sisbela.TB_USUARIO_PERFIL (co_perfil, co_usuario) VALUES ("2", "36");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "54656656566");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "38", "2021-06-14 17:38:58");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:38:58");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "76", "34", "2021-06-14 17:38:58", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("33", "76", "WJN7MOW3", "VjBwT04wMVBWek09", "I", "2021-06-14 17:38:58");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "54656656566");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "39", "2021-06-14 17:39:10");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:39:10");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "77", "35", "2021-06-14 17:39:10", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("34", "77", "NIM5HQD8", "VGtsTk5VaFJSRGc9", "I", "2021-06-14 17:39:10");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "54656656566");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "40", "2021-06-14 17:39:20");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:39:20");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "78", "36", "2021-06-14 17:39:20", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("35", "78", "DRJ7KUK2", "UkZKS04wdFZTekk9", "I", "2021-06-14 17:39:20");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "54656656566");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "41", "2021-06-14 17:40:06");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:40:06");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "79", "37", "2021-06-14 17:40:06", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("36", "79", "INI8RGZ8", "U1U1Sk9GSkhXamc9", "I", "2021-06-14 17:40:06");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "54656656566");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "42", "2021-06-14 17:40:27");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:40:27");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "80", "38", "2021-06-14 17:40:27", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("37", "80", "IRO2QMO3", "U1ZKUE1sRk5Uek09", "I", "2021-06-14 17:40:27");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "54656656566");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "43", "2021-06-14 17:42:24");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:42:24");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "81", "39", "2021-06-14 17:42:24", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("38", "81", "TDX8KES1", "VkVSWU9FdEZVekU9", "I", "2021-06-14 17:42:24");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "54656656566");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "44", "2021-06-14 17:42:47");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:42:47");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "82", "40", "2021-06-14 17:42:47", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("39", "82", "MXQ5FWW6", "VFZoUk5VWlhWelk9", "I", "2021-06-14 17:42:47");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "54656656566");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "45", "2021-06-14 17:43:00");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:43:00");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "83", "41", "2021-06-14 17:43:00", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("40", "83", "KZW4VYE3", "UzFwWE5GWlpSVE09", "I", "2021-06-14 17:43:00");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "54656656566");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "46", "2021-06-14 17:43:25");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:43:25");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "84", "42", "2021-06-14 17:43:25", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("41", "84", "TST4YKP2", "VkZOVU5GbExVREk9", "I", "2021-06-14 17:43:25");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "54656656566");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "47", "2021-06-14 17:44:26");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:44:26");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "85", "43", "2021-06-14 17:44:26", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("42", "85", "TKK1AOD3", "VkV0TE1VRlBSRE09", "I", "2021-06-14 17:44:26");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "54656656566");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "48", "2021-06-14 17:45:41");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:45:41");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "86", "44", "2021-06-14 17:45:41", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("43", "86", "BAX1IMM1", "UWtGWU1VbE5UVEU9", "I", "2021-06-14 17:45:41");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "54656656566");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "49", "2021-06-14 17:46:03");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:46:03");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "87", "45", "2021-06-14 17:46:03", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("44", "87", "AYM4OJO1", "UVZsTk5FOUtUekU9", "I", "2021-06-14 17:46:03");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "54656656566");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "50", "2021-06-14 17:48:02");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:48:02");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "88", "46", "2021-06-14 17:48:02", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("45", "88", "DYS2MQV7", "UkZsVE1rMVJWamM9", "I", "2021-06-14 17:48:02");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "54656656566");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "51", "2021-06-14 17:49:11");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:49:11");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "89", "47", "2021-06-14 17:49:11", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("46", "89", "WNY7QXB1", "VjA1Wk4xRllRakU9", "I", "2021-06-14 17:49:11");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "54656656566");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "52", "2021-06-14 17:49:37");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:49:37");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "90", "48", "2021-06-14 17:49:37", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("47", "90", "ZFA9RBV6", "V2taQk9WSkNWalk9", "I", "2021-06-14 17:49:37");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_filiais, nu_valor_assinatura, tp_pagamento, dt_cadastro, dt_expiracao) VALUES ("12", "47", "0", "97.00", "5", "2021-06-14 17:49:37", "2021-12-14");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "54656656566");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "53", "2021-06-14 17:50:06");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:50:06");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "91", "49", "2021-06-14 17:50:06", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("48", "91", "WNA6WVY6", "VjA1Qk5sZFdXVFk9", "I", "2021-06-14 17:50:06");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_filiais, nu_valor_assinatura, tp_pagamento, dt_cadastro, dt_expiracao) VALUES ("12", "48", "0", "97.00", "5", "2021-06-14 17:50:06", "2021-12-14");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "54656656566");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "54", "2021-06-14 17:50:51");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:50:51");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "92", "50", "2021-06-14 17:50:51", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("49", "92", "AIO5NEE8", "UVVsUE5VNUZSVGc9", "I", "2021-06-14 17:50:51");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_filiais, nu_valor_assinatura, tp_pagamento, dt_cadastro, dt_expiracao) VALUES ("12", "49", "0", "97.00", "5", "2021-06-14 17:50:51", "2021-12-14");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "54656656566");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "55", "2021-06-14 17:52:13");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:52:13");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "93", "51", "2021-06-14 17:52:13", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("50", "93", "HAE0VLN3", "U0VGRk1GWk1Uak09", "I", "2021-06-14 17:52:13");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_filiais, nu_valor_assinatura, tp_pagamento, dt_cadastro, dt_expiracao) VALUES ("12", "50", "0", "97.00", "5", "2021-06-14 17:52:13", "2021-12-14");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "54656656566");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "56", "2021-06-14 17:53:35");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:53:35");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "94", "52", "2021-06-14 17:53:35", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("51", "94", "DAT6XNQ0", "UkVGVU5saE9VVEE9", "I", "2021-06-14 17:53:35");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_filiais, nu_valor_assinatura, tp_pagamento, dt_cadastro, dt_expiracao) VALUES ("12", "51", "0", "97.00", "5", "2021-06-14 17:53:35", "2021-12-14");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("28", "2021-06-14 17:53:35", "Inicia o pagamento", "Leo Bessa Iniciou o pagamento", "0");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "54656656566");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "57", "2021-06-14 17:54:29");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:54:29");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "95", "53", "2021-06-14 17:54:29", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("52", "95", "DNF7QJL1", "UkU1R04xRktUREU9", "I", "2021-06-14 17:54:29");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_filiais, nu_valor_assinatura, tp_pagamento, dt_cadastro, dt_expiracao) VALUES ("12", "52", "0", "97.00", "5", "2021-06-14 17:54:29", "2021-12-14");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("29", "2021-06-14 17:54:29", "Inicia o pagamento", "Leo Bessa Iniciou o pagamento", "0");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "54656656566");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "58", "2021-06-14 17:55:45");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:55:45");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "96", "54", "2021-06-14 17:55:45", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("53", "96", "BQG5ZUN7", "UWxGSE5WcFZUamM9", "I", "2021-06-14 17:55:45");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_filiais, nu_valor_assinatura, tp_pagamento, dt_cadastro, dt_expiracao) VALUES ("12", "53", "0", "97.00", "5", "2021-06-14 17:55:45", "2021-12-14");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("30", "2021-06-14 17:55:45", "Inicia o pagamento", "Leo Bessa Iniciou o pagamento", "0");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "54656656566");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "59", "2021-06-14 17:58:38");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:58:38");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "97", "55", "2021-06-14 17:58:38", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("54", "97", "MAS4JBY7", "VFVGVE5FcENXVGM9", "I", "2021-06-14 17:58:38");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_filiais, nu_valor_assinatura, tp_pagamento, dt_cadastro, dt_expiracao) VALUES ("12", "54", "0", "97.00", "5", "2021-06-14 17:58:38", "2021-12-14");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("31", "2021-06-14 17:58:38", "Inicia o pagamento", "Leo Bessa Iniciou o pagamento", "0");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "54656656566");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "60", "2021-06-14 17:59:05");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:59:05");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "98", "56", "2021-06-14 17:59:05", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("55", "98", "JNR3NXV3", "U2s1U00wNVlWak09", "I", "2021-06-14 17:59:05");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_filiais, nu_valor_assinatura, tp_pagamento, dt_cadastro, dt_expiracao) VALUES ("12", "55", "0", "97.00", "5", "2021-06-14 17:59:05", "2021-12-14");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("32", "2021-06-14 17:59:05", "Inicia o pagamento", "Leo Bessa Iniciou o pagamento", "0");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "54656656566");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "61", "2021-06-14 17:59:30");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:59:30");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "99", "57", "2021-06-14 17:59:30", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("56", "99", "TOP2RCS9", "VkU5UU1sSkRVems9", "I", "2021-06-14 17:59:30");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_filiais, nu_valor_assinatura, tp_pagamento, dt_cadastro, dt_expiracao) VALUES ("12", "56", "0", "97.00", "5", "2021-06-14 17:59:30", "2021-12-14");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("33", "2021-06-14 17:59:30", "Inicia o pagamento", "Leo Bessa Iniciou o pagamento", "0");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "54656656566");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "62", "2021-06-14 17:59:33");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 17:59:33");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "100", "58", "2021-06-14 17:59:33", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("57", "100", "DTX9KGJ2", "UkZSWU9VdEhTakk9", "I", "2021-06-14 17:59:33");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_filiais, nu_valor_assinatura, tp_pagamento, dt_cadastro, dt_expiracao) VALUES ("12", "57", "0", "97.00", "5", "2021-06-14 17:59:33", "2021-12-14");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("34", "2021-06-14 17:59:33", "Inicia o pagamento", "Leo Bessa Iniciou o pagamento", "0");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "54656656566");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "63", "2021-06-14 18:01:30");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 18:01:30");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "101", "59", "2021-06-14 18:01:30", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("58", "101", "USZ1POO4", "VlZOYU1WQlBUelE9", "I", "2021-06-14 18:01:30");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_filiais, nu_valor_assinatura, tp_pagamento, dt_cadastro, dt_expiracao) VALUES ("12", "58", "0", "97.00", "5", "2021-06-14 18:01:30", "2021-12-14");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("35", "2021-06-14 18:01:30", "Inicia o pagamento", "Leo Bessa Iniciou o pagamento", "0");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "54656656566");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "64", "2021-06-14 18:05:26");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 18:05:26");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "102", "60", "2021-06-14 18:05:26", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("59", "102", "KSS6OLY1", "UzFOVE5rOU1XVEU9", "I", "2021-06-14 18:05:26");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_filiais, nu_valor_assinatura, tp_pagamento, dt_cadastro, dt_expiracao) VALUES ("12", "59", "0", "97.00", "5", "2021-06-14 18:05:26", "2021-12-14");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("36", "2021-06-14 18:05:26", "Inicia o pagamento", "Leo Bessa Iniciou o pagamento", "0");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "54656656566");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "65", "2021-06-14 18:06:13");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 18:06:13");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "103", "61", "2021-06-14 18:06:13", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("60", "103", "PZE4GUL3", "VUZwRk5FZFZURE09", "I", "2021-06-14 18:06:13");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_filiais, nu_valor_assinatura, tp_pagamento, dt_cadastro, dt_expiracao) VALUES ("12", "60", "0", "97.00", "5", "2021-06-14 18:06:13", "2021-12-14");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("37", "2021-06-14 18:06:13", "Inicia o pagamento", "Leo Bessa Iniciou o pagamento", "0");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "54656656566");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "66", "2021-06-14 18:09:50");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 18:09:50");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "104", "62", "2021-06-14 18:09:50", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("61", "104", "DDG7YEQ3", "UkVSSE4xbEZVVE09", "I", "2021-06-14 18:09:50");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_filiais, nu_valor_assinatura, tp_pagamento, dt_cadastro, dt_expiracao) VALUES ("12", "61", "0", "97.00", "5", "2021-06-14 18:09:50", "2021-12-14");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("38", "2021-06-14 18:09:50", "Inicia o pagamento", "Leo Bessa Iniciou o pagamento", "0");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "54656656566");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "67", "2021-06-14 18:10:27");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 18:10:27");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "105", "63", "2021-06-14 18:10:27", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("62", "105", "OZI5KGS6", "VDFwSk5VdEhVelk9", "I", "2021-06-14 18:10:27");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_filiais, nu_valor_assinatura, tp_pagamento, dt_cadastro, dt_expiracao) VALUES ("12", "62", "0", "97.00", "5", "2021-06-14 18:10:27", "2021-12-14");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("39", "2021-06-14 18:10:27", "Inicia o pagamento", "Leo Bessa Iniciou o pagamento", "0");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "54656656566");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "68", "2021-06-14 18:11:23");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 18:11:23");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "106", "64", "2021-06-14 18:11:23", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("63", "106", "XMX3BKB3", "V0UxWU0wSkxRak09", "I", "2021-06-14 18:11:23");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_filiais, nu_valor_assinatura, tp_pagamento, dt_cadastro, dt_expiracao) VALUES ("12", "63", "0", "97.00", "5", "2021-06-14 18:11:23", "2021-12-14");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("40", "2021-06-14 18:11:23", "Inicia o pagamento", "Leo Bessa Iniciou o pagamento", "0");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (st_pagamento, dt_modificado, nu_valor_desconto, nu_valor_real, ds_link_boleto, ds_code_transacao, co_plano_assinante) VALUES ("1", "2021-06-14T18:11:27.000-03:00", "4.27", "92.73", "https://sandbox.pagseguro.uol.com.br/checkout/payment/booklet/print.jhtml?c=df7ffe79954ae7e0e8744c52fc66c54e50f0eca87c70a1abcd1033dafc230cd418024613841bcdb6", "7AB4A5D7-97A0-4CD6-B34D-B581113D1B9C", "12");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("0", "2021-06-14T18:11:27.000-03:00", "Mudou o Status do pagamento para Aguardando pagamento", "Retorno da operadora do pagamento", "1");

INSERT INTO sisbela.TB_CONTATO (ds_email, nu_tel1) VALUES ("sisccaug@gmail.com", "54656656566");

INSERT INTO sisbela.TB_PESSOA (no_pessoa, co_contato, dt_cadastro) VALUES ("Leo Bessa", "69", "2021-06-14 18:11:47");

INSERT INTO sisbela.TB_EMPRESA (no_fantasia, dt_cadastro) VALUES ("Salão novo Stylo", "2021-06-14 18:11:47");

INSERT INTO TB_ASSINANTE (tp_assinante, co_pessoa, co_empresa, dt_cadastro, dt_expiracao) VALUES ("M", "107", "65", "2021-06-14 18:11:47", "2021-12-14");

INSERT INTO sisbela.TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("64", "107", "ALH4TCP5", "UVV4SU5GUkRVRFU9", "I", "2021-06-14 18:11:47");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (co_plano_assinante, co_assinante, nu_filiais, nu_valor_assinatura, tp_pagamento, dt_cadastro, dt_expiracao) VALUES ("12", "64", "0", "97.00", "5", "2021-06-14 18:11:47", "2021-12-14");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("42", "2021-06-14 18:11:47", "Inicia o pagamento", "Leo Bessa Iniciou o pagamento", "0");

INSERT INTO TB_PLANO_ASSINANTE_ASSINATURA (st_pagamento, dt_modificado, nu_valor_desconto, nu_valor_real, ds_link_boleto, ds_code_transacao, co_plano_assinante) VALUES ("", "", "", "", "", "", "12");

INSERT INTO TB_HISTORICO_PAG_ASSINATURA (co_plano_assinante_assinatura, dt_cadastro, ds_acao, ds_usuario, st_pagamento) VALUES ("0", "", "Mudou o Status do pagamento para ", "Retorno da operadora do pagamento", "");

INSERT INTO sisbela.TB_USUARIO_PERFIL (co_perfil, co_usuario) VALUES ("2", "68");

