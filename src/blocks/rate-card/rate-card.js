$( document ).ready(function() {

  var rateCards = document.querySelectorAll('.rate-card');

  Array.prototype.forEach.call( rateCards, function( card ) {
    var omegaTVinput = card.querySelector('.field-toggler__input--omegaTV');
    var omegaTVselect = card.querySelector('.field-select__select--omegaTV');
    var selectContainer = card.querySelector('.rate-card__select--omegaTV');

    var currentForm = card.querySelector('form');
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

      rateTotal.innerText = totalSum;
    };

    var completeFormHandler = function (e) {
      var requestModal = document.getElementById('requestModal');
      var submitBtn = document.getElementById('requestModalSubmit');
      var finalSum = document.getElementById('final-sum');

      var inputFields = requestModal.querySelectorAll('.text-input__field');
      var formId = currentForm.id;

      var requestModalTable = requestModal.querySelector('.request-modal__table');
      var tableInnerContent = requestModalTable.querySelector('tbody');

      Array.prototype.forEach.call( inputFields, function( field, idx ) {
        field.setAttribute('form', formId);
      });

      submitBtn.setAttribute('form', formId);

      finalSum.innerText = rateTotal.innerText;

      Array.prototype.forEach.call( togglers, function( toggler ) {
        if ( toggler.checked && toggler.value !== '0' ) {
          var togglerTitleClassName = toggler.name + '-title';
          var togglerTitleElem = card.querySelector('.' + togglerTitleClassName).innerText;
          var togglerValue = toggler.value;

          tableInnerContent.insertAdjacentHTML('beforeend', '<tr><td>' + togglerTitleElem + '</td><td>' + togglerValue + '₴</td></tr>');
        }
      });

      if ( !omegaTVselect.disabled ) {
        var options = omegaTVselect.selectedOptions;

        Array.prototype.forEach.call( options, function( option ) {
          tableInnerContent.insertAdjacentHTML('beforeend', '<tr><td>' + option.label + '</td><td>' + option.value + '₴</td></tr>');
        });
      }

    };

    rateCalculator();

    omegaTVinput.addEventListener('change', inputCheckHandler);
    card.addEventListener('change', rateCalculator);
    selectRateBtn.addEventListener('click', completeFormHandler);

    $('#requestModal').on('hide.bs.modal', function (e) {
      window.location.reload();
    })

  });

});


/*Array.prototype.forEach.call( elements, function( element ) {

});*/
