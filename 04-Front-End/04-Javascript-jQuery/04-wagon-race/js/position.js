var player1Position = 1;
var player2Position = 1;

$(function() {

// BEGIN PLAYER 1

  function updatePlayerPosition1('player1Position', 1) {
    var player1Position = 1;
    $('#one').addClass('active');
    return player1Position
  }

  function updatePlayerPosition1('player1Position', 2) {
    var player1Position = 2;
    $('#one').removeClass('active');
    $('#two').addClass('active');
    return player1Position;
  }

  function updatePlayerPosition1('player1Position', 3) {
    var player1Position = 3;
    $('#two').removeClass('active');
    $('#three').addClass('active');
    return player1Position;
  }

  function updatePlayerPosition1('player1Position', 4) {
    var player1Position = 4;
    $('#three').removeClass('active');
    $('#four').addClass('active');
    return player1Position;
  }

  function updatePlayerPosition1('player1Position', 5) {
    var player1Position = 5;
    $('#four').removeClass('active');
    $('#five').addClass('active');
    return player1Position;
  }

  function updatePlayerPosition1('player1Position', 6) {
    var player1Position = 6;
    $('#five').removeClass('active');
    $('#six').addClass('active');
    return player1Position;
  }

  function updatePlayerPosition1('player1Position', 7) {
    var player1Position = 7;
    $('#six').removeClass('active');
    $('#seven').addClass('active');
    return player1Position;
  }

  function updatePlayerPosition1('player1Position', 8) {
    var player1Position = 8;
    $('#seven').removeClass('active');
    $('#eight').addClass('active');
    return player1Position;
  }

// END PLAYER 1

// BEGIN PLAYER 2

  function updatePlayerPosition1('player2Position', 1) {
    var player2Position = 1;
    $('#oone').addClass('active');
    return player1Position
  }

  function updatePlayerPosition1('player2Position', 2) {
    var player2Position = 2;
    $('#oone').removeClass('active');
    $('#ttwo').addClass('active');
    return player1Position;
  }

  function updatePlayerPosition1('player2Position', 3) {
    var player2Position = 3;
    $('#ttwo').removeClass('active');
    $('#tthree').addClass('active');
    return player1Position;
  }

  function updatePlayerPosition1('player2Position', 4) {
    var player2Position = 4;
    $('#tthree').removeClass('active');
    $('#ffour').addClass('active');
    return player1Position;
  }

  function updatePlayerPosition1('player2Position', 5) {
    var player2Position = 5;
    $('#ffour').removeClass('active');
    $('#ffive').addClass('active');
    return player1Position;
  }

  function updatePlayerPosition1('player2Position', 6) {
    var player2Position = 6;
    $('#ffive').removeClass('active');
    $('#ssix').addClass('active');
    return player1Position;
  }

  function updatePlayerPosition1('player2Position', 7) {
    var player2Position = 7;
    $('#ssix').removeClass('active');
    $('#sseven').addClass('active');
    return player1Position;
  }

  function updatePlayerPosition1('player2Position', 8) {
    var player2Position = 8;
    $('#sseven').removeClass('active');
    $('#eeight').addClass('active');
    return player1Position;
  }

// END PLAYER 2

});



