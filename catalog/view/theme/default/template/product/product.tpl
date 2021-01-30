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
                        <h1 class="content__title"><?php echo $heading_title; ?></h1>

              			<?php if ($price) { ?>
	                        <div class="content-price">
	                        	<?php if (!$special) { ?>
		                            <span class="content-price__new"><?php echo $price; ?>.</span>
	                        		<?php } else { ?>
		                            <span class="content-price__new"><?php echo $special; ?></span>
		                            <span class="content-price__old"><?php echo $price; ?></span>
		                            <div class="h-sale content-sale"><?php echo $percents; ?>%</div>
	              				<?php } ?>
	                        </div>
	                        <!-- /.content-price -->
	              		<?php } ?>
                        <div class="content-amount">
                            <span>Количество:</span>
                            <div class="amount">
                                <button class="amount__btn-minus">-</button>
                                <input type="text" class="amount__input" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity"  maxlength="3">
                                <button class="amount__btn-plus">+</button>
                                <!-- <div class="amount__measure">шт</div> -->
                            </div>
                        </div>
                        <!-- /.content-amount -->

            			<?php if ($options) { ?>
                        <div class="content-size">
                            <div class="content-size__title">Размер букета:</div>
                            <div class="content-size__wrap">

            					<?php 
            					$i = 0;
            					foreach ($options as $option) { 
            						
            					?>
            						<?php foreach ($option['product_option_value'] as $option_value) { 
            							$i++;
            						?>
		                                <div class="content-size__item">
		                                    <input type="radio" id="option_<?php echo $option['product_option_id'].$i; ?>" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" <?php echo ($i==1) ? 'checked' : ''?>>
		                                    <label for="option_<?php echo $option['product_option_id'].$i; ?>"><?php echo html_entity_decode($option_value['name']); ?></label>
		                                </div> 
	                				<?php } ?>
                				<?php } ?>
                            </div>
                        </div>
                        <!-- /.content-size -->
        				<?php } ?>
                        <div class="content-basket">
                        	<input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                            <button id="button-cart" data-link-id="basket-modal" data-image="<?php echo $thumb; ?>" data-name="<?php echo $heading_title; ?>" data-href="" class="btn btn--dark btn-basket content-basket__btn">Добавить В корзину</button>
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

      					<?php if ($tags) { ?>
                        <div class="content-descr__composition">
                            <h4 class="content-descr__title content-descr__title--white">Цветы<br>в составе букета:</h4>
                            <div class="content-descr__wrap">
                                <div class="content-descr__tags-list">
									<?php for ($i = 0; $i < count($tags); $i++) { ?>
								        <?php if ($i < (count($tags) - 1)) { ?>
								        	<a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
							        	<?php } else { ?>
								        	<a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
								        <?php } ?>
							        <?php } ?>
                                </div>
                            </div>
                        </div>
                        <!-- /.descr__composition -->
        				<?php } ?>
        				<?php if ($attribute_groups) { ?>
	        				<?php foreach ($attribute_groups as $attribute_group) { ?>
		                        <div class="content-descr__color">
		                            <h4 class="content-descr__title">Цвета букета:</h4>
		                            <div class="content-descr__wrap">
		                                <div class="content-descr__tags-color-list">
		                                	<?php foreach ($attribute_group['attribute'] as $attribute) { ?>
		                                    	<a href="#"><span style="background-color: <?php echo $attribute['text']; ?>;"></span><?php echo $attribute['name']; ?></a>
                  							<?php } ?> 
		                                </div>
		                            </div>
		                        </div>
		                        <!-- /.descr__color -->
	        				<?php } ?>
        				<?php } ?>

                    </div>
                    <!-- /.content-descr__wrap -->
                    
                    <div class="content-descr__text">
                        <h4 class="content-descr__title">Описание букета:</h4>
                        <div class="content-descr__wrap">
                            <?php echo $description; ?>
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
