#!/bin/ruby
input = ARGF.read
lines = input.strip.split("\n")
n = lines[0].to_i
r,c = lines[1].strip.split.map {|n| n.to_i}

def nextMove(n, r, c, grid=[])
  @grid = grid
  bot = [r, c]
  build_grid(n)
  place_bot(n, bot)
  find_first_step(bot, @princess)
end

def build_grid(grid_size)
  grid_size.times do
    @grid << "-" * grid_size
  end
end

def place_bot(grid_size, bot)
  bot_row, bot_column = bot
  @grid[bot_row][bot_column] = "m"
  place_princess(grid_size, bot)
end

def place_princess(grid_size, bot)
  princess = [rand(0..(grid_size-1)), rand(0..(grid_size-1))]
  until bot != princess
    princess = [rand(0..(grid_size-1)), rand(0..(grid_size-1))]
  end
  princess_row, princess_column = princess
  @grid[princess_row][princess_column] = "p"
  @princess = princess
end

def find_first_step(bot, princess)
  if princess.first == bot.first
    horizontal_step(bot, princess)
  else
    if princess.first > bot.first
      "DOWN"
    else
      "UP"
    end
  end
end

def horizontal_step(bot, princess)
  if princess.last > bot.last
    "RIGHT"
  else
    "LEFT"
  end
end

puts nextMove(n, r, c)
