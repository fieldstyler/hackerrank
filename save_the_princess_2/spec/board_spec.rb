require 'rspec'
require './lib/board'

RSpec.describe "Board" do
  it "exists" do
    board = Board.new(5, [3, 1])
    expect(board).to be_a(Board)
  end

  it "has grid size, grid, bot, and princess attributes" do
    board1 = Board.new(5, [3, 1])
    expect(board1.grid_size).to eq(5)
    expect(board1.grid[3][1]).to eq("m")
    expect(board1.grid[board1.princess.row][board1.princess.column]).to eq("p")
    expect(board1.bot.coordinate).to eq([3,1])
  end

  it "checks" do
    board1 = Board.new(2, [1, 1])
    expect(board1.grid_size).to eq(2)
  end
end
