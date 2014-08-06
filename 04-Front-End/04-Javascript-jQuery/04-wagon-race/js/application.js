function reset() {
  $('#player1, #player2')
  .find('.active')
    .removeClass('active')
  .end()
  .find('td:first-child')
    .addClass('active');
}

function forward(player_id) {
  var row = $(player_id);
  var active = row.find('.active');
  var next = active.next();
  var last = row.find('td:last-child')

  active.removeClass('active');
  next.addClass('active');

  if (next.is(':last-child')) {
    var player_name = player_id.match(/#(.+)/)[1];
    alert(player_name + " wins!");
    reset();
  }
}


$(document).ready(function() {
  $(document).on('keyup', function(e) {
    // Detect which key was pressed and call the appropriate function
    // Google "jquery keyup what key was pressed" if you don't know how
    if (e.keyCode == 81) {
      forward('#player1');
    }
    else if (e.keyCode == 80) {
      forward('#player2');
    }
  });
});

// console.debug('row')