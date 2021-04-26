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
  
  Player1 = Players.new(3)
  Player2 = Players.new(3)
 

  # def current_player
  #   current_player = 1
  # end

 question = Questions.new
 question.is_correct_answer
end
Main

