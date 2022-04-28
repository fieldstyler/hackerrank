class Board
    attr_reader :grid_size, :grid, :bot, :princess, :error
  def initialize(grid_size, grid=[])
    if grid_size.odd? && grid_size >= 3 && grid_size < 100
      @grid_size = grid_size
      @grid = grid
      build_grid(@grid_size)
    else
      @error = "That input is invalid. Please make sure your number is odd, greater than or equal to 3, and less than 100"
    end
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
    place_princess(grid_size)
  end

  def place_princess(grid_size)
    four_corners = [[0,0], [-1,0], [0,-1], [-1,-1]]
    princess_row, princess_column = four_corners.sample
    @grid[princess_row][princess_column] = "p"
    @princess = Player.new(princess_row, princess_column)
  end
end
