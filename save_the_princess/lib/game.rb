class Game
  attr_reader :board, :save_the_princess
  def initialize(grid_size)
    @board = Board.new(grid_size)
    bot = @board.bot
    princess = @board.princess
    @save_the_princess = bot.directions_to_princess(princess)
  end

  def play
    @save_the_princess
  end
end
