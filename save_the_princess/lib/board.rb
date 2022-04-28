class Board
    attr_reader :grid_size, :grid, :bot, :princess
  def initialize(grid_size, grid=[])
    @grid_size = grid_size
    @grid = grid
    build_grid(@grid_size)
  end

  def build_grid(grid_size)
    grid_size.times do
      @grid << "-" * grid_size
    end
    place_bot(grid_size)
  end

  def place_bot(grid_size)
    middle = grid_size / 2
    bot_row, bot_column = [middle, middle]
    @grid[bot_row][bot_column] = "m"
    @bot = Player.new(bot_row, bot_column)
    place_princess
  end

  def place_princess
    four_corners = [[0,0], [-1,0], [0,-1], [-1,-1]]
    princess_row, princess_column = four_corners.sample
    @grid[princess_row][princess_column] = "p"
    @princess = Player.new(princess_row, princess_column)
  end
end
