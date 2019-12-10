// Base HTML to use when creating the popover:
// The popover's title will be injected into the .popover-header.
// The popover's content will be injected into the .popover-body.
// .arrow will become the popover's arrow.
// The outermost wrapper element should have the .popover class.

$( document ).ready(function() {
  $(function () {
    $('.rate-card__hint').popover({
      //container: 'main',
      html: true,
      placement: 'bottom',
      template: '<div class="popover" role="tooltip"><div class="arrow"></div><h5 class="popover-header"></h5><div class="popover-body"></div></div>',
      trigger: 'click'
    })
  })
});
