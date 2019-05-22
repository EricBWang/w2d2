require_relative 'piece.rb'
require 'colorize'

class NullPiece < Piece
  def initialize 
  
  end 
  
  def to_s
    " X "
  end

  def inspect
    "N"
  end

  


end