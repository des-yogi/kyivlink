$( document ).ready(function() {

  var rateCards = document.querySelectorAll('.rate-card');

  Array.prototype.forEach.call( rateCards, function( card ) {
    var omegaTVinput = card.querySelector('.field-toggler__input--omegaTV');
    var omegaTVselect = card.querySelector('.field-select__select--omegaTV');
    var selectContainer = card.querySelector('.rate-card__select--omegaTV');

    var inputCheckHandler = function (e) {
    if (omegaTVinput.checked) {
        omegaTVselect.removeAttribute('disabled');
        omegaTVselect.focus();
        selectContainer.style.borderTopColor = '#0077ff';
    } else {
        omegaTVselect.setAttribute('disabled', 'disabled');
        selectContainer.style.borderTopColor = '#f1f1f1';
        omegaTVselect.blur();
      }
    };

    omegaTVinput.addEventListener('change', inputCheckHandler);
  });

});


/*Array.prototype.forEach.call( elements, function( element ) {

});*/
