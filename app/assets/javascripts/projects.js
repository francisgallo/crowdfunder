$(document).on('ready page:load', function() {
  $('.new_pledge').on('submit', function(event){
    event.preventDefault();
    // event.stopPropagation();

    console.log('im javascript');

    var pledge = $(this).serialize();
  //
    var pledge_url = $(this).attr('action');

     $.ajax({
        type: 'post',
        url: pledge_url,
        dataType: 'json',
        data: pledge
        }).success(function(json){
          alert("im ajax");
          $('#pledge-count').html(json.count);
          $('#pledge-amount').html(json.amount);
        });

  });
});


// data is what you're sending
