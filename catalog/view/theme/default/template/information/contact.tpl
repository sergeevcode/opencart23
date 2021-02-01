<?php echo $header; ?>
    <main class="main contacts-bg">
        <div class="container">

            <h1 class="main__title"><?php echo $heading_title; ?></h1>

            <div class="contacts__wrap">
                
                <div class="contacts-left">
        	    	<?php if ($locations) { ?>
                    <div class="contacts-top">

     				    <?php 
     				    $i = 0;
     				    foreach ($locations as $location) { 
     				    	$i++;
     				    ?>
                        <div class="contacts-address">

                            <div class="contacts-address__wrap">
                                <div class="contacts-address__item">
                                    <div class="num"><?=$i?></div>
                                    <div class="contacts-address__title">Адрес:</div>
                                    <div class="contacts-address__block">
                                        <address><?php echo $location['address']; ?></address>
                                    </div>
                                </div>
    
                                <div class="contacts-address__item">
                                    <div class="contacts-address__title">Телефон:</div>
                                    <div class="contacts-address__block">
                                        <a href="tel:<?php echo $location['telephone']; ?>"><?php echo $location['telephone_publish']; ?></a>
                                    </div>
                                </div>
    
                                <div class="contacts-address__item">
                                    <div class="contacts-address__title">Время работы:</div>
                                    <div class="contacts-address__block">
                                    	<?php echo html_entity_decode(str_replace("<br>", "", $location['open'])); ?> 
                                    </div>
                                </div>
                            </div>
                            <!-- /.contacts-address__wrap -->

                        </div> 
                  		<?php } ?>

                    </div>
                  	<?php } ?>

                    <div class="contacts-bottom">

                        <div class="contacts-email">
                            <div class="contacts-email__wrap">
                                <div class="contacts-email__title">E-mail:</div>
                                <div class="contacts-email__block">
                                    <a href="mailto:<?php echo $config_email?>"><?php echo $config_email?></a>
                                </div>
                            </div>
                        </div>

                        <div class="contacts-soc">
                            <div class="contacts-soc__wrap">
                                <div class="contacts-soc__title">Социальные<br>сети:</div>
                                <div class="contacts-soc__block">
                                    <a href="<?php echo $comment; ?>" target="_blank" rel="noopener noreferrer"><img src="/assets/images/icons/instagram.svg" alt="instagram"></a>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
                <!-- /.contacts-left -->

                <div class="contacts-right">

                    <div class="contacts-img">
                    	<?php if ($image) { ?>
                        <img src="<?=$image?>" alt="<?php echo $store; ?>" title="<?php echo $store; ?>">
                        <?php } ?>
                    </div>

                </div>
                <!-- /.contacts-right -->

            </div>
            <!-- /.contacts__wrap -->

            <div class="contacts-map">
                <div id="map"></div>
            </div>

        </div>
        <!-- /.container -->
        
    </main>
   <script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU&apikey=f2d78244-7ca1-4693-90c4-cb2094456486" type="text/javascript"></script>
<?php echo $footer; ?>
