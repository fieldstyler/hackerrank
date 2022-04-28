class Game
  attr_reader :board, :save_the_princess
  def initialize(grid_size, bot_row, bot_column)
    bot = [bot_row, bot_column]
    @board = Board.new(grid_size, bot)
    bot = @board.bot
    princess = @board.princess
    @save_the_princess = bot.find_first_step(princess)
  end

  def play
    @save_the_princess
  end
end
