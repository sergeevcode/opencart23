<?php echo $header; ?>
    <main class="main">
        <div class="container">

            <div class="order__head">
                <h1 class="main__title"><?php echo $heading_title; ?></h1>

                <div class="order__back">
                    <a href="/cart">Вернуться к корзине</a>
                </div>
                <!-- /.order__back -->
            </div>

            <div class="order__wrap">
                
                <form action="index.php?route=checkout/confirm" method="post" class="order-form" style="position: relative;">
                    <div class="waiting" style="display: none; border-top-left-radius: 0px; border-top-right-radius: 0px;">
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
                    <div class="order-details">
                        <div class="order-details-left">
                            <div class="order-details__title order-details__title--customer">Данные покупателя</div>
        
                            <div class="order-details__body">
                                <div class="order-details__name input">
                                    <label class="order-label" for="user-name">Имя*</label>
                                    <input class="order-input" type="text" name="firstname" id="user-name" required>
                                </div>
                                <div class="order-details__phone input">
                                    <label class="order-label" for="user-phone">Мобильный телефон*</label>
                                    <input class="order-input" type="tel" name="telephone" id="user-phone" required>
                                </div>
                                <div class="order-details__email input">
                                    <label class="order-label" for="user-email">E-mail*</label>
                                    <input class="order-input" type="email" name="email" id="user-email" required>
                                </div>
                                <div class="checkbox order-details__checkbox">
                                    <input type="checkbox" name="customer-name" id="customer-name">
                                    <label for="customer-name">Не сообщать получателю имя покупателя</label>
                                </div>
                                <div class="checkbox order-details__checkbox">
                                    <input type="checkbox" name="delivery-sms" id="delivery-sms">
                                    <label for="delivery-sms">Получить уведомление о доставке по СМС</label>
                                </div>
                            </div>
                        </div>
                        <!-- /.order-details -->
        
                        <div class="order-details-right">
                            <div class="order-details__title order-details__title--recipient">Данные получателя</div>
        
                            <div class="order-details__body">
                                <div class="checkbox order-details__checkbox">
                                    <input type="checkbox" name="use-customer-name" id="use-customer-name">
                                    <label for="use-customer-name">Использовать данные покупателя</label>
                                </div>
                                <div class="order-details__name input">
                                    <label for="recipient-name">Имя*</label>
                                    <input type="text" name="recipient-name" id="recipient-name" required>
                                </div>
                                <div class="order-details__phone input">
                                    <label for="recipient-phone">Мобильный телефон*</label>
                                    <input type="tel" name="recipient-phone" id="recipient-phone" required>
                                </div>
                            </div>
                        </div>
                        <!-- /.order-details -->
                    </div>
                    <!-- /.order-details -->

                    <div class="order-delivery">
                        <div class="order-delivery__title">Способ получения</div>

                        <div class="order-tabs">
                            <div class="order-tabs__list">
                                <div class="order-tabs__link order-delivery-link active" data-count="tab-1">Доставка</div>
                                <div class="order-tabs__link order-delivery-link" data-count="tab-2">Самовывоз</div>
                            </div>
                        
                            <div class="order-tabs__body">
                                <div id="tab-1" class="order-tabs__content order-delivery-content active">
                                    
                                    <div class="order-delivery__territory territory">

                                        <div class="territory__title">Территория доставки</div>

                                        <div class="territory__select select">
                                            <select name="territory">
                                                <?php 
                                                $i = 0;
                                                foreach ($deliveries as $delivery) { 
                                                    if ($i == 0) {
                                                        $delivery_price = $delivery['price'];
                                                        $i++;
                                                    }
                                                ?>
                                                <option value="<?php echo $delivery['delivery_id']?>" data-price="<?php echo $delivery['price']?>"><?php echo $delivery['name']?></option> 
                                                <?php } ?>
                                            </select>
                                        </div>

                                        <div class="territory__addr">
                                            <div class="territory__delivery-str">
                                                <div class="territory__street input">
                                                    <label for="territory-street">Улица*</label>
                                                    <input type="text" name="territory-street" id="territory-street" required>
                                                </div>
                                            </div>
                                            <div class="territory__delivery-add">
                                                <div class="input">
                                                    <label for="territory-house">Дом*</label>
                                                    <input type="text" name="territory-house" id="territory-house" required>
                                                </div>
                                                <div class="input">
                                                    <label for="territory-floor">Этаж</label>
                                                    <input type="text" name="territory-floor" id="territory-floor">
                                                </div>
                                                <div class="input">
                                                    <label for="territory-flat">Квартира</label>
                                                    <input type="text" name="territory-flat" id="territory-flat">
                                                </div>
                                                <div class="input">
                                                    <label for="territory-entrance">Подъезд</label>
                                                    <input type="text" name="territory-entrance" id="territory-entrance">
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- /.order-delivery-territory -->

                                    <div class="order-delivery__date date">
                                        <div class="date__title">Дата доставки:</div>

                                        <div class="date-input input date">
                                            <input type="text" name="date" class="form-control">
                                            <span class="input-group-addon">
                                                <img src="/assets/images/icons/date-piccer.png" alt="">
                                            </span>
                                        </div>

                                        <div class="order-delivery-time">
                                            <div class="order-delivery-time__left">
                                                <div class="radio order-delivery-time__radio">
                                                    <input type="radio" name="delivery-time" value="1" id="delivery-period-time" checked="">
                                                    <label for="delivery-period-time">Временной промежуток доставки</label>
                                                </div>
                                                <div class="order-delivery-time__select select">
                                                    <select name="period">
                                                        <?php foreach($config_work_time as $time) {  ?>
                                                            <?php if ($time) { ?>
                                                                <option value="<?php echo $time?>"><?php echo $time?></option>
                                                            <?php } ?>
                                                        <?php } ?>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="order-delivery-time__right">
                                                <div class="radio order-delivery-time__radio">
                                                    <input type="radio" name="delivery-time" value="2" data-price="<?php echo number_format($delivery_tax['price'], 0) ?>" id="delivery-exact-time">
                                                    <label for="delivery-exact-time">Точное время доставки (+ 100 рублей)</label>
                                                </div>

                                                <div class="order-delivery-time__input">
                                                    <div class="order-delivery-time__amount">
                                                        <div class="amount">
                                                            <button type="button" class="amount__btn-minus" data-minus="hours">-</button>
                                                            <input type="text" class="amount__input" name="hours" maxlength="3" value="00">
                                                            <button type="button" class="amount__btn-plus" data-plus="hours">+</button>
                                                        </div>
                                                        <div class="amount__measure">часов</div>
                                                    </div>
                                                    <div class="order-delivery-time__amount">
                                                        <div class="amount">
                                                            <button type="button" class="amount__btn-minus" data-plus="minutes">-</button>
                                                            <input type="text" class="amount__input" name="minutes" maxlength="3" value="00">
                                                            <button type="button" class="amount__btn-plus" data-plus="minutes">+</button>
                                                        </div>
                                                        <div class="amount__measure">минут</div>
                                                    </div>
                                                    
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /.order-delivery-time -->

                                    </div>
                                    <!-- /.order-delivery__date -->

                                </div>
                                <div id="tab-2" class="order-tabs__content order-delivery-content">
                                    
                                    <div class="pickup__wrap">
                                        <?php 
                                        $i = 0;
                                        foreach($locations as $location) {
                                            $i++;
                                        ?> 
                                        <div class="radio pickup__radio">
                                            <input type="radio" name="shipping_method" value="Самовывоз: <?php echo $location['address']?>" id="pickup-<?php echo $i ?>">
                                            <label for="pickup-<?php echo $i ?>">
                                                <div class="pickup__content">
                                                    <div class="pickup__addr"><?php echo $location['address']?></div>
                                                    <div class="pickup__tel">
                                                        <span>Телефон:</span>
                                                        <a href="tel:<?php echo $location['telephone']?>"><?php echo $location['telephone_publish']?></a>
                                                    </div>
                                                    <div class="pickup__time">
                                                        <span>Время работы:</span>
                                                        <div class="pickup__block" style="font-weight: unset !important">
                                                            <?php echo html_entity_decode(str_replace("<br>", "", $location['open'])); ?> 

                                                        </div>
                                                    </div>
                                                </div>
                                            </label>
                                        </div>
                                        <?php } ?>

                                    </div>
                                    <!-- /.pickup__wrap -->

                                </div>
                            </div>
                        </div>
                        <!-- /.order-tabs -->

                    </div>
                    <!-- /.order-receive --> 
                    <div class="order-additional-services services">
                        <div class="services__title">Дополнительные услуги</div>

                        <div class="services__wrap">
                            <?php
                            $i = 0;
                            foreach ($services as $service) {
                                $i++;
                            ?>
                            <div class="services-item">
                                <div class="checkbox services__checkbox">
                                    <input type="checkbox" name="services-name" data-price="<?php echo $service['price_number']?>" value="<?php echo $service['service_id']?>" id="services-name-<?php echo $i?>">
                                    <label for="services-name-<?php echo $i?>"><?php echo $service['name']?></label>
                                </div>
                                <div class="services-item__price">
                                    <?php echo $service['price']?>
                                </div>
                            </div>
                            <!-- /.services-item -->
                            <?php } ?>
                            
                        </div>
                        <!-- /.services__wrap -->

                    </div>
                    <!-- /.order-additional-services -->

                    <div class="order-total-cost total-cost">
                        <div class="total-cost__head">
                            <div class="total-cost__title">
                                Итоговая стоимость заказа
                            </div>
                            <div class="total-cost__sum">
                                <span class="total-price"><?php echo number_format((int)$totals + (int)$delivery_price, 0, '', ' ')?></span> руб.
                            </div>
                        </div>

                        <div class="total-cost__wrap">
                            <div class="total-cost__item">
                                <div class="total-cost__name">Цветы и подарки</div>
                                <div class="total-cost__price"><span class="main-price"><?php echo $totals?></span> рублей</div>
                            </div>
                            <div class="total-cost__item" data-delivery>
                                <div class="total-cost__name">Доставка</div>
                                <div class="total-cost__price"><span class="delivery-price"><?php echo $delivery_price?></span> рублей</div>
                            </div>
                            <div class="total-cost__item">
                                <div class="total-cost__name">Дополнительные услуги</div>
                                <div class="total-cost__price"><span class="service-price">0</span> рублей</div>
                            </div>
                        </div>
                        <!-- /.total-cost__wrap -->
                    </div>
                    <!-- /.order-total-cost -->

                    <div class="order-comment comment">
                        <div class="comment__title">Комментарии к заказу</div>

                        <div class="comment__message">
                            <textarea name="message"></textarea>
                        </div>
                        <!-- /.comment__message -->
                    </div>
                    <!-- /.order-comment -->

                    <div class="order-payment payment">
                        <div class="payment__title">Способ оплаты</div>

                        <div class="order-tabs">
                            <div class="order-tabs__list">
                                <div class="order-tabs__link payment-tabs__link" style="display:none" data-count="tab-3">Онлайн</div>
                                <div class="order-tabs__link payment-tabs__link active" data-count="tab-4">При получении</div>
                            </div>
                        
                            <div class="order-tabs__body">
                                <div id="tab-3" class="order-tabs__content payment-tabs__content">
                                    
                                    <div class="checkbox">
                                        <input type="checkbox" name="online-payment-checkbox" id="online-payment-checkbox" checked>
                                        <label for="online-payment-checkbox">
                                            <span>Нажимая кнопку «Оплатить заказ», Вы даете свое согласие на обработку персональных данных в соответствии с <a href="#" target="_blank" rel="noopener noreferrer">Политикой обработки персональных данных</a></span>
                                        </label>
                                    </div>

                                    <div class="payment__btn">
                                        <button class="btn btn--fill payment-btn">Оплатить заказ</button>
                                    </div>

                                </div>
                                <div id="tab-4" class="order-tabs__content payment-tabs__content active">
                                    
                                    <div class="payment-receipt">
                                        <div class="radio payment__radio">
                                            <input type="radio" name="payment_method" value="Наличными" id="payment-cash" checked>
                                            <label for="payment-cash">Наличными</label>
                                        </div>
                                        <div class="radio payment__radio">
                                            <input type="radio" name="payment_method" value="Банковской картой" id="payment-card">
                                            <label for="payment-card">Банковской картой</label>
                                        </div>
                                    </div>

                                    <div class="checkbox">
                                        <input type="checkbox" name="online-payment-checkbox" id="cash-payment-checkbox" checked>
                                        <label for="cash-payment-checkbox">
                                            <span>Нажимая кнопку «Оформить заказ», Вы даете свое согласие на обработку персональных данных в соответствии с <a href="/terms" target="_blank" rel="noopener noreferrer">Политикой обработки персональных данных</a></span>
                                        </label>
                                    </div>

                                    <div class="payment__btn" style="display: flex; align-items: center; justify-content: flex-start;">
                                        <button class="btn btn--fill payment-btn">Оформить заказ</button>
                                        <p class="order-checkouting" style="display:none; margin-left: 10px; margin-bottom: 0;"> Заказ оформляется</p>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!-- /.order-tabs -->
                    </div> 
                </form>

            </div>
            <!-- /.order__wrap -->

        </div>
        <!-- /.container -->
        
    </main>

<?php echo $footer; ?>
