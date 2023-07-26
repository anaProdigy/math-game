class Game 
  attr_accessor :in_progress, :player1, :player2 

  def initialize
   player1_name = self.ask_name("Player 1, whats your name?")
   player2_name = self.ask_name("Player 2, whats your name?")
   

   @in_progress = 0
   @player1 = Player.new player1_name

   @player2 = Player.new player2_name

   self.pick_starter

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

  def pick_starter 
    starter_player = rand(1..2)
    if starter_player == 1
      self.player1.turn = true
    else 
      self.player2.turn = true
    end
  end



  # player enters the name
 
end



