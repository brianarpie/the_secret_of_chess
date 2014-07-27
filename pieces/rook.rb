class Rook
  attr_accessor :x, :y

  def initialize x, y
    @x = x
    @y = y
  end

  def legal_moves
    squares = Array.new(8)

    for x in 0..7
      for y in 0..7
        if @x == x || @y == y
          if @x != x && @y != y
            squares.push([x, y])
          end
        end
      end
    end
    squares
  end
    
end