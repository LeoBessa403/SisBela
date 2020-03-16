<style>
    .btn-search {
        margin-top: 0 !important;
        padding: 6.5px 9px !important;
        font-size: 14px !important;
    }

    .bg-light {
        background-color: lightgrey;
    }

</style>
<div class="main-content">
    <div class="container">
        <!-- start: PAGE HEADER -->
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-file"></i>
                        <a href="#">
                            Suporte
                        </a>
                    </li>
                    <li class="active">
                        Mensagens
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Suporte
                        <small>Mensagens</small>
                        <?php Valida::geraBtn(' Escrever', 'CadastroSuporte', 'btn-green',
                            'NovoSuporte', 'fa fa-envelope-o'); ?>
                    </h1>
                </div>
                <!-- end: PAGE TITLE & BREADCRUMB -->
            </div>
        </div>
        <!-- end: PAGE HEADER -->
        <!-- start: PAGE CONTENT -->
        <div class="row">
            <div class="col-md-12">
                <!-- start: INBOX PANEL -->
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-envelope-o"></i>
                        Inbox
                    </div>
                    <div class="panel-body messages">
                        <ul class="messages-list">
                            <li class="messages-search">
                                <form action="#" class="form-inline">
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="Pesquisar...">
                                        <div class="input-group-btn">
                                            <button class="btn btn-primary btn-search" type="button">
                                                <i class="fa fa-search"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </li>
                            <?php
                            /** @var SuporteEntidade $suporte */
                            foreach ($result as $suporte):
                                $foto = ImagemService::getImagemCoUsuario(
                                    $suporte->getCoPrimeiraMensagem()->getCoUsuario()->getCoUsuario()
                                );
                                /** @var PessoaEntidade $pessoa */
                                $pessoa = UsuarioService::getPessoaCoUsuario(
                                    $suporte->getCoPrimeiraMensagem()->getCoUsuario()->getCoUsuario()
                                );
                                $noPessoa = $pessoa->getNoPessoa();
                                ?>
                                <li class="messages-item<?php
                                echo ($suporte->getCoUltimaMensagem()->getStLido() == SimNaoEnum::NAO) ?
                                    ' bg-light' : ''; ?>" id="<?= $suporte->getCoSuporte(); ?>">
                                    <?php
                                    $sexo = $pessoa->getStSexo();
                                    if ($sexo == "M"):
                                        $fotoPerfil = "avatar-homem.jpg";
                                    else:
                                        $fotoPerfil = "avatar-mulher.jpg";
                                    endif;
                                    if ($foto != "" && file_exists(PASTA_RAIZ . "uploads/usuarios/" . $foto)):
                                        echo Valida::GetMiniatura("usuarios/" . $foto,
                                            $noPessoa, 35, 35, "messages-item-avatar");
                                    else:
                                        echo '<img src="' . TIMTHUMB . '?src=' . HOME .
                                            'library/Imagens/' . $fotoPerfil . '&w=35&h=35"
                                alt="' . $noPessoa . '" title="' . $noPessoa . '"
                                class="messages-item-avatar" />';
                                    endif;
                                    ?>
                                    <span class="messages-item-from"><?= Valida::Resumi($noPessoa, 15); ?></span>
                                    <div class="messages-item-time">
                                    <span class="text"><?=
                                        Valida::DataShow($suporte->getCoUltimaMensagem()->getDtCadastro(), 'd/m/y H:i');
                                        ?></span>
                                    </div>
                                    <span class="messages-item-subject"><?=
                                        Valida::Resumi($suporte->getDsAssunto(), 35);
                                        ?></span>
                                    <span class="messages-item-preview"><?=
                                        Valida::Resumi($suporte->getCoUltimaMensagem()->getDsMensagem(), 75);
                                        ?></span>
                                </li>
                            <?php
                            endforeach;
                            ?>
                        </ul>

                        <div class="messages-content">
                            <div class="message-header sem_mensagem">
                                <h1><i class="fa fa-envelope-o"></i> Selecione uma mensagem</h1>
                            </div>
                            <div class="message-header nova_mensagem" style="display: none;">
                                <div class="message-time">
                                    09/11/2020 10:23
                                </div>
                                <div class="message-from">
                                    Nicole Bell &lt;nicole@example.com&gt;
                                </div>
                                <div class="message-to">
                                    Para: Peter Clark
                                </div>
                                <div class="message-subject">
                                    Assunto: <span
                                            style="font-weight: bolder; font-size: 1.5em;">New frontend layout</span>
                                </div>
                                <div class="message-actions">
                                    <a title="Excluir" href="#" data-id="">
                                        <i class="fa fa-trash-o"></i>
                                    </a>
                                    <a title="Responder" href="#" data-id="">
                                        <i class="fa fa-reply"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="message-content nova_mensagem" style="display: none;">
                                <p>
                                    <strong>Lorem ipsum</strong> dolor sit amet, consectetuer adipiscing elit, sed diam
                                    nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut
                                    wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis
                                    nisl ut aliquip ex ea commodo consequat.
                                </p>
                                <p>
                                    Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie
                                    consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et
                                    iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore
                                    te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue
                                    nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent
                                    claritatem insitam; est usus legentis in iis qui facit eorum claritatem.
                                    Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.
                                </p>
                                <p>
                                    Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium
                                    lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram,
                                    anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta
                                    decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in
                                    futurum.
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ut blandit ligula.
                                    In accumsan mauris at augue feugiat consequat. Aenean consequat sem sed velit
                                    sagittis dignissim. Phasellus quis convallis est. Praesent porttitor mauris nec
                                    lectus mollis, eget sodales libero venenatis. Cras eget vestibulum turpis. In hac
                                    habitasse platea dictumst. Interdum et malesuada fames ac ante ipsum primis in
                                    faucibus. Nam turpis velit, tempor vitae libero ac, fermentum laoreet dolor.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end: INBOX PANEL -->
            </div>
        </div>
        <!-- end: PAGE CONTENT-->
    </div>
</div>