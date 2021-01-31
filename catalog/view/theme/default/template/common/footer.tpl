
    <footer class="footer">
        <div class="footer-bg">
            <div class="container">
                <div class="footer__wrap">

                    <div class="footer-left">
                        <div class="logo">
                            <img src="/assets/images/icons/logo-white.svg" alt="Правда Цветы">
                        </div>
                        <div class="phones">
                            <div class="phones__title">Телефоны:</div>
                            <div class="phones__list">
                                <a href="tel:+73532902202">+7 (3532) 90-22-02</a>
                                <a href="tel:+73532919119">+7 (3532) 91-91-19</a>
                            </div>
                        </div>
                        <div class="footer-soc">
                            <div class="footer-soc__item">
                                <div class="footer-soc__icon">
                                    <a href="https://www.instagram.com/pravdacveti_oren/" target="_blank" rel="noopener noreferrer"><img src="/assets/images/icons/instagram.svg" alt="instagram"></a>
                                </div>
                                <div class="footer-soc__name">
                                    <a href="https://www.instagram.com/pravdacveti_oren/" target="_blank" rel="noopener noreferrer">Instagram</a>
                                </div>
                            </div>
                        </div>
                        <div class="footer-copy">
                            © 2020 Все права защищены.
                        </div>
                    </div>
        
                    <div class="footer-right">

                        <?php if ($informations) { ?>
                        <div class="footer-block">
                            <div class="footer-right__title">
                                Информация
                            </div>
                            <nav class="footer-nav">
                                <ul class="footer-nav__list">
						          <?php foreach ($informations as $information) { ?>
						          	<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
						          <?php } ?>
                                </ul>
                            </nav>
                        </div>
      					<?php } ?>

            			<?php if ($categories) { ?>
                        <div class="footer-block">
                            <div class="footer-right__title">
                                Цветы с доставкой
                            </div>
                            <nav class="footer-nav">
                                <ul class="footer-nav__list">

        							<?php foreach ($categories as $category) { ?>
                                    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li> 
      								<?php } ?>
                                </ul>
                            </nav>
                            <a href="#" data-link-id="exclusive-modal" class="btn footer-right__btn">Эксклюзивный букет</a>
                        </div>
      					<?php } ?>
                    </div>

                </div>
            </div>
            <!-- /.container -->
        </div>
    </footer>


    <div class="modal" data-modal-id="exclusive-modal">
        <div class="modal__window">
    
            <div class="modal__content">
                <button class="modal-close">&#10006;</button>
                
                <div class="modal__title">Эксклюзивный букет</div>

                <form action="#" class="modal-form">
                    <div class="input">
                        <label class="order-label" for="user-name">Имя*</label>
                        <input class="order-input" type="text" name="user-name" id="user-name" required>
                    </div>
                    <div class="input">
                        <label class="order-label" for="user-phone">Телефон*</label>
                        <input class="order-input" type="tel" name="user-phone" id="user-phone" required>
                    </div>
                    <div class="checkbox">
                        <input type="checkbox" name="delivery-sms" id="delivery-sms" checked>
                        <label for="delivery-sms">
                            <span>Нажимая кнопку «Жду звонка!», Вы даете свое согласие на обработку персональных данных в соответствии с <a href="#" target="_blank" rel="noopener noreferrer">Политикой обработки персональных данных</a></span>
                        </label>
                    </div>
                    <button class="btn btn--fill btn-modal">Жду звонка!</button>
                </form>
                
            </div>
            <!-- /.modal__content -->
    
        </div>
    </div>
    <!-- /.modal -->

    <div class="modal" data-modal-id="basket-modal">
        <div class="modal__window">
    
            <div class="modal__content">
                <button class="modal-close">&#10006;</button>
                
                <div class="modal__title">Товар добавлен в корзину</div>

                <div class="card modal-card">
                    <a href="#">
                        <div class="card__pic" style="background-image: url('images/card/card-3.png');"></div>
                    </a>
                    <div class="card-top" style="display: none;">
                        <div class="card-sale v-sale"><span>80%</span></div>
                        <div class="card-new v-new"><span>new</span></div>
                    </div>
                    <div class="card__wrap">
                        <h3 class="card__title"><a href="#"></a></h3>
                        <div class="card__price"></div>
                    </div>
                    <div class="modal-card-bottom">
                        <button class="btn btn--fill modal-card__btn" data-close>Продолжить</button>
                        <button class="btn btn--dark modal-card__btn" onclick="location.replace('/cart')">Перейти в корзину</button>
                    </div>
                </div>
                
            </div>
            <!-- /.modal__content -->
    
        </div>
    </div>
    <!-- /.modal -->

    <div class="modal" data-modal-id="feedback-modal">
        <div class="modal__window">
    
            <div class="modal__content">
                <button class="modal-close">&#10006;</button>
                
                <div class="modal__title">Отзыв</div>

                <form action="#" class="modal-form review-form">
                    <div class="input">
                        <label class="order-label" for="user-name">Имя*</label>
                        <input class="order-input" type="text" name="user-name" id="user-name" required>
                    </div>
                    <div class="input">
                        <label class="order-label" for="user-phone">Телефон*</label>
                        <input class="order-input" type="tel" name="user-phone" id="user-phone" required>
                    </div>
                    <div class="user-message">
                        <textarea name="message" placeholder="Ваше сообщение..."></textarea>
                    </div>
                    <div class="checkbox">
                        <input type="checkbox" name="send-review" id="send-review" checked>
                        <label for="delivery-sms">
                            <span>Нажимая кнопку «Оставить отзыв!», Вы даете свое согласие на обработку персональных данных в соответствии с <a href="/privacy" target="_blank" rel="noopener noreferrer">Политикой обработки персональных данных</a></span>
                        </label>
                    </div>
                    <button class="btn btn--fill btn-modal">Оставить отзыв</button>
                </form>
                
            </div>
            <!-- /.modal__content -->
    
        </div>
    </div>
    <!-- /.modal -->


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="/assets/js/slick.min.js"></script>
    <script src="/assets/js/swiper-bundle.min.js"></script>
    <script src="/assets/js/app.js"></script>
</body>
</html>
