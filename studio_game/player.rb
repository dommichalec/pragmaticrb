class Player
  # attributes
  attr_reader :health
  attr_accessor :name

  # creates an instance of Player
  def initialize(name, health=100)
    fail "Health must be an integer" unless health.is_a? Integer
    fail "Name must be a string" unless name.is_a? String
    @name = name.capitalize
    @health = health.to_i
  end

  # returns a capitalized version of the name value
  def name=(name)
    @name = name.capitalize
  end

  # returns a string of player name and health
  def to_s
    # must simply return a string. no need to include puts within to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}."
  end

  # changes health by +15
  def woot!
    puts "#{@name} got wooted!"
    @health += 15
  end

  # changes health by -10
  def blam!
    puts "#{@name} got blammed!"
    @health -= 10
  end

  # returns virtual attribute score comprised of name size and health values
  def score
    @name.size + @health
  end

  private

  # normalizes a string by first downcasing everything before capitalizing
  def capitalize
    downcase.capitalize
  end
end
