{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main  main--noindex" role="main">
    {include 'file:chunks/breadcrumbs.tpl'}
    <div class="payments">
      <h1 class="container">[[*longtitle:default=`[[*pagetitle]]`]]</h1>
      <section class="container  section">
        <h2>
          <span class="visually-hidden">[[$langs? &uk=`Доступні сервіси оплати` &ru=`Доступные сервисы оплаты` &en=`Available payment services`]]. </span>
          [[$langs? &uk=`Виберіть відповідний вам сервіс для оплати` &ru=`Выберите подходящий вам сервис для оплаты` &en=`Choose the payment service you need`]]
        </h2>
        <ul class="list-nostyled  row">
          [[!getImageList?
          &tvname=`payment_services`
          &tpl=`payment_services_tpl`
          &docid=`[[*id]]`
          &limit=`99`
          ]]
        </ul>
      </section>
      <section class="container  section  section--solo">
        <h2>[[$langs? &uk=`Оплата через термінали самообслуговування` &ru=`Оплата через терминалы самообслуживания` &en=`Payment through self-service terminals`]]</h2>
        <ul class="list-nostyled  row">
          [[!getImageList?
          &tvname=`payment_terminals`
          &tpl=`payment_terminals_tpl`
          &docid=`[[*id]]`
          &limit=`99`
          ]]
        </ul>
      </section>
    </div>
  </main>
{/block}
