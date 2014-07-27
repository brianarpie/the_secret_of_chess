class Knight
  :attr_accesor x, y

  def initialize x, y
    @x = x
    @y = y
  end

  def legal_squares
    squares = Array.new(8)

    for x in 0..7
      for y in 0..7
        if (@x - x) * (@y - y)).abs == 2
          squares.push([x, y])
        end
      end
    end
    squares
  end
    
end