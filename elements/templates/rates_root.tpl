{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main  main--noindex" role="main">
    {include 'file:chunks/breadcrumbs.tpl'}
    <div class="container">
      <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>
    </div>
    <div class="container  section  section--solo  rates-home">
      <div class="rates-home__intro">
        <h2 class="rates-home__title">[[$langs? &uk=`Загальна інформація` &ru=`Общая информация` &en=`General information`]]</h2>
        <div class="rates-home__intro-content">
          [[*content]]
        </div>
      </div>
      <ul class="list-nostyled  row  rates-home__list">
        [[pdoResources?
        &parents=`[[*id]]`
        &level=`1`
        &includeTVs=`rate_logo`
        &sortby=`{ "menuindex":"ASC" }`
        &tpl=`@INLINE
        <li class="rates-home__col">
          <a href="[[+uri]]" class="rates-link">
            <span class="rates-link__img">
              <img class="b-lazy" data-src="[[+tv.rate_logo]]" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" alt="[[*pagetitle]] logo">
            </span>
            <span class="rates-link__text">[[+pagetitle]]</span>
          </a>
        </li>
        `
        ]]
      </ul>
    </div>
  </main>
{/block}
                       
