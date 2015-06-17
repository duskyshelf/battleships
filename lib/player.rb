require_relative 'board'

class Player

attr_accessor :board

  def initialize
    @board = Board.new
  end


  def place ship, coords
    board.accept ship, coords
  end

  def fire coords
    board.receive_hit coords
  end

end