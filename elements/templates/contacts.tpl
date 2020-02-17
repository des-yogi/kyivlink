{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main  main--noindex" role="main">
    {include 'file:chunks/breadcrumbs.tpl'}
    <div class="container">
      <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>
    </div>
    <div class="container  section  contacts">
      <div class="row">
        <div class="contacts__info-col">
          <div class="contacts__info">
            <h2>[[$langs? &uk=`Інформація` &ru=`Информация` &en=`Information`]]</h2>
            <div class="contacts__info-inner">
              <h4>[[++company_address_city]]</h4>
              <p>[[++company_address_street]]</p>
              <ul class="list-nostyled">
                <li>
                  <span>тел.</span> <a href="tel:+[[++company_tel_1]]">[[++company_tel_1:phone_format]]</a>
                </li>
                [[++company_tel_2:notempty=`
                <li>
                  <span>[[$langs? &uk=`тел.` &ru=`тел.` &en=`phone`]]</span> <a href="tel:+[[++company_tel_2]]">[[++company_tel_2:phone_format]]</a>
                </li>
                `]]
                [[++company_tel_3:notempty=`
                <li>
                  <span>[[$langs? &uk=`тел.` &ru=`тел.` &en=`phone`]]</span> <a href="tel:+[[++company_tel_3]]">[[++company_tel_3:phone_format]]</a>
                </li>
                `]]
                [[++company_tel_4:notempty=`
                <li>
                  <span>[[$langs? &uk=`тел.` &ru=`тел.` &en=`phone`]]</span> <a href="tel:+[[++company_tel_4]]">[[++company_tel_4:phone_format]]</a>
                </li>
                `]]
              </ul>
            </div>
            <div class="contacts__info-inner">
              <h4>[[$langs? &uk=`Поштова адреса` &ru=`Почтовый адрес` &en=`Mailing address`]]</h4>
              <p>[[++post_address]]</p>
            </div>
            <div class="contacts__info-inner">
              <h4>[[$langs? &uk=`Юридична адреса` &ru=`Юридический адрес` &en=`Legal address`]]</h4>
              <p>[[++legal_address]]</p>
            </div>
          </div>
        </div>
        <div class="contacts__form-col" id="contactFormStart">
          <div class="contacts__form"><!-- [[++post_email]] -->
            <h2>[[$langs? &uk=`Зворотній зв’язок` &ru=`Обратная связь` &en=`Feedback`]]</h2>
            [[!FormIt?
            &hooks=`recaptchav3,email`
            &recaptchav3.token_key=`token-1`
            &recaptchav3.action_key=`action-1`
            &recaptchav3.threshold=`0.6`
            &emailFrom=`postman@kyivlink.com`
            &emailTpl=`@FILE chunks/emails/email_tpl.tpl`
            &emailTo=`dm@itdoors.com.ua`
            &emailBCC=`des.yogi@ukr.net`
            &emailSubject=`[[$langs? &uk=`Зворотній зв'язок` &ru=`Обратная связь` &en=`Feedback`]] | [[++site_name]]`
            &validate=`name:required,email:email:required,subject:required,message:required,activity:blank`
            &validationErrorMessage=`[[$langs? &uk=`У формі містяться помилки!` &ru=`В форме содержатся ошибки!` &en=`The form contains errors!`]]`
            &successMessage=`[[$langs? &uk=`Повідомлення успішно відправлено!` &ru=`Сообщение успешно отправлено!` &en=`Message sent successfully!`]]`
            &submitVar=`contactForm`
            ]]
            [[!+fi.successMessage:notempty=`
              <div class="alert alert--succsess alert-dismissible fade show" role="alert">
                <strong>[[$langs? &uk=`Повідомлення успішно відправлено!` &ru=`Сообщение успешно отправлено!` &en=`Message sent successfully!`]]</strong>
                <button type="button" class="close" data-dismiss="alert" aria-label="[[$langs? &uk=`Закрити` &ru=`Закрыть` &en=`Close`]]">
                  <span aria-hidden="true"></span>
                </button>
              </div>
            `]]
            <form id="contactForm" class="request-modal__form" action="[[~[[*id]]]]#contactFormStart" method="post">
              <div class="text-input">
                <div class="text-input__wrapper">
                  <input id="input-name" class="text-input__field" type="text" name="name" value="[[!+fi.name]]" onblur="this.setAttribute('value', this.value);" required>
                  <label class="text-input__label" for="input-name">
                    <span class="text-input__label-content">[[$langs? &uk=`Ім'я` &ru=`Имя` &en=`Name`]]</span>
                  </label>
                </div>
                <span class="text-input__error">[[!+fi.error.name]]</span>
              </div>
              <div class="text-input">
                <div class="text-input__wrapper">
                  <input class="visually-hidden" type="text" name="activity" value="">
                  <input id="input-email" class="text-input__field" type="text" name="email" value="[[!+fi.email]]" onblur="this.setAttribute('value', this.value);" required>
                  <label class="text-input__label" for="input-email">
                    <span class="text-input__label-content">E-mail</span>
                  </label>
                </div>
                <span class="text-input__error">[[!+fi.error.email]]</span>
              </div>
              <div class="text-input">
                <div class="text-input__wrapper">
                  <input id="input-subject" class="text-input__field" type="text" name="subject" value="[[!+fi.subject]]" onblur="this.setAttribute('value', this.value);" required>
                  <label class="text-input__label" for="input-subject">
                    <span class="text-input__label-content">[[$langs? &uk=`Тема` &ru=`Тема` &en=`Subject`]]</span>
                  </label>
                </div>
                <span class="text-input__error">[[!+fi.error.subject]]</span>
              </div>
              <div class="text-input">
                <div class="text-input__wrapper">
                  <textarea id="input-message" class="text-input__field  text-input__field--textarea" name="message" value="[[!+fi.message]]" rows="4" onblur="this.setAttribute('value', this.value);" required></textarea>
                  <label class="text-input__label" for="input-message">
                    <span class="text-input__label-content">[[$langs? &uk=`Повідомлення` &ru=`Сообщение` &en=`Message`]]</span>
                  </label>
                </div>
                <span class="text-input__error">[[!+fi.error.message]]</span>
              </div>
              <input form="contactForm" type="submit" class="request-modal__submit" name="contactForm" value="[[$langs? &uk=`Відправити` &ru=`Отправить` &en=`Submit`]]">
              <div class="request-modal__agreement-wrapper">
                <p class="request-modal__agreement-info" style="margin-bottom:0;">
                  [[$langs? &uk=`Натискаючи на кнопку, ви приймаєте нашу <a href="[[~[[BabelTranslation:default=`68`? &resourceId=`68` &contextKey=`[[*context_key]]`]]]]">«Угоду про збір даних»</a>` &ru=`Нажимая на кнопку, вы принимаете наше <a href="[[~[[BabelTranslation:default=`68`? &resourceId=`68` &contextKey=`[[*context_key]]`]]]]">«Соглашение о сборе данных»</a>` &en=`By clicking on the button, you accept our <a href="[[~[[BabelTranslation:default=`68`? &resourceId=`68` &contextKey=`[[*context_key]]`]]]]">«Data Collection Agreement»</a>`]]
                </p>
              </div>
              <div>
                [[!recaptchav3_render?
                  &tpl=`recaptchav3_html`
                  &token_key=`token-1`
                  &action_key=`action-1`
                ]]
                <div class="visually-hidden">[[!+fi.error.recaptchav3_error]]</div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    <div class="container  section  section--solo  cover">
      <section class="cover__map">
        <h2 class="visually-hidden">[[$langs? &uk=`Наш офіс на карті` &ru=`Наш офис на карте` &en=`Our office on the map`]]</h2>
        <div class="cover__map-container" id="map-main">
        </div>
      </section>
    </div>
  </main>
{/block}

{block 'gmapscript'}

  {ignore}
    <script>
      function initMap() {

        var officeMap = [[*gmap:JSONtoChunk=`objMap`]];
        var kyivLinkLat = parseFloat(officeMap.latitude);
        var kyivLinkLng = parseFloat(officeMap.longitude);
        // Стиль карты
        var styledMapType = new google.maps.StyledMapType(
          [
            {
              "elementType": "geometry",
              "stylers": [
                {
                  "color": "#f5f5f5"
                }
              ]
            },
            {
              "elementType": "labels.icon",
              "stylers": [
                {
                  "visibility": "off"
                }
              ]
            },
            {
              "elementType": "labels.text.fill",
              "stylers": [
                {
                  "color": "#616161"
                }
              ]
            },
            {
              "elementType": "labels.text.stroke",
              "stylers": [
                {
                  "color": "#f5f5f5"
                }
              ]
            },
            {
              "featureType": "administrative.land_parcel",
              "elementType": "labels.text.fill",
              "stylers": [
                {
                  "color": "#bdbdbd"
                }
              ]
            },
            {
              "featureType": "poi",
              "elementType": "geometry",
              "stylers": [
                {
                  "color": "#eeeeee"
                }
              ]
            },
            {
              "featureType": "poi",
              "elementType": "labels.text.fill",
              "stylers": [
                {
                  "color": "#757575"
                }
              ]
            },
            {
              "featureType": "poi.park",
              "elementType": "geometry",
              "stylers": [
                {
                  "color": "#e5e5e5"
                }
              ]
            },
            {
              "featureType": "poi.park",
              "elementType": "labels.text.fill",
              "stylers": [
                {
                  "color": "#9e9e9e"
                }
              ]
            },
            {
              "featureType": "road",
              "elementType": "geometry",
              "stylers": [
                {
                  "color": "#ffffff"
                }
              ]
            },
            {
              "featureType": "road.arterial",
              "elementType": "labels.text.fill",
              "stylers": [
                {
                  "color": "#757575"
                }
              ]
            },
            {
              "featureType": "road.highway",
              "elementType": "geometry",
              "stylers": [
                {
                  "color": "#dadada"
                }
              ]
            },
            {
              "featureType": "road.highway",
              "elementType": "labels.text.fill",
              "stylers": [
                {
                  "color": "#616161"
                }
              ]
            },
            {
              "featureType": "road.local",
              "elementType": "labels.text.fill",
              "stylers": [
                {
                  "color": "#9e9e9e"
                }
              ]
            },
            {
              "featureType": "transit.line",
              "elementType": "geometry",
              "stylers": [
                {
                  "color": "#e5e5e5"
                }
              ]
            },
            {
              "featureType": "transit.station",
              "elementType": "geometry",
              "stylers": [
                {
                  "color": "#eeeeee"
                }
              ]
            },
            {
              "featureType": "water",
              "elementType": "geometry",
              "stylers": [
                {
                  "color": "#c9c9c9"
                }
              ]
            },
            {
              "featureType": "water",
              "elementType": "labels.text.fill",
              "stylers": [
                {
                  "color": "#9e9e9e"
                }
              ]
            }
          ],
          {name: 'Styled Map'}
        );

        var imageConnected = 'assets/images/gmap/address-active.svg';
        // var imageUnderConstruction = 'assets/img/address-estimated.svg';

        var mainMap = new google.maps.Map(document.getElementById('map-main'), {
          center: { lat: kyivLinkLat, lng: kyivLinkLng },
          zoom: 15,
          mapTypeControlOptions: {
            mapTypeIds: ['roadmap', 'satellite']
          }
        });

        var marker = new google.maps.Marker({
          position: { lat: kyivLinkLat, lng: kyivLinkLng },
          icon: imageConnected,
          map: mainMap
        });

        var contentString =
          '<div id="content">'+
          '<h5>[[++site_name]]</h5>'+
          '<div id="bodyContent">'+
          '<p>[[++company_address_street]]</p>' +
          '</div>'+
          '</div>'
        ;

        //mainMap.mapTypes.set('styled_map', styledMapType);
        //mainMap.setMapTypeId('styled_map');

        marker.addListener('click', function(e) {
          var infowindow = new google.maps.InfoWindow({
            content: contentString
          });
          infowindow.open(mainMap, this);
        });
      };
    </script>
  {/ignore}

  {*<script src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js"></script>*}
  <script async defer
          src="https://maps.googleapis.com/maps/api/js?key=[[++mapstv.api_key]]&[[$langs? &uk=`language=uk&region=UA` &ru=`language=ru&region=UA` &en=`language=en&region=UA`]]&callback=initMap">
  </script>
{/block}
