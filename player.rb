class Player 
  attr_reader :name 
  attr_accessor :turn, :lives

  def initialize(name)
    @name = name
    @turn = false
    @lives = 3
  end

end
