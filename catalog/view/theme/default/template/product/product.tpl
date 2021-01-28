<?php echo $header; ?>
    <main class="main">

        <div class="container">
            <div class="breadcrumbs">
                <ul class="breadcrumbs__list">
                    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
				    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
				    <?php } ?>
                </ul>
            </div>
            <!-- /.breadcrumbs -->

            <div class="content__wrap">

                <div class="content">

          			<?php if ($thumb || $images) { ?>
                    <div class="content-left">
                        <div class="photo-slider">

            				<?php if ($thumb) { ?>
                            <div class="photo-slider__item">
                                <a data-fancybox="gallery" href="<?php echo $thumb; ?>">
                                	<img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>">
                                </a>
                            </div> 
                        	<?php } ?>
                        </div>
                        <!-- /.photo-slider -->

					    <?php if ($images) { ?>
						    <?php foreach ($images as $image) { ?>
		                        <div class="photo-slider-nav">
		                            <div class="photo-slider-nav__item">
		                                <img src="<?php echo $image['popup']; ?>"  title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>">
		                            </div> 
		                        </div>
		                        <!-- /.photo-slider-nav -->
	                    	<?php } ?>
                    	<?php } ?>
                    </div>
                    <!-- /.content-left -->
            		<?php } ?>

                    <div class="content-right" id="product">
                        <h1 class="content__title">Авторский Авторский букет “Новогоднее настроение”</h1>
                        <div class="content-price">
                            <span class="content-price__new">3 500 руб.</span>
                            <span class="content-price__old">3 500 руб.</span>
                            <div class="h-sale content-sale">10%</div>
                        </div>
                        <!-- /.content-price -->
                        <div class="content-amount">
                            <span>Количество:</span>
                            <div class="amount">
                                <button class="amount__btn-minus">-</button>
                                <input type="text" class="amount__input" name="amount" maxlength="3" value="1">
                                <button class="amount__btn-plus">+</button>
                                <!-- <div class="amount__measure">шт</div> -->
                            </div>
                        </div>
                        <!-- /.content-amount -->
                        <div class="content-size">
                            <div class="content-size__title">Размер букета:</div>
                            <div class="content-size__wrap">
                                <div class="content-size__item">
                                    <input type="radio" name="radio" id="size-mini" value="20 см" checked>
                                    <label for="size-mini"><span>Mini</span>20 см</label>
                                </div>
                                <div class="content-size__item">
                                    <input type="radio" name="radio" id="size-midi" value="30 см">
                                    <label for="size-midi"><span>Midi</span>20 см</label>
                                </div>
                                <div class="content-size__item">
                                    <input type="radio" name="radio" id="size-max" value="45 см">
                                    <label for="size-max"><span>Midi</span>45 см</label>
                                </div>
                                <div class="content-size__item">
                                    <input type="radio" name="radio" id="size-max" value="45 см">
                                    <label for="size-max"><span>Midi</span>45 см</label>
                                </div>
                            </div>
                        </div>
                        <!-- /.content-size -->
                        <div class="content-basket">
                        	<input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                            <button id="button-cart" class="btn btn--dark btn-basket content-basket__btn">Добавить В корзину</button>
                            <button class="btn btn--fill content-basket__btn--buy">Купить в 1 клик</button>
                        </div>
                        <!-- /.content-basket -->
                        <div class="content-share">
                            <div class="content-share__item">
                                <a href="#" class="share-vk"></a>
                            </div>
                            <div class="content-share__item">
                                <a href="#" class="share-fb"></a>
                            </div>
                            <div class="content-share__item">
                                <a href="#" class="share-tw"></a>
                            </div>
                            <div class="content-share__item">
                                <a href="#" class="share-wa"></a>
                            </div>
                            <div class="content-share__item">
                                <a href="#" class="share-tg"></a>
                            </div>
                        </div>
                        <!-- /.content-soc -->
                    </div>
                    <!-- /.content-right -->
                </div>
                <!-- /.content -->

                <div class="content-descr">
                    <div class="content-descr__left-wrap">
                        <div class="content-descr__composition">
                            <h4 class="content-descr__title content-descr__title--white">Цветы<br>в составе букета:</h4>
                            <div class="content-descr__wrap">
                                <div class="content-descr__tags-list">
                                    <a href="#">Розы</a>
                                    <a href="#">Фиалка</a>
                                    <a href="#">Гвоздика</a>
                                    <a href="#">Эустома</a>
                                </div>
                            </div>
                        </div>
                        <!-- /.descr__composition -->
                        <div class="content-descr__color">
                            <h4 class="content-descr__title">Цвета букета:</h4>
                            <div class="content-descr__wrap">
                                <div class="content-descr__tags-color-list">
                                    <a href="#"><span style="background-color: #ff5656;"></span>Красный</a>
                                    <a href="#"><span style="background-color: #fda9e2;"></span>Розовый</a>
                                    <a href="#"><span style="background-color: #ffd0c1;"></span>Кремовый</a>
                                </div>
                            </div>
                        </div>
                        <!-- /.descr__color -->
                    </div>
                    <!-- /.content-descr__wrap -->
                    
                    <div class="content-descr__text">
                        <h4 class="content-descr__title">Описание букета:</h4>
                        <div class="content-descr__wrap">
                            <p>Тёплый и уютный пудрово - розовый цвет в наших букетах.</p>
                            <p>Она не гасла до самого рассвета, а когда утром снова вернулось на свое место солнце, там, где горела и переливалась красками волшебная радуга, расцвели ирисы.</p>
                        </div>
                    </div>
                </div>
                <!-- /.descr -->

            </div>
            <!-- /.main__wrapper -->
            
        </div>
        <!-- /.container -->

        <section class="similar">
            <div class="container section-container">
                <h2 class="s-title">Похожие букеты</h2>
    
                <div class="similar-slider swiper-container">
                    <div class="swiper-wrapper">
    
                        <div class="swiper-slide">

                            <div class="card">
                                <a href="#">
                                    <div class="card__pic" style="background-image: url('images/card/card-3.png');"></div>
                                </a>
                                <div class="card-top">
                                    <div class="card-sale v-sale"><span>80%</span></div>
                                    <div class="card-new v-new"><span>new</span></div>
                                </div>
                                <div class="card__wrap">
                                    <h3 class="card__title"><a href="#">Авторский букет “Гармония”</a></h3>
                                    <div class="card__price">3 500 руб.</div>
                                    <div class="card__overlay">
                                        <div class="card__block">
                                            <div class="card__item">
                                                <input type="radio" name="size" id="checkbox-1" value="Mini" checked>
                                                <label for="checkbox-1"><span>Mini</span>20 см</label>
                                            </div>
                                            <div class="card__item">
                                                <input type="radio" name="size" id="checkbox-2" value="Midi">
                                                <label for="checkbox-2"><span>Midi</span>30 см</label>
                                            </div>
                                            <div class="card__item">
                                                <input type="radio" name="size" id="checkbox-3" value="Max">
                                                <label for="checkbox-3"><span>Max</span>45 см</label>
                                            </div>
                                            <div class="card__item">
                                                <input type="radio" name="size" id="checkbox-30" value="Max">
                                                <label for="checkbox-30"><span>Max</span>50 см</label>
                                            </div>
                                        </div>
                                        <div class="card__basket">
                                            <button class="btn btn--dark card__btn">В корзину</button>
                                            <button class="btn btn--fill card__btn">Купить в 1 клик</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
    
                        </div>
    
                        <div class="swiper-slide">
    
                            <div class="card">
                                <a href="#">
                                    <div class="card__pic" style="background-image: url('images/card/card-2.png');"></div>
                                </a>
                                <div class="card__wrap">
                                    <h3 class="card__title"><a href="#">Авторский букет “Новогоднее настроение”</a></h3>
                                    <div class="card__price">3 500 руб.</div>
                                    <div class="card__overlay">
                                        <div class="card__block">
                                            <div class="card__item">
                                                <input type="radio" name="size-5" id="checkbox-13" value="Mini" checked>
                                                <label for="checkbox-13"><span>Mini</span>20 см</label>
                                            </div>
                                            <div class="card__item">
                                                <input type="radio" name="size-5" id="checkbox-14" value="Midi">
                                                <label for="checkbox-14"><span>Midi</span>30 см</label>
                                            </div>
                                            <div class="card__item">
                                                <input type="radio" name="size-5" id="checkbox-15" value="Max">
                                                <label for="checkbox-15"><span>Max</span>45 см</label>
                                            </div>
                                        </div>
                                        <div class="card__basket">
                                            <button class="btn btn--dark card__btn">В корзину</button>
                                            <button class="btn btn--fill card__btn">Купить в 1 клик</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
    
                        </div>
    
                        <div class="swiper-slide">
    
                            <div class="card">
                                <a href="#">
                                    <div class="card__pic" style="background-image: url('images/card/card-3.png');"></div>
                                </a>
                                <div class="card-top">
                                    <div class="card-sale v-sale"><span>80%</span></div>
                                    <div class="card-new v-new"><span>new</span></div>
                                </div>
                                <div class="card__wrap">
                                    <h3 class="card__title"><a href="#">Авторский букет “Гармония”</a></h3>
                                    <div class="card__price">3 500 руб.</div>
                                    <div class="card__overlay">
                                        <div class="card__block">
                                            <div class="card__item">
                                                <input type="radio" name="size" id="checkbox-1" value="Mini" checked>
                                                <label for="checkbox-1"><span>Mini</span>20 см</label>
                                            </div>
                                            <div class="card__item">
                                                <input type="radio" name="size" id="checkbox-2" value="Midi">
                                                <label for="checkbox-2"><span>Midi</span>30 см</label>
                                            </div>
                                            <div class="card__item">
                                                <input type="radio" name="size" id="checkbox-3" value="Max">
                                                <label for="checkbox-3"><span>Max</span>45 см</label>
                                            </div>
                                        </div>
                                        <div class="card__basket">
                                            <button class="btn btn--dark card__btn">В корзину</button>
                                            <button class="btn btn--fill card__btn">Купить в 1 клик</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
    
                        </div>
    
                        <div class="swiper-slide">
    
                            <div class="card">
                                <a href="#">
                                    <div class="card__pic" style="background-image: url('images/card/card-2.png');"></div>
                                </a>
                                <div class="card__wrap">
                                    <h3 class="card__title"><a href="#">Авторский букет “Новогоднее настроение”</a></h3>
                                    <div class="card__price">3 500 руб.</div>
                                    <div class="card__overlay">
                                        <div class="card__block">
                                            <div class="card__item">
                                                <input type="radio" name="size-5" id="checkbox-13" value="Mini" checked>
                                                <label for="checkbox-13"><span>Mini</span>20 см</label>
                                            </div>
                                            <div class="card__item">
                                                <input type="radio" name="size-5" id="checkbox-14" value="Midi">
                                                <label for="checkbox-14"><span>Midi</span>30 см</label>
                                            </div>
                                            <div class="card__item">
                                                <input type="radio" name="size-5" id="checkbox-15" value="Max">
                                                <label for="checkbox-15"><span>Max</span>45 см</label>
                                            </div>
                                        </div>
                                        <div class="card__basket">
                                            <button class="btn btn--dark card__btn">В корзину</button>
                                            <button class="btn btn--fill card__btn">Купить в 1 клик</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
    
                        </div>
    
                    </div>
                </div>
                <!-- /.composite-slider -->
    
                <div class="section-button-prev swiper-button-prev"></div>
                <div class="section-button-next swiper-button-next"></div>
    
                <div class="s-link">
                    <a href="#" class="btn btn--white s-link__btn s-link__btn--white">Больше букетов</a>
                </div>
            </div>
            <!-- /.container -->
        </section>
        <!-- /.similar -->

        <section class="gifts">
            <div class="container section-container">
                <h2 class="s-title">Дополнительные подарки к букету</h2>
    
                <div class="gifts-slider swiper-container">
                    <div class="swiper-wrapper">
    
                        <div class="swiper-slide">

                            <div class="card">
                                <a href="#">
                                    <div class="card__pic" style="background-image: url('images/card/card-3.png');"></div>
                                </a>
                                <div class="card__wrap">
                                    <h3 class="card__title"><a href="#">Авторский букет “Гармония”</a></h3>
                                    <div class="card__price">3 500 руб.</div>
                                    <div class="card__overlay">
                                        <div class="card__basket">
                                            <button class="btn btn--dark card__btn">В корзину</button>
                                            <button class="btn btn--fill card__btn">Купить в 1 клик</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
    
                        </div>
    
                        <div class="swiper-slide">
                            
                            <div class="card">
                                <a href="#">
                                    <div class="card__pic" style="background-image: url('images/card/card-2.png');"></div>
                                </a>
                                <div class="card__wrap">
                                    <h3 class="card__title"><a href="#">Авторский букет “Новогоднее настроение”</a></h3>
                                    <div class="card__price">3 500 руб.</div>
                                    <div class="card__overlay">
                                        <div class="card__basket">
                                            <button class="btn btn--dark card__btn">В корзину</button>
                                            <button class="btn btn--fill card__btn">Купить в 1 клик</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
    
                        </div>
    
                        <div class="swiper-slide">
    
                            <div class="card">
                                <a href="#">
                                    <div class="card__pic" style="background-image: url('images/card/card-3.png');"></div>
                                </a>
                                <div class="card__wrap">
                                    <h3 class="card__title"><a href="#">Авторский букет “Гармония”</a></h3>
                                    <div class="card__price">3 500 руб.</div>
                                    <div class="card__overlay">
                                        <div class="card__basket">
                                            <button class="btn btn--dark card__btn">В корзину</button>
                                            <button class="btn btn--fill card__btn">Купить в 1 клик</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
    
                        </div>
    
                        <div class="swiper-slide">
    
                            <div class="card">
                                <a href="#">
                                    <div class="card__pic" style="background-image: url('images/card/card-2.png');"></div>
                                </a>
                                <div class="card__wrap">
                                    <h3 class="card__title"><a href="#">Авторский букет “Новогоднее настроение”</a></h3>
                                    <div class="card__price">3 500 руб.</div>
                                    <div class="card__overlay">
                                        <div class="card__basket">
                                            <button class="btn btn--dark card__btn">В корзину</button>
                                            <button class="btn btn--fill card__btn">Купить в 1 клик</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
    
                        </div>
    
                    </div>
                </div>
                <!-- /.compositions-slider -->
    
                <div class="section-button-prev swiper-button-prev"></div>
                <div class="section-button-next swiper-button-next"></div>
    
                <div class="s-link">
                    <a href="#" class="btn s-link__btn">Все композиции</a>
                </div>
            </div>
            <!-- /.container -->
        </section>
        <!-- /.gifts -->

        <section class="interested">
            <div class="container section-container">
                <h2 class="s-title">Возможно, вас заинтересует</h2>
    
                <div class="interested-slider swiper-container">
                    <div class="swiper-wrapper">
    
                        <div class="swiper-slide">

                            <div class="card">
                                <a href="#">
                                    <div class="card__pic" style="background-image: url('images/card/card-3.png');"></div>
                                </a>
                                <div class="card-top">
                                    <div class="card-sale v-sale"><span>80%</span></div>
                                    <div class="card-new v-new"><span>new</span></div>
                                </div>
                                <div class="card__wrap">
                                    <h3 class="card__title"><a href="#">Авторский букет “Гармония”</a></h3>
                                    <div class="card__price">3 500 руб.</div>
                                    <div class="card__overlay">
                                        <div class="card__block">
                                            <div class="card__item">
                                                <input type="radio" name="size" id="checkbox-1" value="Mini" checked>
                                                <label for="checkbox-1"><span>Mini</span>20 см</label>
                                            </div>
                                            <div class="card__item">
                                                <input type="radio" name="size" id="checkbox-2" value="Midi">
                                                <label for="checkbox-2"><span>Midi</span>30 см</label>
                                            </div>
                                            <div class="card__item">
                                                <input type="radio" name="size" id="checkbox-3" value="Max">
                                                <label for="checkbox-3"><span>Max</span>45 см</label>
                                            </div>
                                            <div class="card__item">
                                                <input type="radio" name="size" id="checkbox-30" value="Max">
                                                <label for="checkbox-30"><span>Max</span>50 см</label>
                                            </div>
                                        </div>
                                        <div class="card__basket">
                                            <button class="btn btn--dark card__btn">В корзину</button>
                                            <button class="btn btn--fill card__btn">Купить в 1 клик</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
    
                        </div>
    
                        <div class="swiper-slide">
    
                            <div class="card">
                                <a href="#">
                                    <div class="card__pic" style="background-image: url('images/card/card-2.png');"></div>
                                </a>
                                <div class="card__wrap">
                                    <h3 class="card__title"><a href="#">Авторский букет “Новогоднее настроение”</a></h3>
                                    <div class="card__price">3 500 руб.</div>
                                    <div class="card__overlay">
                                        <div class="card__block">
                                            <div class="card__item">
                                                <input type="radio" name="size-5" id="checkbox-13" value="Mini" checked>
                                                <label for="checkbox-13"><span>Mini</span>20 см</label>
                                            </div>
                                            <div class="card__item">
                                                <input type="radio" name="size-5" id="checkbox-14" value="Midi">
                                                <label for="checkbox-14"><span>Midi</span>30 см</label>
                                            </div>
                                            <div class="card__item">
                                                <input type="radio" name="size-5" id="checkbox-15" value="Max">
                                                <label for="checkbox-15"><span>Max</span>45 см</label>
                                            </div>
                                        </div>
                                        <div class="card__basket">
                                            <button class="btn btn--dark card__btn">В корзину</button>
                                            <button class="btn btn--fill card__btn">Купить в 1 клик</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
    
                        </div>
    
                        <div class="swiper-slide">
    
                            <div class="card">
                                <a href="#">
                                    <div class="card__pic" style="background-image: url('images/card/card-3.png');"></div>
                                </a>
                                <div class="card-top">
                                    <div class="card-sale v-sale"><span>80%</span></div>
                                    <div class="card-new v-new"><span>new</span></div>
                                </div>
                                <div class="card__wrap">
                                    <h3 class="card__title"><a href="#">Авторский букет “Гармония”</a></h3>
                                    <div class="card__price">3 500 руб.</div>
                                    <div class="card__overlay">
                                        <div class="card__block">
                                            <div class="card__item">
                                                <input type="radio" name="size" id="checkbox-1" value="Mini" checked>
                                                <label for="checkbox-1"><span>Mini</span>20 см</label>
                                            </div>
                                            <div class="card__item">
                                                <input type="radio" name="size" id="checkbox-2" value="Midi">
                                                <label for="checkbox-2"><span>Midi</span>30 см</label>
                                            </div>
                                            <div class="card__item">
                                                <input type="radio" name="size" id="checkbox-3" value="Max">
                                                <label for="checkbox-3"><span>Max</span>45 см</label>
                                            </div>
                                        </div>
                                        <div class="card__basket">
                                            <button class="btn btn--dark card__btn">В корзину</button>
                                            <button class="btn btn--fill card__btn">Купить в 1 клик</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
    
                        </div>
    
                        <div class="swiper-slide">
    
                            <div class="card">
                                <a href="#">
                                    <div class="card__pic" style="background-image: url('images/card/card-2.png');"></div>
                                </a>
                                <div class="card__wrap">
                                    <h3 class="card__title"><a href="#">Авторский букет “Новогоднее настроение”</a></h3>
                                    <div class="card__price">3 500 руб.</div>
                                    <div class="card__overlay">
                                        <div class="card__block">
                                            <div class="card__item">
                                                <input type="radio" name="size-5" id="checkbox-13" value="Mini" checked>
                                                <label for="checkbox-13"><span>Mini</span>20 см</label>
                                            </div>
                                            <div class="card__item">
                                                <input type="radio" name="size-5" id="checkbox-14" value="Midi">
                                                <label for="checkbox-14"><span>Midi</span>30 см</label>
                                            </div>
                                            <div class="card__item">
                                                <input type="radio" name="size-5" id="checkbox-15" value="Max">
                                                <label for="checkbox-15"><span>Max</span>45 см</label>
                                            </div>
                                        </div>
                                        <div class="card__basket">
                                            <button class="btn btn--dark card__btn">В корзину</button>
                                            <button class="btn btn--fill card__btn">Купить в 1 клик</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
    
                        </div>
    
                    </div>
                </div>
                <!-- /.composite-slider -->
    
                <div class="section-button-prev swiper-button-prev"></div>
                <div class="section-button-next swiper-button-next"></div>
    
                <div class="s-link">
                    <a href="#" class="btn btn--white s-link__btn s-link__btn--white">Больше букетов</a>
                </div>
            </div>
            <!-- /.container -->
        </section>
        <!-- /.interested -->

    </main>
<?php echo $footer; ?>
