class Bishop
  attr_accessor :x, :y

  def initialize x, y
    @x = x
    @y = y
  end

  def bishop point
    squares = Array.new(8)

    for x in 0..7
      for y in 0..7
        if x != @x && j != @y
          if (@x - i).abs == (@y - j).abs
            squares.push([x, y])
          end
        end
      end
    end
    squares
  end

end