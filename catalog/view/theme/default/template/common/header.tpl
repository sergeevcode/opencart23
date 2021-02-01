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
	<meta property="og:title" content="<?php echo $title; ?>" />
	<base href="<?php echo $base; ?>" />
	<?php if ($description) { ?>
		<meta name="description" content="<?php echo $description; ?>" />
		<meta property="og:description" content=" <?php echo $description; ?>" />
	<?php } ?>
	<?php if ($keywords) { ?>
		<meta name="keywords" content= "<?php echo $keywords; ?>" />
	<?php } ?>
	<?php if ($ogimage) { ?>
	<meta property="og:image" content="<?php echo $ogimage; ?>" />
	<?php } ?>
	<?php if ($ogurl) { ?>
	<meta property="og:url" content="<?php echo $ogurl; ?>" />
	<?php } ?>
	    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
	    <link rel="stylesheet" href="/assets/css/swiper-bundle.min.css">
     	<link rel="stylesheet" href="/assets/css/bootstrap-datepicker.standalone.min.css">
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
	<style type="text/css">
		.windows8 {
	position: relative;
	width: 78px;
	height:78px;
	margin:auto;
}

.windows8 .wBall {
	position: absolute;
	width: 74px;
	height: 74px;
	opacity: 0;
	transform: rotate(225deg);
		-o-transform: rotate(225deg);
		-ms-transform: rotate(225deg);
		-webkit-transform: rotate(225deg);
		-moz-transform: rotate(225deg);
	animation: orbit 6.96s infinite;
		-o-animation: orbit 6.96s infinite;
		-ms-animation: orbit 6.96s infinite;
		-webkit-animation: orbit 6.96s infinite;
		-moz-animation: orbit 6.96s infinite;
}

.windows8 .wBall .wInnerBall{
	position: absolute;
	width: 10px;
	height: 10px;
	background: rgb(255,255,255);
	left:0px;
	top:0px;
	border-radius: 10px;
}

.windows8 #wBall_1 {
	animation-delay: 1.52s;
		-o-animation-delay: 1.52s;
		-ms-animation-delay: 1.52s;
		-webkit-animation-delay: 1.52s;
		-moz-animation-delay: 1.52s;
}

.windows8 #wBall_2 {
	animation-delay: 0.3s;
		-o-animation-delay: 0.3s;
		-ms-animation-delay: 0.3s;
		-webkit-animation-delay: 0.3s;
		-moz-animation-delay: 0.3s;
}

.windows8 #wBall_3 {
	animation-delay: 0.61s;
		-o-animation-delay: 0.61s;
		-ms-animation-delay: 0.61s;
		-webkit-animation-delay: 0.61s;
		-moz-animation-delay: 0.61s;
}

.windows8 #wBall_4 {
	animation-delay: 0.91s;
		-o-animation-delay: 0.91s;
		-ms-animation-delay: 0.91s;
		-webkit-animation-delay: 0.91s;
		-moz-animation-delay: 0.91s;
}

.windows8 #wBall_5 {
	animation-delay: 1.22s;
		-o-animation-delay: 1.22s;
		-ms-animation-delay: 1.22s;
		-webkit-animation-delay: 1.22s;
		-moz-animation-delay: 1.22s;
}



@keyframes orbit {
	0% {
		opacity: 1;
		z-index:99;
		transform: rotate(180deg);
		animation-timing-function: ease-out;
	}

	7% {
		opacity: 1;
		transform: rotate(300deg);
		animation-timing-function: linear;
		origin:0%;
	}

	30% {
		opacity: 1;
		transform:rotate(410deg);
		animation-timing-function: ease-in-out;
		origin:7%;
	}

	39% {
		opacity: 1;
		transform: rotate(645deg);
		animation-timing-function: linear;
		origin:30%;
	}

	70% {
		opacity: 1;
		transform: rotate(770deg);
		animation-timing-function: ease-out;
		origin:39%;
	}

	75% {
		opacity: 1;
		transform: rotate(900deg);
		animation-timing-function: ease-out;
		origin:70%;
	}

	76% {
	opacity: 0;
		transform:rotate(900deg);
	}

	100% {
	opacity: 0;
		transform: rotate(900deg);
	}
}

@-o-keyframes orbit {
	0% {
		opacity: 1;
		z-index:99;
		-o-transform: rotate(180deg);
		-o-animation-timing-function: ease-out;
	}

	7% {
		opacity: 1;
		-o-transform: rotate(300deg);
		-o-animation-timing-function: linear;
		-o-origin:0%;
	}

	30% {
		opacity: 1;
		-o-transform:rotate(410deg);
		-o-animation-timing-function: ease-in-out;
		-o-origin:7%;
	}

	39% {
		opacity: 1;
		-o-transform: rotate(645deg);
		-o-animation-timing-function: linear;
		-o-origin:30%;
	}

	70% {
		opacity: 1;
		-o-transform: rotate(770deg);
		-o-animation-timing-function: ease-out;
		-o-origin:39%;
	}

	75% {
		opacity: 1;
		-o-transform: rotate(900deg);
		-o-animation-timing-function: ease-out;
		-o-origin:70%;
	}

	76% {
	opacity: 0;
		-o-transform:rotate(900deg);
	}

	100% {
	opacity: 0;
		-o-transform: rotate(900deg);
	}
}

