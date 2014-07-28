class Bishop
  attr_accessor :x, :y
  attr_reader :name

  def initialize x, y
    @name = "Bishop"
    @x = x
    @y = y
  end

  def legal_moves
    squares = Array.new

    for x in 0..7
      for y in 0..7
        if [@x, @y] != [x, y]
          if (@x - x).abs == (@y - y).abs
            squares.push([x, y])
          end
        end
      end
    end
    squares
  end

end