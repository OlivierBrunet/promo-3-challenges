def bank_score
  # TODO: Use Random to get a new random score
  (16..21).to_a.sample
end

def pick_card
  # TODO: Use Random to get a new random card
  (1..11).to_a.sample
end

def game_outcome(bank, score)
  # TODO: Take the bank and the score and output an array containing the bank and then the score
  bank = bank_score
  score = pick_card
  game = [bank_score, pick_card]
end
