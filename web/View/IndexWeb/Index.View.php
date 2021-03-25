<style>
    .input-group {
        margin: 30px 15px;
    }

    .beautypress-single-pricing-table {
        margin-top: 20px;
    }
</style>
<!-- EXPERIMENTE GRÁTIS-->
<section class="beautypress-booking-section section-padding">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-lg-6 col-xl-6">
                <div class="beautypress-booking-text-wraper">
                    <div class="beautypress-booking-content-text beautypress-border beautypress-version-3">
                        <div class="beautypress-booking-text" style="padding-left: 35px;">
                            <h2>Adeus, agenda de papel!</h2>
                            <h3>Papel Nunca Mais..</h3>
                            <div class="beautypress-icon-bg-text">
                                <p style="font: bold; color: #0b0b0b;">Ter uma agenda organizada é fundamental. Todo
                                    profissional que possui uma carteira de
                                    clientes necessita de uma agenda organizada. Se esse profissional atua no setor de
                                    beleza e estética, essa necessidade torna-se ainda mais importante.</p>
                            </div><!-- .beautypress-icon-bg-text END -->
                            <ul>
                                <li>Agenda Disponível...</li>
                                <li>24 Horas por Dia</li>
                                <li>7 Dias da Semana</li>
                                <li>De forma Rápida</li>
                            </ul>
                        </div><!-- .beautypress-booking-text END -->
                    </div><!-- .beautypress-booking-content-text END -->
                </div><!-- .beautypress-booking-text-wraper END -->
            </div>
            <div class="col-md-12 col-sm-12 col-lg-6 col-xl-6">
                <div class="beautypress-booking-form-wraper">
                    <form action="#" method="POST" id="beautypress-booking-form">
                        <div class="beautypress-service-and-date">
                            <h2>Experimente Grátis por <?= ConfiguracoesEnum::DIAS_EXPERIMENTAR ?> Dias.</h2>
                            <h2>Ainda não é cliente, Faça seu cadastro.</h2>
                            <h5>Sou Cliente, acesso o sistema
                                <a href="<?= PASTAADMIN; ?>Index/PrimeiroAcesso" title="Acesso ao Sitema SisBela"
                                   target="_blank">SisBela</a>.</h5>


                            <div class="input-group">
                                <input type="text" required name="<?= NO_FANTASIA; ?>" class="form-control"
                                       id="<?= NO_FANTASIA; ?>" placeholder="Nome do Estabelecimento">
                                <div class="input-group-addon"><i class="fa fa-hospital-o"></i></div>
                            </div>

                            <div class="input-group">
                                <input type="text" required name="<?= NO_PESSOA; ?>" class="form-control"
                                       id="<?= NO_PESSOA; ?>" placeholder="Nome do Responsável">
                                <div class="input-group-addon"><i class="fa fa-user"></i></div>
                            </div>

                            <div class="input-group">
                                <input type="text" required name="<?= NU_TEL1; ?>" class="form-control tel"
                                       id="<?= NU_TEL1; ?>" placeholder="Telefone (WhatsApp)....">
                                <div class="input-group-addon"><i class="fa fa-whatsapp"></i></div>
                            </div>

                            <div class="input-group">
                                <input type="email" required name="<?= DS_EMAIL; ?>" class="form-control"
                                       id="<?= DS_EMAIL; ?>" placeholder="Email ....">
                                <div class="input-group-addon"><i class="fa fa-envelope"></i></div>
                            </div>

                            <div class="beautypress-btn-wraper" style="text-align: right; margin-right: -10px">
                                <button type="submit" style="cursor: pointer!important;"
                                        class="xs-btn round-btn box-shadow-btn bg-color-green">
                                    Experimentar Agora
                                    <span></span></button>
                            </div>
                        </div><!-- .beautypress-service-and-date END -->
                    </form><!-- #beautypress-booking-form END -->
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Pricing table -->
<section class="beautypress-pricing-table-section beautypress-padding-bottom  beautypress-bg"
         style="background-image: url(<?= PASTASITE; ?>img/pricing-bg.jpg)">
    <div class="container">
        <div class="beautypress-section-headinig beautypress-section-headinig-white">
            <h2>Pacotes Promocionais</h2>
            <h3>Preços super acessíveis</h3>
        </div>
        <div class="row">
            <?php
            $foto = 1;
            $cores = [
                'sky-blue',
                'red',
                'pink',
                'green',
                'purple',
                'black-gradient'
            ];
            $result = array_reverse($result);
            /** @var PlanoEntidade $plano */
            foreach ($result as $plano) {
                if ($plano->getCoPlano() > 1) {
                    ?>
                    <div class="col-md-12 col-sm-12 col-lg-4 col-xl-4">
                        <div class="beautypress-single-pricing-table">
                            <div class="beautypress-pricing-header beautypress-<?= $cores[$foto - 1]; ?>-overlay">
                                <?php
                                echo '<img src="' . TIMTHUMB . '?src=' .
                                    PASTASITE . 'img/pricing-' . $foto . '.jpg&w=370&h=274" 
                                alt="' . $plano->getNoPlano() . '" title="' . $plano->getNoPlano() . '" />';
                                ?>
                                <div class="beautypress-pricing-header-content">
                                    <div class="beautypress-pricing-title">
                                        <h2><?= $plano->getNoPlano(); ?></h2>
                                    </div>
                                    <div class="beautypress-pricing-price">
                                        <h4>Total: <?= Valida::FormataMoeda(
                                                $plano->getCoUltimoPlanoAssinante()->getNuValor()); ?></h4>
                                        <h5><span>R$</span><?php
                                            $preço = explode(',', Valida::FormataMoeda(
                                                $plano->getCoUltimoPlanoAssinante()->getNuValor() /
                                                $plano->getNuMesAtivo()
                                            ));
                                            echo $preço[0];
                                            echo '<span>,' . $preço[1] . '/Mês</span>';
                                            ?>
                                        </h5>
                                    </div>
                                </div>
                            </div><!-- .beautypress-pricing-header END -->
                            <div class="beautypress-pricing-footer">
                                <ul class="beautypress-both-side-list">
                                    <li>Sem Taxa de Adesão<span>0</span></li>
                                    <li>Meses de Assinatura<span><?= $plano->getNuMesAtivo(); ?></span></li>
                                    <li>Nº Profissionais<span><?= PlanoService::getNuProfissionais(
                                                $plano->getNuMesAtivo()); ?></span>
                                    </li>
                                    <li>Cartão em até<span>12x</span></li>
                                    <li>Cupom de Desconto<span>50%</span></li>
                                </ul>
                                <div class="beautypress-btn-wraper experimentar_gratis">
                                    <a href="#"
                                       class="xs-btn round-btn box-shadow-btn bg-color-<?= $cores[$foto - 1]; ?>">
                                        Começar Agora<span></span></a>
                                </div>
                            </div><!-- .beautypress-pricing-footer END -->
                        </div><!-- .beautypress-single-pricing-table END -->
                    </div>
                    <?php $foto++;
                }
            } ?>
        </div>
    </div>
    <dIndeiv class="beautypress-black-overlay"></dIndeiv>
