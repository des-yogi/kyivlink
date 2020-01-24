{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main  main--noindex" role="main">
    {include 'file:chunks/breadcrumbs.tpl'}
    <div class="container">
      <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>
    </div>
    <section class="rates-block">
      <h2 id="rateFormStart" class="container"><span>[[$langs? &uk=`Вибір тарифу` &ru=`Выбор тарифа` &en=`Choosing a rate`]]</span> <span class="hint">[[$langs? &uk=`Оберіть тарифний план та його умови` &ru=`Выберите тарифный план и его условия` &en=`Choose a rate plan and its terms`]] </span></h2>
      [[!FormIt?
      &preHooks=`checkSpamTime`
      &hooks=`email`
      &emailFrom=`postman@kyivlink.com`
      &emailTpl=`@FILE chunks/emails/rate_email.tpl`
      &emailTo=`[[++post_email]]`
      &emailBCC=``
      &emailSubject=`[[$langs? &uk=`Замовлення на підключення с` &ru=`Заказ на подключение с` &en=`Network Connection Order from`]] | [[++site_name]]`
      &validate=`email:email,activity:blank`
      &validationErrorMessage=`[[$langs? &uk=`У формі містяться помилки!` &ru=`В форме содержатся ошибки!` &en=`The form contains errors!`]]`
      &successMessage=`[[$langs? &uk=`Повідомлення успішно відправлено!` &ru=`Сообщение успешно отправлено!` &en=`Message sent successfully!`]]`
      &submitVar=`rateSubmit`
      ]]
      <div class="container section section--solo  rates-slider">
        <div class="swiper-container  rates-slider__container">
          <div class="swiper-wrapper">
            [[!getImageList?
            &tvname=`rate_card`
            &tpl=`rate_card_tpl`
            &docid=`[[*id]]`
            &limit=`10`
            ]]
          </div>
          <div class="rates-slider__controls">
            <div class="swiper-button-prev  swiper-button-prev--white-bg"></div>
            <div class="swiper-pagination  swiper-pagination--white-bg"></div>
            <div class="swiper-button-next  swiper-button-prev--white-bg"></div>
          </div>
        </div>
      </div>
    </section>
    <section class="container  section  rates-home" style="border-top:none;">
      <div class="rates-home__intro">
        <h2 class="rates-home__title">[[$langs? &uk=`Загальна інформація` &ru=`Общая информация` &en=`General information`]]</h2>
        <div class="rates-home__intro-content">
          [[*content]]
        </div>
      </div>
    </section>
  </main>
{/block}

{block 'requestmodal'}
  <div class="request-modal modal fade" id="requestModal" tabindex="-1" role="dialog" aria-labelledby="request-modal-title" aria-hidden="true" aria-modal="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h3 class="modal-title" id="request-modal-title">[[$langs? &uk=`Заявка на підключення` &ru=`Заявка на подключение` &en=`Application for connection`]]</h3>
          <button type="button" class="close" data-dismiss="modal" aria-label="[[$langs? &uk=`Закрити` &ru=`Закрыть` &en=`Close`]]">
            <span aria-hidden="true"></span>
          </button>
          <div class="request-modal__summary">
            <table class="request-modal__table">
              <tr>
                <td>[[$langs? &uk=`Разом` &ru=`Итого` &en=`Total`]]:</td>
                <td><span id="final-sum">0</span>₴</td>
              </tr>
            </table>
          </div>
        </div>
        <div class="modal-body">
          <div class="request-modal__form">
            <input form="" type="hidden" name="external-ip" value="">
            <input form="" type="hidden" name="back-res-ip" value="">
            <input form="" type="hidden" name="add-ip" value="">
            <input form="" type="hidden" name="otv-selected" value="">
            <div class="text-input">
              <div class="text-input__wrapper">
                <input form="" id="input-name" class="text-input__field" type="text" name="name" value="[[!+fi.name]]" onblur="this.setAttribute('value', this.value);" required>
                <label class="text-input__label" for="input-name">
                  <span class="text-input__label-content">[[$langs? &uk=`ПІП` &ru=`ФИО` &en=`Full name`]]</span>
                </label>
              </div>
              <span class="text-input__error">[[!+fi.error.name]]</span>
            </div>
            <div class="text-input">
              <div class="text-input__wrapper">
                <input class="visually-hidden" type="text" name="activity" value="">
                <input form="" id="input-email" class="text-input__field" type="email" name="email" value="[[!+fi.email]]" onblur="this.setAttribute('value', this.value);" required>
                <label class="text-input__label" for="input-email">
                  <span class="text-input__label-content">E-mail</span>
                </label>
              </div>
              <span class="text-input__error">[[!+fi.error.email]]</span>
            </div>
            <div class="text-input">
              <div class="text-input__wrapper">
                <input form="" id="input-tel" class="text-input__field" type="tel" name="tel" value="[[!+fi.tel]]" onblur="this.setAttribute('value', this.value);" required>
                <label class="text-input__label" for="input-tel">
                  <span class="text-input__label-content">[[$langs? &uk=`Телефон` &ru=`Телефон` &en=`Phone`]]</span>
                </label>
              </div>
              <span class="text-input__error">[[!+fi.error.tel]]</span>
            </div>
            <div class="text-input">
              <div class="text-input__wrapper">
                <input form="" id="input-street" class="text-input__field" type="text" name="street" value="[[!+fi.street]]" onblur="this.setAttribute('value', this.value);">
                <label class="text-input__label" for="input-street">
                  <span class="text-input__label-content">[[$langs? &uk=`Вулиця` &ru=`Улица` &en=`Street`]]</span>
                </label>
              </div>
              <span class="text-input__error">[[!+fi.error.street]]</span>
            </div>
            <div class="request-modal__input-group">
              <div class="text-input">
                <div class="text-input__wrapper">
                  <input form="" id="input-house" class="text-input__field" type="text" name="house" value="[[!+fi.house]]" onblur="this.setAttribute('value', this.value);">
                  <label class="text-input__label" for="input-house">
                    <span class="text-input__label-content">[[$langs? &uk=`Дім` &ru=`Дом` &en=`House`]]</span>
                  </label>
                </div>
                <span class="text-input__error">[[!+fi.error.house]]</span>
              </div>
              <div class="text-input">
                <div class="text-input__wrapper">
                  <input form="" id="input-floor" class="text-input__field" type="text" name="floor" value="[[!+fi.floor]]" onblur="this.setAttribute('value', this.value);">
                  <label class="text-input__label" for="input-floor">
                    <span class="text-input__label-content">[[$langs? &uk=`Пов.` &ru=`Эт.` &en=`Fl.`]]</span>
                  </label>
                </div>
                <span class="text-input__error">[[!+fi.error.floor]]</span>
              </div>
              <div class="text-input">
                <div class="text-input__wrapper">
                  <input form="" id="input-apartment" class="text-input__field" type="text" name="apartment" value="[[!+fi.apartment]]" onblur="this.setAttribute('value', this.value);">
                  <label class="text-input__label" for="input-apartment">
                    <span class="text-input__label-content">[[$langs? &uk=`Кв` &ru=`Кв` &en=`Ap`]].</span>
                  </label>
                </div>
                <span class="text-input__error">[[!+fi.error.apartment]]</span>
              </div>
            </div>
            <div class="text-input">
              <div class="text-input__wrapper">
                <textarea form="" id="input-message" class="text-input__field" name="message" rows="4" value="[[!+fi.message]]" onblur="this.setAttribute('value', this.value);"></textarea>
                <label class="text-input__label" for="input-message">
                  <span class="text-input__label-content">[[$langs? &uk=`Додаткова інформація` &ru=`Дополнительная информация` &en=`Additional Information`]]</span>
                </label>
              </div>
              <span class="text-input__error">[[!+fi.error.message]]</span>
            </div>
            <input id="requestModalSubmit" form="" type="submit" class="request-modal__submit" name="rateSubmit" value="[[$langs? &uk=`Відправити запит` &ru=`Отправить запрос` &en=`Submit`]]">
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
        </div>
      </div>
    </div>
  </div>
{/block}
