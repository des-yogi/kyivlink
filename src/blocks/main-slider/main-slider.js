(function(){


  var mainSliderLeft = new Swiper ('.main-slider__left', {
    spaceBetween: 20,
    slidesPerView: 1,
    preloadImages: false,
    lazy: true,
    loop: true,

    pagination: {
      el: '.swiper-pagination',
    },

    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
  });

  var mainSliderRight = new Swiper ('.main-slider__right', {
    spaceBetween: 20,
    slidesPerView: 1,
    preloadImages: false,
    lazy: true,
    loop: true,

    pagination: {
      el: '.swiper-pagination',
    },

    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
  });

}());