</section><!-- .beautypress-pricing-table-section END -->
<!-- Pricing table -->


<!-- Simple text with image-->
<section class="beautypress-simple-text-with-img-section bg-color-gray">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xl-6 col-lg-6">
                <div class="beautypress-simple-text beautypress-watermark-icon">
                    <div class="beautypress-separetor-sub-heading">
                        <h2>Rápido, fácil e seguro de usar. Acabe com a dor de cabeça na hora
                            de fazer a gestão do seu negocio! </h2>
                    </div><!-- . END -->
                    <p style="font-size: 1.3em;">Você pode controlar sua agenda do computador, tablet ou celular. Faça a
                        gestão completa dos seus
                        agendamentos de qualquer lugar, com Relatórios que são simples,
                        claros e completos. Rápido e fácil de usar.</p>
                    <div class="beautypress-btn-wraper">
                        <a href="#" class="xs-btn bg-color-purple round-btn box-shadow-btn
                        saiba_mais">Saiba Mais<span></span></a>
                    </div>
                </div><!-- . END -->
            </div>
            <div class="col-md-12 col-sm-12 col-lg-6 col-xl-6">
                <div class="beautypress-simple-img-wraper">
                    <img src="<?= PASTASITE; ?>img/iphoneIpad.png" alt="desing responsivo">
                </div><!-- .beautypress-simple-img-wraper END -->
            </div>
        </div>
    </div>
</section><!-- .beautypress-simple-text-with-img-section END -->
<!-- Simple text with image end -->

<!-- Video popup section -->
<div class="beautypress-video-section beautypress-bg parallax-bg" data-parallax="scroll"
     data-image-src="<?= PASTASITE; ?>img/welcome-v3-img.jpg">
    <div class="container">
        <div class="beautypress-video-section-content">
            <a href="<?= PASTAUPLOADS; ?>Videos/Atendimento_qualidade.mp4"
               class="beautypress-video-popup beautypress-video-popup-btn bg-color-purple">
                <i class="fa fa-play"></i>
            </a>
            <p>Em poucos minutos você já terá uma agenda bem organizada e detalhada.</p>
            <h3>Veja como tudo é simples é rápido.</h3>
        </div><!-- .beautypress-video-section-content END -->
    </div>
    <div class="beautypress-black-overlay"></div>
</div><!-- .beautypress-video-section END -->
<!-- Video popup section -->