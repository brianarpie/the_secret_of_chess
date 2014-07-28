class King
  attr_accessor :x, :y
  attr_reader :name

  def initialize x, y
    @name = "King"
    @x = x
    @y = y
  end

  # this works for now but is ugly
  def legal_moves
    squares = Array.new

    x_min = @x-1 >= 0 ? @x-1 : 0
    x_max = @x+1 <= 7 ? @x+1 : 7
    y_min = @y-1 >= 0 ? @y-1 : 0
    y_max = @y+1 <= 7 ? @y+1 : 7
    for x in (x_min..x_max)
      for y in (y_min..y_max)
        if (@x == x && @y != y) || (@x != x && @y == y) || (@x != x && @y != y)
          squares.push([x, y])
        end
      end
    end

    squares
  end
    
end