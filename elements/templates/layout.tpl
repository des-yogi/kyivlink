<!DOCTYPE html>
<html class="no-js  page" lang="[[++cultureKey]]" prefix="og: https://ogp.me/ns#">
<head>
  <base href="[[++site_url]]"/>
  <meta charset="utf-8">
  {block 'title'}
    <title>[[*longtitle:default=`[[*pagetitle]]`]] | [[++site_name]]</title>
  {/block}
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="MobileOptimized" content="320">
  <meta name="format-detection" content="telephone=no">
  <meta name="description" content="[[*description:notempty=`[[*description]]`]]"/>
  <meta name="keywords" content="[[+seoPro.keywords:notempty=`[[+seoPro.keywords]]`]]"/>
  <meta name="robots" content="[[+seoTab.robotsTag]]"/>
  <!-- OpenGraph microdata
  <meta property="og:url"           content="[[~[[*id]]? &scheme=`full`]]" />
  <meta property="og:type"          content="website" />
  <meta property="og:site_name"     content="[[++site_name]]" />
  <meta property="og:locale"        content="[[$langs? &uk=`uk_UA` &ru=`ru_UA` &en=`en_US`]]" />
  <meta property="og:image"         content="[[*og_img:ne=``:then=`[[++site_url]][[*og_img]]`:else=`[[++site_url]]assets/images/opengraph/og-main.jpg`]]" />
  <meta property="og:image:alt"     content="[[++site_name]] opengraph image" />
  <meta property="og:image:width"   content="1200" />
  <meta property="og:image:height"  content="630" />
  <meta property="og:title"         content="[[*longtitle:default=`[[*pagetitle]]`]] | [[++site_name]]" />
  <meta property="og:description"   content="[[*description:default=`[[*description]]`]]" />
  -->
  <link rel="canonical" href="[[~[[*id]]? &scheme=`full`]]">
  <link rel="preload" href="assets/fonts/Inter-Regular.woff2" as="font" type="font/woff2" crossorigin>
  <link rel="preload" href="assets/fonts/Inter-Medium.woff2" as="font" type="font/woff2" crossorigin>
  <link rel="preload" href="assets/fonts/Inter-SemiBold.woff2" as="font" type="font/woff2" crossorigin>
  <link rel="preload" href="assets/fonts/Inter-Bold.woff2" as="font" type="font/woff2" crossorigin>
  <link href="[[!modxMinify?&group=`styles`]]" rel="stylesheet" media="screen">
  <script>
    // Picture element HTML5 shiv
    document.createElement("picture");
  </script>
  <link rel="apple-touch-icon" sizes="180x180" href="/assets/img/apple-touch-icon.png">
  <link rel="icon" type="image/png" sizes="32x32" href="/assets/img/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="16x16" href="/assets/img/favicon-16x16.png">
  <link rel="manifest" href="/assets/img/site.webmanifest">
  <link rel="mask-icon" href="/assets/img/safari-pinned-tab.svg" color="#ffffff">
  <link rel="shortcut icon" href="/assets/img/favicon.ico">
  <meta name="msapplication-TileColor" content="#ffffff">
  <meta name="msapplication-TileImage" content="/assets/img/mstile-144x144.png">
  <meta name="msapplication-config" content="/assets/img/browserconfig.xml">
  <meta name="theme-color" content="#ffffff"></head>
