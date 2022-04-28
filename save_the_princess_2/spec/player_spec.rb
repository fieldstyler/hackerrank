require 'rspec'
require './lib/player'

RSpec.describe "Player" do
  it "Checks that we can create a player with coordinates" do
    player1 = Player.new(2, 4)
    player2 = Player.new(0, -1)
    expect(player1).to be_a(Player)
    expect(player2).to be_a(Player)
    expect(player1.coordinate).to eq([2, 4])
    expect(player2.coordinate).to eq([0, -1])
  end

  it "Checks that it prints the next move for bot to find princess" do
    player1 = Player.new(2, 2)
    player2 = Player.new(4, 5)
    player3 = Player.new(2, 0)
    player4 = Player.new(1, 5)
    player5 = Player.new(2, 6)
    expect(player1.find_first_step(player2)).to eq("DOWN")
    expect(player1.find_first_step(player3)).to eq("LEFT")
    expect(player1.find_first_step(player4)).to eq("UP")
    expect(player1.find_first_step(player5)).to eq("RIGHT")
  end
end
