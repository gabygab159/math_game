#   - store amount of lives remaining
#   - start with three lives
#   - lose one life if answered wrong
#   - will initialize with name and lives
#   - methods:
#     lose_life method -> current life - 1

class Players

  attr_accessor :lives 

  def initialize(lives)
    @lives = lives   
  end
end