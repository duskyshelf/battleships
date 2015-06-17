class Coords

XCOORDS = ['A','B','C','D','E','F','G','H','I','J']
YCOORDS = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10']

  def self.west coordinates, length
  end

  def self.east coords, length
    x = coords[0]
    y = coords[1]
    result = []
    i = 1
    acc = y
    while i <= length
      result << (x+acc).to_sym
      acc = acc.next
      i += 1
    end

    result
  end

  def self.north coordinates, length
  end

  def self.south coordinates, length
  end


  def split coords
    x = XCOORDS.find_index(coords[0])
    y = YCOORDS.find_index(coords[1])
    [x,y]
  end

  def blah
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
