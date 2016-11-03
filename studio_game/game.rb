require_relative 'player' # player.rb is relative to game in same directory
require_relative 'game_turn' # game_turn.rb is relative to game in same directory

class Game
  # attributes
  attr_reader :title

  # creates an instance of Game
  def initialize(title)
    @title = title.capitalize
    @players = []
  end

  # adds players to the game
  def add(player)
    @players << player
  end

  # driver method for the game
  def play(rounds)
    treasures = TreasureTrove::TREASURES
    puts "\nThere are #{treasures.size} treasures to be found:"
    treasures.each do |treasure|
      puts "A #{treasure.name} is worth #{treasure.points} points"
    end
    fail "Number of rounds must be an integer" unless rounds.is_a? Integer
    1.upto(rounds) do |round|
      puts "\nRound #{round}"
      @players.each do |player|
        GameTurn.take_turn_for(player)
        puts player
      end
    end
    print_stats
  end

  private

  # normalizes a string by first downcasing everything before capitalizing
  def capitalize
    downcase.capitalize
  end

  # partitions strong from wimpy players
  def print_stats
    strong_players = @players.select { |player| player.strong? }
    wimpy_players = @players.reject { |player| player.strong? }

    puts "\n#{@title} Statistics:"

    puts "\n#{strong_players.size} strong players:"
    strong_players.each do |player|
      puts "#{player.name} (#{player.health})"
    end

    puts "\n#{wimpy_players.size} wimpy players:"
    wimpy_players.each do |player|
      puts "#{player.name} (#{player.health})"
    end
  end
end
