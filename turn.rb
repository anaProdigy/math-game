class Turn 

  attr_accessor :players, :question, :round, :current_player, :next_player 

  def initialize(players, question, round)
    @players = players
    @question = question
    @round = round
    

    if players[0].turn == true
      @current_player = players[0]
      @next_player = players[1]
    else
      @current_player = players[1]
      @next_player = players[0]
    end

    self.ask_question
    self.compare_answers

    # ask
    # check
    # maintain lifes
    # reduce life
    # game ove?
  end

  def ask_question 
    puts "-- Round ##{round} --"
    puts "#{self.current_player.name} #{self.question}"
  end

  def compare_answers
   player_answer = gets.chomp.to_i
   if self.question.answer == player_answer
     puts "Great job! Correct answer"
   else
    self.current_player.lives -= 1
    puts "YOU SUCK!"
   end
   self.current_player.turn = false
   self.next_player = true
   puts "Player1 #{self.players[0].name} has #{self.players[0].lives}/3 VS Player2 #{self.players[1].name} has #{self.players[1].lives}/3"
  end
end