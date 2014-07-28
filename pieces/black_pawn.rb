class BlackPawn
  attr_accessor :x, :y
  attr_reader :name

  def initialize x, y
    @name = "Pawn"
    @x = x
    @y = y
  end

  # dont need to check y range because it is no longer a pawn at that point
  def legal_moves
    squares = Array.new

    if @x.between?(1,6)
      squares.push([@x-1, @y-1])
      squares.push([@x+1, @y-1])
    elsif @x == 0
      squares.push([@x+1, @y-1])
    else
      squares.push([@x-1, @y-1])
    end

    squares
  end

end