@-ms-keyframes orbit {
	0% {
		opacity: 1;
		z-index:99;
		-ms-transform: rotate(180deg);
		-ms-animation-timing-function: ease-out;
	}

	7% {
		opacity: 1;
		-ms-transform: rotate(300deg);
		-ms-animation-timing-function: linear;
		-ms-origin:0%;
	}

	30% {
		opacity: 1;
		-ms-transform:rotate(410deg);
		-ms-animation-timing-function: ease-in-out;
		-ms-origin:7%;
	}

	39% {
		opacity: 1;
		-ms-transform: rotate(645deg);
		-ms-animation-timing-function: linear;
		-ms-origin:30%;
	}

	70% {
		opacity: 1;
		-ms-transform: rotate(770deg);
		-ms-animation-timing-function: ease-out;
		-ms-origin:39%;
	}

	75% {
		opacity: 1;
		-ms-transform: rotate(900deg);
		-ms-animation-timing-function: ease-out;
		-ms-origin:70%;
	}

	76% {
	opacity: 0;
		-ms-transform:rotate(900deg);
	}

	100% {
	opacity: 0;
		-ms-transform: rotate(900deg);
	}
}

@-webkit-keyframes orbit {
	0% {
		opacity: 1;
		z-index:99;
		-webkit-transform: rotate(180deg);
		-webkit-animation-timing-function: ease-out;
	}

	7% {
		opacity: 1;
		-webkit-transform: rotate(300deg);
		-webkit-animation-timing-function: linear;
		-webkit-origin:0%;
	}

	30% {
		opacity: 1;
		-webkit-transform:rotate(410deg);
		-webkit-animation-timing-function: ease-in-out;
		-webkit-origin:7%;
	}

	39% {
		opacity: 1;
		-webkit-transform: rotate(645deg);
		-webkit-animation-timing-function: linear;
		-webkit-origin:30%;
	}

	70% {
		opacity: 1;
		-webkit-transform: rotate(770deg);
		-webkit-animation-timing-function: ease-out;
		-webkit-origin:39%;
	}

	75% {
		opacity: 1;
		-webkit-transform: rotate(900deg);
		-webkit-animation-timing-function: ease-out;
		-webkit-origin:70%;
	}

	76% {
	opacity: 0;
		-webkit-transform:rotate(900deg);
	}

	100% {
	opacity: 0;
		-webkit-transform: rotate(900deg);
	}
}

@-moz-keyframes orbit {
	0% {
		opacity: 1;
		z-index:99;
		-moz-transform: rotate(180deg);
		-moz-animation-timing-function: ease-out;
	}

	7% {
		opacity: 1;
		-moz-transform: rotate(300deg);
		-moz-animation-timing-function: linear;
		-moz-origin:0%;
	}

	30% {
		opacity: 1;
		-moz-transform:rotate(410deg);
		-moz-animation-timing-function: ease-in-out;
		-moz-origin:7%;
	}

	39% {
		opacity: 1;
		-moz-transform: rotate(645deg);
		-moz-animation-timing-function: linear;
		-moz-origin:30%;
	}

	70% {
		opacity: 1;
		-moz-transform: rotate(770deg);
		-moz-animation-timing-function: ease-out;
		-moz-origin:39%;
	}

	75% {
		opacity: 1;
		-moz-transform: rotate(900deg);
		-moz-animation-timing-function: ease-out;
		-moz-origin:70%;
	}

	76% {
	opacity: 0;
		-moz-transform:rotate(900deg);
	}

	100% {
	opacity: 0;
		-moz-transform: rotate(900deg);
	}
}

.waiting {
    position: absolute;
    width: 100%;
    height: 100%;
    background: rgba(0,0,0,0.5);
    left: 0;
    top: 0;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 30px;
    z-index: 100;
}

	</style>
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
                            <?php foreach ($locations as $location) {?>
                            <a href="tel:<?php echo $location['telephone']?>" class="call-me__tel"><?php echo $location['telephone_publish']?></a>
                            <?php } ?> 
                            <button class="call-me__btn" data-link-id="callback-modal">Перезвоните мне</button>
                        </div>
                        <div class="header__inst">
                            <a href="<?php echo $instagram; ?>" target="_blank" rel="noopener noreferrer">
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
                        <button class="call-me__btn" data-link-id="callback-modal">Перезвоните мне</button>
                    </div>
                </ul>
            </nav>

        </div>
        <!-- /.container -->
    </header>

