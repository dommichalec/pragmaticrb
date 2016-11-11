module Playable
  # returns true if the health is greater than 100
  def strong?
    @health >= 100
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
end
