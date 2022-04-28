require './save_the_princess_2/lib/game'
require './save_the_princess_2/lib/board'
require './save_the_princess_2/lib/player'

puts "Hello, Welcome to Bot Saves Princess 2"
puts "Please enter a number between 2 and 99 that will indicate the size of your game board"
grid_size = gets.chomp.to_i
puts ""
sleep(0.5)
puts "Please enter two integers, separated by a space, to denote the bot's starting location in the grid"
puts ""
puts "The two integers must both be greater than or equal to 0 and both be smaller than the number that you just chose"
puts ""
bot_location = gets.chomp
bot_row, bot_column = [bot_location[0].to_i, bot_location[-1].to_i]
game = Game.new(grid_size, bot_row, bot_column)
if grid_size < 2 || grid_size > 99 || bot_row >= grid_size || bot_column >= grid_size
  puts ""
  puts "I'm sorry, those inputs are invalid. Please make sure to follow the criteria and try again"
  puts ""
  sleep(1)
else
  sleep(2)
  puts ""
  puts "Here is your game board"
  puts game.board.grid
  puts ""
  puts ""
  puts "Press enter to get the next step for the bot to save the princess"
  input = gets.chomp
  sleep(0.5)
  puts game.play
  puts ""
  puts "Hooray! He's closer!"
  puts ""
  sleep(3)
end
