require './chessboard'

# TODO: while iterating for Bishop, Rook, & Queen, find squares that are occupied by pieces
# by calling the chessboard class. Then create smart algorithm to at first, simply remove the
# squares that the piece cannot access but eventually, minimize the number of iterations needed
# to return a correct answer

class Pieces
  cb = Chessboard.new

  def king point
    squares = Array.new(8)

    for (i = point.x - 1; i < point.x + 2; i++) {
      for (j = point.y - 1; j < point.y + 2; j++) {
        if (i != point.x && j != point.y) {
          if (i >= 0 && i <= 7 && j >= 0 && j <= 7) {
            squares.push([i, j])
          }
        }
      }
    }
    squares
  end

  def queen point
    squares = Array.new(8)

    for (i = 0; i < 8; i++) {
      for (j = 0; j < 8; j++) {
        if (i != point.x && j != point.y) {
          if (Math.abs(point.x - i) == Math.abs(point.y - j)) {
            squares.push([i, j])
          } elsif (point.x == i || point.y == j) {
            squares.push([i, j])
          }
        }
      }
    }
    squares
  end

  def bishop point
    squares = Array.new(8)

    for (i = 0; i < 8; i++) {
      for (j = 0; j < 8; j++) {
        if (i != point.x && j != point.y) {
          if (Math.abs(point.x - i) == Math.abs(point.y - j)) {
            squares.push([i, j])
          }
        }
      }
    }
    squares
  end

  def knight point
    squares = Array.new(8)

    for (i = 0; i < 8; i++) {
      for (j = 0; j < 8; j++) {
        if (Math.abs(point.x-i * point.y-j) == 2) {
          squares.push([i, j])
        }
      }
    }
    squares
  end

  def rook point
    squares = Array.new(8)

    for (i = 0; i < 8; i++) {
      for (j = 0; j < 8; j++) {
        if (point.x == i || point.y == j) {
          if (point.x != i && point.y != j) {
            squares.push([i, j])
          }
        }
      }
    }
    squares
  end

  def white_pawn point
    [[point.x-1, point.y+1], [point.x+1, point.y+1]]
  end

  def black_pawn point
    [[point.x-1, point.y-1], [point.x+1, point.y-1]]
  end

end