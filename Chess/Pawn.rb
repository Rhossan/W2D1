class Pawn < Piece
  include SlidingPiece

  def initialize
    super
  end

  def move_dirs
    [[1,0]] #[1,-1], [1,1] only if eating a piece
  end

  def symbol
    "P"
  end

  def valid_moves

  end

end
