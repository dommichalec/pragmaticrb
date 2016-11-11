require_relative 'treasure_trove'
require_relative 'playable'

class Player
  # module mixins
  include Playable
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

  # returns virtual attribute score comprised of name size and health values
  def score
    @name.size + @health
  end

  # takes the player's total treasure count and breaks down the point total
  def each_found_treasure
    @found_treasures.each do |name, points|
      yield Treasure.new(name, points)
    end
  end

  private

  # normalizes a string by first downcasing everything before capitalizing
  def capitalize
    downcase.capitalize
  end
end
