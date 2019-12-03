$( document ).ready(function() {
  var omegaTVinput = document.getElementById('omegaTVinput');
  var omegaTVselect = document.getElementById('omegaTVselect');
  var inputCheckHandler = function (e) {
    if (omegaTVinput.checked) {
      omegaTVselect.removeAttribute('disabled');
    } else {
        omegaTVselect.setAttribute('disabled', 'disabled');
    }
  };

  omegaTVinput.addEventListener('change', inputCheckHandler);
});
