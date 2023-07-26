class Game 
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end

  def start 

    until game_over?
      question = Question.new 
      puts "#{current_player.name}: #{question.text}"

      user_answer = gets.chomp
      if question.correct?(user_answer)
        puts "Correct!"
      else
        puts "Seriously?No!! #{current_player} loses a life"
        current_player.lose_life
      end

      display_scores
      switch_turns
    end
    