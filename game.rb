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

    announce_winner
  end

  private

  attr_reader :player1, :player2
  attr_accessor :current_player

  def game_over?
    player1.alive? && player2.alive?
  end

  def display_scores 
    puts "#{player1.name}:#{player1.lives}/3 VS #{player2.name}: #{player2.lives}/3"
  end

  def switch_turns
    @current_player = current_player ==player1 ? player2 : player1
  end

  def announce_winner 
    winner = player1.alive? ? player1 : player2
    puts "#{winner} wins with a score #{winner.lives}/3"
    puts "GAME OVER!"
  end
end



