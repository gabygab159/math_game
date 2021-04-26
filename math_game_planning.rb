# classes -> players, turns, questions




# players 
#   - store amount of lives remaining
#   - start with three lives
#   - lose one life if answered wrong
#   - will initialize with name and lives
#   - methods:
#     lose_life method -> current life - 1



# main
#   - loop (while true)
#   - player 1 & player 2
#   - stores whose turn it is
#   - will manage current_player
#   - initialize with turn number
#   - methods:
#     current_player -> if turn number is odd then it's player 1's turn, if even player 2
#     game_over -> when life == 0, "game over" message


# questions
#   - generate questions (sum of two random numbers)
#   - will contain user i/o
#   - methods:
#     number_picker -> select 2 numbers from 1-20. Ask player what the sum is.
#     is_correct_answer -> if answer is correct do not remove a life
#     turn_iterator -> iterate turn number after question is answered.