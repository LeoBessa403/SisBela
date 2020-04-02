<?php
ob_start();
include_once './library/Partial/Site/topo_inicial.php';
?>
    <!-- Pricing table -->
    <section class="beautypress-pricing-table-section beautypress-padding-bottom  beautypress-bg"
             style="background-image: url(<?= PASTASITE; ?>img/pricing-bg.jpg)">
        <div class="container">
            <div class="beautypress-section-headinig beautypress-section-headinig-white">
                <h2>We are awesome</h2>
                <h3>Pricing Plan</h3>
            </div>
            <div class="row">
                <div class="col-md-12 col-sm-12 col-lg-4 col-xl-4">
                    <div class="beautypress-single-pricing-table">
                        <div class="beautypress-pricing-header beautypress-purple-overlay">
                            <img src="<?= PASTASITE; ?>img/pricing-1.jpg" alt="">
                            <div class="beautypress-pricing-header-content">
                                <div class="beautypress-pricing-title">
                                    <h2>Hair Cut</h2>
                                </div>
                                <div class="beautypress-pricing-price">
                                    <h4>Starting from</h4>
                                    <h5><span>$</span>50</h5>
                                </div>
                            </div>
                        </div><!-- .beautypress-pricing-header END -->
                        <div class="beautypress-pricing-footer">
                            <ul class="beautypress-both-side-list">
                                <li>Teen's haircut<span>$45</span></li>
                                <li>Men's haircut<span>$42</span></li>
                                <li>Children's haircut<span>$56</span></li>
                                <li>Women's haircut<span>$76</span></li>
                            </ul>

                            <div class="beautypress-btn-wraper">
                                <a href="#" class="xs-btn round-btn box-shadow-btn bg-color-purple">Appointment Now
                                    <span></span></a>
                            </div>
                        </div><!-- .beautypress-pricing-footer END -->
                    </div><!-- .beautypress-single-pricing-table END -->
                </div>
                <div class="col-md-12 col-sm-12 col-lg-4 col-xl-4">
                    <div class="beautypress-single-pricing-table">
                        <div class="beautypress-pricing-header beautypress-pink-overlay">
                            <img src="<?= PASTASITE; ?>img/pricing-2.jpg" alt="">
                            <div class="beautypress-pricing-header-content">
                                <div class="beautypress-pricing-title">
                                    <h2>Makeup</h2>
                                </div>
                                <div class="beautypress-pricing-price">
                                    <h4>Starting from</h4>
                                    <h5><span>$</span>50</h5>
                                </div>
                            </div>
                        </div><!-- .beautypress-pricing-header END -->
                        <div class="beautypress-pricing-footer">
                            <ul class="beautypress-both-side-list">
                                <li>Just eyes<span>$45</span></li>
                                <li>Bridal trail<span>$42</span></li>
                                <li>Regular makeup<span>$56</span></li>
                                <li>Quick fix makeup<span>$76</span></li>
                            </ul>

                            <div class="beautypress-btn-wraper">
                                <a href="#" class="xs-btn round-btn box-shadow-btn bg-color-pink">Appointment Now
                                    <span></span></a>
                            </div>
                        </div><!-- .beautypress-pricing-footer END -->
                    </div><!-- .beautypress-single-pricing-table END -->
                </div>
                <div class="col-md-12 col-sm-12 col-lg-4 col-xl-4">
                    <div class="beautypress-single-pricing-table">
                        <div class="beautypress-pricing-header beautypress-sky-blue-overlay">
                            <img src="<?= PASTASITE; ?>img/pricing-3.jpg" alt="">
                            <div class="beautypress-pricing-header-content">
                                <div class="beautypress-pricing-title">
                                    <h2>Hair Color</h2>
                                </div>
                                <div class="beautypress-pricing-price">
                                    <h4>Starting from</h4>
                                    <h5><span>$</span>50</h5>
                                </div>
                            </div>
                        </div><!-- .beautypress-pricing-header END -->
                        <div class="beautypress-pricing-footer">
                            <ul class="beautypress-both-side-list">
                                <li>Just eyes<span>$45</span></li>
                                <li>Bridal trail<span>$42</span></li>
                                <li>Regular makeup<span>$56</span></li>
                                <li>Quick fix makeup<span>$76</span></li>
                            </ul>

                            <div class="beautypress-btn-wraper">
                                <a href="#" class="xs-btn round-btn box-shadow-btn bg-color-sky-blue">Appointment Now
                                    <span></span></a>
                            </div>
                        </div><!-- .beautypress-pricing-footer END -->
                    </div><!-- .beautypress-single-pricing-table END -->
                </div>
            </div>
        </div>
        <div class="beautypress-black-overlay"></div>
    </section><!-- .beautypress-pricing-table-section END -->
    <!-- Pricing table -->
<?php
include_once './library/Partial/Site/rodape_inicial.php';
ob_end_flush();