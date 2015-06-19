require_relative 'ship'
require_relative 'coordinates'

class Board

  attr_reader :board

  def initialize
    @board = []
  end

  def accept ship, position, direction
    ship_range = Coords.generate position, ship.size, direction
    ship_range.each { |coord| check_occupied coord }
    ship_range.each { |coord| place ship, coord }
  end

  def receive_hit position
    board_position = board.select{ |x| x[:coords] == position }
    if board_position == []
      "Miss"
    else
      damage board_position[0][:ship]
    end
  end

  def all_sunk?
    board.all?{ |place| place[:ship].sunk? }
  end


  private

  def check_occupied position
    fail 'location occupied' if occupied?(position)
  end

  def occupied? position
    board.select{ |x| x[:coords] == position } != []
  end

  def place ship, position
    board << {coords: position, ship: ship}
  end

  def damage ship
    ship.hit
    ship.sunk? ? 'Hit & Sunk' : 'Hit'
  end

end