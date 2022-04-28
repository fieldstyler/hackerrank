require 'rspec'
require './lib/board'
require './lib/player'

RSpec.describe "Board" do
  it "exists" do
    board = Board.new(5)
    expect(board).to be_a(Board)
  end

  it "has grid size, grid, bot, and princess attributes" do
    board1 = Board.new(5)
    board2 = Board.new(9)
    # board1 tests
    expect(board1.grid_size).to eq(5)
    expect(board1.grid[1]).to eq("-----")
    expect(board1.grid[2]).to eq("--m--")
    expect(board1.grid[3]).to eq("-----")
    expect(board1.grid[board1.princess.row][board1.princess.column]).to eq("p")
    expect(board1.bot.coordinate).to eq([2,2])
    # board2 tests
    expect(board2.grid_size).to eq(9)
    expect(board2.grid[2]).to eq("---------")
    expect(board2.grid[4]).to eq("----m----")
    expect(board2.grid[board2.princess.row][board2.princess.column]).to eq("p")
    expect(board2.bot.coordinate).to eq([4,4])
  end

  it "expect board to have error message attr if grid size is even, less than 3, or greater than 99" do
    board1 = Board.new(1)
    board2 = Board.new(4)
    board3 = Board.new(100)
    board4 = Board.new(5)
    error_message = "That input is invalid. Please make sure your number is odd, greater than or equal to 3, and less than 100"
    expect(board1.error).to eq(error_message)
    expect(board2.error).to eq(error_message)
    expect(board3.error).to eq(error_message)
    # board4 is valid
    expect(board4.error).to eq(nil)
  end
end
