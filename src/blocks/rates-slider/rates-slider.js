(function(){


  var ratesSlider = new Swiper ('.rates-slider__container', {
    spaceBetween: 0,
    slidesPerView: 1,
    //loop: true,

    breakpoints: {
      // when window width is >= 768px
      768: {
        slidesPerView: 2
      },
      1280: {
        slidesPerView: 4
      },
      1920: {
        slidesPerView: 4
      }
    },

    pagination: {
      el: '.swiper-pagination',
    },

    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
  });

}());
