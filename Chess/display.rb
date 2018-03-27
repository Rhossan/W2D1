require 'colorize'
require_relative 'cursor'
require_relative 'Board'

class Display

  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0],@board)
  end

  def get_phase2_working
    self.render
    @cursor.get_input
    # get possible moves using cursor.get_input
  end

  def render
    special = @cursor.cursor_pos

    @board.board.each_with_index do |arr, i|
      arr.each_with_index do |pos, j|
        pos = [i,j]
        if pos == special
          print "   #{@board[pos]}   ".colorize(:background => :light_red)
        elsif i.even?
          if j.even?
            print "   #{@board[pos]}   ".colorize(:background => :light_white)
          else
            print "   #{@board[pos]}   ".colorize(:background => :gray)
          end
        else
          if j.odd?
            print "   #{@board[pos]}   ".colorize(:background => :light_white)
          else
            print "   #{@board[pos]}   ".colorize(:background => :gray)
          end
        end
      end
      puts
    end
    # board[cursor_pos] = .red
  end

end
