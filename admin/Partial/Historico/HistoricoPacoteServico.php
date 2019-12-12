<?php
/** @var PrecoPacoteEntidade $pacoteServ */
$pacoteServ = $historico;
/** @var UsuarioService $usuarioService */
$usuarioService = new UsuarioService();
/** @var UsuarioEntidade $usuario */
$usuario = $usuarioService->PesquisaUmRegistro($historico->getCoUsuario()->getCoUsuario());
?>
<div class="content">
    Valor R$: <b><?= $pacoteServ->getNuValor(); ?></b></br>
    Status: <b><?= Valida::SituacaoAtivoInativo($pacoteServ->getStStatus()); ?></b></br>
    Cadastrado em: <b><?=
        Valida::DataShow(
            $pacoteServ->getDtCadastro(), 'd/m/Y H:i'
        )
        ?></b></br>
    Descrição:
    <b><?= Valida::Resumi(
            $pacoteServ->getDsDescricao(), 120
        ); ?></b></br>
    Cadastrado por: <b><?= Valida::Resumi($usuario->getCoPessoa()->getNoPessoa(), 30); ?></b></br>
</div>