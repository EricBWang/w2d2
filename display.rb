require 'colorize'
require_relative 'cursor.rb'
require_relative 'null_piece.rb'
require_relative 'board.rb'
class Display

  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], board)
    
  end

  def cursor_test 
    while true
      system("clear")
      render 
      puts
      @cursor.get_input
    end
  end 

  def render
    (0...8).each do |row|
      (0...8).each do |column|
        if row == @cursor.cursor_pos[0] && column == @cursor.cursor_pos[1]
          print @board.rows[row][column].to_s.colorize(:background => :red)
        elsif row.even? && column.even? || row.odd? && column.odd? 
          print @board.rows[row][column].to_s.colorize(:background => :black)
        else
          print @board.rows[row][column].to_s.colorize(:background => :blue)
        end
      end
      puts
    end
  end

end

b = Board.new
d = Display.new(b)
d.render
d.cursor_test