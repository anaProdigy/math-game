class Player 
  attr_reader :name, :lives, :turn

  def initialize(name)
    @name = name
    @turn = false
    @lives = 3
  end

end
