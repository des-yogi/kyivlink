{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main  main--noindex" role="main">
    {include 'file:chunks/breadcrumbs.tpl'}
    <div class="container">
      <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>
    </div>
    <div class="container  section  section--solo"  role="navigation">
      <h2 class="visually-hidden">[[$langs? &uk=`Розділи блоку` &ru=`Разделы блока` &en=`Block sections`]] [[*longtitle:default=`[[*pagetitle]]`]]</h2>
      <p class="h2">[[$langs? &uk=`Виберіть потрібну категорію` &ru=`Выберите нужную категорию` &en=`Choose a category`]]:</p>
      [[pdoResources?
      &parents=`[[*id]]`
      &limit=`0`
      &depth=`1`
      &showHidden=`0`
      &includeTVs=`section_icon`
      &sortby=`{ "menuindex":"ASC" }`
      &tplWrapper=`@INLINE <ul class="list-nostyled  row  services">[[+output]]</ul>`
      &tpl=`@INLINE
      <li class="services__col">
        <a href="[[+uri]]" class="subsection">
          <span class="subsection__img">
            <img src="[[+tv.section_icon]]" alt="[[$langs? &uk=`Іконка` &ru=`Иконка` &en=`Icon`]] [[+pagetitle]]">
          </span>
          <span class="subsection__text">[[+pagetitle]]</span>
        </a>
      </li>
      `
      ]]
    </div>
  </main>
{/block}
