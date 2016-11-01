require_relative 'die'
require_relative 'player'

module GameTurn
  # module method that rolls die for randomness then returns whether player is
  # blammed, wooted, or skipped
  def self.take_turn_for(player)
    die = Die.new
    case die.roll
    when 1..2
      player.blam!
    when 3..4
      puts "#{player.name} was skipped."
    else
      player.woot!
    end
  end
end
