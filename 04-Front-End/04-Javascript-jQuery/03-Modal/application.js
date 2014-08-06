$('#modal').hide()

$('#logo').click(function() {
  $('#wrapper').css({
    'background-color' : 'black',
    'opacity' : 0.5

  })
  $('#modal').fadeIn();
});


$('#modal').click(function() {
  $('#wrapper').css({
    'background-color' : '',
    'opacity' : 1

  })
  $('#modal').fadeOut();
});
