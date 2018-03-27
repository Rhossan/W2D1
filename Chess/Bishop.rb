class Bishop < Piece
  include SlidingPiece

  def move_dirs
    diagonal_dirs
  end

  def symbol
    "B"
  end

  def valid_moves

  end

end
