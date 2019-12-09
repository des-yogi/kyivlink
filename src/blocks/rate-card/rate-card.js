$( document ).ready(function() {

  var rateCards = document.querySelectorAll('.rate-card');

  Array.prototype.forEach.call( rateCards, function( card ) {
    var omegaTVinput = card.querySelector('.field-toggler__input--omegaTV');
    var omegaTVselect = card.querySelector('.field-select__select--omegaTV');
    var selectContainer = card.querySelector('.rate-card__select--omegaTV');

    var rateTitle = card.querySelector('.rate-card__title');
    var rateBase = card.querySelector('.base-sum');
    var rateTotal = card.querySelector('.total-sum');
    var connectionCost = card.querySelector('.connection-cost');
    var prepayment = card.querySelector('.prepayment');
    var togglers = card.querySelectorAll('.field-toggler__input');
    var selectRateBtn = card.querySelector('.rate-card__to-submit');

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

    var rateCalculator = function (e) {
      //console.log(prepayment);
      var totalOptions = 0;
      var omegaTvCost = 0;
      var totalSum;

      if ( !omegaTVselect.disabled ) {
        omegaTvCost = parseInt(omegaTVselect.value, 10);
      }

      Array.prototype.forEach.call( togglers, function( toggler ) {
        if ( toggler.checked ) {
          totalOptions += parseInt(toggler.value, 10);
        }
      });

      totalSum = parseInt(rateBase.innerText, 10) + parseInt(connectionCost.innerText, 10)
                   + parseInt(prepayment.innerText, 10) + omegaTvCost + totalOptions;

      console.log(totalSum);
      rateTotal.innerText = totalSum;
    };

    rateCalculator();


    omegaTVinput.addEventListener('change', inputCheckHandler);
    card.addEventListener('change', rateCalculator);

  });

});


/*Array.prototype.forEach.call( elements, function( element ) {

});*/
