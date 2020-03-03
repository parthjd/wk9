require "./question.rb"
require "./player.rb"

current_player = "P1"    
player1 = Player.new("P1")
player2 = Player.new("P2")
game_over = false

while(game_over == false)
  question = Question.new(current_player)
  score = question.check_answer
  if current_player == player1.name
    player1.life += score
    current_player = "P2"
  else
    player2.life += score
    current_player = "P1"
  end
  if (player1.life == 0 or player2.life == 0)
    game_over = true
  end
  if game_over == true
    puts "---------------------" 
    puts "                     "
    if player1.life > player2.life
      puts "Player 1 wins with a score of #{player1.life}/3"
      puts ""
    elsif player1.life < player2.life
      puts "Player 2 wins with a score of #{player2.life}/3"
      puts ""
    end
    puts "---------------------"
    puts "----- GAME OVER -----"
    puts "---------------------"
  else
    puts ""
    puts "P1: #{player1.life}/3 vs P2: #{player2.life}/3"
    puts ""
    puts "----- NEW TURN -----"
    puts ""
  end
end
