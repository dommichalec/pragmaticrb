# run rspec player_spec.rb --color to get stylization
require_relative 'spec_helper' # suppresses the should deprication warning
require_relative 'player'

describe Player do

  # set the player instance variable
  before do
    @health = 150
    @player = Player.new("dominic", @health)
  end

  # make sure the capitalize method works as expected
  it "should have a capitalized name" do
    # expect(@player.name).to eq("Larry") works, too
    @player.name.should == "Dominic"
  end

  # make sure the health goes up by 15 when wooted
  it "increases health by 15 when wooted" do
    @player.woot!
    # expect(@player.health).to eq(@health + 15) works, too
    @player.health.should == @health + 15
  end

  # make sure the health goes down by 10 when blammed
  it "should decrease health by 10 when blammed" do
    @player.blam!
    # expect(@player.health).to eq(@health - 10) works, too
    @player.health.should == @health - 10
  end

  # make sure the health attribute is set
  it "should have a health value of 120" do
    # expect(@player.health).to eq(120) works, too
    @player.health == 120
  end

  # make sure health score is set to health + players name length
  it "should have a health score of 127" do
    # expect(@player.score).to eq(127) works, too
    @player.score == 127
  end

  # make sure the to_s output is set
  it "should print out the name and health score" do
    # expect(@player.to_s).to eq("I'm Dominic with a health of 120 and a score
    # of 127.") works, too
    @player.to_s == "I'm Dominic with a health of 120 and a score of 127."
  end

  # set the player instance variable in context
  context "players can be created with a default value" do
    before do
      @player = Player.new("dominic")
    end

    it "should have a default health of 100" do
      # expect(@player.health).to eq(120) works, too
      @player.health == 100
    end
  end

  # set up a player with a strong health
  context "with a health greater than 100" do
    before do
      @player = Player.new("Dominic", 150)
    end

    it "is strong" do
      # expect(@player).to be_strong works, too
      @player.should be_strong
    end
  end

  # set up a player with a weak health
  context "with a health less than 100" do
    before do
      @player = Player.new("Dominic", 69)
    end

    it "is weak" do
      # expect(@player).not_to be_strong works, too
      @player.should_not be_strong
    end
  end
end
