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
                  <source data-srcset="[[*image:replace=`/ru==`:phpthumbon=`w=650&h=488&zc=C&f=webp&q=75`]]" media="(min-width: 1280px)" type="image/webp">
                  <source data-srcset="[[*image:replace=`/ru==`:phpthumbon=`w=650&h=488&zc=C&f=jpeg&q=75`]]" media="(min-width: 1280px)">
                  <source data-srcset="[[*image:replace=`/ru==`:phpthumbon=`w=465&h=350&zc=C&f=webp&q=75`]]" media="(min-width: 768px)" type="image/webp">
                  <source data-srcset="[[*image:replace=`/ru==`:phpthumbon=`w=465&h=350&zc=C&f=jpeg&q=75`]]" media="(min-width: 768px)">
                  <source data-srcset="[[*image:replace=`/ru==`:phpthumbon=`w=610&h=457&zc=C&f=webp&q=75`]]" media="(min-width: 480px)" type="image/webp">
                  <source data-srcset="[[*image:replace=`/ru==`:phpthumbon=`w=610&h=457&zc=C&f=jpeg&q=75`]]" media="(min-width: 480px)">
                  <source data-srcset="[[*image:replace=`/ru==`:phpthumbon=`w=450&h=337&zc=C&f=webp&q=75`]]" type="image/webp">
                  <img class="b-lazy" data-src="[[*image:replace=`/ru==`:phpthumbon=`w=450&h=337&zc=C&f=jpeg&q=75`]]" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" alt="[[*pagetitle]]" width="450" height="337">
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
                    {*<a href="#" class="btn-submit  btn-submit--offer">[[$langs? &uk=`Брати участь в акції` &ru=`Участвовать в акции` &en=`Take advantage`]]</a>*}
                    <button class="btn-submit  btn-submit--offer" type="button" data-toggle="modal" data-target="#requestModalShort">[[$langs? &uk=`Брати участь в акції` &ru=`Участвовать в акции` &en=`Take advantage`]]</button>
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
  </main>
{/block}

