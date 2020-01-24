{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main" role="main">
    <section class="main-slider">
      <div class="container">
        <div class="row">
          <div class="main-slider__left-col">
            <div class="main-slider__left  swiper-container">
              <div class="swiper-wrapper">
                [[pdoResources?
                &parents=`[[BabelTranslation:default=`54`? &resourceId=`54` &contextKey=`[[*context_key]]`]]`
                &depth=`0`
                &tpl=`@FILE chunks/banner_left.tpl`
                &includeTVs=`image_slide`
                &sortby=`{ "publishedon":"DESC" }`
                ]]
              </div>
              <div class="main-slider__controls  main-slider__controls--left">
                <div class="swiper-button-prev"></div>
                <div class="swiper-pagination"></div>
                <div class="swiper-button-next"></div>
              </div>
            </div>
          </div>
          <div class="main-slider__right-col">
            <div class="main-slider__right  swiper-container">
              <div class="swiper-wrapper">
                [[!getImageList?
                &tvname=`connect_announce`
                &tpl=`banner_right_tpl`
                &docid=`[[*id]]`
                ]]
              </div>
              <div class="main-slider__controls  main-slider__controls--right">
                <div class="swiper-button-prev"></div>
                <div class="swiper-pagination"></div>
                <div class="swiper-button-next"></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="container  services-index">
      <div class="header-block">
        <h2><span>[[$langs? &uk=`Послуги` &ru=`Услуги` &en=`Services`]]</span><span class="header-block__help-text">[[$langs? &uk=`Це може вам допомогти` &ru=`Это может вам помочь` &en=`This can help you`]]</span></h2>
        <!-- <a href="#" class="btn  btn&#45;&#45;link">[[$langs? &uk=`Всі послуги` &ru=`Все услуги` &en=`All services`]]</a> -->
      </div>
      <ul class="list-nostyled  services-index__list">
        <li class="services-index__item">
          <div class="services-index__content">
            <h3>[[pdoField? &id=`[[BabelTranslation:default=`49`? &resourceId=`49` &contextKey=`[[*context_key]]`]]` &field=`pagetitle`]]</h3>
            <p>[[pdoField? &id=`[[BabelTranslation:default=`49`? &resourceId=`49` &contextKey=`[[*context_key]]`]]` &field=`introtext`]]</p>
          </div>
          <a href="[[~[[BabelTranslation:default=`49`? &resourceId=`49` &contextKey=`[[*context_key]]`]]]]" class="btn  btn--link">[[$langs? &uk=`Детальніше` &ru=`Подробнее` &en=`Read more`]]</a>
        </li>
        <li class="services-index__item">
          <div class="services-index__content">
            <h3>[[pdoField? &id=`[[BabelTranslation:default=`50`? &resourceId=`50` &contextKey=`[[*context_key]]`]]` &field=`pagetitle`]]</h3>
            <p>[[pdoField? &id=`[[BabelTranslation:default=`50`? &resourceId=`50` &contextKey=`[[*context_key]]`]]` &field=`introtext`]]</p>
          </div>
          <a href="[[~[[BabelTranslation:default=`50`? &resourceId=`50` &contextKey=`[[*context_key]]`]]]]" class="btn  btn--link">[[$langs? &uk=`Детальніше` &ru=`Подробнее` &en=`Read more`]]</a>
        </li>
        <li class="services-index__item">
          <div class="services-index__content">
            <h3>[[pdoField? &id=`[[BabelTranslation:default=`51`? &resourceId=`51` &contextKey=`[[*context_key]]`]]` &field=`pagetitle`]]</h3>
            <p>[[pdoField? &id=`[[BabelTranslation:default=`51`? &resourceId=`51` &contextKey=`[[*context_key]]`]]` &field=`introtext`]]</p>
          </div>
          <a href="[[~[[BabelTranslation:default=`51`? &resourceId=`51` &contextKey=`[[*context_key]]`]]]]" class="btn  btn--link">[[$langs? &uk=`Детальніше` &ru=`Подробнее` &en=`Read more`]]</a>
        </li>
      </ul>
    </section>
    <section class="container  section">
      <div class="header-block  header-block--border-bottom">
        <h2><span>[[$langs? &uk=`Тарифи` &ru=`Тарифы` &en=`Rates`]]</span><span class="header-block__help-text">[[$langs? &uk=`Виберіть місце підключення` &ru=`Выберите место подключения` &en=`Select a connection location`]]:</span></h2>
        <a href="[[~[[BabelTranslation:default=`55`? &resourceId=`55` &contextKey=`[[*context_key]]`]]]]" class="btn  btn--link">[[$langs? &uk=`Всі тарифи` &ru=`Все тарифы` &en=`All rates`]]</a>
      </div>
      <div class="rate-index">
        <ul class="row  list-nostyled">
          [[pdoResources?
          &parents=`[[BabelTranslation:default=`55`? &resourceId=`55` &contextKey=`[[*context_key]]`]]`
          &depth=`0`
          &tpl=`@FILE chunks/rate_index_card.tpl`
          &includeTVs=`rate_logo,rate_image`
          &sortdir=`ASC`
          &sortby=`menuindex`
          ]]
        </ul>
      </div>
    </section>
    <section class="container  section">
      <div class="header-block  header-block--border-bottom-mb0">
        <h2><span>[[pdoField? &id=`[[BabelTranslation:default=`6`? &resourceId=`6` &contextKey=`[[*context_key]]`]]` &field=`pagetitle`]]</span><span class="header-block__help-text">Слідкуйте за останніми новинами</span></h2>
        <a href="[[~[[BabelTranslation:default=`6`? &resourceId=`6` &contextKey=`[[*context_key]]`]]]]" class="btn  btn--link">[[$langs? &uk=`Всі новини` &ru=`Все новости` &en=`All news`]]</a>
      </div>
      <ul class="list-nostyled  news-block">
        [[!pdoPage@thisSite?
        &parents=`[[BabelTranslation:default=`6`? &resourceId=`6` &contextKey=`[[*context_key]]`]]`
        &depth=`0`
        &limit=`3`
        &sortby=`{ "publishedon":"DESC" }`
        &tpl=`@FILE chunks/news_card_simple.tpl`
        &includeTVs=`image`
        ]]
      </ul>
    </section>
    <section class="app-store">
      <div class="container  section  section--color">
        <div class="header-block  header-block--invert">
          <h2><span>[[$langs? &uk=`Встановіть додаток` &ru=`Установите приложение` &en=`Install the application`]]</span>
            <span class="header-block__help-text">[[$langs? &uk=`Так зручніше і цікавіше` &ru=`Так удобнее и интереснее` &en=`It's more convenient and interesting`]]! :)</span>
          </h2>
        </div>
        <div class="app-store__inner">
          <div class="app-store__text">
            [[!getImageList?
            &tvname=`app_block`
            &tpl=`@CODE:
            <div class="app-store__text-content">
              [[+text_bold]]
              [[+text_normal]]
            </div>
            `
            &docid=`[[*id]]`
            &limit=`2`
            ]]
          </div>
          <div class="app-store__img">
            <span class="app-store__img-phone">
              <picture>
                <source data-srcset="assets/img/smartphone-dt2@1x.webp" media="(min-width: 1680px)" type="image/webp">
                <source data-srcset="assets/img/smartphone-dt2@1x.png" media="(min-width: 1680px)">
                <!-- height: 940px; -->
                <source data-srcset="assets/img/smartphone-dt1@1x.webp" media="(min-width: 1280px)" type="image/webp">
                <source data-srcset="assets/img/smartphone-dt1@1x.png" media="(min-width: 1280px)">
                <!-- height: 640px; -->
                <source data-srcset="assets/img/smartphone-tabl@1x.webp" media="(min-width: 768px)" type="image/webp">
                <source data-srcset="assets/img/smartphone-tabl@1x.png" media="(min-width: 768px)">
                <!-- height: 605px; -->
                <source data-srcset="assets/img/smartphone-mob@1x.webp" type="image/webp">
                <img class="b-lazy" data-src="/assets/img/smartphone-mob@1x.png" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" alt="Smartphones app" height="390">
              </picture>
            </span>
            <span class="app-store__img-code">
              <map name="applink">
                <area class="applink-area" shape="rect" coords="182,65,325,110" href="[[++google_play]]" target="_blank" alt="GooglePlay" rel="nofollow noopener"/>
              </map>
              <picture>
                <source data-srcset="assets/img/app-store-dt@1x.png" media="(min-width: 768px)">
                <img class="b-lazy" data-src="/assets/img/app-store-mob@1x.png" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" alt="QR-Code" usemap="#applink">
              </picture>
            </span>
          </div>
        </div>
      </div>
    </section>
  </main>
{/block}

{block 'addscript'}
  {ignore}
    <script>
      (function () {
        var map = document.querySelector('.applink-area');
        var setCoords = function () {
          if ($(this).width() >= 768) {
            map.coords = '182,65,325,110';
          } else {
            map.coords = '135,50,243,84';
          }
        };
        setCoords();
        $(window).resize(function() {
          setCoords();
        });
      })()
    </script>
  {/ignore}
{/block}
