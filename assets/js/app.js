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

  // Amount
  const basketAmount = document.querySelectorAll('.amount');
  basketAmount.forEach(item => {
    const input = item.querySelector('.amount__input');
    input.value = 1;
    item.addEventListener('click', (event) => {
      const target = event.target;
      let count = input.value;
      if (target.closest('.amount__btn-plus')) {
        if (count < 999) {
          count++;
        }
      } else if (target.closest('.amount__btn-minus')) {
        if (count != '0') {
          count--;
        } 
      } 
      input.value = count;
    });
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