class Coords

XCOORDS = ['A','B','C','D','E','F','G','H','I','J']
YCOORDS = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10']

  def self.west coordinate, length
  end

  def self.east coordinate, length
  end

  def self.north coordinate, length
  end

  def self.south coordinate, length
  end


  def location_iterator coords, direction
    x = XCOORDS.find_index(coords[0])
    y = YCOORDS.find_index(coords[1])
    if direction == 'north'
      [XCOORDS[x] + YCOORDS[y], XCOORDS[x + 1] + YCOORDS[y]]

    elsif direction == 'south'
      [XCOORDS[x] + YCOORDS[y], XCOORDS[x - 1] + YCOORDS[y]]

    elsif direction == 'east'
      [XCOORDS[x] + YCOORDS[y], XCOORDS[x] + YCOORDS[y + 1]]
        
    elsif direction == 'west'
      [XCOORDS[x] + YCOORDS[y], XCOORDS[x] + YCOORDS[y - 1]]
    end
  end 
end
