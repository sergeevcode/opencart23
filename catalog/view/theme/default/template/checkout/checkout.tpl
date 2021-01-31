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

                <form action="index.php?route=checkout/confirm" method="post" class="order-form">

                    <div class="order-details">
                        <div class="order-details-left">
                            <div class="order-details__title order-details__title--customer">Данные покупателя</div>
        
                            <div class="order-details__body">
                                <div class="order-details__name input">
                                    <label class="order-label" for="user-name">Имя*</label>
                                    <input class="order-input" type="text" name="user-name" id="user-name" required>
                                </div>
                                <div class="order-details__phone input">
                                    <label class="order-label" for="user-phone">Мобильный телефон*</label>
                                    <input class="order-input" type="tel" name="user-phone" id="user-phone" required>
                                </div>
                                <div class="order-details__email input">
                                    <label class="order-label" for="user-email">E-mail*</label>
                                    <input class="order-input" type="email" name="user-email" id="user-email" required>
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
                                                <option value="Оренбург">Оренбург</option>
                                                <option value="Оренбург 2">Оренбург 2</option>
                                                <option value="Оренбург 3">Оренбург 3</option>
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
                                            <input type="text" class="form-control">
                                            <span class="input-group-addon">
                                                <img src="images/icons/date-piccer.png" alt="">
                                            </span>
                                        </div>

                                        <div class="order-delivery-time">
                                            <div class="order-delivery-time__left">
                                                <div class="radio order-delivery-time__radio">
                                                    <input type="radio" name="delivery-time" id="delivery-period-time">
                                                    <label for="delivery-period-time">Временной промежуток доставки</label>
                                                </div>
                                                <div class="order-delivery-time__select select">
                                                    <select name="period">
                                                        <option value="07:00 - 13:00">07:00 - 13:00</option>
                                                        <option value="13:00 - 15:00">13:00 - 15:00</option>
                                                        <option value="15:00 - 18:00">15:00 - 18:00</option>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="order-delivery-time__right">
                                                <div class="radio order-delivery-time__radio">
                                                    <input type="radio" name="delivery-time" id="delivery-exact-time">
                                                    <label for="delivery-exact-time">Точное время доставки (+ 100 рублей)</label>
                                                </div>

                                                <div class="order-delivery-time__input">
                                                    <div class="order-delivery-time__amount">
                                                        <div class="amount">
                                                            <button type="button" class="amount__btn-minus">-</button>
                                                            <input type="text" class="amount__input" name="amount" maxlength="3" value="00">
                                                            <button type="button" class="amount__btn-plus">+</button>
                                                        </div>
                                                        <div class="amount__measure">часов</div>
                                                    </div>
                                                    <div class="order-delivery-time__amount">
                                                        <div class="amount">
                                                            <button type="button" class="amount__btn-minus">-</button>
                                                            <input type="text" class="amount__input" name="amount" maxlength="3" value="00">
                                                            <button type="button" class="amount__btn-plus">+</button>
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

                                        <div class="radio pickup__radio">
                                            <input type="radio" name="pickup" id="pickup-1" checked>
                                            <label for="pickup-1">
                                                <div class="pickup__content">
                                                    <div class="pickup__addr">г. Оренбург, ул. Правды, 25</div>
                                                    <div class="pickup__tel">
                                                        <span>Телефон:</span>
                                                        <a href="tel:+73532902202">+7 (3532) 90-22-02</a>
                                                    </div>
                                                    <div class="pickup__time">
                                                        <span>Время работы:</span>
                                                        <div class="pickup__block">
                                                            <div class="pickup__w-time">
                                                                <span class="work-day">Пн - Сб</span>
                                                                <span class="work-time">07:00 - 20:00</span>
                                                            </div>
                                                            <div class="pickup__w-time">
                                                                <span class="work-day">Вс</span>
                                                                <span class="work-time">10:00 - 18:00</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </label>
                                        </div>

                                        <div class="radio pickup__radio">
                                            <input type="radio" name="pickup" id="pickup-2">
                                            <label for="pickup-2">
                                                <div class="pickup__content">
                                                    <div class="pickup__addr">г. Оренбург, п. Ростоши, ул. Газпромовская, 63</div>
                                                    <div class="pickup__tel">
                                                        <span>Телефон:</span>
                                                        <a href="tel:+73532919119">+7 (3532) 91-91-19</a>
                                                    </div>
                                                    <div class="pickup__time">
                                                        <span>Время работы:</span>
                                                        <div class="pickup__block">
                                                            <div class="pickup__w-time">
                                                                <span class="work-day">Пн - Сб</span>
                                                                <span class="work-time">08:00 - 20:00</span>
                                                            </div>
                                                            <div class="pickup__w-time">
                                                                <span class="work-day">Вс</span>
                                                                <span class="work-time">10:00 - 20:00</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </label>
                                        </div>

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

                            <div class="services-item">
                                <div class="checkbox services__checkbox">
                                    <input type="checkbox" name="services-name" id="services-name-1">
                                    <label for="services-name-1">Название дополнительной услуги</label>
                                </div>
                                <div class="services-item__price">
                                    Бесплатно
                                </div>
                            </div>
                            <!-- /.services-item -->

                            <div class="services-item">
                                <div class="checkbox services__checkbox">
                                    <input type="checkbox" name="services-name" id="services-name-2">
                                    <label for="services-name-2">Длинное название дополнительной услуги</label>
                                </div>
                                <div class="services-item__price">
                                    Бесплатно
                                </div>
                            </div>
                            <!-- /.services-item -->
                            
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
                                7 500 руб.
                            </div>
                        </div>

                        <div class="total-cost__wrap">
                            <div class="total-cost__item">
                                <div class="total-cost__name">Цветы и подарки</div>
                                <div class="total-cost__price">7 200 рублей</div>
                            </div>
                            <div class="total-cost__item">
                                <div class="total-cost__name">Доставка</div>
                                <div class="total-cost__price">200 рублей</div>
                            </div>
                            <div class="total-cost__item">
                                <div class="total-cost__name">Дополнительные услуги</div>
                                <div class="total-cost__price">100 рублей</div>
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
                                            <input type="radio" name="payment-method" id="payment-cash" checked>
                                            <label for="payment-cash">Наличными</label>
                                        </div>
                                        <div class="radio payment__radio">
                                            <input type="radio" name="payment-method" id="payment-card">
                                            <label for="payment-card">Банковской картой</label>
                                        </div>
                                    </div>

                                    <div class="checkbox">
                                        <input type="checkbox" name="online-payment-checkbox" id="cash-payment-checkbox" checked>
                                        <label for="cash-payment-checkbox">
                                            <span>Нажимая кнопку «Оформить заказ», Вы даете свое согласие на обработку персональных данных в соответствии с <a href="#" target="_blank" rel="noopener noreferrer">Политикой обработки персональных данных</a></span>
                                        </label>
                                    </div>

                                    <div class="payment__btn">
                                        <button class="btn btn--fill payment-btn">Оформить заказ</button>
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
