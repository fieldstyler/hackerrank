class Player
  attr_reader :row, :column
  def initialize(row, column)
    @row    = row
    @column = column
  end

  def coordinate
    [@row, @column]
  end
end
