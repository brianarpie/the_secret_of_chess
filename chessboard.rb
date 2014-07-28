class Chessboard
  attr_accessor :chessboard

  def initialize
    # puts embed_hashes( Array.new(8) { Array.new(8) } )
    @chessboard = embed_hashes( Array.new(8) { Array.new(8) } )
  end

  def embed_hashes array
    for x in (0..7)
      for y in (0..7)
        array[x][y] = Hash.new
        array[x][y][:piece] = nil
        array[x][y][:white_counters] = 0
        array[x][y][:black_counters] = 0
      end
    end
    array
  end

  # needs to be reimplemented
  def add_white_counters array
    unless array.empty?
      for xy in (0..array.length - 1)
        @chessboard[array[xy][0]][array[xy][1]][:white_counters] += 1
      end
    end
  end
    # needs to be reimplemented
  def add_black_counters array
    unless array.empty?
      for xy in (0..array.length - 1)
        @chessboard[array[xy][0]][array[xy][1]][:black_counters] += 1
      end
    end
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

  # there is code duplication here, these two should inherit from something common
  # better yet, does the board really need to know what the piece is???
  # couldnt it just be left to the piece class itself???
  # but the way we do presence detection for squares is an interesting problem
  # and this is why still have piece names.
  def add_white_piece piece
    @chessboard[piece.x][piece.y][:piece] = piece.name
    add_white_counters(piece.legal_moves)
  end

  def add_black_piece piece
    @chessboard[piece.x][piece.y][:piece] = piece.name
    add_black_counters(piece.legal_moves)
  end

  def print_board
    for y in 0..7
      for x in 0..7
        print @chessboard[x][y]
      end
        puts
    end
  end

  def print_white_counters
    for y in 0..7
      for x in 0..7
        print "[#{@chessboard[x][y][:white_counters]}]"
      end
      puts
    end
  end

  def print_black_counters
    for y in 0..7
      for x in 0..7
        print "[#{@chessboard[x][y][:black_counters]}]"
      end
      puts
    end
  end

  def print_all_counters
    for y in 0..7
      for x in 0..7
        print "[#{(@chessboard[x][y][:white_counters] - @chessboard[x][y][:black_counters]).abs}]"
      end
      puts
    end
  end
    
end
