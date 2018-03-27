class Knight < Piece
  include SteppingPiece

  def initialize
    super
  end

  def move_dirs
    moves
  end

  def symbol
    "K"
  end

  def valid_moves

  end

end
