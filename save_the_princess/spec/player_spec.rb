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
end
