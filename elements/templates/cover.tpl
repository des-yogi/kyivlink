{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main  main--noindex" role="main">
    {include 'file:chunks/breadcrumbs.tpl'}
    <div class="container">
      <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>
    </div>
    <div class="container  section  section--solo  cover">
      <section class="cover__map">
        <h2 class="visually-hidden">[[$langs? &uk=`Карта покриття послугами KyivLink` &ru=`Карта покрытия услугами KyivLink` &en=`KyivLink coverage map`]]</h2>
        <div id="map-main" class="cover__map-container" title="[[$langs? &uk=`Карта покриття послугами KyivLink` &ru=`Карта покрытия услугами KyivLink` &en=`KyivLink coverage map`]]" data-target="">
          
        </div>
      </section>
      <section class="cover__addresses">
        <h2>[[$langs? &uk=`Адреси за якими є підключення до мережі KyivLink` &ru=`Адреса по которым доступно подключение к сети KyivLink` &en=`Addresses where connection to the KyivLink network is available`]]</h2>
        [[*template:is=`15`:then=`
            [[pdoMenu?
            &parents=`[[*id]]`
            &showHidden=`1`
            &level=`1`
            &tplOuter=`@INLINE <p><span class="cover__address-houses" style="display:inline-block;">[[+wrapper]]</span></p>`
            &tpl=`@INLINE <a href="[[+link]]" style="color:inherit;">[[+menutitle]], </a>`
            ]]
        `:else=`
            [[pdoMenu?
            &parents=`[[BabelTranslation:default=`56`? &resourceId=`56` &contextKey=`[[*context_key]]`]]`
            &showHidden=`1`
            &level=`2`
            &tplOuter=`@INLINE <ul class="list-nostyled  cover__address-list">[[+wrapper]]</ul>`
            &tplInner=`@INLINE <span class="cover__address-houses">[[+wrapper]]</span>`
            &tpl=`@INLINE <li class="cover__address-item"><a href="[[+link]]" class="cover__address-street">[[+menutitle]]</a>[[+wrapper]]</li>`
            &tplParentRow=`@INLINE
            <li class="cover__address-item">
              <a href="[[+link]]" class="cover__address-street">[[+menutitle]]</a>[[+wrapper]]
            </li>
            `
            &tplInnerRow=`@INLINE <a href="[[+link]]" style="color:inherit;">[[+menutitle]], </a>`
            ]]
        `]]
      </section>
    </div>
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

{block 'gmapscript'}
  {include 'file:chunks/coverage_script.tpl'}
{/block}

{block 'addscript'}
  {ignore}
    <script>
      var streets = document.querySelectorAll('.cover__address-houses');
      Array.prototype.forEach.call(streets, function (street, idx) {
        var houses = street.querySelectorAll('a');
        for (var i = 0; i < houses.length; i++) {
          //houses[i].style = 'color: red;';
          if ( i === houses.length - 1 ) {
            //houses[i].style = 'color: green !important;';
            var addressString = houses[i].innerText;
            houses[i].innerText = addressString.slice(0, -1);
          }
        }
      });
    </script>
  {/ignore}
{/block}
