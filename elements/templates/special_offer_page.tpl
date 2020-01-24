{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main  main--noindex" role="main">
    {include 'file:chunks/breadcrumbs.tpl'}
    <article class="article">
      <div class="container">
        <div class="news-card">
          <div class="row">
            <div class="news-card__img-col">
              <div class="embed-responsive embed-responsive--4-3  news-card__img">
                <picture>
                  <source data-srcset="[[*image:phpthumbon=`w=650&h=488&zc=C&f=webp&q=75`]]" media="(min-width: 1280px)" type="image/webp">
                  <source data-srcset="[[*image:phpthumbon=`w=650&h=488&zc=C&f=jpeg&q=75`]]" media="(min-width: 1280px)">
                  <source data-srcset="[[*image:phpthumbon=`w=465&h=350&zc=C&f=webp&q=75`]]" media="(min-width: 768px)" type="image/webp">
                  <source data-srcset="[[*image:phpthumbon=`w=465&h=350&zc=C&f=jpeg&q=75`]]" media="(min-width: 768px)">
                  <source data-srcset="[[*image:phpthumbon=`w=610&h=457&zc=C&f=webp&q=75`]]" media="(min-width: 480px)" type="image/webp">
                  <source data-srcset="[[*image:phpthumbon=`w=610&h=457&zc=C&f=jpeg&q=75`]]" media="(min-width: 480px)">
                  <source data-srcset="[[*image:phpthumbon=`w=450&h=337&zc=C&f=webp&q=75`]]" type="image/webp">
                  <img class="b-lazy" data-src="[[*image:phpthumbon=`w=450&h=337&zc=C&f=jpeg&q=75`]]" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" alt="[[*pagetitle]]" width="450" height="337">
                </picture>
              </div>
            </div>
            <div class="news-card__text-col">
              <div class="news-card__text">
                <div class="news-card__content">
                  <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>
                  [[!getImageList?
                  &tvname=`color_label`
                  &tpl=`@CODE:
                  <span class="label" style="background-color: [[+color]];">[[+text]]</span>
                  `
                  &docid=`[[*id]]`
                  &where=`{ "active:=":"1" }`
                  &limit=`5`
                  &toPlaceholder=`label`
                  ]]
                  [[+label:notempty=`
                  <p>[[+label]]</p>
                  `]]
                  <span class="date">[[*publishedon:date=`%d.%m.%Y`]]</span>
                  [[*date_setting:notempty=`
                  <span class="date  date--time-left" data-countdown="[[*date_setting:date=`%m/%d/%Y %H:%M:%S`]]">
                     [[$langs? &uk=`До кінця акції залишилося` &ru=`До конца акции осталось` &en=`Time left to connect`]]:&nbsp;&nbsp;
                    <ul class="list-nostyled  countdown">
                      <li>
                        <span class="days">00</span>
                      </li>
                      <li class="seperator">:</li>
                      <li>
                        <span class="hours">00</span>
                      </li>
                      <li class="seperator">:</li>
                      <li>
                        <span class="minutes">00</span>
                      </li>
                       <li class="seperator">:</li>
                       <li>
                        <span class="seconds">00</span>
                      </li>
                    </ul>
                  </span>
                  `]]
                  <div class="news-card__submit-wrapper">
                    <a href="#" class="btn-submit  btn-submit--offer">[[$langs? &uk=`Брати участь в акції` &ru=`Участвовать в акции` &en=`Take advantage`]]</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="container  section  section--solo  article__content-wrapper">
        <div class="article__content-nav">
          <div class="article__nav-wrapper">
            <h3>[[$langs? &uk=`Розділ` &ru=`Раздел` &en=`Section`]]:</h3>
            <ul id="aside-nav" class="list-nostyled  article__nav-list">
              [[!getImageList?
              &tvname=`content_block`
              &tpl=`@CODE:
              <li class="article__nav-item">
                <a href="#section-[[+idx]]" class="scroll-link  article__nav-link" data-scroll-link>[[+title]]</a>
              </li>
              `
              &docid=`[[*id]]`
              &limit=`99`
              ]]
            </ul>
          </div>
        </div>
        <div class="article__content">
          [[!getImageList?
          &tvname=`content_block`
          &tpl=`@CODE:
          <div id="section-[[+idx]]" class="article__content-block">
            <h2>[[+title]]</h2>
            [[+text]]
          </div>
          `
          &docid=`[[*id]]`
          &limit=`99`
          ]]
        </div>
      </div>
    </article>
    
    {*<section class="rates-block  rates-block--mt">
      <h2 class="container">Тарифи</h2>
      <div class="container section section--solo  rates-slider">
        <div class="swiper-container  rates-slider__container">
          <div class="swiper-wrapper">
            <div class="swiper-slide  rate-card">
              <div class="rate-card__header">
                <h3>Комфорт</h3>
                <div class="rate-card__header-inner">
                  <div class="rate-card__header-price">
                    <span class="currency">
                      <svg width="13" height="18"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#ua-hrn-icon"/></svg>
                    </span>
                    <span class="rate-card__header-sum">150
                      <span class="rate-card__label" style="background-color: green;">-20%</span>
                    </span>&thinsp;/місяць
                  </div>
                </div>
              </div>
              <div class="rate-card__body">
                <table class="rate-card__table">
                  <tfoot>
                  <tr>
                    <td class="rate-card__footer-total">Итого:</td>
                    <td class="rate-card__footer-total">150<span>₴</span>
                    </td>
                  </tr>
                  </tfoot>
                  <tbody>
                  <tr>
                    <td>World</td>
                    <td>50 Мбит</td>
                  </tr>
                  <tr>
                    <td>Швидкість UA-IX</td>
                    <td>100 Мбит</td>
                  </tr>
                  <tr>
                    <td>Безліміт UA</td>
                    <td><span class="rate-card__availability">+</span></td>
                  </tr>
                  <tr>
                    <td>
                      <button class="rate-card__hint" type="button" data-container="body" data-toggle="popover" title="Зовнішній IP" data-content="Послуга «Зовнішній IP» дозволяє встановити…" aria-labels="hint (рус. подсказка)"></button>
                      <span>Зовнішній IP</span>
                    </td>
                    <td>
                      <div class="field-toggler">
                        <div class="field-toggler__input-wrap">
                          <label class="field-toggler__name">
                            <input class="field-toggler__input" type="checkbox" name value>
                            <span class="field-toggler__name-text" aria-labels="Переключатель" aria-role="button"></span>
                          </label>
                        </div>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <button class="rate-card__hint" type="button" data-container="body" data-toggle="popover" title="Зовнішній IP" data-content="Послуга «Зовнішній IP» дозволяє встановити…" aria-labels="hint (рус. подсказка)"></button>
                      <span>Гігабітний порт</span>
                    </td>
                    <td><span class="rate-card__availability">-</span></td>
                  </tr>
                  <tr>
                    <td>
                      <button class="rate-card__hint" type="button" data-container="body" data-toggle="popover" title="Зовнішній IP" data-content="Послуга «Зовнішній IP» дозволяє встановити…" aria-labels="hint (рус. подсказка)"></button>
                      <span>Back-Resolving IP</span>
                    </td>
                    <td>
                      <div class="field-toggler">
                        <div class="field-toggler__input-wrap">
                          <label class="field-toggler__name">
                            <input class="field-toggler__input" type="checkbox" name value>
                            <span class="field-toggler__name-text" aria-labels="Переключатель" aria-role="button"></span>
                          </label>
                        </div>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <button class="rate-card__hint" type="button" data-container="body" data-toggle="popover" title="Зовнішній IP" data-content="Послуга «Зовнішній IP» дозволяє встановити…" aria-labels="hint (рус. подсказка)"></button>
                      <span>Додатковий IP</span>
                    </td>
                    <td>
                      <div class="field-toggler">
                        <div class="field-toggler__input-wrap">
                          <label class="field-toggler__name">
                            <input class="field-toggler__input" type="checkbox" name value>
                            <span class="field-toggler__name-text" aria-labels="Переключатель" aria-role="button"></span>
                          </label>
                        </div>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td>Вартість підключення</td>
                    <td>1<span>₴</span>
                    </td>
                  </tr>
                  <tr>
                    <td>Авансовий платіж</td>
                    <td>250<span>₴</span>
                    </td>
                  </tr>
                  <tr>
                    <td><span class="rate-card__title-color">OMEGA.TV</span></td>
                    <td>
                      <div class="field-toggler">
                        <div class="field-toggler__input-wrap">
                          <label class="field-toggler__name">
                            <input class="field-toggler__input  field-toggler__input--omegaTV" type="checkbox" name value>
                            <span class="field-toggler__name-text" aria-labels="Переключатель" aria-role="button"></span>
                          </label>
                        </div>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td class="rate-card__select  rate-card__select--omegaTV" colspan="2">
                      <label class="field-select">
                              <span class="field-select__select-wrap">
                                <select class="field-select__select  field-select__select--omegaTV" disabled>
                                  <option value>Premium TV</option>
                                  <option value>Hrenium TV</option>
                                  <option value>Durium TV</option>
                                </select>
                              </span>
                      </label>
                    </td>
                  </tr>
                  </tbody>
                </table>
              </div>
              <div class="rate-card__footer">
                <button class="rate-card__to-submit" type="button" data-toggle="modal" data-target="#requestModal">Обрати тариф</button>
              </div>
            </div>
            <div class="swiper-slide  rate-card">
              <div class="rate-card__header">
                <h3>Оптимальний</h3>
                <div class="rate-card__header-inner">
                  <div class="rate-card__header-price">
                        <span class="currency">
                          <svg width="13" height="18"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#ua-hrn-icon"/></svg>
                        </span>
                    <span class="rate-card__header-sum">170
                          <span class="rate-card__label" style="background-color: green;">-10%</span>
                        </span>&thinsp;/місяць
                  </div>
                </div>
              </div>
              <div class="rate-card__body">
                <table class="rate-card__table">
                  <tfoot>
                  <tr>
                    <td class="rate-card__footer-total">Итого:</td>
                    <td class="rate-card__footer-total">150<span>₴</span>
                    </td>
                  </tr>
                  </tfoot>
                  <tbody>
                  <tr>
                    <td>World</td>
                    <td>50 Мбит</td>
                  </tr>
                  <tr>
                    <td>Швидкість UA-IX</td>
                    <td>100 Мбит</td>
                  </tr>
                  <tr>
                    <td>Безліміт UA</td>
                    <td><span class="rate-card__availability">+</span></td>
                  </tr>
                  <tr>
                    <td>
                      <button class="rate-card__hint" type="button" data-container="body" data-toggle="popover" title="Зовнішній IP" data-content="Послуга «Зовнішній IP» дозволяє встановити…" aria-labels="hint (рус. подсказка)"></button>
                      <span>Зовнішній IP</span>
                    </td>
                    <td>
                      <div class="field-toggler">
                        <div class="field-toggler__input-wrap">
                          <label class="field-toggler__name">
                            <input class="field-toggler__input" type="checkbox" name value>
                            <span class="field-toggler__name-text" aria-labels="Переключатель" aria-role="button"></span>
                          </label>
                        </div>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <button class="rate-card__hint" type="button" data-container="body" data-toggle="popover" title="Зовнішній IP" data-content="Послуга «Зовнішній IP» дозволяє встановити…" aria-labels="hint (рус. подсказка)"></button>
                      <span>Гігабітний порт</span>
                    </td>
                    <td><span class="rate-card__availability">-</span></td>
                  </tr>
                  <tr>
                    <td>
                      <button class="rate-card__hint" type="button" data-container="body" data-toggle="popover" title="Зовнішній IP" data-content="Послуга «Зовнішній IP» дозволяє встановити…" aria-labels="hint (рус. подсказка)"></button>
                      <span>Back-Resolving IP</span>
                    </td>
                    <td>
                      <div class="field-toggler">
                        <div class="field-toggler__input-wrap">
                          <label class="field-toggler__name">
                            <input class="field-toggler__input" type="checkbox" name value>
                            <span class="field-toggler__name-text" aria-labels="Переключатель" aria-role="button"></span>
                          </label>
                        </div>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <button class="rate-card__hint" type="button" data-container="body" data-toggle="popover" title="Зовнішній IP" data-content="Послуга «Зовнішній IP» дозволяє встановити…" aria-labels="hint (рус. подсказка)"></button>
                      <span>Додатковий IP</span>
                    </td>
                    <td>
                      <div class="field-toggler">
                        <div class="field-toggler__input-wrap">
                          <label class="field-toggler__name">
                            <input class="field-toggler__input" type="checkbox" name value>
                            <span class="field-toggler__name-text" aria-labels="Переключатель" aria-role="button"></span>
                          </label>
                        </div>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td>Вартість підключення</td>
                    <td>1<span>₴</span>
                    </td>
                  </tr>
                  <tr>
                    <td>Авансовий платіж</td>
                    <td>250<span>₴</span>
                    </td>
                  </tr>
                  <tr>
                    <td><span class="rate-card__title-color">OMEGA.TV</span></td>
                    <td>
                      <div class="field-toggler">
                        <div class="field-toggler__input-wrap">
                          <label class="field-toggler__name">
                            <input class="field-toggler__input  field-toggler__input--omegaTV" type="checkbox" name value>
                            <span class="field-toggler__name-text" aria-labels="Переключатель" aria-role="button"></span>
                          </label>
                        </div>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td class="rate-card__select  rate-card__select--omegaTV" colspan="2">
                      <label class="field-select">
                          <span class="field-select__select-wrap">
                            <select class="field-select__select  field-select__select--omegaTV" disabled>
                              <option value>Premium TV</option>
                              <option value>Hrenium TV</option>
                              <option value>Durium TV</option>
                            </select>
                          </span>
                      </label>
                    </td>
                  </tr>
                  </tbody>
                </table>
              </div>
              <div class="rate-card__footer">
                <button class="rate-card__to-submit" type="button">Обрати тариф</button>
              </div>
            </div>
            <div class="swiper-slide  rate-card">
              <div class="rate-card__header">
                <h3>Гігабіт</h3>
                <div class="rate-card__header-inner">
                  <div class="rate-card__header-price">
                        <span class="currency">
                          <svg width="13" height="18"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#ua-hrn-icon"/></svg>
                        </span>
                    <span class="rate-card__header-sum">200
                          <span class="rate-card__label" style="background-color: red;">Суперхит</span>
                        </span>&thinsp;/місяць
                  </div>
                </div>
              </div>
              <div class="rate-card__body">
                <table class="rate-card__table">
                  <tfoot>
                  <tr>
                    <td class="rate-card__footer-total">Итого:</td>
                    <td class="rate-card__footer-total">150<span>₴</span>
                    </td>
                  </tr>
                  </tfoot>
                  <tbody>
                  <tr>
                    <td>World</td>
                    <td>50 Мбит</td>
                  </tr>
                  <tr>
                    <td>Швидкість UA-IX</td>
                    <td>100 Мбит</td>
                  </tr>
                  <tr>
                    <td>Безліміт UA</td>
                    <td><span class="rate-card__availability">+</span></td>
                  </tr>
                  <tr>
                    <td>
                      <button class="rate-card__hint" type="button" data-container="body" data-toggle="popover" title="Зовнішній IP" data-content="Послуга «Зовнішній IP» дозволяє встановити…" aria-labels="hint (рус. подсказка)"></button>
                      <span>Зовнішній IP</span>
                    </td>
                    <td>
                      <div class="field-toggler">
                        <div class="field-toggler__input-wrap">
                          <label class="field-toggler__name">
                            <input class="field-toggler__input" type="checkbox" name value>
                            <span class="field-toggler__name-text" aria-labels="Переключатель" aria-role="button"></span>
                          </label>
                        </div>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <button class="rate-card__hint" type="button" data-container="body" data-toggle="popover" title="Зовнішній IP" data-content="Послуга «Зовнішній IP» дозволяє встановити…" aria-labels="hint (рус. подсказка)"></button>
                      <span>Гігабітний порт</span>
                    </td>
                    <td><span class="rate-card__availability">-</span></td>
                  </tr>
                  <tr>
                    <td>
                      <button class="rate-card__hint" type="button" data-container="body" data-toggle="popover" title="Зовнішній IP" data-content="Послуга «Зовнішній IP» дозволяє встановити…" aria-labels="hint (рус. подсказка)"></button>
                      <span>Back-Resolving IP</span>
                    </td>
                    <td>
                      <div class="field-toggler">
                        <div class="field-toggler__input-wrap">
                          <label class="field-toggler__name">
                            <input class="field-toggler__input" type="checkbox" name value>
                            <span class="field-toggler__name-text" aria-labels="Переключатель" aria-role="button"></span>
                          </label>
                        </div>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <button class="rate-card__hint" type="button" data-container="body" data-toggle="popover" title="Зовнішній IP" data-content="Послуга «Зовнішній IP» дозволяє встановити…" aria-labels="hint (рус. подсказка)"></button>
                      <span>Додатковий IP</span>
                    </td>
                    <td>
                      <div class="field-toggler">
                        <div class="field-toggler__input-wrap">
                          <label class="field-toggler__name">
                            <input class="field-toggler__input" type="checkbox" name value>
                            <span class="field-toggler__name-text" aria-labels="Переключатель" aria-role="button"></span>
                          </label>
                        </div>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td>Вартість підключення</td>
                    <td>1<span>₴</span>
                    </td>
                  </tr>
                  <tr>
                    <td>Авансовий платіж</td>
                    <td>250<span>₴</span>
                    </td>
                  </tr>
                  <tr>
                    <td><span class="rate-card__title-color">OMEGA.TV</span></td>
                    <td>
                      <div class="field-toggler">
                        <div class="field-toggler__input-wrap">
                          <label class="field-toggler__name">
                            <input class="field-toggler__input  field-toggler__input--omegaTV" type="checkbox" name value>
                            <span class="field-toggler__name-text" aria-labels="Переключатель" aria-role="button"></span>
                          </label>
                        </div>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td class="rate-card__select  rate-card__select--omegaTV" colspan="2">
                      <label class="field-select">
                              <span class="field-select__select-wrap">
                                <select class="field-select__select  field-select__select--omegaTV" disabled>
                                  <option value>Premium TV</option>
                                  <option value>Hrenium TV</option>
                                  <option value>Durium TV</option>
                                </select>
                              </span>
                      </label>
                    </td>
                  </tr>
                  </tbody>
                </table>
              </div>
              <div class="rate-card__footer">
                <button class="rate-card__to-submit" type="button">Обрати тариф</button>
              </div>
            </div>
          </div>
          <div class="rates-slider__controls">
            <div class="swiper-button-prev  swiper-button-prev--white-bg"></div>
            <div class="swiper-pagination  swiper-pagination--white-bg"></div>
            <div class="swiper-button-next  swiper-button-prev--white-bg"></div>
          </div>
        </div>
      </div>
    </section>*}
  </main>
{/block}
