class Question 
  attr_reader :text, :answer 

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2 
    @text = "What does #{@num1} plus #{@num2} equal"
  end

  def correct?(user_answer)
    user_answer.to_i == @answer
  end
end