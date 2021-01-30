    <section class="<?php echo $class?>">
        <div class="container section-container">
            <h2 class="s-title"><?php echo $name; ?></h2>

            <div class="<?php echo $class?>-slider swiper-container">
                <div class="swiper-wrapper">
                	<?php foreach ($products as $product) { ?>
                    <div class="swiper-slide">

                        <div class="card">
                            <a href="<?php echo $product['href']; ?>">
                                <div class="card__pic" style="background-image: url('<?php echo $product['thumb']; ?>');"></div>
                            </a>
                            <div class="card-top">
                                <div class="card-sale v-sale"><span>80%</span></div>
                                <div class="card-new v-new"><span>new</span></div>
                            </div>
                            <div class="card__wrap">
                                <h3 class="card__title"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h3>
                                <?php if (!$product['special']) { ?>
                                <div class="card__price"><?php echo $product['price']; ?></div>					            
					            <?php } else { ?>
                                <div class="card__price"><?php echo $product['special']; ?></div>	
				            	<?php } ?> 
                                <div class="card__overlay">
                                    <div class="card__block">
                                    	<?php 
		            					$i = 0;
		            					foreach ($product['options'] as $option) { 		       						
		            					?>
		            						<?php foreach ($option['product_option_value'] as $option_value) { 
		            							$i++;
		            						?>
		                                        <div class="card__item">
		                                           <input type="radio" id="option_<?php echo $option['product_option_id'].$i; ?>" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>">
		                                    		<label for="option_<?php echo $option['product_option_id'].$i; ?>"><?php echo html_entity_decode($option_value['name']); ?></label>
		                                        </div> 
			                				<?php } ?>
		                				<?php } ?>
                                    </div>
                                    <div class="card__basket">
                                        <button class="btn btn--dark card__btn" data-link-id="basket-modal">В корзину</button>
                                        <button class="btn btn--fill card__btn">Купить в 1 клик</button>
                                    </div>
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
                <a href="#" class="btn s-link__btn <?php echo $btnclass ?>">Больше букетов</a>
            </div>
        </div>
        <!-- /.container -->
    </section>
    <!-- /.composite -->



