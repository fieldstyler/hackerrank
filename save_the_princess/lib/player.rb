class Player
  attr_reader :row, :column
  def initialize(row, column)
    @row    = row
    @column = column
  end

  def coordinate
    [@row, @column]
  end

  def directions_to_princess(princess)
    directions = vertical_directions(row, princess, directions="")
    horizontal_directions(row, princess, directions)
  end

  def vertical_directions(row, princess, directions)
    if princess.row == 0
      row.times do directions += "UP\n" end
    else
      row.times do directions += "DOWN\n" end
    end
    directions
  end

  def horizontal_directions(row, princess, directions)
    if princess.column == -1
      (row - 1).times do directions += "RIGHT\n" end
      directions += "RIGHT"
    else
      (row - 1).times do directions += "LEFT\n" end
      directions += "LEFT"
    end
    directions
  end
end
