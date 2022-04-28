require 'rspec'
require './lib/game'
require './lib/player'

RSpec.describe "Game" do
  it "exists" do
    game = Game.new(5, 3, 1)
    expect(game).to be_a(Game)
  end

  it "creates a board with a bot, princess, and directions to princess" do
    game = Game.new(5, 3, 1)
    expect(game.board).to be_a(Board)
    expect(game.board.bot).to be_a(Player)
    expect(game.board.bot.coordinate).to eq([3, 1])
    expect(game.board.princess).to be_a(Player)
    expect(game.save_the_princess).to be_a(String)
  end
end
