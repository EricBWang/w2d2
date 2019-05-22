require 'colorize'
class Piece


  attr_reader :color, :kind, :pos
  def initialize(color, kind, pos)
   @color = color 
   @kind = kind
   @pos = pos
  end

  def to_s
    case [color, kind]
    when [:white, :rook]
      " ♖ "
    when [:black, :rook]
      " ♜ "
    when [:white, :bishop]
      " ♗ "
    when [:black, :bishop]
      " ♝ "
    when [:white, :queen]
      " ♕ "
    when [:black, :queen]
      " ♛ "
    end 
  end


  def inspect
    "P"
  end


end