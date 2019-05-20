require_relative "piece.rb"
class Board

  attr_accessor :board
  
  def initialize
    @board = Array.new(8) {Array.new(8, [])}
    render 

  end

  def render
    (0...8).each do |row|
      (0...8).each do |column|
        if row > 1 && row < 6
          board[row][column] = nil
        else 
          board[row][column] = Piece.new 
        end
      end
    end
  end

  def move_piece(start_pos, end_pos)
    start_row, start_col = start_pos
    end_row, end_col = end_pos

    if board[start_row][start_col].nil? || board[end_row][end_col]
      raise "invalid move/ nonexistent piece"
    else
      board[start_row][start_col], board[end_row][end_col] = nil, board[start_row][start_col]
    end


  end




end