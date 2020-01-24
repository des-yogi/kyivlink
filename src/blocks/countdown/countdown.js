$( document ).ready(function() {
  var dateContainers = document.querySelectorAll('.date--time-left');

  for(var i=0; i < dateContainers.length; i++) {
    var finalDate = '00/00/00 23:59:59';
    var dateContainer = dateContainers[i];
    console.log( $('.countdown', dateContainer) );

    if (dateContainer && dateContainer.dataset.countdown) {
      finalDate = dateContainer.dataset.countdown;

      $( '.countdown', dateContainer ).downCount({
        date: finalDate, //формат m:d:Y
        offset: +2 // зимнее время +2, летнее +3
      }, function () {
        //alert('Время истекло!');
      });
    }
  }

});
