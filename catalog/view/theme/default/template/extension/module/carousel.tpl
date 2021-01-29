
    <section class="promo">

        <div class="promo__container">

            <div class="promo-nav-arrow-prev swiper-button-prev"><img src="/assets/images/icons/arrow-slider-left.svg" alt=""></div>
            <div class="promo-nav-arrow-next swiper-button-next"><img src="/assets/images/icons/arrow-slider-right.svg" alt=""></div>

            <div class="promo-slider swiper-container">
                <div class="swiper-wrapper">
            <?php foreach ($banners as $banner) { ?>
                    <div class="promo-item swiper-slide" style="
                        background-image: url(<?php echo $banner['image']; ?>);
                        background-repeat: no-repeat;
                        background-size: cover;
                        background-position: center;"
                    >
                        <div class="container promo-item-container">
                            <div class="promo-item__title"><?php echo $banner['title']; ?></div>
                            <div class="promo-item__descr">Авторские букеты</div>
                            <div class="promo-item__btn">
                                <a href="<?php echo $banner['link']; ?>" class="btn btn--fill promo-slider__btn">Подробнее</a>
                            </div>
                        </div>
                    </div>
            <?php } ?>
 
    
                </div>
                
            </div>
            <!-- /.promo-slider -->

        </div>
        <!-- /.promo__container -->

        <div class="promo-descr">
            <h1>Доставка цветов в Оренбурге</h1>
        </div>
    </section>
    <!-- /.promo -->