{block 'requestmodal'}
  <div class="request-modal modal fade" id="requestModalShort" tabindex="-1" role="dialog" aria-labelledby="request-modal-title" aria-hidden="true" aria-modal="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h3 class="modal-title" id="request-modal-title">[[$langs? &uk=`Заявка на підключення` &ru=`Заявка на подключение` &en=`Application for connection`]]</h3>
          <button type="button" class="close" data-dismiss="modal" aria-label="[[$langs? &uk=`Закрити` &ru=`Закрыть` &en=`Close`]]">
            <span aria-hidden="true"></span>
          </button>
        </div>
        <div class="modal-body">
          [[!FormIt?
          &preHooks=`checkSpamTime`
          &hooks=`email`
          &emailFrom=`postman@kyivlink.com`
          &emailTpl=`@FILE chunks/emails/sp_offer_email.tpl`
          &emailTo=`info@kyivlink.com`
          &emailBCC=`des.yogi@ukr.net`
          &emailSubject=`[[$langs? &uk=`Замовлення на акційну пропозицію с` &ru=`Заказ на акционное предложение c` &en=`Promotion offer order from`]] [[++site_name]]`
          &validate=`activity:blank`
          &validationErrorMessage=`[[$langs? &uk=`У формі містяться помилки!` &ru=`В форме содержатся ошибки!` &en=`The form contains errors!`]]`
          &successMessage=`[[$langs? &uk=`Повідомлення успішно відправлено!` &ru=`Сообщение успешно отправлено!` &en=`Message sent successfully!`]]`
          &submitVar=`offerSubmit`
          ]]
          <form id="offerForm" action="[[~[[*id]]]]" method="post">
            <div class="request-modal__form">
              <div class="text-input">
                <div class="text-input__wrapper">
                  <input form="offerForm" type="hidden" name="offer" value="[[*longtitle:default=`[[*pagetitle]]`]]">
                  <input form="offerForm" type="hidden" name="activity" value="">
                  <input form="offerForm" id="input-name" class="text-input__field" type="text" name="name" value="[[!+fi.name]]" onblur="this.setAttribute('value', this.value);" required>
                  <label class="text-input__label" for="input-name">
                    <span class="text-input__label-content">[[$langs? &uk=`ПІП` &ru=`ФИО` &en=`Full name`]]</span>
                  </label>
                </div>
                <span class="text-input__error">[[!+fi.error.name]]</span>
              </div>
              <div class="text-input">
                <div class="text-input__wrapper">
                  <input class="visually-hidden" type="text" name="activity" value="">
                  <input form="offerForm" id="input-email" class="text-input__field" type="email" name="email" value="[[!+fi.email]]" onblur="this.setAttribute('value', this.value);" required>
                  <label class="text-input__label" for="input-email">
                    <span class="text-input__label-content">E-mail</span>
                  </label>
                </div>
                <span class="text-input__error">[[!+fi.error.email]]</span>
              </div>
              <div class="text-input">
                <div class="text-input__wrapper">
                  <input form="offerForm" id="input-tel" class="text-input__field" type="tel" name="tel" value="[[!+fi.tel]]" onblur="this.setAttribute('value', this.value);" required>
                  <label class="text-input__label" for="input-tel">
                    <span class="text-input__label-content">[[$langs? &uk=`Телефон` &ru=`Телефон` &en=`Phone`]]</span>
                  </label>
                </div>
                <span class="text-input__error">[[!+fi.error.tel]]</span>
              </div>
              <div class="text-input">
                <div class="text-input__wrapper">
                  <input form="offerForm" id="input-street" class="text-input__field" type="text" name="street" value="[[!+fi.street]]" onblur="this.setAttribute('value', this.value);">
                  <label class="text-input__label" for="input-street">
                    <span class="text-input__label-content">[[$langs? &uk=`Вулиця` &ru=`Улица` &en=`Street`]]</span>
                  </label>
                </div>
                <span class="text-input__error">[[!+fi.error.street]]</span>
              </div>
              <div class="request-modal__input-group">
                <div class="text-input">
                  <div class="text-input__wrapper">
                    <input form="offerForm" id="input-house" class="text-input__field" type="text" name="house" value="[[!+fi.house]]" onblur="this.setAttribute('value', this.value);">
                    <label class="text-input__label" for="input-house">
                      <span class="text-input__label-content">[[$langs? &uk=`Дім` &ru=`Дом` &en=`House`]]</span>
                    </label>
                  </div>
                  <span class="text-input__error">[[!+fi.error.house]]</span>
                </div>
                <div class="text-input">
                  <div class="text-input__wrapper">
                    <input form="offerForm" id="input-floor" class="text-input__field" type="text" name="floor" value="[[!+fi.floor]]" onblur="this.setAttribute('value', this.value);">
                    <label class="text-input__label" for="input-floor">
                      <span class="text-input__label-content">[[$langs? &uk=`Пов.` &ru=`Эт.` &en=`Fl.`]]</span>
                    </label>
                  </div>
                  <span class="text-input__error">[[!+fi.error.floor]]</span>
                </div>
                <div class="text-input">
                  <div class="text-input__wrapper">
                    <input form="offerForm" id="input-apartment" class="text-input__field" type="text" name="apartment" value="[[!+fi.apartment]]" onblur="this.setAttribute('value', this.value);">
                    <label class="text-input__label" for="input-apartment">
                      <span class="text-input__label-content">[[$langs? &uk=`Кв` &ru=`Кв` &en=`Ap`]].</span>
                    </label>
                  </div>
                  <span class="text-input__error">[[!+fi.error.apartment]]</span>
                </div>
              </div>
              <div class="text-input">
                <div class="text-input__wrapper">
                  <textarea form="offerForm" id="input-message" class="text-input__field" name="message" rows="4" value="[[!+fi.message]]" onblur="this.setAttribute('value', this.value);"></textarea>
                  <label class="text-input__label" for="input-message">
                    <span class="text-input__label-content">[[$langs? &uk=`Додаткова інформація` &ru=`Дополнительная информация` &en=`Additional Information`]]</span>
                  </label>
                </div>
                <span class="text-input__error">[[!+fi.error.message]]</span>
              </div>
              <input id="requestModalSubmit" form="offerForm" type="submit" class="request-modal__submit" name="offerSubmit" value="[[$langs? &uk=`Відправити запит` &ru=`Отправить запрос` &en=`Submit`]]">
              <div class="request-modal__agreement-wrapper">     
                <p class="request-modal__agreement-info" style="margin-bottom:0;">
                  [[$langs? &uk=`Натискаючи на кнопку, ви приймаєте нашу <a href="[[~[[BabelTranslation:default=`68`? &resourceId=`68` &contextKey=`[[*context_key]]`]]]]">«Угоду про збір даних»</a>` &ru=`Нажимая на кнопку, вы принимаете наше <a href="[[~[[BabelTranslation:default=`68`? &resourceId=`68` &contextKey=`[[*context_key]]`]]]]">«Соглашение о сборе данных»</a>` &en=`By clicking on the button, you accept our <a href="[[~[[BabelTranslation:default=`68`? &resourceId=`68` &contextKey=`[[*context_key]]`]]]]">«Data Collection Agreement»</a>`]]
                </p>
                <p class="request-modal__help">
                  [[$langs? &uk=`Якщо ви не можете визначитися з вибором, зателефонуйте нам по телефону` &ru=`Если вы не можете определиться с выбором, позвоните нам по телефону` &en=`If you can't make your choice, give us a call`]] <a href="tel:+[[++company_tel_1]]">[[++company_tel_1:phone_format]]</a>.
                </p>
                <p class="request-modal__help">
                  [[$langs? &uk=`Ми підберемо для вас оптимальний варіант` &ru=`Ми підберемо для вас оптимальний варіант` &en=`We will find the best option for you`]].
                </p>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
{/block}
