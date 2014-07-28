class Queen
  attr_accessor :x, :y
  attr_reader :name

  def initialize x, y
    @name = "Queen"
    @x = x
    @y = y
  end

  # this method needs some work
  def legal_moves
    squares = Array.new

    for x in 0..7
      for y in 0..7
        if (@x == x && @y != y) || (@x != x && @y == y)
          squares.push([x, y])
        elsif (@x - x).abs == (@y - y).abs && ([x, y] != [@x, y])
          puts "bishop square"
          squares.push([x ,y])
        end
      end
    end
    squares
  end
    
end