require_relative 'Piece'
class Board
  attr_accessor :rows, :board

  # private
  attr_accessor :sentinel

  def initialize
    @board = Array.new(8) {Array.new(8)}
    fill_up_board
  end

  def fill_up_board
    (0..1).each do |row|
      (0..7).each do |col|
        @board[row,col] = "white"#Piece.new("white", board, [row, col])
      end
    end

    (2..5).each do |row|
      (0..7).each do |col|
        @board[row,col] = nil #Piece.new(empty) }
      end
    end

    ([6,7]).each do |row|
      (0..7).each do |col|
        @board[row,col] = "black"#Piece.new("black", board, [row, col])
      end
    end
  end


  def [](pos)
    row, col = pos
    @board[row][col]
  end

  def []=(pos,val)
    row,col = pos
    @board[row][col] = val
  end

  def move_piece(color,start_pos,end_pos)
  end

  def valid_pos?(pos)
    x, y = pos
    if x.between?(0,7) && y.between?(0,7)
      return true
    else
      ArgumentError.new("The numbers should be in between 0 and 7!")
    end
  end

  def add_piece(piece,pos)
  end

  def checkmate?(color)
  end

  def in_check?(color)
  end

  def find_king(color)
  end

  def pieces
  end

  def dup
  end

  # play game
  # gets input
  # isvalid (moves)
  # begin
  # move piece
  # rescue => error
  # retry
  def move_piece(start_pos, end_pos)  #(color, start_pos, end_pos)
    # x1, y1 = start_pos
    # x2, y2 = end_pos
    piece = board[start_pos]
    piece2 = board[end_pos]

    #raise exception for there is no piece at start_pos
    raise ArgumentError.new("There is no piece at start position") if piece.nil?
    #raise exception for he piece cannot move to end_pos
    raise ArgumentError.new("You can't move to that position") unless piece2.nil? #color != user's color

    board[end_pos] = piece
    board[start_pos] = nil
  end
end

#test.rb
# requires everything needed

# board.new
# board.moves
# board.moves
# board.invalid

p board = Board.new
