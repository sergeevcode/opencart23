<?php echo $header; ?>
    <main class="main contacts-bg">
        <div class="container">

            <h1 class="main__title">Корзина</h1>

            <div class="basket">

                <div class="basket__list">
                	<?php foreach ($products as $product) { ?>
                    <div class="basket-item" data-product="<?php echo $product['cart_id']; ?>">
                    	<?php if ($product['special']) { ?>
	                        <div class="h-sale basket-sale"><?php echo $product['percents']?>%</div>
	                    <?php } ?>
                        <button type="button" data-product="<?php echo $product['cart_id']; ?>" class="basket-delete">&#10006;</button>

                        <div class="basket__left">
                            <div class="basket__img">
                                <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>">
                            </div>
                        </div>

                        <div class="basket__right">
                            <h2 class="basket__title"><?php echo $product['name']; ?></h2>
                            <div class="basket__body">
                                <div class="basket__amount">
                                    <div class="amount">
                                        <button class="amount__btn-minus">-</button>
                                        <input type="text" class="amount__input" name="quantity[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['quantity']; ?>" size="1"  maxlength="3">
                                        <button class="amount__btn-plus">+</button>
                                    </div>
                                </div>
                                <div class="basket-price">
                                	<?php if ($product['special']) { ?>
	                                    <span class="basket-price__new"><?php echo $product['special']; ?></span>
	                                    <span class="basket-price__old"><?php echo $product['price_old']; ?></span>
	                                <?php } else {?> 
	                                    <span class="basket-price__new"><?php echo $product['price']; ?></span> 
	                                <?php } ?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.basket-item -->
              		<?php } ?>
               

                </div>
                <!-- /.basket__list -->

                <div class="basket-total">
                    
                    <div class="basket-total__wrap">
                        <div class="basket-total__head">

           	 				<?php foreach ($totals as $total) { ?>
                            <div class="basket-total__block">
                                <div class="basket-total__txt"><?php echo $total['title']; ?>:</div>
                                <div class="basket-total__descr"><?php echo $total['text']; ?></div>
                            </div> 
            				<?php } ?>
                        </div>

                        <div class="basket-total__bottom">
                            <div class="basket-total__sum">Итого: <span><?php echo $total['text']?></span></div>
                            <a href="<?php echo $checkout; ?>" class="btn btn--fill basket-total__btn">Оформить заказ</a>
                        </div>
                    </div>

                </div>
                <!-- /.basket-total -->

            </div>
            <!-- /.basket -->

        </div>
        <!-- /.container -->
        
    </main>
<?php echo $footer; ?>