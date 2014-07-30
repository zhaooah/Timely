$(document).ready(function() {

    // page is now ready, initialize the calendar...
    $('.calendar').fullCalendar({
        //header
        header: {
          left: 'prev,next today',
          center: 'title',
          right: 'month,agendaWeek,agendaDay'
        },

        //selectable
        selectable: true,
        selectHelper: true,
        
         eventSources: [{
            url: '/timely/events/',
            color: 'red',
            textColor: 'black',
            ignoreTimezone: false
        }],

          select: function(start, end) {
        var title = prompt('Event Title:');
        var eventData;
        if (title) {
          eventData = {
            title: title,
            start: start,
            end: end

          };
        //  $('.calendar').fullCalendar('renderEvent', eventData, true); 
        // stick? = true
        $('.calendar').post( "/events/new", eventData);

        }
        $('.calendar').fullCalendar('unselect');
      }
 

    });


    $('.calendar').fullCalendar('gotoDate', currentDate);


    //Create new event
    $('.calendar').click(function() {
      alert ("hello");
    });


 
});