$(document).on('ready page:load', function() {
  $('.new_pledge').on('submit', function(event){
    event.preventDefault();

    console.log('im javascript');

    var pledge = $('form').serialize();

    var pledge_url = $('form').attr('action');

    // var increment_pledge = function(){
    //   var count = $('#pledge-count').html();
    //   var count_integer = parseInt(count);
    //   ++count_integer
    // }
    // var successCount = 0;

     $.ajax({
           type: 'post',
           url: pledge_url,
           dataType: 'json',
           data: pledge
         }).success(function(json) {
           $('#pledge-count').html(json.count)
         });

  });
});


// data is what you're sending
