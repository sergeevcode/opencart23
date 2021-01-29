<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title><?php echo $title; ?></title>
	<base href="<?php echo $base; ?>" />
	<?php if ($description) { ?>
		<meta name="description" content="<?php echo $description; ?>" />
	<?php } ?>
	<?php if ($keywords) { ?>
		<meta name="keywords" content= "<?php echo $keywords; ?>" />
	<?php } ?>
	    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
	    <link rel="stylesheet" href="/assets/css/swiper-bundle.min.css">
	    <link rel="stylesheet" href="/assets/css/slick.css">
	    <link rel="stylesheet" href="/assets/css/style.min.css" />
	<?php foreach ($styles as $style) { ?>
		<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
	<?php } ?> 
	<?php foreach ($links as $link) { ?>
		<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
	<?php } ?>
	<?php foreach ($scripts as $script) { ?>
		<script src="<?php echo $script; ?>" type="text/javascript"></script>
	<?php } ?>
	<?php foreach ($analytics as $analytic) { ?>
		<?php echo $analytic; ?>
	<?php } ?>

				<?php if ($buyoneclick_status_product || $buyoneclick_status_category || $buyoneclick_status_module) { ?>
						<script src="catalog/view/javascript/buyoneclick.js" type="text/javascript"></script>
						<script>
							function clickAnalytics(){
								console.log('clickAnalytics');
								<?php if ($buyoneclick_ya_status && isset($buyoneclick_ya_counter) && $buyoneclick_ya_counter != '' && isset($buyoneclick_ya_identificator) && $buyoneclick_ya_identificator != '') { ?>
									yaCounter<?=$buyoneclick_ya_counter?>.reachGoal('<?=$buyoneclick_ya_identificator?>');
								<?php } ?>
								<?php if ($buyoneclick_google_status && isset($buyoneclick_google_category_btn) && $buyoneclick_google_category_btn != '' && isset($buyoneclick_google_action_btn) && $buyoneclick_google_action_btn != '') { ?>
									ga('send', 'event', '<?=$buyoneclick_google_category_btn?>', '<?=$buyoneclick_google_action_btn?>');
									gtag('event', '<?=$buyoneclick_google_action_btn?>', {'event_category': '<?=$buyoneclick_google_category_btn?>'});
								<?php } ?>
								return true;
							}
							function clickAnalyticsSend(){
								console.log('clickAnalyticsSend');
								<?php if ($buyoneclick_ya_status && isset($buyoneclick_ya_counter) && $buyoneclick_ya_counter != '' && isset($buyoneclick_ya_identificator_send) && $buyoneclick_ya_identificator_send != '') { ?>
									yaCounter<?=$buyoneclick_ya_counter?>.reachGoal('<?=$buyoneclick_ya_identificator_send?>');
								<?php } ?>
								<?php if ($buyoneclick_google_status && isset($buyoneclick_google_category_send) && $buyoneclick_google_category_send != '' && isset($buyoneclick_google_action_send) && $buyoneclick_google_action_send != '') { ?>
									ga('send', 'event', '<?=$buyoneclick_google_category_send?>', '<?=$buyoneclick_google_action_send?>');
									gtag('event', '<?=$buyoneclick_google_action_send?>', {'event_category': '<?=$buyoneclick_google_category_send?>'});
								<?php } ?>								
								return true;
							}		
							function clickAnalyticsSuccess(){
								console.log('clickAnalyticsSuccess');
								<?php if ($buyoneclick_ya_status && isset($buyoneclick_ya_counter) && $buyoneclick_ya_counter != '' && isset($buyoneclick_ya_identificator_success) && $buyoneclick_ya_identificator_success != '') { ?>
									yaCounter<?=$buyoneclick_ya_counter?>.reachGoal('<?=$buyoneclick_ya_identificator_success?>');
								<?php } ?>
								<?php if ($buyoneclick_google_status && isset($buyoneclick_google_category_success) && $buyoneclick_google_category_success != '' && isset($buyoneclick_google_action_success) && $buyoneclick_google_action_success != '') { ?>
									ga('send', 'event', '<?=$buyoneclick_google_category_success?>', '<?=$buyoneclick_google_action_success?>');
									gtag('event', '<?=$buyoneclick_google_action_success?>', {'event_category': '<?=$buyoneclick_google_category_success?>'});
								<?php } ?>									
								return true;
							}								
						</script>						
						<?php if ($buyoneclick_validation_type) { ?>
							<script src="catalog/view/javascript/jquery.mask.min.js" type="text/javascript"></script>
							<script>
								$(document).ready(function(){
									$('#boc_phone').mask('<?php echo $buyoneclick_validation_type; ?>');
								});
							</script>
						<?php } ?>
						<?php if ($buyoneclick_exan_status) { ?>
							<script src="catalog/view/javascript/sourcebuster.min.js" type="text/javascript"></script>
							<script>
								sbjs.init({
									callback: placeData
								});

								function placeData(sb) {
									$sb_first_typ		= sb.first.typ;
									$sb_first_src		= sb.first.src;
									$sb_first_mdm		= sb.first.mdm;
									$sb_first_cmp		= sb.first.cmp;
									$sb_first_cnt		= sb.first.cnt;
									$sb_first_trm		= sb.first.trm;

									$sb_curr_typ		= sb.current.typ;
									$sb_curr_src		= sb.current.src;
									$sb_curr_mdm		= sb.current.mdm;
									$sb_curr_cmp		= sb.current.cmp;
									$sb_curr_cnt		= sb.current.cnt;
									$sb_curr_trm		= sb.current.trm;

									$sb_first_add_fd	= sb.first_add.fd;
									$sb_first_add_ep	= sb.first_add.ep;
									$sb_first_add_rf	= sb.first_add.rf;

									$sb_curr_add_fd		= sb.current_add.fd;
									$sb_curr_add_ep		= sb.current_add.ep;
									$sb_curr_add_rf		= sb.current_add.rf;

									$sb_session_pgs		= sb.session.pgs;
									$sb_session_cpg		= sb.session.cpg;

									$sb_udata_vst		= sb.udata.vst;
									$sb_udata_uip		= sb.udata.uip;
									$sb_udata_uag		= sb.udata.uag;

									$sb_promo_code		= sb.promo.code;
								};

								function valueData() {
									document.getElementById('sb_first_typ').value       = $sb_first_typ;
									document.getElementById('sb_first_src').value       = $sb_first_src;
									document.getElementById('sb_first_mdm').value       = $sb_first_mdm;
									document.getElementById('sb_first_cmp').value       = $sb_first_cmp;
									document.getElementById('sb_first_cnt').value       = $sb_first_cnt;
									document.getElementById('sb_first_trm').value       = $sb_first_trm;

									document.getElementById('sb_current_typ').value     = $sb_curr_typ;
									document.getElementById('sb_current_src').value     = $sb_curr_src;
									document.getElementById('sb_current_mdm').value     = $sb_curr_mdm;
									document.getElementById('sb_current_cmp').value     = $sb_curr_cmp;
									document.getElementById('sb_current_cnt').value     = $sb_curr_cnt;
									document.getElementById('sb_current_trm').value     = $sb_curr_trm;

									document.getElementById('sb_first_add_fd').value    = $sb_first_add_fd;
									document.getElementById('sb_first_add_ep').value    = $sb_first_add_ep;
									document.getElementById('sb_first_add_rf').value    = $sb_first_add_rf;

									document.getElementById('sb_current_add_fd').value  = $sb_curr_add_fd;
									document.getElementById('sb_current_add_ep').value  = $sb_curr_add_ep;
									document.getElementById('sb_current_add_rf').value  = $sb_curr_add_rf;

									document.getElementById('sb_session_pgs').value     = $sb_session_pgs;
									document.getElementById('sb_session_cpg').value     = $sb_session_cpg;

									document.getElementById('sb_udata_vst').value       = $sb_udata_vst;
									document.getElementById('sb_udata_uip').value       = $sb_udata_uip;
									document.getElementById('sb_udata_uag').value       = $sb_udata_uag;

									document.getElementById('sb_promo_code').value      = $sb_promo_code;
								};
							</script>
						<?php } ?>
						<?php if ($buyoneclick_style_status) { ?>
							<link href="catalog/view/theme/default/stylesheet/buyoneclick.css" rel="stylesheet">
						<?php } ?>
						<style type="text/css">
							@keyframes lds-rolling {
								0% {
									-webkit-transform: translate(-50%, -50%) rotate(0deg);
									transform: translate(-50%, -50%) rotate(0deg);
								}
								100% {
									-webkit-transform: translate(-50%, -50%) rotate(360deg);
									transform: translate(-50%, -50%) rotate(360deg);
								}
							}
							@-webkit-keyframes lds-rolling {
								0% {
									-webkit-transform: translate(-50%, -50%) rotate(0deg);
									transform: translate(-50%, -50%) rotate(0deg);
								}
								100% {
									-webkit-transform: translate(-50%, -50%) rotate(360deg);
									transform: translate(-50%, -50%) rotate(360deg);
								}
							}
							.lds-rolling {
								position: relative;
								text-align: center;
							}
							.lds-rolling div, .lds-rolling div:after {
								position: absolute;
								width: 160px;
								height: 160px;
								border: 20px solid #bbcedd;
								border-top-color: transparent;
								border-radius: 50%;
							}
							.lds-rolling div {
								-webkit-animation: lds-rolling 1s linear infinite;
								animation: lds-rolling 1s linear infinite;
								top: 100px;
								left: 100px;
							}
							.lds-rolling div:after {
								-webkit-transform: rotate(90deg);
								transform: rotate(90deg);
							}
							.lds-rolling {
								width: 200px !important;
								height: 200px !important;
								-webkit-transform: translate(-100px, -100px) scale(1) translate(100px, 100px);
								transform: translate(-100px, -100px) scale(1) translate(100px, 100px);
								margin: 0 auto;
							}
							.col-pd-15 {
								padding-left:15px;
								padding-right:15px;
							}
							.col-mb-10 {
								margin-bottom:10px;
							}
							#boc_order hr {
								margin-top:0px;
								margin-bottom:15px;
							}
							.boc_product_info > div {
								line-height: 120px;
							}
							.boc_product_info > div > img {
								max-height: 120px;
								margin: 0 auto;
							}
							.boc_product_info > div > img, .boc_product_info > div > div, .boc_product_info > div > p {
								display: inline-block;
								line-height: normal;
								vertical-align: middle;
							}
							#boc_order .checkbox {
								margin-top: 0;
								padding: 0 10px;
								border: 1px solid transparent;
								border-radius: 6px;
							}
							#boc_order .checkbox.has-error {
								border-color: #a94442;
							}
							@media (max-width: 767px) {
								.boc_product_info > div {
									line-height:normal;
									text-align:center;
								}
							}
						</style>
				<?php } ?>
            
