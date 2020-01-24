<nav class="breadcrumbs">
  <div class="container">
    <h4 class="visually-hidden">[[$langs? &uk=`Посторінкова навігація - ваш шлях на сайті` &ru=`Постраничная навигация - ваш путь на сайте` &en=`Page navigation is your way through the site`]]</h4>
    [[pdoCrumbs?
    &tplWrapper=`@INLINE <ol class="breadcrumbs__list" itemscope itemtype="http://schema.org/BreadcrumbList">[[+output]]</ol>`
    &tpl=`@INLINE
    <li class="breadcrumbs__item" itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
      <a href="[[+link]]" itemprop="item" class="breadcrumbs__link">
        <span itemprop="name">[[+menutitle]]</span>
        <meta itemprop="position" content="[[+idx]]">
      </a>
    </li>`
    &tplCurrent=`@INLINE
    <li class="breadcrumbs__item  active" itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
      <a href="[[+link]]" itemprop="item" class="breadcrumbs__link">
        <span itemprop="name">[[+menutitle]]</span>
        <meta itemprop="position" content="[[+idx]]">
      </a>
    </li>`
    &showHome=`1`
    &exclude=``
    ]]
  </div>
</nav>
{*[[*template:is=`16`:then=`[[*parent]]`]]*}
