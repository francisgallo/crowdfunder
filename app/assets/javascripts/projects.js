$(document).on('ready page:load', function() {
  $('#new_pledge').on('submit', function(event){
    event.preventDefault();

    console.log('im javascript');

    var pledge = $('form').serialize();

    var pledge_url = $('form').attr('action');

    var increment_pledge = function(){
      var count = $('#pledge-count').html();
      var count_integer = parseInt(count);
      ++count_integer
    }
    var successCount = 0;

     $.ajax({
           url: pledge_url,
           type: 'post',
           dataType: 'html',
           data: pledge,
           success: function() {
             successCount++
           }
      });
      return increment_pledge
  });
});


// data is what you're sending
