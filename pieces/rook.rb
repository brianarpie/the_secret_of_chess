class Rook
  attr_accessor :x, :y
  attr_reader :name

  def initialize x, y
    @name = "Rook"
    @x = x
    @y = y
  end

  def legal_moves
    squares = Array.new

    for x in 0..7
      for y in 0..7
        if (@x == x && @y != y) || (@x != x && @y == y)
          # if @x != x && @y != y
          squares.push([x, y])
          # end
        end
      end
    end
    puts squares
    squares
  end
    
end