<body>
<noscript>[[$langs? &uk=`У вас відключений JavaScript. Приносимо наші вибачення, але це робить скрутним використання даного сайту` &ru=`У вас отключен JavaScript. Приносим наши извинения, но это делает затруднительным использование данного сайта` &en=`You have javascript disabled. We apologize, but this makes it difficult to use this site`]]!</noscript>
<div class="page__inner">
  <div class="page__content">
    <header class="page-header" role="banner">
      <div class="container">
        <div class="page-header__inner">
          <a [[*template:ne=`1`:then=`href="[[++site_url]]"`:else=`style="pointer-events:none;"`]] class="logo" title="[[++site_name]]">
            <img src="/assets/img/kyivlink_logo.svg" alt="[[++site_name]] logo" width="120" height="40">
          </a>
          <div class="page-header__menu-block">
            <a href="[[#77.content]]" class="page-header__icon" target="_blank" rel="nofollow noopener">
              <span>
                <svg width="32" height="32">
                  <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#account-32px_icon"/></svg>
              </span>
              <span class="page-header__icon-text">[[$langs? &uk=`Профіль` &ru=`Профиль` &en=`Profile`]]</span>
            </a>
            <a id="menu-toggler" class="page-header__icon" data-toggle="collapse" href="#collapseMainNav" role="button" aria-expanded="false" aria-controls="collapseMainNav">
              <span>
                <svg class="page-header__icon-menu" width="32" height="32">
                  <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#menu-32px_icon"/></svg>
                <svg class="page-header__icon-close" width="32" height="32">
                  <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#close-32px_icon"/></svg>
              </span>
              <span class="page-header__icon-text">[[$langs? &uk=`Меню` &ru=`Меню` &en=`Menu`]]</span>
            </a>
          </div>
          <div class="page-header__service-block">
            <div class="dropdown">
              <a class="dropdown__toggle  dropdown-toggle" href="#" role="button" id="dropdownPhone" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                [[++company_tel_1:phone_format]]
              </a>
              <ul class="dropdown-menu  dropdown__menu  list-nostyled" aria-labelledby="dropdownPhone">
                <li class="dropdown-item">
                  <a class="dropdown__link" href="tel:+[[++company_tel_1]]">[[++company_tel_1:phone_format]]</a>
                </li>
                [[++company_tel_2:notempty=`
                  <li class="dropdown-item">
                    <a class="dropdown__link" href="tel:+[[++company_tel_2]]">[[++company_tel_2:phone_format]]</a>
                  </li>
                `]]
                [[++company_tel_3:notempty=`
                  <li class="dropdown-item">
                    <a class="dropdown__link" href="tel:+[[++company_tel_3]]">[[++company_tel_3:phone_format]]</a>
                  </li>
                `]]
                [[++company_tel_4:notempty=`
                  <li class="dropdown-item">
                    <a class="dropdown__link" href="tel:+[[++company_tel_4]]">[[++company_tel_4:phone_format]]</a>
                  </li>
                `]]
              </ul>
            </div>
            <a href="#" class="page-header__callback-link" data-toggle="modal" data-target="#callbackModal">[[$langs? &uk=`Передзвоніть мені` &ru=`Перезвоните мне` &en=`Call me back`]]</a>
            <div class="dropdown">
              <a class="dropdown__toggle  dropdown-toggle" href="#" role="button" id="dropdownLang" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                [[$langs? &uk=`Укр` &ru=`Рус` &en=`Eng`]]
              </a>
              <ul class="dropdown-menu  dropdown__menu  list-nostyled" aria-labelledby="dropdownLang">
                [[BabelLinks? &tpl=`BabelLinksTpl` &showCurrent=`0`]]
              </ul>
            </div>
          </div>
        </div>
      </div>
    </header>

    <div class="collapse  main-nav" id="collapseMainNav">
      <div class="main-nav__inner">
        <div class="main-nav__content">

          <nav class="main-nav__mobile">
          [[pdoMenu?
          &parents=`0`
          &level=`2`
          &includeTVs=`menu_icon`
          &prepareTVs=`menu_icon`
          &tplOuter=`@INLINE <ul id="metismenu" class="list-nostyled  metismenu  list-nostyled">[[+wrapper]]</ul>`
          &tplInner=`@INLINE <ul class="list-nostyled  metismenu__submenu">[[+wrapper]]</ul>`
          &tpl=`@INLINE
          <li class="metismenu__item">
            <a href="[[+link]]" class="h4  metismenu__link" [[+attributes]]>[[+menutitle]]</a>[[+wrapper]]
          </li>`
          &tplHere=`@INLINE
          <li class="metismenu__item  active">
            <a class="h4  metismenu__link" [[+attributes]]>
              [[+menutitle]]
            </a>[[+wrapper]]
          </li>`
          &tplInnerRow=`@INLINE
          <li class="metismenu__item">
            <a href="[[+link]]" class="metismenu__link" [[+attributes]]>
              <span class="metismenu__icon" style="background-image: url([[+menu_icon]]);"></span>[[+menutitle]]
            </a>[[+wrapper]]
          </li>`
          &tplInnerHere=`@INLINE
          <li class="metismenu__item  active">
            <a class="metismenu__link" [[+attributes]]>
              <span class="metismenu__icon" style="background-image: url([[+menu_icon]]);"></span>[[+menutitle]]
            </a>[[+wrapper]]
          </li>`
          &tplParentRow=`@INLINE
          <li class="metismenu__item">
            <a href="#" class="has-arrow  h4  metismenu__link" [[+attributes]] aria-expanded="false">[[+menutitle]]</a>[[+wrapper]]
          </li>`
          &tplParentRowActive=`@INLINE
          <li class="metismenu__item  active">
            <a class="has-arrow  h4  metismenu__link" [[+attributes]] aria-expanded="false">[[+menutitle]]</a>[[+wrapper]]
          </li>`
          ]]
          </nav>

          <nav class="main-nav__desktop">
            <div class="container">
              [[pdoMenu?
              &parents=`0`
              &level=`2`
              &includeTVs=`menu_icon`
              &prepareTVs=`menu_icon`
              &tplOuter=`@INLINE <ul class="list-nostyled  main-nav__list">[[+wrapper]]</ul>`
              &tplInner=`@INLINE <ul class="list-nostyled  main-nav__submenu">[[+wrapper]]</ul>`
              &tpl=`@INLINE
              <li class="main-nav__item">
                <a href="[[+link]]" class="h4  main-nav__link" [[+attributes]]>[[+menutitle]]</a>[[+wrapper]]
              </li>`
              &tplHere=`@INLINE
              <li class="main-nav__item  active">
                <a class="h4  main-nav__link" [[+attributes]]>[[+menutitle]]</a>[[+wrapper]]
              </li>`
              &tplInnerRow=`@INLINE
              <li class="main-nav__item">
                <a href="[[+link]]" class="main-nav__link" [[+attributes]]>
                  <span class="main-nav__icon" style="background-image: url([[+menu_icon]]);"></span>[[+menutitle]]
                </a>[[+wrapper]]
              </li>`
              &tplInnerHere=`@INLINE
              <li class="main-nav__item  active">
                <a class="main-nav__link" [[+attributes]]>
                  <span class="main-nav__icon" style="background-image: url([[+menu_icon]]);"></span>[[+menutitle]]
                </a>[[+wrapper]]
              </li>`
              &tplParentRow=`@INLINE
              <li class="main-nav__item">
                <a href="[[+link]]" class="h4  main-nav__link" [[+attributes]]>[[+menutitle]]</a>[[+wrapper]]
              </li>`
              &tplParentRowHere=`@INLINE
              <li class="main-nav__item  active">
                <a class="h4  main-nav__link" [[+attributes]]>[[+menutitle]]</a>[[+wrapper]]
              </li>`
              ]]
            </div>
          </nav>

        </div>
        <div class="main-nav__footer">
          <div class="container">
            <div class="main-nav__footer-row">
              <div class="main-nav__copyrights">
                <span>©&thinsp;[[!+currentYear:default=`now`:strtotime:date=`%Y`]] Kyiv Link. [[$langs? &uk=`Всі права захищені` &ru=`Все права защищены` &en=`All rights reserved`]]</span>
              </div>
              <div class="main-nav__applications">
                <a href="[[++google_play]]" title="[[$langs? &uk=`Завантажте з` &ru=`Загрузите с` &en=`Download from`]] Google Play" target="_blank" rel="nofollow noopener">
                  <img src="/assets/img/google-play-app.svg" alt="GooglePlay" width="152" height="44">
                </a>
                <!-- <a href="[[++app_store]]" title="[[$langs? &uk=`Завантажте з` &ru=`Загрузите с` &en=`Download from`]] AppStore" target="_blank" rel="nofollow noopener">
                  <img src="/assets/img/apple-store-app.svg" alt="AppStore" width="152" height="44">
                </a> -->
              </div>
              <div class="main-nav__online">
                <ul class="list-nostyled  messengers">
                  <li class="messengers__item">
                    <a href="https://www.messenger.com/t/[[++fb_messenger]]" class="messengers__link" title="FB Messenger">
                      <svg width="26" height="26"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#fb-messenger_icon"/></svg>
                    </a>
                  </li>
                  <li class="messengers__item">
                    <a href="https://t.me/[[++telegram]]" class="messengers__link" title="Telegram">
                      <svg width="26" height="22"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#telegram_icon"/></svg>
                    </a>
                  </li>
                  <li class="messengers__item">
                    <a href="viber://chat?number=+[[++viber]]" class="messengers__link" title="Viber">
                      <svg width="26" height="27"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#viber_icon"/></svg>
                    </a>
                  </li>
                  <li class="messengers__item">
                    <a href="whatsapp://send?phone=+[[++whatsapp]]" class="messengers__link" title="WhatsApp">
                      <svg width="26" height="26"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#whatsapp_icon"/></svg>
                    </a>
                  </li>
                </ul>
                <ul class="list-nostyled  socials">
                  <li class="socials__item">
                    <a href="[[++facebook_page]]" class="socials__link" title="Facebook">
                      <svg width="14" height="27"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#facebook_icon"/></svg>
                    </a>
                  </li>
                  [[++instagram_page:notempty=`
                  <li class="socials__item">
                    <a href="[[++instagram_page]]" class="socials__link" title="Instagram">
                      <svg width="28.8" height="28.8"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#instagram_icon"/></svg>
                    </a>
                  </li>
                  `]]
                  [[++linkedin_page:notempty=`
                  <li class="socials__item">
                    <a href="[[++linkedin_page]]" class="socials__link" title="LinkedIn">
                      <svg width="27" height="26"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#linkedin_icon"/></svg>
                    </a>
                  </li>
                  `]]
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    {block 'main'}

    {/block}
  </div>
  <div class="page__footer-wrapper">
    <footer class="page-footer" role="contentinfo">
      <div class="page-footer__top">
        <div class="container">
          <div class="row">
            <div class="page-footer__col-contacts">
              <dl class="page-footer__contacts">
                <div class="page-footer__contacts-inner">
                  <dt class="h4">[[$langs? &uk=`Підключення` &ru=`Подключение` &en=`Connection`]]</dt>
                  <dd>
                    <span>
                      <a href="tel:+[[++company_tel_1]]">[[++company_tel_1:phone_format]]</a>
                    </span>
                    <span>
                      <a href="tel:+[[++company_tel_2]]">[[++company_tel_2:phone_format]]</a>
                    </span>
                  </dd>
                </div>
                <div class="page-footer__contacts-inner">
                  <dt class="h4">[[$langs? &uk=`Напишіть нам` &ru=`Напишите нам` &en=`Write to us`]]</dt>
                  <dd>
                    <a href="mailto:[[++site_email]]">[[++site_email]]</a>
                  </dd>
                </div>
                <div class="page-footer__contacts-inner">
                  <dt class="h4">[[$langs? &uk=`Тех. підтримка` &ru=`Тех. поддержка` &en=`Support`]]</dt>
                  <dd>
                    <span>
                      <a href="tel:+[[++company_tel_2]]">[[++company_tel_2:phone_format]]</a>
                    </span>
                    <span>
                      <a href="tel:+[[++company_tel_3]]">[[++company_tel_3:phone_format]]</a>
                    </span>
                    <span>
                      <a href="tel:+[[++company_tel_4]]">[[++company_tel_4:phone_format]]</a>
                    </span>
                  </dd>
                </div>
              </dl>
            </div>
            <div class="page-footer__col-nav">
              <div class="page-footer__nav">
                <nav class="page-footer__nav-menu">
                  [[pdoMenu?
                  &parents=`0`
                  &level=`1`
                  &tplOuter=`@INLINE <ul class="list-nostyled  page-footer__nav-list">[[+wrapper]]</ul>`
                  &tpl=`@INLINE
                  <li class="page-footer__nav-item">
                    <a href="[[+link]]" class="h4  page-footer__nav-link" [[+attributes]]>[[+menutitle]]</a>[[+wrapper]]
                  </li>`
                  &tplHere=`@INLINE
                  <li class="page-footer__nav-item  active">
                    <a class="h4  page-footer__nav-link" style="text-decoration:underline;">[[+menutitle]]</a>[[+wrapper]]
                  </li>`
                  ]]
                </nav>
                <section class="page-footer__nav-app">
                  <h4>[[$langs? &uk=`Мобільний додаток` &ru=`Мобильное приложение` &en=`Mobile app`]]</h4>
                  <div class="page-footer__app-links">
                    <a href="[[++google_play]]" title="[[$langs? &uk=`Завантажте з` &ru=`Загрузите с` &en=`Download from`]] Google Play" target="_blank" rel="nofollow noopener">
                      <img src="/assets/img/google-play-app.svg" alt="GooglePlay" width="152" height="44">
                    </a>
                    <!--<a href="[[++app_store]]" title="[[$langs? &uk=`Завантажте з` &ru=`Загрузите с` &en=`Download from`]] AppStore" target="_blank" rel="nofollow noopener">
                      <img src="/assets/img/apple-store-app.svg" alt="AppStore" width="152" height="44">
                    </a>-->
                  </div>
                </section>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="page-footer__bottom">
        <div class="container">
          <div class="page-footer__bottom-inner">
            <div class="page-footer__copyrights">
              <span class="page-footer__copyrights-item">©&thinsp;2012 - [[!+currentYear:default=`now`:strtotime:date=`%Y`]].  [[$langs? &uk=`ТОВ "К-ЛІНК". Всі права захищені.` &ru=`ООО "К-ЛИНК". Все права защищены.` &en=`All rights reserved`]]</span>
              <a href="[[~[[BabelTranslation:default=`57`? &resourceId=`57` &contextKey=`[[*context_key]]`]]]]" class="page-footer__copyrights-item">[[$langs? &uk=`Правила надання послуг.` &ru=`Правила Предоставления услуг`]]</a>
              <a href="[[~[[BabelTranslation:default=`68`? &resourceId=`68` &contextKey=`[[*context_key]]`]]]]" class="page-footer__copyrights-item">[[$langs? &uk=`Публічний договір` &ru=`Публичный договор`]]</a>
            </div>
            <div class="page-footer__online">
              <ul class="list-nostyled  messengers">
                <li class="messengers__item">
                  <a href="https://www.messenger.com/t/[[++fb_messenger]]" class="messengers__link" title="FB Messenger" target="_blank">
                    <svg width="26" height="26"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#fb-messenger_icon"/></svg>
                  </a>
                </li>
                <li class="messengers__item">
                  <a href="https://t.me/[[++telegram]]" class="messengers__link" title="Telegram" target="_blank">
                    <svg width="26" height="22"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#telegram_icon"/></svg>
                  </a>
                </li>
                <li class="messengers__item">
                  <a href="viber://chat?number=+[[++viber]]" class="messengers__link" title="Viber" target="_blank">
                    <svg width="26" height="27"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#viber_icon"/></svg>
                  </a>
                </li>
                <li class="messengers__item">
                  <a href="whatsapp://send?phone=+[[++whatsapp]]" class="messengers__link" title="WhatsApp" target="_blank">
                    <svg width="26" height="26"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#whatsapp_icon"/></svg>
                  </a>
                </li>
              </ul>
              <ul class="list-nostyled  socials">
                <li class="socials__item">
                  <a href="[[++facebook_page]]" class="socials__link" title="Facebook" target="_blank">
                    <svg width="14" height="27"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#facebook_icon"/></svg>
                  </a>
                </li>
                [[++instagram_page:notempty=`
                <li class="socials__item">
                  <a href="[[++instagram_page]]" class="socials__link" title="Instagram" target="_blank">
                    <svg width="28.8" height="28.8"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#instagram_icon"/></svg>
                  </a>
                </li>
                `]]
                [[++linkedin_page:notempty=`
                <li class="socials__item">
                  <a href="[[++linkedin_page]]" class="socials__link" title="LinkedIn" target="_blank">
                    <svg width="27" height="26"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#linkedin_icon"/></svg>
                  </a>
                </li>
                `]]
              </ul>
            </div>
            <div class="page-footer__dev">
              <a href="https://it-doors.com" target="_blank" rel="nofollow noopener" title="IT-Doors, [[$langs? &uk=`компанія-розробник` &ru=`компания-разработчик` &en=`developer`]]">
                <img src="/assets/img/it-doors-logo.svg" alt="IT-Doors logo" width="85" height="32">
              </a>
            </div>
          </div>
        </div>
      </div>
    </footer>
  </div>
