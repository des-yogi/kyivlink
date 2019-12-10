$( document ).ready(function() {
  //var finalDate = document.querySelector('.date--time-left').dataset.countdown;
  var dateContainer = document.querySelector('.date--time-left');
  var finalDate = '00/00/00 24:00:00';

  if (dateContainer && dateContainer.dataset.countdown) {
    finalDate = dateContainer.dataset.countdown;

    $('.countdown').downCount({
      date: finalDate, //формат m:d:Y
      offset: +2 // зимнее время +2, летнее +3
    }, function () {
      //alert('Время истекло!');
    });
  }


});
