document.addEventListener("DOMContentLoaded", function() {

	var promoSlider = new Swiper('.promo-slider.swiper-container', {
		navigation: {
			nextEl: '.promo-nav-arrow-next.swiper-button-next',
			prevEl: '.promo-nav-arrow-prev.swiper-button-prev',
		},
		autoHeight: true,
	});
	var compositeSlider = new Swiper('.composite-slider.swiper-container', {
		navigation: {
			nextEl: '.composite .section-button-next',
			prevEl: '.composite .section-button-prev',
		},
		slidesPerView: 3,
		watchSlidesVisibility: true,
		breakpoints: {
			// when window width is >= 320px
			320: {
				slidesPerView: 1,
			},
			// when window width is >= 720px
			720: {
				slidesPerView: 2,
			},
			// when window width is >= 991px
			991: {
				slidesPerView: 3,
			}
		}
	});
	var monoSlider = new Swiper('.mono-slider.swiper-container', {
		navigation: {
			nextEl: '.mono .section-button-next',
			prevEl: '.mono .section-button-prev',
		},
		slidesPerView: 3,
		watchSlidesVisibility: true,
		breakpoints: {
			// when window width is >= 320px
			320: {
				slidesPerView: 1,
			},
			// when window width is >= 720px
			720: {
				slidesPerView: 2,
			},
			// when window width is >= 991px
			991: {
				slidesPerView: 3,
			}
		}
	});
	var similarSlider = new Swiper('.similar-slider.swiper-container', {
		navigation: {
			nextEl: '.similar .section-button-next',
			prevEl: '.similar .section-button-prev',
		},
		slidesPerView: 3,
		watchSlidesVisibility: true,
		breakpoints: {
			// when window width is >= 320px
			320: {
				slidesPerView: 1,
			},
			// when window width is >= 720px
			720: {
				slidesPerView: 2,
			},
			// when window width is >= 991px
			991: {
				slidesPerView: 3,
			}
		}
	});
	var compositionsSlider = new Swiper('.compositions-slider.swiper-container', {
		navigation: {
			nextEl: '.compositions .section-button-next',
			prevEl: '.compositions .section-button-prev',
		},
		slidesPerView: 3,
		watchSlidesVisibility: true,
		breakpoints: {
			// when window width is >= 320px
			320: {
				slidesPerView: 1,
			},
			// when window width is >= 720px
			720: {
				slidesPerView: 2,
			},
			// when window width is >= 991px
			991: {
				slidesPerView: 3,
			}
		}
	});
	var giftsSlider = new Swiper('.gifts-slider.swiper-container', {
		navigation: {
			nextEl: '.gifts .section-button-next',
			prevEl: '.gifts .section-button-prev',
		},
		slidesPerView: 3,
		watchSlidesVisibility: true,
		breakpoints: {
			// when window width is >= 320px
			320: {
				slidesPerView: 1,
			},
			// when window width is >= 720px
			720: {
				slidesPerView: 2,
			},
			// when window width is >= 991px
			991: {
				slidesPerView: 3,
			}
		}
	});
	var interestedSlider = new Swiper('.interested-slider.swiper-container', {
		navigation: {
			nextEl: '.interested .section-button-next',
			prevEl: '.interested .section-button-prev',
		},
		slidesPerView: 3,
		watchSlidesVisibility: true,
		breakpoints: {
			// when window width is >= 320px
			320: {
				slidesPerView: 1,
			},
			// when window width is >= 720px
			720: {
				slidesPerView: 2,
			},
			// when window width is >= 991px
			991: {
				slidesPerView: 3,
			}
		}
	});

	const card = document.querySelectorAll('.swiper-container .card');
	card.forEach(item => {
		item.addEventListener('mouseenter', () => {
			item.classList.contains('card-active') ? '' : item.classList.add('card-active');
		});
		item.addEventListener('mouseleave', () => {
			item.classList.remove('card-active');
		});
	});

	$('.photo-slider').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: false,
		fade: true,
		asNavFor: '.photo-slider-nav',
	});
	$('.photo-slider-nav').slick({
		slidesToShow: 4,
		slidesToScroll: 1,
		asNavFor: '.photo-slider',
		dots: false,
		infinite: false,
		vertical: true,
		focusOnSelect: true,
		responsive: [
			{
				breakpoint: 991,
				settings: {
					slidesToShow: 3,
				}
			},
			{
				breakpoint: 400,
				settings: {
					slidesToShow: 2,
				}
			}
		]
	});

 

	// Accordion
	class Accordion {
		constructor(id, header) {
			this.header = header;
			this.id = id;
			this.render();
		}
		render() {
			function initAccordion(element, header) {
				const mainElement = document.querySelector(element);
				function actionClick(e) {
					if (!e.target.classList.contains(header)) {
						return;
					}
					e.preventDefault();
					const headerHead = e.target;
					const item = headerHead.parentElement;
					item.classList.toggle('show');
				};
				function setupListeners() {
					mainElement.addEventListener('click', actionClick);
				}
				if (mainElement) {
					setupListeners();
				}
			}
			initAccordion(this.id, this.header);
		}
	}
	const accordion = new Accordion('#accordion', 'accordion-item__header');
	const subAccordion = new Accordion('#accordion', 'accordion-sub-item__header');

	// Map 
	var myMap;
	if (document.querySelector('#map')) {
		ymaps.ready(function () {
			var myMap = new ymaps.Map('map', {
							center: [51.7742298, 55.1607128],
							zoom: 13
					}, {
							searchControlProvider: 'yandex#search'
					}),
	
					// Создаём макет содержимого.
					MyIconContentLayout = ymaps.templateLayoutFactory.createClass(
							'<div style="color: #FFFFFF; font-weight: bold;">$[properties.iconContent]</div>'
					),
	
					myPlacemark = new ymaps.Placemark([51.7610583, 55.1058789], {
							hintContent: 'ул. Правды, 25, г. Оренбург',
							balloonContent: 'ул. Правды, 25, г. Оренбург'
					}, {
							// Опции.
							// Необходимо указать данный тип макета.
							iconLayout: 'default#image',
							// Своё изображение иконки метки.
							iconImageHref: 'images/icons/marker.png',
							// Размеры метки.
							iconImageSize: [84, 70],
							// Смещение левого верхнего угла иконки относительно
							// её "ножки" (точки привязки).
							iconImageOffset: [-5, -38]
					}),
	
					myPlacemarkWithContent = new ymaps.Placemark([51.7828353, 55.2160644], {
							hintContent: 'г. Оренбург, п. Ростоши, ул. Газпромовская, 63',
							balloonContent: 'г. Оренбург, п. Ростоши, ул. Газпромовская, 63',
							iconContent: '12'
					}, {
							// Опции.
							// Необходимо указать данный тип макета.
							iconLayout: 'default#imageWithContent',
							// Своё изображение иконки метки.
							iconImageHref: 'images/icons/marker.png',
							// Размеры метки.
							iconImageSize: [84, 70],
							// Смещение левого верхнего угла иконки относительно
							// её "ножки" (точки привязки).
							iconImageOffset: [-24, -24],
							// Смещение слоя с содержимым относительно слоя с картинкой.
							iconContentOffset: [15, 15],
							// Макет содержимого.
							iconContentLayout: MyIconContentLayout
					});
	
			myMap.geoObjects
					.add(myPlacemark)
					.add(myPlacemarkWithContent);
		});
	}

	// Tabs
	class Tabs {
		constructor(button, content) {
			this.button = button;
			this.content = content;
		}
		render() {
			const showTabs = (el) => {
				const btnTarget = el.currentTarget;
				const count = btnTarget.dataset.count;
				this.content.forEach((el) => {
					this.removeClass(el);
				});
				this.button.forEach((el) => {
					this.removeClass(el);
				});
				document.querySelector('#' + count).classList.add('active');
				btnTarget.classList.add('active');
			}
			this.button.forEach(function(el) {
				el.addEventListener("click", showTabs);
			});
		}
		removeClass(el) {
			el.classList.remove('active');
		}
	}

	// Delivery tabs
	const deliveryTabLinks = document.querySelectorAll('.order-delivery-link'),
				deliveryTabContent = document.querySelectorAll('.order-delivery-content');
	if (deliveryTabLinks && deliveryTabContent) {
		const deliveryTabs = new Tabs(deliveryTabLinks, deliveryTabContent);
		deliveryTabs.render();
	}
	// Payment tabs
	const paymentTabLinks = document.querySelectorAll('.payment-tabs__link'),
				paymentTabContent = document.querySelectorAll('.payment-tabs__content');
	if (paymentTabLinks && paymentTabContent) {
		const paymentTabs = new Tabs(paymentTabLinks, paymentTabContent);
		paymentTabs.render();
	}

	if (document.querySelector('.date-input')) {
		$('.date-input').datepicker({
			language: "ru",
			orientation: "bottom auto"
		});
	}

	// Modal 
	const popUp = () => {
		const modalContent = document.querySelector('.modal__content');

		const modalData = {
			popupLink: document.querySelectorAll('[data-link-id]'),
			modal: document.querySelectorAll('.modal'),
			closeBtn(elem) {
				const closeBtn = elem.querySelector('.modal-close');
				closeBtn.addEventListener('click', () => {
					this.closeModal(elem);
				});
				this.modal.forEach(elem => {
					elem.addEventListener('click', (e) => {
						if (e.target.classList.contains('modal__window')) {
							this.closeModal(elem);
						}
					});
				});

			},
			closeModal(elem) {
				elem.classList.remove('modal-open');
			},
			openModal(attr) {
				this.modal.forEach((elem) => {
					const elemAttr = elem.getAttribute('data-modal-id');
					if (attr === elemAttr) {
						elem.classList.add('modal-open');
						this.closeBtn(elem);
					}
				});
			},
		};

		modalData.popupLink.forEach(elem => {
			elem.addEventListener('click', (event) => {
				event.preventDefault();
				const target = event.target;
				const attrLinkValue = target.getAttribute('data-link-id');
				modalData.openModal(attrLinkValue);
			});
		});

	};

	popUp();

	// Menu 
	const burgerMenu = document.querySelector('.burger-menu'), 
				menuClose = document.querySelector('.main-nav__close'),
				menu = document.querySelector('.main-nav__list');

	burgerMenu.addEventListener('click', () => {
		menu.classList.toggle('show');
	});
	menuClose.addEventListener('click', () => {
		menu.classList.remove('show');
	});

});

