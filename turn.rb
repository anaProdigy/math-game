class Turn 

  attr_accessor :players, :question, :round

  def initialize(players, question, round)
    @players = players
    @question = Question.new
    puts "#{starter_player} #{question}"
    # ask
    # check
    # maintain lifes
    # reduce life
    # game ove?
  end
end