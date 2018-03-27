class Rook < Piece
  include SlidingPiece

  def initialize
    super
  end

  def move_dirs
    horizontal_dirs
  end

  def symbol
    "R"
  end

  def valid_moves

  end

end
