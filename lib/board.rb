require_relative 'ship'
require_relative 'coordinates'

class Board

  attr_reader :board

  def initialize
    @board = []
  end

  def accept ship, position, direction
    coords = Coords.create position, ship.size, direction
    coords.each { |x| check_occupied x }
    coords.each { |x| place ship, x }
  end

  def place ship, position
    board << {coords: position, ship: ship}
  end

  def receive_hit position
    board_position = board.select{ |x| x[:coords] == position }
    if board_position == []
      "Miss"
    else
      damage board_position[0][:ship]
    end
  end

  private

  def check_occupied position
    fail 'location occupied' if occupied?(position)
  end

  def occupied? position
    board.select{ |x| x[:coords] == position } != []
  end


  def damage ship
    ship.hit
    ship.sunk? ? 'Hit & Sunk' : 'Hit'
  end

end

# #"place ship at A1, A2" => ship = [A1, A2]
# #{}"place ship at A1, A2" => board << {A1. ship}, {A2,ship}
