<li>
  <article class="news-card  news-card--bt-0">
    <div class="row">
      <div class="news-card__img-col">
        <div class="embed-responsive embed-responsive--4-3  news-card__img">
          <picture>
            <source data-srcset="[[+tv.image:replace=`/ru==`:phpthumbon=`w=650&h=488&zc=C&f=webp&q=75`]]" media="(min-width: 1280px)" type="image/webp">
            <source data-srcset="[[+tv.image:replace=`/ru==`:phpthumbon=`w=650&h=488&zc=C&f=jpeg&q=75`]]" media="(min-width: 1280px)">
            <source data-srcset="[[+tv.image:replace=`/ru==`:phpthumbon=`w=465&h=350&zc=C&f=webp&q=75`]]" media="(min-width: 768px)" type="image/webp">
            <source data-srcset="[[+tv.image:replace=`/ru==`:phpthumbon=`w=465&h=350&zc=C&f=jpeg&q=75`]]" media="(min-width: 768px)">
            <source data-srcset="[[+tv.image:replace=`/ru==`:phpthumbon=`w=610&h=457&zc=C&f=webp&q=75`]]" media="(min-width: 480px)" type="image/webp">
            <source data-srcset="[[+tv.image:replace=`/ru==`:phpthumbon=`w=610&h=457&zc=C&f=jpeg&q=75`]]" media="(min-width: 480px)">
            <source data-srcset="[[+tv.image:replace=`/ru==`:phpthumbon=`w=450&h=337&zc=C&f=webp&q=75`]]" type="image/webp">
            <img class="b-lazy" data-src="[[+tv.image:replace=`/ru==`:phpthumbon=`w=450&h=337&zc=C&f=jpeg&q=75`]]" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" alt="[[+pagetitle]]" width="450" height="337">
          </picture>
        </div>
      </div>
      <div class="news-card__text-col">
        <div class="news-card__text">
          <div class="news-card__content">
            <h3><a href="[[+uri]]">[[+longtitle:default=`[[+pagetitle]]`]]</a></h3>
            [[!getImageList?
            &tvname=`color_label`
            &tpl=`@CODE:
            <span class="label" style="background-color: [[+color]];">[[+text]]</span>
            `
            &docid=`[[+id]]`
            &where=`{ "active:=":"1" }`
            &limit=`5`
            &toPlaceholder=`label`
            ]]
            [[+label:notempty=`
              <p>[[+label]]</p>
            `]]
            <p>[[+description:ellipsis=`320`]]</p>
          </div>
          <div class="news-card__footer">
            [[+tv.date_setting:ne=``:then=`
            <span class="date  date--time-left" data-countdown="[[+tv.date_setting:date=`%m/%d/%Y %H:%M:%S`]]">
               [[$langs? &uk=`До кінця акції залишилося` &ru=`До конца акции осталось` &en=`Time left to connect`]]:&nbsp;
              <ul class="list-nostyled  countdown">
                <li>
                  <span class="days">00</span>
                </li>
                <li class="seperator">:</li>
                <li>
                  <span class="hours">00</span>
                </li>
                <li class="seperator">:</li>
                <li>
                  <span class="minutes">00</span>
                </li>
                 <li class="seperator">:</li>
                 <li>
                  <span class="seconds">00</span>
                </li>
              </ul>
            </span>
            `:else=`<span class="date">[[+publishedon:date=`%d.%m.%Y`]]</span>`]]

            <span class="news-card__link">
              <a href="[[+uri]]" class="btn  btn--link">[[$langs? &uk=`Детальніше` &ru=`Подробнее` &en=`Read more`]]</a>
            </span>
          </div>
        </div>
      </div>
    </div>
  </article>
</li>
