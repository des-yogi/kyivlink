$( document ).ready(function() {
  var body = document.querySelector('body');

  $('#collapseMainNav').on('hidden.bs.collapse', function () {
    body.style.overflow = 'visible';
  })
  $('#collapseMainNav').on('shown.bs.collapse', function () {
    body.style.overflow = 'hidden';
  })
});
