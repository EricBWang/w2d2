require_relative "piece.rb"
require_relative "null_piece.rb"
class Board

  attr_accessor :rows
  
  def initialize
    @rows = Array.new(8) {Array.new(8, [])}
    @sentinel = NullPiece.new
    render 

  end

  def render
    (0...8).each do |row|
      (0...8).each do |column|
        if row > 1 && row < 6
          rows[row][column] = NullPiece.new
        else 
          rows[row][column] = Piece.new 
        end
      end
    end
  end

  def move_piece(color, start_pos, end_pos)
    start_row, start_col = start_pos
    end_row, end_col = end_pos

    if rows[start_row][start_col].nil? || rows[end_row][end_col]
      raise "invalid move/ nonexistent piece"
    else
      rows[start_row][start_col], board[end_row][end_col] = nil, rows[start_row][start_col]
    end

  end

  def valid_pos?(pos)
    row, col = pos
    return true if row >= 0 && row <= 7 && col >= 0 && col <= 7 
    return false
  end

end