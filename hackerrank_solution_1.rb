#!/bin/ruby
input = ARGF.read
lines = input.strip.split("\n")
n = lines[0].to_i

def displayPathtoPrincess(grid_size, grid=[])
  @grid = grid
  build_grid(grid_size)
  directions_to_princess(@bot, @princess)
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
  @bot = [bot_row, bot_column]
  place_princess
end

def place_princess
  four_corners = [[0,0], [-1,0], [0,-1], [-1,-1]]
  princess_row, princess_column = four_corners.sample
  @grid[princess_row][princess_column] = "p"
  @princess = [princess_row, princess_column]
end

def directions_to_princess(bot, princess)
  directions = vertical_directions(bot, princess, directions="")
  horizontal_directions(bot, princess, directions)
end

def vertical_directions(bot, princess, directions)
  if princess.first == 0
    bot.first.times do directions += "UP\n" end
  else
    bot.first.times do directions += "DOWN\n" end
  end
  directions
end

def horizontal_directions(bot, princess, directions)
  if princess.last == -1
    (bot.first - 1).times do directions += "RIGHT\n" end
     directions += "RIGHT"
  else
    (bot.first - 1).times do directions += "LEFT\n" end
     directions += "LEFT"
  end
  directions
end

puts displayPathtoPrincess(n)
