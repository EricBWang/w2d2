require_relative "piece.rb"
require_relative "null_piece.rb"
class Board

  attr_accessor :rows
  
  def initialize
    @rows = Array.new(8) {Array.new(8, [])}
    @sentinel = NullPiece.new
    fill_board

  end

  def fill_board
    (0...8).each do |row|
      (0...8).each do |column|
        if row > 1 && row < 6
          rows[row][column] = NullPiece.new
        else 
          if row == 0
            if column == 0 || column == 7
              rows[row][column] = Piece.new(:black, :rook, [row, column])
            end
            if column == 1 || column == 6
              rows[row][column] = Piece.new(:black, :knight, [row, column])
            end
            if column == 2 || column == 5
              rows[row][column] = Piece.new(:black, :bishop, [row, column])
            end
            if column == 3 
              rows[row][column] = Piece.new(:black, :king, [row, column])
            end
            if column == 4
              rows[row][column] = Piece.new(:black, :queen, [row, column])
            end
          elsif row == 7
            if column == 0 || column == 7
              rows[row][column] = Piece.new(:white, :rook, [row, column])
            end
            if column == 1 || column == 6
              rows[row][column] = Piece.new(:white, :knight, [row, column])
            end
            if column == 2 || column == 5
              rows[row][column] = Piece.new(:white, :bishop, [row, column])
            end
            if column == 3 
              rows[row][column] = Piece.new(:white, :king, [row, column])
            end
            if column == 4
              rows[row][column] = Piece.new(:white, :queen, [row, column])
            end
          end

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