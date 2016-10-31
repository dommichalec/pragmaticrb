class Die
  # attributes
  attr_reader :number

  # create a die by rolling itself into existance
  def initialize
    roll
  end
  
  # returns a random number between 1 and 6, similar to the roll of a die
  def roll
    @number = rand(1..6)
  end
end
