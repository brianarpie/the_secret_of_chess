class Knight
  attr_accessor :x, :y
  attr_reader :name

  def initialize x, y
    @name = "Knight"
    @x = x
    @y = y
  end

  def legal_moves
    squares = Array.new

    for x in 0..7
      for y in 0..7
        if ((@x - x) * (@y - y)).abs == 2
          squares.push([x, y])
          puts "location #{x} , #{y}"
        end
      end
    end
    squares
  end
    
end