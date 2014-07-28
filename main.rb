require "./chessboard.rb"
Dir["./pieces/*.rb"].each { |file| require file }

board = Chessboard.new

black_knight_1 = Knight.new(1, 7)
black_knight_2 = Knight.new(6, 7)

black_bishop_1 = Bishop.new(2, 7)
black_bishop_2 = Bishop.new(5, 7)

black_rook_1 = Rook.new(0, 7)
black_rook_2 = Rook.new(7, 7)

black_queen = Queen.new(3, 7)
black_king = King.new(4, 7)

black_pawn_1 = BlackPawn.new(0, 6)
black_pawn_2 = BlackPawn.new(1, 6)
black_pawn_3 = BlackPawn.new(2, 6)
black_pawn_4 = BlackPawn.new(3, 6)
black_pawn_5 = BlackPawn.new(4, 6)
black_pawn_6 = BlackPawn.new(5, 6)
black_pawn_7 = BlackPawn.new(6, 6)
black_pawn_8 = BlackPawn.new(7, 6)

# board.add_black_piece(black_rook_1)
# board.add_black_piece(black_rook_2)

# board.add_black_piece(black_queen)

# board.add_black_piece(black_king)

# board.add_black_piece(black_pawn_1)
# board.add_black_piece(black_pawn_2)
# board.add_black_piece(black_pawn_3)
# board.add_black_piece(black_pawn_4)
# board.add_black_piece(black_pawn_5)
# board.add_black_piece(black_pawn_6)
# board.add_black_piece(black_pawn_7)
# board.add_black_piece(black_pawn_8)

# board.add_black_piece(black_knight_1)
# board.add_black_piece(black_knight_2)

# board.add_black_piece(black_bishop_1)
# board.add_black_piece(black_bishop_2)



white_knight_1 = Knight.new(1, 0)
white_knight_2 = Knight.new(6, 0)

white_bishop_1 = Bishop.new(2, 0)
white_bishop_2 = Bishop.new(5, 0)

white_rook_1 = Rook.new(0, 0)
white_rook_2 = Rook.new(7, 0)

white_queen = Queen.new(3, 0)
white_king = King.new(4, 0)

white_pawn_1 = WhitePawn.new(0, 1)
white_pawn_2 = WhitePawn.new(1, 1)
white_pawn_3 = WhitePawn.new(2, 1)
white_pawn_4 = WhitePawn.new(3, 1)
white_pawn_5 = WhitePawn.new(4, 1)
white_pawn_6 = WhitePawn.new(5, 1)
white_pawn_7 = WhitePawn.new(6, 1)
white_pawn_8 = WhitePawn.new(7, 1)

# board.add_white_piece(white_rook_1)
# board.add_white_piece(white_rook_2)

# board.add_white_piece(white_queen)

# board.add_white_piece(white_king)

# board.add_white_piece(white_pawn_1)
# board.add_white_piece(white_pawn_2)
# board.add_white_piece(white_pawn_3)
# board.add_white_piece(white_pawn_4)
# board.add_white_piece(white_pawn_5)
# board.add_white_piece(white_pawn_6)
# board.add_white_piece(white_pawn_7)
# board.add_white_piece(white_pawn_8)

# board.add_white_piece(white_knight_1)
# board.add_white_piece(white_knight_2)

# board.add_white_piece(white_bishop_1)
board.add_white_piece(white_bishop_2)

# board.add_black_counters(black_knight.legal_moves)

board.print_white_counters
puts
board.print_black_counters
puts
board.print_all_counters
