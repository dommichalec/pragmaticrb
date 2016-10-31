require_relative 'player' # player.rb is relative to game in same directory
require_relative 'die'

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
  def play
    puts "There are #{@players.size} players in #{@title}:"
    @players.each do |player|
      die = Die.new
      number_rolled = die.roll
      case number_rolled
      when 1..2
        player.blam!
      when 3..4
        puts "#{player.name} was skipped."
      else
        player.woot!
      end
      puts player
    end
  end

  private

  # normalizes a string by first downcasing everything before capitalizing
  def capitalize
    downcase.capitalize
  end
end