(function($){

	$('#button-cart').on('click', function() {
		$(".modal-card").find("a").attr("href", $(this).data("href"));
		$(".modal-card").find(".card__title a").text($(this).data("name"));
		$(".modal-card").find(".card__price").text($("span.current_price").text() + ' руб.');
		$(".modal-card").find(".card__pic").css({
			"background-image" : "url('"+$(this).data("image")+"')"
		});

		$.ajax({
			url: 'index.php?route=checkout/cart/add',
			type: 'post',
			data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
			dataType: 'json',
		
			success: function(json) {  
				console.log($("span.cart-count").val());
				$("span.cart-count").val(parseInt($("span.cart-count").val()) + 1);
			}
		});
	});
	$("[data-close").click(function(){
		$(".modal").removeClass("modal-open");
	});
	$(".card__btn").click(function(){ 
		if ($(this).data("link-id") == 'basket-modal') {
			$(".modal-card").find("a").attr("href", $(this).data("href"));
			$(".modal-card").find(".card__title a").text($(this).data("name"));
			$(".modal-card").find(".card__price").text($(this).data("price"));
			$(".modal-card").find(".card__pic").css({
				"background-image" : "url('"+$(this).data("image")+"')"
			});

			$.ajax({
				url: 'index.php?route=checkout/cart/add',
				type: 'post',
				data: $(this).parent(".card__basket").parent("form").serialize(), 
			
				success: function(json) { 				 
					if ($("span.cart-count").text() != '') {
						$("span.cart-count").text(parseInt($("span.cart-count").text()) + 1);
					} else {
						$("span.cart-count").text('1');
					}
				}
			});
		}
		
	});

	$(".basket-delete").on('click', function(){
		var product = $(this).data("product"); 
		$('.basket-item[data-product="'+product+'"]').find(".waiting").show();
		$.ajax({
			url: 'index.php?route=checkout/cart/remove',
			type: 'post',
			data: 'key=' + product,
			dataType: 'json', 
			success: function(json) {
				$('.basket-item[data-product="'+product+'"]').remove();
			},
			error: function(xhr, ajaxOptions, thrownError) {
				console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				$('.basket-item[data-product="'+product+'"]').remove();
			}
		}); 
	});
	
	$('.amount__btn-plus').click(function() {

		var a = $(this).attr('data-plus');
		if (typeof(a) === 'undefined') {
			var count = $(".amount__input").val(); 
			count++; 
			$(".amount__input").val(count);
			var product = $(this).data('product');
			var newprice = $('.basket-price__new[data-product="'+product+'"]').data("price") * count;
			$('.basket-price__new[data-product="'+product+'"]').text(numberWithSpaces(newprice) + ' руб.');
			if ($('.basket-price__old[data-product="'+product+'"]').length) {            
				var oldprice = $('.basket-price__old[data-product="'+product+'"]').data("price") * count;
				$('.basket-price__old[data-product="'+product+'"]').text(numberWithSpaces(oldprice) + ' руб.');
			}

			$.ajax({
				 url: 'index.php?route=checkout/cart/edit',
				 type: 'post',
				 data: 'key=' + product + '&quantity=' + (typeof(count) != 'undefined' ? count : 1),
				 dataType: 'json', 
				 success: function(json) {
						return true;
				 }, 
			});
		}
	});
	function numberWithSpaces(x) {
		return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, " ");
	}
	$('.amount__btn-minus').click(function() {
		var a = $(this).attr('data-minus');
		if (typeof(a) === 'undefined') {
			var count = $(".amount__input").val();
			if (count != '0') {
				count--;
			}
			var product = $(this).data('product');
			$(".amount__input").val(count);
			var newprice = $('.basket-price__new[data-product="'+product+'"]').data("price") * count;
			$('.basket-price__new[data-product="'+product+'"]').text(numberWithSpaces(newprice) + ' руб.');
			
			if ($('.basket-price__old[data-product="'+product+'"]').length) {            
				var oldprice = $('.basket-price__old[data-product="'+product+'"]').data("price") * count;
				$('.basket-price__old[data-product="'+product+'"]').text(numberWithSpaces(oldprice) + ' руб.');
			}

			$.ajax({
				 url: 'index.php?route=checkout/cart/edit',
				 type: 'post',
				 data: 'key=' + product + '&quantity=' + (typeof(count) != 'undefined' ? count : 1),
				 dataType: 'json', 
				 success: function(json) {
						return true;
				 }, 
			});
		}
	});


	$("form.modal-form").submit(function(e){
		e.preventDefault();
		var form = $(this);
		var title = form.parent('.modal__content').find('.modal__title').text();
		$.ajax({
			url: 'index.php?route=extension/module/send',
			type: 'post',
			data: $(this).serialize(),
			success: function() {						
				form.parent('.modal__content').find('.modal__title').text('Успешно');
				form.hide();
				if (!form.hasClass("review-form")) {
					form.parent('.modal__content').append('<p>Заявка успешно отправлена</p>');
				} else {
					form.parent('.modal__content').append('<p>Отзыв успешно отправлен</p>');
				}

			}
		});
		setTimeout(function() {
			$(".modal").removeClass("modal-open");
			form.parent('.modal__content').find('p').hide();
			form.parent('.modal__content').find('.modal__title').text(title);
			form.find('input').each(function(){
				$(this).val('');
			});
			form.find('textarea').each(function(){
				$(this).val('');
			});
			form.show();

		}, 2000);
		return false;
	});

	$(".order-delivery-link").click(function(){
		if ($(this).data("count") == 'tab-2') {
			$("[data-delivery]").hide();
			$(".total-price").text(parseInt($(".total-price").text().replace(/\s+/g, '')) - parseInt($(".delivery-price").text().replace(/\s+/g, '')));
			$(".delivery-price").text('0');
			$('[name="territory-street"]').prop("required", false);
			$('[name="territory-house"]').prop("required", false);

		} else {			
			var delivery_price = parseInt($(".delivery-price").text()),
				current_price = parseInt($('[name="territory"] option:selected').data("price")),
				total_price = parseInt($(".total-price").text().replace(/\s+/g, ''));

			total_price = total_price - delivery_price + current_price;
			delivery_price = current_price;
			$(".total-price").text(numberWithSpaces(total_price));
			$(".delivery-price").text(numberWithSpaces(delivery_price));

			$("[data-delivery]").show();
			$('[name="territory-street"]').prop("required", true);
			$('[name="territory-house"]').prop("required", true);
		}
	});

	$('[type="radio"][data-price]').click(function(){
		var plusprice = $(this).data("price");
		$("span.current_price").text(numberWithSpaces(parseInt($("span.current_price").data("price")) + plusprice));
	});

	$('[name="services-name"]').change(function(){
		if ($(this).prop("checked")){ 
			$(".service-price").text($(this).data("price") + parseInt($(".service-price").text()));
			$(".total-price").text(numberWithSpaces(parseInt($(".total-price").text().replace(/\s+/g, '')) + $(this).data("price")));
		} else { 
			if ($(this).data("price") - parseInt($(".service-price").text()) > 0) {
				$(".service-price").text($(this).data("price") - parseInt($(".service-price").text()));
			} else {
				$(".service-price").text('0');
			}
			$(".total-price").text(numberWithSpaces(parseInt($(".total-price").text().replace(/\s+/g, '')) - $(this).data("price")));
		}
	});

	$('[name="use-customer-name"]').change(function(){
		if ($(this).prop("checked")) {
			$(this).closest(".order-details__body").find(".order-details__name").hide();
			$(this).closest(".order-details__body").find(".order-details__phone").hide();
			$(this).closest(".order-details__body").find('[name="recipient-name"]').prop("required", false);
			$(this).closest(".order-details__body").find('[name="recipient-phone"]').prop("required", false);
		} else {			
			$(this).closest(".order-details__body").find(".order-details__name").show();
			$(this).closest(".order-details__body").find(".order-details__phone").show();
			$(this).closest(".order-details__body").find('[name="recipient-name"]').prop("required", true);
			$(this).closest(".order-details__body").find('[name="recipient-phone"]').prop("required", true);
		}
	});
	var territory_price = parseInt($('[name="territory"] option:selected').data("price"));

	$('[name="territory"]').change(function(){
		var delivery_price = parseInt($(".delivery-price").text()),
			current_price = parseInt($('[name="territory"] option:selected').data("price")),
			total_price = parseInt($(".main-price").text().replace(/\s+/g, ''));

		delivery_price = delivery_price - territory_price + current_price;

		total_price = total_price + delivery_price;
		$(".total-price").text(numberWithSpaces(total_price));
		$(".delivery-price").text(numberWithSpaces(delivery_price));
	 territory_price = parseInt($('[name="territory"] option:selected').data("price"));
	});
	$("#delivery-period-time").click(function(){
		var delivery_price = parseInt($(".delivery-price").text()),
			current_price = parseInt($("#delivery-exact-time").data("price")),
			total_price = parseInt($(".main-price").text().replace(/\s+/g, ''));

		delivery_price = delivery_price - current_price;
		total_price = total_price + delivery_price;
		$(".total-price").text(numberWithSpaces(total_price));
		$(".delivery-price").text(numberWithSpaces(delivery_price));
	});

 	$("#delivery-exact-time").click(function(){
		var delivery_price = parseInt($(".delivery-price").text()),
			current_price = parseInt($(this).data("price")),
			total_price = parseInt($(".main-price").text().replace(/\s+/g, ''));

		delivery_price = delivery_price + current_price;
		total_price = total_price + delivery_price;
		$(".total-price").text(numberWithSpaces(total_price));
		$(".delivery-price").text(numberWithSpaces(delivery_price));
 	});

	$("form.order-form").submit(function(e){
		$(this).find(".waiting").show();
		$(this).find(".order-checkouting").show();
		e.preventDefault();
		var firstname = $('[name="firstname"]').val(),
			telephone = $('[name="telephone"]').val(),
			email = $('[name="email"]').val(), comment = '';
		if ($('[name="customer-name"]').prop("checked")) {
			comment += 'Не сообщать получателю имя покупателя\n';
		}
		if ($('[name="delivery-sms"]').prop("checked")) {
			comment += 'Получить уведомление о доставке по СМС\n';
		}
		if ($('[name="use-customer-name"]').prop("checked")) {
			comment += 'Использовать данные покупателя\n';
		} else {
			comment += 'Получатель: \n' + 'Имя: ' + $('[name="recipient-name"]').val() + '\n' + 'Телефон: ' + $('[name="recipient-phone"]').val() + '\n';
		}
		if ($(".order-tabs__link.active").data("count") == 'tab-1') {
			comment += 'Способ доставки: Доставка\n';
			comment += $('[name="territory"] option:selected').text()+'\n';
			comment += 'Улица: '+$('[name="territory-street"]').val()+'\n';
			comment += 'Дом: '+$('[name="territory-house"]').val()+'\n';
			if ($('[name="territory-floor"]').val() != '') {
				comment += 'Этаж: '+$('[name="territory-floor"]').val()+'\n';
			}

			if ($('[name="territory-flat"]').val() != '') {
				comment += 'Квартира: '+$('[name="territory-flat"]').val()+'\n';
			}  	

			if ($('[name="territory-entrance"]').val() != '') {
				comment += 'Подъезд: '+$('[name="territory-entrance"]').val()+'\n';
			} 
 
			$.ajax({
				url: 'index.php?route=checkout/cart/add',
				type: 'post',
				data: {quantity: '1', product_id: $('[name="territory"]').val()}
			});

		} else {
			comment += 'Способ доставки: ' + $('[name="shipping_method"]').val() + '\n';
		}
		$('[name="services-name"]').each(function() {
			if ($(this).prop("checked")) {
				$.ajax({
					url: 'index.php?route=checkout/cart/add',
					type: 'post',
					data: {quantity: '1', product_id: $(this).val()}
				});
			}
		});

		if ($('[name="delivery-time"]').val() == '1') {
			comment += 'Временной промежуток ' + $('[name="period"] option:selected').val() + '\n';
		} else {			
			$.ajax({
				url: 'index.php?route=checkout/cart/add',
				type: 'post',
				data: {quantity: '1', product_id: '58'}
			});

			comment += 'Точное время ' + '\n';
		}

		if ($('[name="message"]').val() != '') {
			comment += 'Комментарий \n' + $('[name="message"]').val();
		}
		var payment_method = $('[name="payment_method"]').val();
		setTimeout(function() {			
			$.ajax({
				url: 'index.php?route=checkout/confirm',
				type: 'post',
				data: {firstname: firstname, telephone: telephone, email: email, comment: comment, payment_method: payment_method},
				success: function() {
					$.ajax({
						url: 'index.php?route=checkout/cart/clear',
						success: function() {
							location.replace('/zakaz-oformlen');
						}
					});
				}
			});
		}, 4000);
		return false;
	});

	$(".content-basket__btn--buy").click(function(){
		$("form.byoneclick").find('[name="link"]').val($(this).data('href'));
		$("form.byoneclick").find('[name="name"]').val($(this).data('name'));
	});

 	$(".byonelick").click(function(e){ 
		$("form.byoneclick").find('[name="link"]').val($(this).data('href'));
		$("form.byoneclick").find('[name="name"]').val($(this).data('name'));
	});
 	$('[type="tel"]').mask('+7 (999) 999 99-99');

 	$('[data-plus]').click(function(){

		var a = $(this).attr('data-plus');
		if (typeof(a) !== 'undefined') {
	 		if ($(this).data('plus') == 'hours') {
	 			if ($('[name="hours"]').val() != '23') {
	 				$('[name="hours"]').val(parseInt($('[name="hours"]').val()) + 1);
	 			} else {
	 				$('[name="hours"]').val('00');
	 			}
	 		} else {
	 			if ($('[name="minutes"]').val() != '45') {
	 				$('[name="minutes"]').val(parseInt($('[name="minutes"]').val()) + 15);
	 			} else {
	 				$('[name="minutes"]').val('00');
	 			}
	 		}
	 	}
 	});

 	$('[data-minus]').click(function(){

		var a = $(this).attr('data-minus');
		if (typeof(a) !== 'undefined') {
	 		if ($(this).data('minus') == 'hours') {
	 			if ($('[name="hours"]').val() != '00' || $('[name="hours"]').val() != '0') {
	 				$('[name="hours"]').val(parseInt($('[name="hours"]').val()) - 1);
	 			} else {
	 				$('[name="hours"]').val('23');
	 			}
	 		} else {
	 			if ($('[name="minutes"]').val() != '00' || $('[name="minutes"]').val() != '0') {
	 				$('[name="minutes"]').val(parseInt($('[name="minutes"]').val()) + 15);
	 			} else {
	 				$('[name="minutes"]').val('45');
	 			}
	 		}
	 	}
 	});
 	$(".photo-slider-nav__item").click(function(){
 		var photo = $(this).find("img").attr("src");
 		(".photo-slider__item").find("a").attr("href", photo);
 		(".photo-slider__item").find("img").attr("src", photo);
 	});
	// var cart = {
	// 'add': function(product_id, quantity) {
	//  $.ajax({
	//    url: 'index.php?route=checkout/cart/add',
	//    type: 'post',
	//    data: 'product_id=' + product_id + '&quantity=' + (typeof(quantity) != 'undefined' ? quantity : 1),
	//    dataType: 'json', 
	//    success: function(json) {
			 

	//      if (json['success']) {
					 
	//      }
	//    },
	//    error: function(xhr, ajaxOptions, thrownError) {
	//      alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
	//    }
	//  });
	// },
	// 'update': function(key, quantity) {
	//  $.ajax({
	//    url: 'index.php?route=checkout/cart/edit',
	//    type: 'post',
	//    data: 'key=' + key + '&quantity=' + (typeof(quantity) != 'undefined' ? quantity : 1),
	//    dataType: 'json',
	//    beforeSend: function() {
	//      $('#cart > button').button('loading');
	//    },
	//    complete: function() {
	//      $('#cart > button').button('reset');
	//    },
	//    success: function(json) {
	//      // Need to set timeout otherwise it wont update the total
	//      setTimeout(function () {
	//        $('#cart > button').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');
	//      }, 100);

	//      if (getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') {
	//        location = 'index.php?route=checkout/cart';
	//      } else {
	//        $('#cart > ul').load('index.php?route=common/cart/info ul li');
	//      }
	//    },
	//    error: function(xhr, ajaxOptions, thrownError) {
	//      alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
	//    }
	//  });
	// },
	// 'remove':  

})(jQuery);