</head>
<body class="<?php echo $class; ?>">
    <header class="header">
        <div class="container">

            <div class="header__wrap">

                <div class="logo">
                    <a href="/"><img src="/assets/images/logo.svg" alt="Правда Цветы"></a>
                </div>

                <div class="header-right">
                	<?php if ($informations) { ?>
                    <div class="header-right-top">
                        <nav class="nav">
                            <ul class="nav__list">
          						<?php foreach ($informations as $information) { ?>
                                <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      							<?php } ?> 
                                <li><a href="<?php echo $contact; ?>">Контакты</a></li>
                            </ul>
                        </nav>
                    </div>
      				<?php } ?>
    
                    <div class="header-right-bottom">
                        <div class="call-me">
                            <a href="tel:+73532902202" class="call-me__tel">+7 (3532) 90-22-02</a>
                            <a href="tel:+73532919119" class="call-me__tel">+7 (3532) 91-91-19</a>
                            <button class="call-me__btn">Перезвоните мне</button>
                        </div>
                        <div class="header__inst">
                            <a href="https://www.instagram.com/pravdacveti_oren/" target="_blank" rel="noopener noreferrer">
                                <img src="/assets/images/icons/instagram.svg" alt="Instagram">
                            </a>
                        </div>
                        <div class="header__exclusive">
                            <button class="btn" data-link-id="exclusive-modal">Эксклюзивный букет</button>
                            <div class="header__delivery-time">
                                Ежедневная доставка цветов с 07:00 до 23:00
                            </div>
                        </div>
                        <div class="header__basket">
                            <?php echo $cart ?>
                        </div>
                    </div>

                </div>
                <!-- /.header-right -->

            </div>
            <!-- /.header__wrap -->

            <div class="burger-menu">
                <svg class="burger-menu__icon" viewBox="0 -53 384 384" xmlns="http://www.w3.org/2000/svg">
                    <path d="m368 154.667969h-352c-8.832031 0-16-7.167969-16-16s7.167969-16 16-16h352c8.832031 0 16 7.167969 16 16s-7.167969 16-16 16zm0 0"/>
                    <path d="m368 32h-352c-8.832031 0-16-7.167969-16-16s7.167969-16 16-16h352c8.832031 0 16 7.167969 16 16s-7.167969 16-16 16zm0 0"/>
                    <path d="m368 277.332031h-352c-8.832031 0-16-7.167969-16-16s7.167969-16 16-16h352c8.832031 0 16 7.167969 16 16s-7.167969 16-16 16zm0 0"/>
                </svg>
            </div>

            <nav class="main-nav">
                <ul class="main-nav__list">

                    <span class="main-nav__menu">Меню</span>
                    <span class="main-nav__close">
                        <svg class="main-nav__close-icon" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 492 492">
                            <path d="M300.188,246L484.14,62.04c5.06-5.064,7.852-11.82,7.86-19.024c0-7.208-2.792-13.972-7.86-19.028L468.02,7.872
                                c-5.068-5.076-11.824-7.856-19.036-7.856c-7.2,0-13.956,2.78-19.024,7.856L246.008,191.82L62.048,7.872
                                c-5.06-5.076-11.82-7.856-19.028-7.856c-7.2,0-13.96,2.78-19.02,7.856L7.872,23.988c-10.496,10.496-10.496,27.568,0,38.052
                                L191.828,246L7.872,429.952c-5.064,5.072-7.852,11.828-7.852,19.032c0,7.204,2.788,13.96,7.852,19.028l16.124,16.116
                                c5.06,5.072,11.824,7.856,19.02,7.856c7.208,0,13.968-2.784,19.028-7.856l183.96-183.952l183.952,183.952
                                c5.068,5.072,11.824,7.856,19.024,7.856h0.008c7.204,0,13.96-2.784,19.028-7.856l16.12-16.116
                                c5.06-5.064,7.852-11.824,7.852-19.028c0-7.204-2.792-13.96-7.852-19.028L300.188,246z"/>
                        </svg>
                    </span>

                	<?php if ($informations) { ?>
                    <nav class="main-nav-sec">
                        <ul class="main-sec-nav__list">                            
      						<?php foreach ($informations as $information) { ?>
                            <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
  							<?php } ?> 
                        </ul>
                    </nav>
                	<?php } ?> 
                	<?php if ($categories) { ?>
                    <span class="main-nav__menu">Категории</span> 
        				<?php foreach ($categories as $category) { ?>
		                    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>

        						<?php if ($category['children']) { ?>
			                        <div class="main-nav__dropdown <?=($category['column'] > 1) ? 'main-nav__dropdown-f' : ''?>">
			                        	<?php foreach (array_chunk($category['children'], 3) as $children) { ?>
                							<?php foreach ($children as $child) { ?>
			                            		<div class="main-nav__item"><a href="<?php echo $child['href']; ?>" class="main-nav__link"><?php echo $child['name']; ?></a></div> 
                							<?php } ?>
                						<?php } ?>
			                        </div>
		                		<?php } ?> 
		                    </li> 
	                	<?php } ?> 
                	<?php } ?> 

                    <div class="main-nav__menu-block">
                        <button class="btn" data-link-id="exclusive-modal">Эксклюзивный букет</button>
                        <div class="header__delivery-time">
                            Ежедневная доставка цветов с 07:00 до 23:00
                        </div>
                    </div>

                    <div class="main-nav__menu-block">
                        <a href="tel:+73532902202" class="call-me__tel">+7 (3532) 90-22-02</a>
                        <a href="tel:+73532919119" class="call-me__tel">+7 (3532) 91-91-19</a>
                        <button class="call-me__btn">Перезвоните мне</button>
                    </div>
                </ul>
            </nav>

        </div>
        <!-- /.container -->
    </header>

