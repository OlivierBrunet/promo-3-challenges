require_relative 'black_jack'

def play_game
  #TODO: make the user play from terminal in a while loop that will stop when the user will not be asking for  a new card
  bank = bank_score
  player_score = 0

  while asking_for_card?(player_score)
    player_score += pick_card
    puts state_of_the_game(player_score, bank)
  end

  puts build_message_for(game_outcome(bank, player_score))

end

def state_of_the_game(score, bank)
  # TODO: Returns custom message with player's score and bank's score
  "Your score is #{score}, bank is #{bank}!"
end

def asking_for_card?(score)
  # TODO: Ask for a card only if the score is less or equal to 21, then returns true or false according to the user's choice
  puts "Card ? (type 'Y' or 'yes' for a new card)"
  player_answer = gets.chomp

  player_answer == "Y" || player_answer == "yes"
end

def build_message_for(outcome)
  #TODO: return specific message depending on the game outcome (= bank's score and user's score)
  if outcome[1] > 21
    puts "You are over 21... you loose."
  elsif outcome[1] == 21
    puts "Black Jack!"
  elsif outcome[1] > outcome[0]
    puts "You beat the bank! You win."
  else
    puts "Bank beats you! You loose."
end

end
