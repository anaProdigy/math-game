require_relative 'question'
class Turn 

  attr_accessor :players, :question, :round, :current_player, :next_player 

  def initialize(players, question, round)
    @players = players
    @question = question
    @round = round

  end

  def ask_question
    puts "#{@current_player.name} #{self.question.genarate_question}"
  end

  def compare_answers
   player_answer = gets.chomp.to_i
   if self.question.answer == player_answer
     puts "Great job #{self.current_player.name}! Correct answer"
   else
    self.current_player.lives -= 1
    puts "YOU ARE NOT GOOD AT MATH #{self.current_player.name}!"
   end
  end

  def number_players
    @players.length
  end
# sample will rotate the array 
# creates 2 questions for 2 players for one round
  def each_round
    @players.rotate.each do |player|  
      @current_player = player
      @question = Question.new
      ask_question
      compare_answers
    end
  end
end