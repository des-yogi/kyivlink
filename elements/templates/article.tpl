{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main  main--noindex" role="main">
    {include 'file:chunks/breadcrumbs.tpl'}
    <article class="article">
      [[*template:is=`2`:or:if=`[[*template]]`:is=`16`:then=`
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
                    <h1>[[*template:is=`16`:then=`[[pdoField? &id=`[[*parent]]` &field=`pagetitle`]], `]] [[*longtitle:default=`[[*pagetitle]]`]]</h1>
                    [[!getImageList?
                    &tvname=`color_label`
                    &tpl=`@CODE:
                    <span class="label" style="background-color: [[+color]];">[[+text]]</span>
                    `
                    &wrapperTpl=`@CODE: <p>[[+output]]</p>`
                    &docid=`[[*id]]`
                    &where=`{ "active:=":"1" }`
                    &limit=`5`
                    ]]

                    [[*template:ne=`16`:then=`<p><span class="date">[[*publishedon:date=`%d.%m.%Y`]]</span></p>`]]
                  </div>
                  [[*template:is=`16`:then=`
                  <div class="news-card__footer">
                    {*<span class="date">&nbsp;</span>*}
                    <span class="news-card__link">
                      <button class="btn  btn--link" type="button" data-toggle="modal" data-target="#orderModal">
                        [[$langs? &uk=`Підключитись` &ru=`Подключиться` &en=`Connect`]]
                      </button>
                    </span>
                  </div>
                  `]]
                </div>
              </div>
            </div>
          </div>
        </div>
      `:else=`
        <div class="container">
          <h1 class="article__title">[[*longtitle:default=`[[*pagetitle]]`]]</h1>
        </div>
      `]]
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

[[*template:is=`10`:or:if=`[[*template]]`:is=`15`:then=`
{block 'requestmodal'}
  <div class="request-modal modal fade" id="orderModal" tabindex="-1" role="dialog" aria-labelledby="order-modal-title" aria-hidden="true" aria-modal="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h3 class="modal-title" id="order-modal-title">[[$langs? &uk=`Заявка на підключення` &ru=`Заявка на подключение` &en=`Application for connection`]]</h3>
          <button type="button" class="close" data-dismiss="modal" aria-label="[[$langs? &uk=`Закрити` &ru=`Закрыть` &en=`Close`]]">
            <span aria-hidden="true"></span>
          </button>
        </div>
        <div class="modal-body">
          [[!FormIt?
          &preHooks=`checkSpamTime`
          &hooks=`email`
          &emailFrom=`postman@kyivlink.com`
          &emailTpl=`@FILE chunks/emails/order_email.tpl`
          &emailTo=`des.yogi@ukr.net`
          &emailBCC=``
          &emailSubject=`[[$langs? &uk=`Замовлення на підключення с` &ru=`Заказ на подключение с` &en=`Network Connection Order from`]] | [[++site_name]]`
          &validate=`email:email,activity:blank`
          &validationErrorMessage=`[[$langs? &uk=`У формі містяться помилки!` &ru=`В форме содержатся ошибки!` &en=`The form contains errors!`]]`
          &successMessage=`[[$langs? &uk=`Повідомлення успішно відправлено!` &ru=`Сообщение успешно отправлено!` &en=`Message sent successfully!`]]`
          &submitVar=`orderSubmit`
          ]]
          <form id="order-form" action="[[~[[*id]]]]" method="post">
            <div class="request-modal__form">
              <div class="text-input">
                <div class="text-input__wrapper">
                  <input form="order-form" type="hidden" name="page" value="[[pdoField? &id=`[[*parent]]` &field=`pagetitle`]], [[*pagetitle]]">
                  <input form="order-form" id="input-name" class="text-input__field" type="text" name="name" value="[[!+fi.name]]" onblur="this.setAttribute('value', this.value);" required>
                  <label class="text-input__label" for="input-name">
                    <span class="text-input__label-content">[[$langs? &uk=`ПІП` &ru=`ФИО` &en=`Full name`]]</span>
                  </label>
                </div>
                <span class="text-input__error">[[!+fi.error.name]]</span>
              </div>
              <div class="text-input">
                <div class="text-input__wrapper">
                  <input class="visually-hidden" type="text" name="activity" value="">
                  <input form="order-form" id="input-email" class="text-input__field" type="email" name="email" value="[[!+fi.email]]" onblur="this.setAttribute('value', this.value);" required>
                  <label class="text-input__label" for="input-email">
                    <span class="text-input__label-content">E-mail</span>
                  </label>
                </div>
                <span class="text-input__error">[[!+fi.error.email]]</span>
              </div>
              <div class="text-input">
                <div class="text-input__wrapper">
                  <input form="order-form" id="input-tel" class="text-input__field" type="tel" name="tel" value="[[!+fi.tel]]" onblur="this.setAttribute('value', this.value);" required>
                  <label class="text-input__label" for="input-tel">
                    <span class="text-input__label-content">[[$langs? &uk=`Телефон` &ru=`Телефон` &en=`Phone`]]</span>
                  </label>
                </div>
                <span class="text-input__error">[[!+fi.error.tel]]</span>
              </div>
              <div class="text-input">
                <div class="text-input__wrapper">
                  <input form="order-form" id="input-street" class="text-input__field" type="text" name="street" value="[[!+fi.street]]" onblur="this.setAttribute('value', this.value);">
                  <label class="text-input__label" for="input-street">
                    <span class="text-input__label-content">[[$langs? &uk=`Вулиця` &ru=`Улица` &en=`Street`]]</span>
                  </label>
                </div>
                <span class="text-input__error">[[!+fi.error.street]]</span>
              </div>
              <div class="request-modal__input-group">
                <div class="text-input">
                  <div class="text-input__wrapper">
                    <input form="order-form" id="input-house" class="text-input__field" type="text" name="house" value="[[!+fi.house]]" onblur="this.setAttribute('value', this.value);">
                    <label class="text-input__label" for="input-house">
                      <span class="text-input__label-content">[[$langs? &uk=`Дім` &ru=`Дом` &en=`House`]]</span>
                    </label>
                  </div>
                  <span class="text-input__error">[[!+fi.error.house]]</span>
                </div>
                <div class="text-input">
                  <div class="text-input__wrapper">
                    <input form="order-form" id="input-floor" class="text-input__field" type="text" name="floor" value="[[!+fi.floor]]" onblur="this.setAttribute('value', this.value);">
                    <label class="text-input__label" for="input-floor">
                      <span class="text-input__label-content">[[$langs? &uk=`Пов.` &ru=`Эт.` &en=`Fl.`]]</span>
                    </label>
                  </div>
                  <span class="text-input__error">[[!+fi.error.floor]]</span>
                </div>
                <div class="text-input">
                  <div class="text-input__wrapper">
                    <input form="order-form" id="input-apartment" class="text-input__field" type="text" name="apartment" value="[[!+fi.apartment]]" onblur="this.setAttribute('value', this.value);">
                    <label class="text-input__label" for="input-apartment">
                      <span class="text-input__label-content">[[$langs? &uk=`Кв` &ru=`Кв` &en=`Ap`]].</span>
                    </label>
                  </div>
                  <span class="text-input__error">[[!+fi.error.apartment]]</span>
                </div>
              </div>
              <div class="text-input">
                <div class="text-input__wrapper">
                  <textarea form="order-form" id="input-message" class="text-input__field" name="message" rows="4" value="[[!+fi.message]]" onblur="this.setAttribute('value', this.value);"></textarea>
                  <label class="text-input__label" for="input-message">
                    <span class="text-input__label-content">[[$langs? &uk=`Додаткова інформація` &ru=`Дополнительная информация` &en=`Additional Information`]]</span>
                  </label>
                </div>
                <span class="text-input__error">[[!+fi.error.message]]</span>
              </div>
              <input form="order-form" type="submit" class="request-modal__submit" name="orderSubmit" value="[[$langs? &uk=`Відправити запит` &ru=`Отправить запрос` &en=`Submit`]]">
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
`]]
