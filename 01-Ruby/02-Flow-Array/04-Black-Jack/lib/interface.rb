require_relative "croupier"

# TODO: make the user play from terminal in a while loop that will stop
#       when the user will not be asking for  a new card

player_score = 0
bank_score = pick_bank_score

while player_score < 22
  puts "Card? 'y' to get a new card or 'n' to stop"
  player_answer = gets.chomp

  if player_answer == "y"
    player_score += pick_player_card
    puts state_of_the_game(player_score, bank_score)
  elsif player_answer == "n"
    puts state_of_the_game(player_score, bank_score)
    break
  end
end
puts end_game_message(player_score, bank_score)
