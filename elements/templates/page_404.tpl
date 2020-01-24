{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main  main--noindex" role="main">
    <div class="container  section  section--solo  page-404">
      <div class="page-404__inner">
        <h1 class="page-404__title">[[*longtitle:default=`[[*pagetitle]]`]]</h1>
        <p class="h4">[[$langs? &uk=`Cхоже, не вдалося знайти сторінку, яку ви шукаєте` &ru=`Похоже, не удалось найти страницу, которую вы ищете` &en=`The page you were looking for could not be found`]]</p>
        <a href="/" class="btn-submit">[[$langs? &uk=`На головну` &ru=`На главную` &en=`Home`]]</a>
      </div>
      <div class="row">
        <div class="page-404__col">
          <img class="b-lazy" data-src="assets/img/p404.svg" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" alt="Error 404. The page not found">
        </div>
      </div>
    </div>
  </main>
{/block}
