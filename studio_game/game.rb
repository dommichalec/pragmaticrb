require_relative 'player' # player.rb is relative to game in same directory

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
    @players.each do |p|
      p.blam!
      p.woot!
      p.woot!
      puts p
    end
  end

  private

  # normalizes a string by first downcasing everything before capitalizing
  def capitalize
    downcase.capitalize
  end
end
