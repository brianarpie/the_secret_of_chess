class Chessboard
  attr_accessor :chessboard

  def initialize
    # need to make each index of array hold an object
    @chessboard = Array.new(8) { Array.new(8) }
  end

  def add_white_pressure point
    # access the future object of this array index
    @chessboard[point.x][point.y].white_counters += 1
  end

  def remove_white_pressure point
    @chessboard[point.x][point.y].white_counters -= 1
  end

  def add_black_pressure point
    @chessboard[point.x][point.y].black_counters += 1
  end

  def remove_black_pressure point
    @chessboard[point.x][point.y].black_counters -= 1
  end

  def is_square_occupied? point
    return @chessboard[point.x][point.y].piece
  end

  def set_piece piece, point
    @chessboard[point.x][point.y].piece = piece
  end
    
  def print_board
    for y in 0..7
      for x in 0..7
        print @chessboard[x][y]
      end
        puts
    end
  end
    
end
