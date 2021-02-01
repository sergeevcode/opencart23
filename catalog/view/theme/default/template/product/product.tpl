<?php echo $header; ?>
    <main class="main">

        <div class="container">
            <div class="breadcrumbs">
                <ul class="breadcrumbs__list">
                    <?php
                    $i = 0;
                    foreach ($breadcrumbs as $breadcrumb) { 
                    $i++;
                    if ($i == count($breadcrumbs)):
                    ?>
                    <li class="active"><?php echo $breadcrumb['text']; ?></li>
                    <? else: ?>
                    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                    <? endif;?>
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
		                            <span class="content-price__new"><?php echo $price; ?></span>
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
                            <button id="button-cart" data-price="<?=($special) ? $special : $price ?>" data-link-id="basket-modal" data-image="<?php echo $thumb; ?>" data-name="<?php echo $heading_title; ?>" data-href="<?=$url?>" class="btn btn--dark btn-basket content-basket__btn">Добавить В корзину</button>
                            <button class="btn btn--fill content-basket__btn--buy" data-name="<?php echo $heading_title; ?>" data-href="<?=$url?>"  data-link-id="buyoneclick-modal">Купить в 1 клик</button>
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
		                                    	<a href="/search?color=<?php echo $attribute['name']; ?>"><span style="background-color: <?php echo $attribute['text']; ?>;"></span><?php echo $attribute['name']; ?></a>
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
        <?php if ($products) {?>
        <section class="similar">
            <div class="container section-container">
                <h2 class="s-title">Похожие букеты</h2>
    
                <div class="similar-slider swiper-container">
                    <div class="swiper-wrapper">
                        <?php foreach($products as $product) { ?>
                        <div class="swiper-slide">

                            <div class="card">
                                <a href="<?php echo $product['href']?>">
                                    <div class="card__pic" style="background-image: url('<?php echo $product['thumb']?>');"></div>
                                </a>
                                <div class="card-top">
                                    <div class="card-sale v-sale"><span>80%</span></div>
                                    <div class="card-new v-new"><span>new</span></div>
                                </div>
                                <div class="card__wrap">
                                    <h3 class="card__title"><a href="<?php echo $product['href']?>"><?php echo $product['name']?></a></h3>
                                    <?php if ($product['special']) {?>
                                    <div class="card__price"><?php echo $product['special'] ?></div>
                                    <?php } else { ?>
                                    <div class="card__price"><?php echo $product['price'] ?></div>
                                    <?php } ?>
                                    <div class="card__overlay">
                                        <form class="form-slide">
                                        <div class="card__block">
                                            <?php 
                                                foreach ($product['options'] as $option) {  
                                                $p = 0;                             
                                                ?>
                                            <?php foreach ($option['product_option_value'] as $option_value) { 
                                                $p++;
                                                $i = rand(0, 100);
                                            ?>
                                                <div class="card__item">
                                                   <input type="radio" id="option_<?php echo $option['product_option_id'].$i; ?>" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" <?php echo ($p==1) ? 'checked' : ''?>>
                                                    <label for="option_<?php echo $option['product_option_id'].$i; ?>"><?php echo html_entity_decode($option_value['name']); ?></label>
                                                </div> 
                                             <?php } ?>
                                            <?php } ?>
                                        </div>
                                        <div class="card__basket">
                                                <input type="hidden" name="quantity" value="1">
                                                <input type="hidden" name="product_id" value="<?php echo $product['product_id']; ?>" />
                                                <button type="submit" class="btn btn--dark card__btn" 
                                                data-price="<?=($product['special']) ? $product['special'] : $product['price']; ?>" 
                                                data-link-id="basket-modal" 
                                                data-image="<?php echo $product['thumb']; ?>" 
                                                data-name="<?php echo $product['name']; ?>" 
                                                data-href="<?php echo $product['href']; ?>" 

                                                    data-link-id="basket-modal">В корзину</button>
                                                
                                                <button type="button" class="btn btn--fill card__btn byonelick" data-name="<?php echo $product['name']; ?>" 
                                                data-href="<?php echo $product['href']; ?>"  data-link-id="buyoneclick-modal">Купить в 1 клик</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
    
                        </div>
                        <?php } ?>
    
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
        <?php } ?>
        <?php if ($prizes) {?>
        <section class="gifts">
            <div class="container section-container">
                <h2 class="s-title">Дополнительные подарки к букету</h2>
    
                <div class="gifts-slider swiper-container">
                    <div class="swiper-wrapper">
                        <?php foreach ($prizes as $product) {?>
                           <div class="swiper-slide">

                                <div class="card">
                                    <a href="<?php echo $product['href']?>">
                                        <div class="card__pic" style="background-image: url('<?php echo $product['thumb']?>');"></div>
                                    </a>
                                    <div class="card-top">
                                        <div class="card-sale v-sale"><span>80%</span></div>
                                        <div class="card-new v-new"><span>new</span></div>
                                    </div>
                                    <div class="card__wrap">
                                        <h3 class="card__title"><a href="<?php echo $product['href']?>"><?php echo $product['name']?></a></h3>
                                        <?php if ($product['special']) {?>
                                        <div class="card__price"><?php echo $product['special'] ?></div>
                                        <?php } else { ?>
                                        <div class="card__price"><?php echo $product['price'] ?></div>
                                        <?php } ?>
                                        <div class="card__overlay">
                                            <form class="form-slide">
                                            <div class="card__block">
                                                <?php 
                                                    foreach ($product['options'] as $option) {  
                                                    $p = 0;                             
                                                    ?>
                                                <?php foreach ($option['product_option_value'] as $option_value) { 
                                                    $p++;
                                                    $i = rand(0, 100);
                                                ?>
                                                    <div class="card__item">
                                                       <input type="radio" id="option_<?php echo $option['product_option_id'].$i; ?>" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" <?php echo ($p==1) ? 'checked' : ''?>>
                                                        <label for="option_<?php echo $option['product_option_id'].$i; ?>"><?php echo html_entity_decode($option_value['name']); ?></label>
                                                    </div> 
                                                 <?php } ?>
                                                <?php } ?>
                                            </div>
                                            <div class="card__basket">
                                                <input type="hidden" name="quantity" value="1">
                                                <input type="hidden" name="product_id" value="<?php echo $product['product_id']; ?>" />
                                                <button type="submit" class="btn btn--dark card__btn" 
                                                data-price="<?=($product['special']) ? $product['special'] : $product['price']; ?>" 
                                                data-link-id="basket-modal" 
                                                data-image="<?php echo $product['thumb']; ?>" 
                                                data-name="<?php echo $product['name']; ?>" 
                                                data-href="<?php echo $product['href']; ?>" 

                                                    data-link-id="basket-modal">В корзину</button>
                                                
                                                <button type="button" class="btn btn--fill card__btn byonelick" data-name="<?php echo $product['name']; ?>" 
                                                data-href="<?php echo $product['href']; ?>"  data-link-id="buyoneclick-modal">Купить в 1 клик</button>
                                            </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
        
                            </div>
                        <?php } ?>
    
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
        <?php } ?>

        <?php if ($maybe) {?>
        <section class="interested">
            <div class="container section-container">
                <h2 class="s-title">Возможно, вас заинтересует</h2>
    
                <div class="interested-slider swiper-container">
                    <div class="swiper-wrapper">
    
                        <?php foreach ($maybe as $product) {?>
                           <div class="swiper-slide">

                                <div class="card">
                                    <a href="<?php echo $product['href']?>">
                                        <div class="card__pic" style="background-image: url('<?php echo $product['thumb']?>');"></div>
                                    </a>
                                    <div class="card-top">
                                        <div class="card-sale v-sale"><span>80%</span></div>
                                        <div class="card-new v-new"><span>new</span></div>
                                    </div>
                                    <div class="card__wrap">
                                        <h3 class="card__title"><a href="<?php echo $product['href']?>"><?php echo $product['name']?></a></h3>
                                        <?php if ($product['special']) {?>
                                        <div class="card__price"><?php echo $product['special'] ?></div>
                                        <?php } else { ?>
                                        <div class="card__price"><?php echo $product['price'] ?></div>
                                        <?php } ?>
                                        <div class="card__overlay">
                                            <form class="form-slide">
                                            <div class="card__block">
                                                <?php 
                                                    foreach ($product['options'] as $option) {  
                                                    $p = 0;                             
                                                    ?>
                                                <?php foreach ($option['product_option_value'] as $option_value) { 
                                                    $p++;
                                                    $i = rand(0, 100);
                                                ?>
                                                    <div class="card__item">
                                                       <input type="radio" id="option_<?php echo $option['product_option_id'].$i; ?>" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" <?php echo ($p==1) ? 'checked' : ''?>>
                                                        <label for="option_<?php echo $option['product_option_id'].$i; ?>"><?php echo html_entity_decode($option_value['name']); ?></label>
                                                    </div> 
                                                 <?php } ?>
                                                <?php } ?>
                                            </div>
                                            <div class="card__basket">
                                                <input type="hidden" name="quantity" value="1">
                                                <input type="hidden" name="product_id" value="<?php echo $product['product_id']; ?>" />
                                                <button type="submit" class="btn btn--dark card__btn" 
                                                data-price="<?=($product['special']) ? $product['special'] : $product['price']; ?>" 
                                                data-link-id="basket-modal" 
                                                data-image="<?php echo $product['thumb']; ?>" 
                                                data-name="<?php echo $product['name']; ?>" 
                                                data-href="<?php echo $product['href']; ?>" 

                                                    data-link-id="basket-modal">В корзину</button>
                                                
                                                <button type="button" class="btn btn--fill card__btn byonelick" data-name="<?php echo $product['name']; ?>" 
                                                data-href="<?php echo $product['href']; ?>"  data-link-id="buyoneclick-modal">Купить в 1 клик</button>
                                            </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
        
                            </div>
                        <?php } ?>
     
    
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
        <?php } ?>
    </main>
<?php echo $footer; ?>
