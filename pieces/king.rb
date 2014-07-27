class King
  attr_accessor :x, :y

  def initialize x, y
    @x = x
    @y = y
  end

  def legal_squares
    squares = Array.new(8)

    for x in (0..@x) + 2
      for y in (0..@y) + 2
        if x != @x && y != @y
          if x.between?(0, 7) && y.between?(0, 7)
            squares.push([x, y])
          end
        end
      end
    end
    squares
  end
    
end