require "./player.rb"
require './question.rb'
require './game.rb'

# Create a new game instance
game = Game.new



# Call the start method on the game instance
# while game.in_progress 
#   #start playing turn logic
#  # check if anybody won if yes stop game
# end
puts game.in_progress
