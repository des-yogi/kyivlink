{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main  main--noindex" role="main">
    {include 'file:chunks/breadcrumbs.tpl'}
    <div class="container">
      <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>
    </div>
    <div class="container  section  section--solo  tabs">
      <div class="header-block  header-block--border-bottom-mb0">
        <ul class="list-nostyled  tabs__links  header-block__btn-wrapper" role="tablist">
          <li class="tabs__link-wrap  tabs__link-wrap--active" role="presentation">
            <a href="#tab-01" class="btn  tabs__link [[*template:is=`19`:then=`tabs__link--disabled`]]" data-toggle="tab" role="tab">Спецпропозиції</a>
          </li>
          <li class="tabs__link-wrap" role="presentation">
            <a href="#tab-02" class="btn  tabs__link [[*template:is=`19`:then=`tabs__link--disabled`]]" data-toggle="tab" role="tab">Тимчасові акції</a>
          </li>
        </ul>
        [[*template:is=`4`:then=`
        <a href="[[~[[BabelTranslation:default=`82`? &resourceId=`82` &contextKey=`[[*context_key]]`]]]]" class="btn  btn--link">[[$langs? &uk=`Архів акцій` &ru=`Архив акций` &en=`Offers archive`]]</a>
        `:else=``]]
      </div>  
      <div class="tabs__content-wrapper">

        <ul class="list-nostyled  news-block  tabs__content-item  tabs__content-item--active" id="tab-01" role="tabpanel">
          [[!pdoPage@thisSite?
          &parents=`[[*id]]`
          &resources=`-[[BabelTranslation:default=`82`? &resourceId=`82` &contextKey=`[[*context_key]]`]]`
          &depth=`0`
          &limit=`5`
          &sortby=`{ "publishedon":"DESC" }`
          &tpl=`@FILE chunks/news_card_special.tpl`
          &includeTVs=`image,special_offer_kind,date_setting,color_label`
          &where=`{ "special_offer_kind":"offer1" }`
          ]]
        </ul>

        <ul class="list-nostyled  news-block  tabs__content-item" id="tab-02" role="tabpanel">
          [[!pdoPage@thisSite?
          &parents=`[[*id]]`
          &resources=`-[[BabelTranslation:default=`82`? &resourceId=`82` &contextKey=`[[*context_key]]`]]`
          &depth=`0`
          &limit=`5`
          &sortby=`{ "publishedon":"DESC" }`
          &tpl=`@FILE chunks/news_card_special.tpl`
          &includeTVs=`image,special_offer_kind,date_setting,color_label`
          &where=`{ "special_offer_kind":"offer2" }`
          ]]
        </ul>

      </div>
    </div>
    [[!+page.total:gt=`5`:then=`[[!+page.nav]]`:else=``]]
  </main>
{/block}
