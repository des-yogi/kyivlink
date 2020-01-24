[[!pdoResources?
&parents=`[[*template:is=`15`:then=`[[*id]]`:else=`[[BabelTranslation:default=`56`? &resourceId=`56` &contextKey=`[[*context_key]]`]]`]]`
&limit=`0`
&select=`{ "modResource":"uri,id,pagetitle,gmap" }`
&tvPrefix=``
&toPlaceholder=`objMap`
&return=`json`
&includeTVs=`gmap,coverage_status`
&hideContainers=`1`
]]

{ignore}
  <script>
    function initMap() {

      var coverageMap = [[+objMap]];
      var kyivLinkLat = 50.450912; // центр Киева
      var kyivLinkLng = 30.522633;
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
        center: { lat: parseFloat(kyivLinkLat), lng: parseFloat(kyivLinkLng) },
        zoom: 11,
        mapTypeControlOptions: {
          mapTypeIds: ['roadmap', 'satellite']
        }
      });

      var markers = coverageMap.map(function (address, i, arr) {
        //var pinImg = (address.coverage_status === '1') ? imageConnected : imageConnected;
        var pinImg = imageConnected;
        var contentString = address.gmap.street + ', ' + address.pagetitle;
        var uri = address.uri;
        var status = (address.coverage_status === '1') ? '[[$langs? &uk=`Підключен` &ru=`Подключен` &en=`Connected`]]' : null;

        var currentPosition = function (currentAddress) {
          return {
            lat: parseFloat(currentAddress.gmap.latitude),
            lng: parseFloat(currentAddress.gmap.longitude)
          }
        };

        var marker = new google.maps.Marker({
          position: currentPosition(address),
          map: mainMap,
          icon: pinImg,
          title: contentString,
          status: status,
          link: uri
        });
        return marker;
      });

      mainMap.mapTypes.set('styled_map', styledMapType);
      mainMap.setMapTypeId('styled_map');

      for (var i = 0; i < markers.length; i++) {
        markers[i].addListener('click', function () {

          var infowindow = new google.maps.InfoWindow({
            content: '<h5 style="padding:0 20px;">' + this.title + '</h5>' + '<a href="' + this.link + '" class="btn btn--link" style="display:block;padding-left:20px;margin-bottom:20px;text-align:left;background-position:right 19px center !important;font-size:16px;">[[$langs? &uk=`Детальніше` &ru=`Подробнее` &en=`Read more`]]</a><input form="order-form" type="hidden" name="connect-address" value="' + this.title + '"><button id="infoBtn" class="btn-submit" type="button" data-toggle="modal" data-target="#orderModal" value="' + this.title + '" style="font-size:16px;">[[$langs? &uk=`Підключитись` &ru=`Подключиться` &en=`Connect`]]</button>'
          });

          infowindow.open(mainMap, this);
          // Передача данных адреса с маркера в форму мод.окна _openModalHandler_
        });
      }

      var markerCluster = new MarkerClusterer(mainMap, markers, {imagePath: 'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m'});
    }
  </script>
{/ignore}

<script src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js"></script>
<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=[[++mapstv.api_key]]&[[$langs? &uk=`language=uk&region=UA` &ru=`language=ru&region=UA` &en=`language=en&region=UA`]]&callback=initMap">
</script>
