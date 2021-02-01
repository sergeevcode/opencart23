
    <section class="<?php echo $class?>">
        <div class="container section-container">
            <h2 class="s-title"><?php echo $name; ?></h2>

            <div class="<?php echo $class?>-slider swiper-container">
                <div class="swiper-wrapper">
                	<?php 
                    foreach ($products as $product) { ?>
                    <div class="swiper-slide">
                        <div class="card">
                            <a href="<?php echo $product['href']; ?>">
                                <div class="card__pic" style="background-image: url('<?php echo $product['thumb']; ?>');"></div>
                            </a>
                            <div class="card-top">
                                <?php if ($product['percents']) { ?>
                                <div class="card-sale v-sale"><span><?php echo $product['percents'] ?>%</span></div>
                                <?php } ?>
                                <?php if ($product['badge']) { ?>
                                <div class="card-new v-new"><span><?php echo $product['badge'] ?></span></div>
                                <?php } ?>
                            </div>
                            <div class="card__wrap">
                                <h3 class="card__title"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h3>
                                <?php if (!$product['special']) { ?>
                                <div class="card__price"><?php echo $product['price']; ?></div>					            
					            <?php } else { ?>
                                <div class="card__price"><?php echo $product['special']; ?></div>	
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
                <a href="#" class="btn s-link__btn <?php echo $btnclass ?>">Больше букетов</a>
            </div>
        </div>
        <!-- /.container -->
    </section>
    <!-- /.composite -->



