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
    rook_white = [[0,0], [0,7]]
    rook_black = [[7,0], [7,7]]
    knight_white = [[0,1], [0,6]]
    knight_black = [[7,1], [7,6]]
    bishop_white = [[0,2], [0,5]]
    bishop_black = [7,2], [7,5]]
    queen_white =  [0,3]
    queen_black =  [7,3]
    king_white  =  [0,4]
    king_black =   [7,4]

    [1,6].each do |row|
      (0..7).each do |pos|
        if row == 1
          self[[row,pos]] = Pawn.new(white,self,pos)
        else
          self[[row,pos]] = Pawn.new(black,self,pos)
        end
      end
    end

    rook_white.each {|pos| Rook.new(white,self,pos)}
    rook_black.each {|pos| Rook.new(black,self,pos)}
    knight_white.each {|pos| Knight.new(white,self,pos)}
    knight_black.each {|pos| Knight.new(black,self,pos)}
    bishop_white.each {|pos| Bishop.new(white,self,pos)}
    bishop_black.each {|pos| Bishop.new(black,self,pos)}
    queen_white.each {|pos| self[pos] = Queen.new(white, self, pos)}
    queen_black.each {|pos| self[pos] = Queen.new(black, self, pos)}
    king_white.each {|pos| self[pos] = King.new(white, self, pos)}
    king_black.each {|pos| self[pos] = King.new(black, self, pos)}


    (2..5).each do |row|
      (0..7).each do |pos|
        self[[row,pos]] = NullPiece.instance
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

#p board = Board.new
