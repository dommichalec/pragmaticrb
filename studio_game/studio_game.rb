require_relative 'game' # game is relative to studio_game in same directory

moe = Player.new("mOE")
larry = Player.new("Larry", 60)
curly = Player.new("Curly", 125)


knuckleheads = Game.new("KNucKLehEads")
knuckleheads.add(moe)
knuckleheads.add(larry)
knuckleheads.add(curly)
knuckleheads.play(1)
