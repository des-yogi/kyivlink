{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main  main--noindex" role="main">
    {include 'file:chunks/breadcrumbs.tpl'}
    <div class="container">
      <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>
    </div>
    <div class="container  section  section--solo">
      <ul class="list-nostyled  news-block">
        [[!pdoPage@thisSite?
        &parents=`[[*id]]`
        &depth=`0`
        &limit=`5`
        &sortby=`{ "publishedon":"DESC" }`
        &tpl=`@FILE chunks/news_card_simple.tpl`
        &includeTVs=`image,color_label`
        ]]
      </ul>
    </div>
    [[!+page.total:gt=`5`:then=`[[!+page.nav]]`:else=``]]
  </main>
{/block}
