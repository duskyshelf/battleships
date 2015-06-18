class Coords

# XCOORDS = ['X' 'A','B','C','D','E','F','G','H','I','J']
# YCOORDS = ['99' '1', '2', '3', '4', '5', '6', '7', '8', '9', '10']

  def self.west coords, length

  end

  def self.east coords, length
    x = coords[0]
    y = coords[1]
    result = []
    length.times do
      result << (x + y).to_sym
      y = y.next
    end
    result
  end

  def self.north coords, length
  end

  def self.south coords, length
    x = coords[0]
    y = coords[1]
    result = []
    length.times do
      result << (x + y).to_sym
      x = x.next
    end
    result
  end


  # def split coords
  #   x = XCOORDS.find_index(coords[0])
  #   y = YCOORDS.find_index(coords[1])
  #   [x,y]
  # end

  # def blah
  #   if direction == 'north'
  #     [XCOORDS[x] + YCOORDS[y], XCOORDS[x + 1] + YCOORDS[y]]
  #   elsif direction == 'south'
  #     [XCOORDS[x] + YCOORDS[y], XCOORDS[x - 1] + YCOORDS[y]]

  #   elsif direction == 'east'
  #     [XCOORDS[x] + YCOORDS[y], XCOORDS[x] + YCOORDS[y + 1]]

  #   elsif direction == 'west'
  #     [XCOORDS[x] + YCOORDS[y], XCOORDS[x] + YCOORDS[y - 1]]
  #   end
  # end
end
