class Player 
  attr_accessor :name, :hp 

  def initialize(name)
    @name = name
    @hp = 3
  end

  def lose_hp
    @hp -= 1
  end

  def alive?
    @hp > 0
  end
end

