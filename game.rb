require_relative 'turn'

class Game 
  attr_accessor :in_progress, :player1, :player2, :round, :winner

  def initialize
      #ask players for name
   player1_name = self.ask_name("Player 1, whats your name?")
   @player1 = Player.new player1_name
   player2_name = self.ask_name("Player 2, whats your name?")
   @player2 = Player.new player2_name

   @in_progress = true

   puts "The game started"

   @winner = nil
   @round = 1
  end

  def ask_name(prompt)
    puts prompt
    name = gets.chomp
    while name.empty?
      puts "Sorry, invalid name, try again"
      name = gets.chomp
    end
  "#{name}"
  end

#starts the round that consists of 2 questions, one for each person
  def start_turn
    turn = Turn.new([self.player1, self.player2], Question.new, self.round)
    puts "-- Round ##{self.round} --"
    turn.each_round
    self.round += 1
     puts "#{player1.name}:#{player1.lives}/3 VS #{player2.name}: #{player2.lives}/3"
  end

  # who wins
def winner
   if self.player1.lives == 0
      self.winner = self.player2
      self.stop_game
    elsif self.player2.lives == 0
      self.winner = self.player1
      self.stop_game
    end
end
  # end game
def stop_game
  self.in_progress = false
  puts "GAME OVER!"
end


  
 
end



