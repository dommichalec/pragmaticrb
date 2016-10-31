require_relative 'game'

describe Game do

  before do
    @game = Game.new("Knuckleheads")
    @health = 100
    @player = Player.new("moe", @health)
    @game.add(@player)
  end

  it "woots the player if a high number is rolled" do
    # allow_any_instance_of(Die).to receive(:roll).and_return(5) works, too
    Die.any_instance.stub(:roll).and_return(5)
    @game.play
    @player.health.should == @health + 15
  end

  it "skips the player if a medium number is rolled" do
    Die.any_instance.stub(:roll).and_return(3)
    @game.play
    @player.health.should == @health
  end

  it "blams the player if a low number is rolled" do
    Die.any_instance.stub(:roll).and_return(1)
    @game.play
    @player.health.should == @health - 10
  end
end
