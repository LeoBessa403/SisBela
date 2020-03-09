<?php

/**
 * Relacionamentos.class [ RELACIONAMENTOS DO BANCO ]
 * @copyright (c) 2018, Leo Bessa
 */

class Relacionamentos
{

    public static function getRelacionamentos()
    {
        return array(
            (AssinanteEntidade::TABELA) => Array(
                (CO_PLANO_ASSINANTE_ASSINATURA) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'PlanoAssinanteAssinaturaEntidade',
                    ('Tipo') => '2',
                ),
                (CO_EMPRESA) => Array(
                    ('Campo') => CO_EMPRESA,
                    ('Entidade') => 'EmpresaEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PESSOA) => Array(
                    ('Campo') => CO_PESSOA,
                    ('Entidade') => 'PessoaEntidade',
                    ('Tipo') => '1',
                ),
                (CO_IMAGEM_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'ImagemAssinanteEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (EmpresaEntidade::TABELA) => Array(
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_EMPRESA,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (AcessoEntidade::TABELA) => Array(
                (CO_USUARIO) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'UsuarioEntidade',
                    ('Tipo') => '1',
                ),
                (CO_TRAFEGO) => Array(
                    ('Campo') => CO_TRAFEGO,
                    ('Entidade') => 'TrafegoEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (UsuarioEntidade::TABELA) => Array(
                (CO_ACESSO) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'AcessoEntidade',
                    ('Tipo') => '2',
                ),
                (CO_AUDITORIA) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'AuditoriaEntidade',
                    ('Tipo') => '2',
                ),
                (CO_IMAGEM) => Array(
                    ('Campo') => CO_IMAGEM,
                    ('Entidade') => 'ImagemEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PESSOA) => Array(
                    ('Campo') => CO_PESSOA,
                    ('Entidade') => 'PessoaEntidade',
                    ('Tipo') => '1',
                ),
                (CO_USUARIO_PERFIL) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'UsuarioPerfilEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (FuncionalidadeEntidade::TABELA) => Array(
                (CO_PERFIL_FUNCIONALIDADE) => Array(
                    ('Campo') => CO_FUNCIONALIDADE,
                    ('Entidade') => 'PerfilFuncionalidadeEntidade',
                    ('Tipo') => '2',
                ),
                (CO_CONTROLLER) => Array(
                    ('Campo') => CO_CONTROLLER,
                    ('Entidade') => 'ControllerEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (AuditoriaEntidade::TABELA) => Array(
                (CO_USUARIO) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'UsuarioEntidade',
                    ('Tipo') => '1',
                ),
                (CO_AUDITORIA_TABELA) => Array(
                    ('Campo') => CO_AUDITORIA,
                    ('Entidade') => 'AuditoriaTabelaEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (AuditoriaItensEntidade::TABELA) => Array(
                (CO_AUDITORIA_TABELA) => Array(
                    ('Campo') => CO_AUDITORIA_TABELA,
                    ('Entidade') => 'AuditoriaTabelaEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (AuditoriaTabelaEntidade::TABELA) => Array(
                (CO_AUDITORIA_ITENS) => Array(
                    ('Campo') => CO_AUDITORIA_TABELA,
                    ('Entidade') => 'AuditoriaItensEntidade',
                    ('Tipo') => '2',
                ),
                (CO_AUDITORIA) => Array(
                    ('Campo') => CO_AUDITORIA,
                    ('Entidade') => 'AuditoriaEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (PessoaEntidade::TABELA) => Array(
                (CO_ENDERECO) => Array(
                    ('Campo') => CO_ENDERECO,
                    ('Entidade') => 'EnderecoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_CONTATO) => Array(
                    ('Campo') => CO_CONTATO,
                    ('Entidade') => 'ContatoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_IMAGEM) => Array(
                    ('Campo') => CO_IMAGEM,
                    ('Entidade') => 'ImagemEntidade',
                    ('Tipo') => '1',
                ),
                (CO_USUARIO) => Array(
                    ('Campo') => CO_PESSOA,
                    ('Entidade') => 'UsuarioEntidade',
                    ('Tipo') => '1',
                ),
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_PESSOA,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (ContatoEntidade::TABELA) => Array(
                (CO_PESSOA) => Array(
                    ('Campo') => CO_CONTATO,
                    ('Entidade') => 'PessoaEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (EnderecoEntidade::TABELA) => Array(
                (CO_PESSOA) => Array(
                    ('Campo') => CO_ENDERECO,
                    ('Entidade') => 'PessoaEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (ImagemEntidade::TABELA) => Array(),
            (PerfilFuncionalidadeEntidade::TABELA) => Array(
                (CO_PERFIL) => Array(
                    ('Campo') => CO_PERFIL,
                    ('Entidade') => 'PerfilEntidade',
                    ('Tipo') => '1',
                ),
                (CO_FUNCIONALIDADE) => Array(
                    ('Campo') => CO_FUNCIONALIDADE,
                    ('Entidade') => 'FuncionalidadeEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (PerfilEntidade::TABELA) => Array(
                (CO_PERFIL_FUNCIONALIDADE) => Array(
                    ('Campo') => CO_PERFIL,
                    ('Entidade') => 'PerfilFuncionalidadeEntidade',
                    ('Tipo') => '2',
                ),
                (CO_USUARIO_PERFIL) => Array(
                    ('Campo') => CO_PERFIL,
                    ('Entidade') => 'UsuarioPerfilEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (UsuarioPerfilEntidade::TABELA) => Array(
                (CO_USUARIO) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'UsuarioEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PERFIL) => Array(
                    ('Campo') => CO_PERFIL,
                    ('Entidade') => 'PerfilEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (VisitaEntidade::TABELA) => Array(
                (CO_TRAFEGO) => Array(
                    ('Campo') => CO_TRAFEGO,
                    ('Entidade') => 'TrafegoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PAGINA_VISITA) => Array(
                    ('Campo') => CO_VISITA,
                    ('Entidade') => 'PaginaVisitaEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (PaginaEntidade::TABELA) => Array(
                (CO_PAGINA_VISITA) => Array(
                    ('Campo') => CO_PAGINA,
                    ('Entidade') => 'PaginaVisitaEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (PaginaVisitaEntidade::TABELA) => Array(
                (CO_PAGINA) => Array(
                    ('Campo') => CO_PAGINA,
                    ('Entidade') => 'PaginaEntidade',
                    ('Tipo') => '1',
                ),
                (CO_VISITA) => Array(
                    ('Campo') => CO_VISITA,
                    ('Entidade') => 'VisitaEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (AnotacaoEntidade::TABELA) => Array(
                (CO_HISTORIA) => Array(
                    ('Campo') => CO_HISTORIA,
                    ('Entidade') => 'HistoriaEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (HistoricoHistoriaEntidade::TABELA) => Array(
                (CO_HISTORIA) => Array(
                    ('Campo') => CO_HISTORIA,
                    ('Entidade') => 'HistoriaEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (HistoriaEntidade::TABELA) => Array(
                (CO_ANOTACAO) => Array(
                    ('Campo') => CO_HISTORIA,
                    ('Entidade') => 'AnotacaoEntidade',
                    ('Tipo') => '2',
                ),
                (CO_SESSAO) => Array(
                    ('Campo') => CO_SESSAO,
                    ('Entidade') => 'SessaoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_HISTORICO_HISTORIA) => Array(
                    ('Campo') => CO_HISTORIA,
                    ('Entidade') => 'HistoricoHistoriaEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (SessaoEntidade::TABELA) => Array(
                (CO_HISTORIA) => Array(
                    ('Campo') => CO_SESSAO,
                    ('Entidade') => 'HistoriaEntidade',
                    ('Tipo') => '2',
                ),
                (CO_MODULO) => Array(
                    ('Campo') => CO_MODULO,
                    ('Entidade') => 'ModuloEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (ModuloEntidade::TABELA) => Array(
                (CO_PROJETO) => Array(
                    ('Campo') => CO_PROJETO,
                    ('Entidade') => 'ProjetoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_SESSAO) => Array(
                    ('Campo') => CO_MODULO,
                    ('Entidade') => 'SessaoEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (ProjetoEntidade::TABELA) => Array(
                (CO_MODULO) => Array(
                    ('Campo') => CO_PROJETO,
                    ('Entidade') => 'ModuloEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (TrafegoEntidade::TABELA) => Array(),
            (PlanoPacoteEntidade::TABELA) => Array(
                (CO_PLANO) => Array(
                    ('Campo') => CO_PLANO,
                    ('Entidade') => 'PlanoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PACOTE) => Array(
                    ('Campo') => CO_PACOTE,
                    ('Entidade') => 'PacoteEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (PlanoEntidade::TABELA) => Array(
                (CO_PLANO_PACOTE) => Array(
                    ('Campo') => CO_PLANO,
                    ('Entidade') => 'PlanoPacoteEntidade',
                    ('Tipo') => '2',
                ),
                (CO_PLANO_ASSINANTE) => Array(
                    ('Campo') => CO_PLANO,
                    ('Entidade') => 'PlanoAssinanteEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (ControllerEntidade::TABELA) => Array(
                (CO_FUNCIONALIDADE) => Array(
                    ('Campo') => CO_CONTROLLER,
                    ('Entidade') => 'FuncionalidadeEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (PacoteEntidade::TABELA) => Array(
                (CO_PLANO_PACOTE) => Array(
                    ('Campo') => CO_PACOTE,
                    ('Entidade') => 'PlanoPacoteEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (PlanoAssinanteEntidade::TABELA) => Array(
                (CO_PLANO) => Array(
                    ('Campo') => CO_PLANO,
                    ('Entidade') => 'PlanoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PLANO_ASSINANTE_ASSINATURA) => Array(
                    ('Campo') => CO_PLANO_ASSINANTE,
                    ('Entidade') => 'PlanoAssinanteAssinaturaEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (PlanoAssinanteAssinaturaEntidade::TABELA) => Array(
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PLANO_ASSINANTE) => Array(
                    ('Campo') => CO_PLANO_ASSINANTE,
                    ('Entidade') => 'PlanoAssinanteEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (ImagemAssinanteEntidade::TABELA) => Array(
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
                (CO_IMAGEM) => Array(
                    ('Campo') => CO_IMAGEM,
                    ('Entidade') => 'ImagemEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (AgendaEntidade::TABELA) => Array(
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
                (CO_STATUS_AGENDA) => Array(
                    ('Campo') => CO_AGENDA,
                    ('Entidade') => 'StatusAgendaEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (StatusAgendaEntidade::TABELA) => Array(
                (CO_AGENDA) => Array(
                    ('Campo') => CO_AGENDA,
                    ('Entidade') => 'AgendaEntidade',
                    ('Tipo') => '1',
                ),
                (CO_USUARIO) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'UsuarioEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (ClienteEntidade::TABELA) => Array(
                (CO_PESSOA) => Array(
                    ('Campo') => CO_PESSOA,
                    ('Entidade') => 'PessoaEntidade',
                    ('Tipo') => '1',
                ),
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (ProfissionalEntidade::TABELA) => Array(
                (CO_PESSOA) => Array(
                    ('Campo') => CO_PESSOA,
                    ('Entidade') => 'PessoaEntidade',
                    ('Tipo') => '1',
                ),
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (ServicoEntidade::TABELA) => Array(
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
            ),
        );
    }
}