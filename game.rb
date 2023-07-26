require "./player.rb"
require './question.rb'
class Game 
  attr_accessor :in_progress

  def initialize
   player1_name = self.ask_name("Player 1, whats your name?")
   player2_name = self.ask_name("Player 2, whats your name?")
   

   @in_progress = 0
   @player1 = Player.new player1_name

   @player2 = Player.new player2_name
   @winner
   @rounds
  end

  def ask_name(prompt)
    puts prompt
    name = gets.chomp
    while name.empty?
      puts "Sorry, invalid name, try again"
      name = gets.chomp
    end
  "Hello #{name}"
  end


  # player enters the name
 
end



