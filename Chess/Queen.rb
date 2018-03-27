class Queen < Piece
  include SlidingPiece

  def initialize
    super
  end

  def move_dirs
    horizontal_dirs + diagonal_dirs
  end

  def symbol
    "Q"
  end

  def valid_moves
    moves
  end

end
