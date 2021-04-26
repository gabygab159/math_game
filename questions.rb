# questions
#   - generate questions (sum of two random numbers)
#   - will contain user i/o
#   - methods:
#     number_picker -> select 2 numbers from 1-20. Ask player what the sum is.
#     is_correct_answer -> if answer is correct do not remove a life
#     turn_iterator -> iterate turn number after question is answered.

class Questions
  attr_reader :evaluate 
 def initialize
  @first_number = rand(1..20)
  @second_number = rand(1..20)
  @answer = @first_number + @second_number
  @question =  "What is the sum of #{@first_number} and #{@second_number}?"
  @user_answer = nil
  @evaluate = nil
 end


  def is_correct_answer
    puts @question
    
    @user_answer = gets.chomp.to_i

    if @user_answer != @answer
      puts "Wrong! You lose 1 life"
      @evaluate = false
    else
      puts "That's correct!"
      @evaluate = true
    end
  end
end



