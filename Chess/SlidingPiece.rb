module SlidingPiece

  DIAGONAL_DIRS = [[1,1], [-1,-1], [1,-1], [-1,1]]
  HORIZONTAL_DIRS = [[-1,0],[0,1],[1,0],[0,-1]]
  
  def horizontal_dirs
    HORIZONTAL_DIRS
  end
  def diagonal_dirs
    DIAGONAL_DIRS
  end

  def moves
    moves = []
    move_dirs.each do |dir|
        potential_location = [self.pos[0] + dir[0], self.pos[1] + dir[1]]
      while true
        if self.board[potential_location].is_a?(NullPiece) || self.board[potential_location].color != self.color
          moves << potential_location
          potential_location = [potential_location[0] + dir[0], potential_location[1] + dir[1]]
        else
          break
        end
      end
    end
    moves
  end

  private


end
