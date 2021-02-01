<?php echo $header; ?>
    <main class="main contacts-bg">
        <div class="container">

            <h1 class="main__title">Корзина</h1>

            <div class="basket">

                <div class="basket__list">
                	<?php foreach ($products as $product) { ?>
                    <div class="basket-item" data-product="<?php echo $product['cart_id']; ?>">
                        <div class="waiting" style="display: none;">
                            <div class="windows8">
                                <div class="wBall" id="wBall_1">
                                    <div class="wInnerBall"></div>
                                </div>
                                <div class="wBall" id="wBall_2">
                                    <div class="wInnerBall"></div>
                                </div>
                                <div class="wBall" id="wBall_3">
                                    <div class="wInnerBall"></div>
                                </div>
                                <div class="wBall" id="wBall_4">
                                    <div class="wInnerBall"></div>
                                </div>
                                <div class="wBall" id="wBall_5">
                                    <div class="wInnerBall"></div>
                                </div>
                            </div>
                        </div>
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
                            <h2 class="basket__title"><?php echo $product['name']; ?> <?php echo html_entity_decode($product['option'][0]['value'])?></h2> 
                            <div class="basket__body">
                                <div class="basket__amount">
                                    <div class="amount">
                                        <button class="amount__btn-minus" data-product="<?php echo $product['cart_id']; ?>">-</button>
                                        <input type="text" class="amount__input" name="quantity[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['quantity']; ?>"  maxlength="3">
                                        <button class="amount__btn-plus" data-product="<?php echo $product['cart_id']; ?>">+</button>
                                    </div>
                                </div>
                                <div class="basket-price">
                                	<?php if ($product['special']) { ?>
	                                    <span class="basket-price__new" data-product="<?php echo $product['cart_id']; ?>" data-price="<?=$product['price_by_one']?>"><?php echo number_format($product['total'], 0, '', ' '); ?>  руб.</span>
	                                    <span class="basket-price__old" data-product="<?php echo $product['cart_id']; ?>" data-price="<?=$product['price_by_one']?>"><?php echo number_format($product['price_old'], 0, '', ' '); ?>  руб.</span>
	                                <?php } else {?> 
	                                    <span class="basket-price__new" data-product="<?php echo $product['cart_id']; ?>" data-price="<?=$product['price_by_one']?>"><?php echo number_format($product['total'], 0, '', ' '); ?>  руб.</span> 
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
 
                            <div class="basket-total__block">
                                <div class="basket-total__txt">Сумма:</div>
                                <div class="basket-total__descr"><?php echo $totals[0]['text']?> руб.</div>
                            </div>  
 
                            <div class="basket-total__block">
                                <div class="basket-total__txt">Скидка:</div>
                                <div class="basket-total__descr"><?php echo $sale; ?> руб.</div>
                            </div>  
                        </div> 
                        <div class="basket-total__bottom">
                            <div class="basket-total__sum">Итого: <span><?php echo $totals[1]['text']?> руб.</span></div>
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