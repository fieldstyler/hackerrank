class Board
    attr_reader :grid_size, :grid, :bot, :princess
  def initialize(grid_size, bot, grid=[])
    @grid_size = grid_size
    @grid = grid
    build_grid(@grid_size)
    place_bot(@grid_size, bot)
  end

  def build_grid(grid_size)
    grid_size.times do
      @grid << "-" * grid_size
    end
  end

  def place_bot(grid_size, bot)
    bot_row, bot_column = bot
    @grid[bot_row][bot_column] = "m"
    @bot = Player.new(bot_row, bot_column)
    place_princess(grid_size, bot)
  end

  def place_princess(grid_size, bot)
    princess = [rand(0..(grid_size-1)), rand(0..(grid_size-1))]
    until bot != princess
      princess = [rand(0..(grid_size-1)), rand(0..(grid_size-1))]
    end
    princess_row, princess_column = princess
    @grid[princess_row][princess_column] = "p"
    @princess = Player.new(princess_row, princess_column)
  end
end
