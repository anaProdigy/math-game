class Game 
  attr_accessor :in_progress, :player1, :player2, :round

  def initialize
      #ask players for name
   player1_name = self.ask_name("Player 1, whats your name?")
   @player1 = Player.new player1_name
   player2_name = self.ask_name("Player 2, whats your name?")
   @player2 = Player.new player2_name

   @in_progress = true
 
   self.pick_starter

   puts "The game started"

   @winner
   @round = 1
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

  def pick_starter 
    starter_player = rand(1..2)
    if starter_player == 1
      self.player1.turn = true
    else 
      self.player2.turn = true
    end
  end

  def start_turn
    Turn.new([self.player1, self.player2], Question.new, self.round)
    self.round += 1
  end





  
 
end



