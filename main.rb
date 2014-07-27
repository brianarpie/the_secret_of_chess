require './chessboard.rb'

board = Chessboard.new

# test some data
board.chessboard[0][0] = '[R]'
board.chessboard[1][0] = '[N]'
board.chessboard[2][0] = '[B]'
board.chessboard[3][0] = '[Q]'
board.chessboard[4][0] = '[K]'
board.chessboard[5][0] = '[B]'
board.chessboard[6][0] = '[N]'
board.chessboard[7][0] = '[R]'
board.chessboard[0][1] = '[P]'
board.chessboard[1][1] = '[P]'
board.chessboard[2][1] = '[P]'
board.chessboard[3][1] = '[P]'
board.chessboard[4][1] = '[P]'
board.chessboard[5][1] = '[P]'
board.chessboard[6][1] = '[P]'
board.chessboard[7][1] = '[P]'

board.chessboard[0][7] = '[R]'
board.chessboard[1][7] = '[N]'
board.chessboard[2][7] = '[B]'
board.chessboard[3][7] = '[Q]'
board.chessboard[4][7] = '[K]'
board.chessboard[5][7] = '[B]'
board.chessboard[6][7] = '[N]'
board.chessboard[7][7] = '[R]'
board.chessboard[0][6] = '[P]'
board.chessboard[1][6] = '[P]'
board.chessboard[2][6] = '[P]'
board.chessboard[3][6] = '[P]'
board.chessboard[4][6] = '[P]'
board.chessboard[5][6] = '[P]'
board.chessboard[6][6] = '[P]'
board.chessboard[7][6] = '[P]'

for x in 0..7 do
    for y in 0..7 do
        if !board.chessboard[x][y]
            board.chessboard[x][y] = "[ ]"
        end
    end
end

board.print_board
  
