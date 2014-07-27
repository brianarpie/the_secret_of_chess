class Pawn
  attr_accessor :x, :y

  def initialize x, y
    @x = x
    @y = y
  end

  def legal_moves
    [[@x-1, @y+1], [@x+1, @y+1]]
  end

end