class RBQ < Piece
  
  include Slideable
  def initialize
    super
  end 

  def move_dir
    
    case kind 
    when :rook
      return [[1, 0], [-1, 0],[0, 1],[0, -1]] 
      # can move up/down/left/right, multiples of +/- [1, 0], [0, 1]
    when :bishop 
      return [[1, 1], [-1, 1],[-1, 1],[1, -1]] 
      # can move in diagonals, multiples of +/- [1, 1]
    when :queen
      return [[1, 0], [-1, 0],[0, 1],[0, -1], [1, 1], [-1, 1],[-1, 1],[1, -1]] 
      # can move up/down/left/right/diagonal, multiples of above
    end 
  end

  # if encounters pos (inherited from piece class) while sliding that holds opponents
  # piece can slide to that position, otherwise stop


  


end