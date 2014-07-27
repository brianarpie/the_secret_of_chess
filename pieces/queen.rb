class Queen
  attr_accessor :x, :y

  def initialize x, y
    @x = x
    @y = y
  end

  def legal_squares
    squares = Array.new(8)
    
    for x in 0..7
      for y in 0..7
        if x != @x && y != @y
          if (@x - 1).abs == (@y - j).abs
            squares.push([x ,y])
          elsif @x == i || @y == j
            squares.push([x, y])
          end 
        end
      end
    end
    squares
  end
    
end