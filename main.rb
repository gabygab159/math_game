require './players'
require './questions'

#   - loop (while true)
#   - player 1 & player 2
#   - stores whose turn it is
#   - will manage current_player
#   - initialize with turn number
#   - methods:
#     current_player -> if turn number is odd then it's player 1's turn, if even player 2
#     game_over -> when life == 0, "game over" message
class Main

  def new_game
    
    @player1 = Players.new(3)
    @player2 = Players.new(3)
    @current_player = 1    
  
    puts "---- NEW GAME ----"
    puts "---- Player 1 starts ----"

    while @player1.lives  >  0  && @player2.lives > 0 do
      question = Questions.new
      question.is_correct_answer
      @current_player += 1
      
      if @current_player.even? == false
        puts "It is player 1's turn"        
        if question.evaluate == false
          @player1.lives -= 1        
          puts "Player 1 has #{@player1.lives}/3 lives remaining"
          if @player1.lives == 0
            puts "Game over, you lose."
          end
        end     
      end
      
      if @current_player.even? == true
        puts "It is player 2's turn"
        if question.evaluate == false
          @player2.lives -= 1
          puts "Player 2 has #{@player2.lives}/3 lives remaining"
        end
      end
    end    
  end  
end
new_game = Main.new

new_game.new_game



