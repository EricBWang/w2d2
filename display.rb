require 'colorize'
require 'cursor.rb'
require 'null_piece.rb'
class Display

  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], board)
    
  end

  def render
    (0...8).each do |row|
      (0...8).each do |column|
        if @board[row][column].is_a?(NullPiece)
          p " 🌚 "
        else 
          p " 🌝 "
        end
      end
      puts
    end
  end

end