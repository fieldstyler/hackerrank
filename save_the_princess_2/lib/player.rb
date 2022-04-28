class Player
  attr_reader :row, :column
  def initialize(row, column)
    @row    = row
    @column = column
  end

  def coordinate
    [@row, @column]
  end

  def find_first_step(princess)
    if princess.row == row
      horizontal_step(column, princess)
    else
      if princess.row > row
        "DOWN"
      else
        "UP"
      end
    end
  end

  def horizontal_step(column, princess)
    if princess.column > column
      "RIGHT"
    else
      "LEFT"
    end
  end
end