</div>

<div class="modal fade" id="callbackModal" tabindex="-1" role="dialog" aria-labelledby="callback-modal-title" aria-hidden="true" aria-modal="true">
  <div class="modal-dialog  modal-dialog--callback  modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title" id="callback-modal-title">[[$langs? &uk=`Зателефонуйте мені` &ru=`Перезвоните мне` &en=`Callback me`]]</h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="[[$langs? &uk=`Закрити` &ru=`Закрыть` &en=`Close`]]">
          <span aria-hidden="true"></span>
        </button>
      </div>
      <div class="modal-body">
        [[!FormIt?
        &preHooks=`checkSpamTime`
        &hooks=`email`
        &emailFrom=`postman@kyivlink.com`
        &emailTpl=`@FILE chunks/emails/email_tpl.tpl`
        &emailTo=`info@kyivlink.com`
        &emailBCC=`dm@itdoors.com.ua`
        &emailSubject=`[[$langs? &uk=`Замовлення на зворотний дзвінок с` &ru=`Заказ на обратный звонок с` &en=`Callback order from`]] [[++site_name]]`
        &validate=`name:required,tel:required:isNumber,activity:blank`
        &validationErrorMessage=`[[$langs? &uk=`У формі містяться помилки!` &ru=`В форме содержатся ошибки!` &en=`The form contains errors!`]]`
        &successMessage=`[[$langs? &uk=`Повідомлення успішно відправлено!` &ru=`Сообщение успешно отправлено!` &en=`Message sent successfully!`]]`
        &submitVar=`callbackSubmit`
        ]]
        <form id="callbackForm" action="[[~[[*id]]]]" method="post">
          <div class="text-input">
            <div class="text-input__wrapper">
              <input form="callbackForm" id="callback-name" class="text-input__field" type="text" name="name" value="[[!+fi.name]]" onblur="this.setAttribute('value', this.value);" required>
              <label class="text-input__label" for="callback-name">
                <span class="text-input__label-content">[[$langs? &uk=`Ім'я` &ru=`Имя` &en=`Name`]]</span>
              </label>
            </div>
            <span class="text-input__error">[[!+fi.error.tel]]</span>
          </div>
            <div class="text-input__wrapper">
              <input form="callbackForm" id="callback-tel" class="text-input__field" type="tel" name="tel" value="[[!+fi.tel]]" onblur="this.setAttribute('value', this.value);" required>
              <label class="text-input__label" for="callback-tel">
                <span class="text-input__label-content">[[$langs? &uk=`Телефон` &ru=`Телефон` &en=`Phone`]]</span>
              </label>
            </div>
            <span class="text-input__error">[[!+fi.error.tel]]</span>
          </div>
          <div class="text-input" style="margin-bottom:0;">
            <div class="text-input__wrapper">
              <input form="callbackForm" type="submit" class="request-modal__submit" name="callbackSubmit" value="[[$langs? &uk=`Відправити запит` &ru=`Отправить запрос` &en=`Submit`]]">
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

{block 'requestmodal'}{/block}
<script src="[[!modxMinify?&group=`scripts`]]"></script>
{block 'gmapscript'}{/block}
{block 'addscript'}{/block}
</body>
</html>
