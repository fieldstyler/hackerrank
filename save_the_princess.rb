require './save_the_princess/lib/game'
require './save_the_princess/lib/board'
require './save_the_princess/lib/player'

puts "Hello, Welcome to Bot Saves Princess"
puts "Please enter an odd number between 3 and 99 that will indicate the size of your game board"
input = gets.chomp.to_i
game = Game.new(input)
if input.even? || input < 3 || input > 99
  puts ""
  puts "I'm sorry, that input is invalid. Please make sure your number is odd, greater than or equal to 3, and less than 100, and try again"
  puts ""
  sleep(1)
else
  sleep(2)
  puts ""
  puts "Here is your game board"
  puts game.board.grid
  puts ""
  puts ""
  puts "Press enter to get the directions needed for the bot to save the princess"
  input = gets.chomp
  sleep(0.5)
  puts game.play
  puts ""
  puts "Hooray! She's saved!"
  puts ""
  sleep(3)
end
