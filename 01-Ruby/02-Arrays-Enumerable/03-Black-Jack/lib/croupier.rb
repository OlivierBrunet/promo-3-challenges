require_relative 'black_jack'

def play_game
  #TODO: make the user play from terminal in a while loop that will stop when the user will not be asking for  a new card
  puts "Card ? (type 'Y' or 'yes' for a new card)"
  user_decision = gets
  while user_decision != ("Y" || "yes")
    puts "Card ? (type 'Y' or 'yes' for a new card)"
    user_decision = gets
  end
end

def state_of_the_game(score, bank)
  # TODO: Returns custom message with player's score and bank's score
  score = pick_card
  bank = bank_score
  puts "Your score is #{score}, bank is #{bank}!"
end

def asking_for_card?(score)
  # TODO: Ask for a card only if the score is less or equal to 21, then returns true or false according to the user's choice
  state_of_the_game
  if score <= 21
    puts "Card ? (type 'Y' or 'yes' for a new card)"
    answer = gets.chomp
      while answer = ("Y" || "yes")
        score += pick_card =
      end
  else
    print "You lose"
  end
end

def build_message_for(outcome)
  #TODO: return specific message depending on the game outcome (= bank's score and user's score)
  if

end
