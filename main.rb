require "./game.rb"
require "./players.rb"
require "./question.rb"



# Initialize 2 players
player_1 = Player.new(1)
player_2 = Player.new(2)

# Initiate new game instance
game = Game.new(player_1, player_2)



while player_1.player_lives > 0 && player_2.player_lives > 0

  puts "---NEW TURN---"

  puts "Player #{game.current_player.player_id}:"

  current_question = Question.new
  current_question.generate_question

  user_answer = gets.chomp.to_i

  if current_question.answer == user_answer
    puts "Correct! Nice job :)"
  else
    puts "Oops, not quite! You lose a life :("
    game.current_player.lose_life
  end

  puts "Player 1: #{player_1.player_lives}/3 lives. Player 2: #{player_2.player_lives}/3 lives."

  game.switch_turn



 end

if player_1.player_lives == 0 || player_2.player_lives == 0
  if player_1.player_lives > player_2.player_lives
    puts "GAME OVER. Player 1 wins! Final score: #{player_1.player_lives}/3 vs 0/3"
  else
    puts "GAME OVER. Player 2 wins! Final score: #{player_2.player_lives}/3 vs 0/3"
  end
end












# player1 = Player.new(1)
# puts player1.player_id

#Looping and new questions will happen here
#Answer authentication will also happen here


#   @@generate_question

# end





