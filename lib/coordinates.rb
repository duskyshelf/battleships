class Coords

YCOORDS = ['A','B','C','D','E','F','G','H','I','J']
XCOORDS = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10']

  def self.west coords, length
    split coords
    result = []
    length.times do
      result << (YCOORDS[@x] + XCOORDS[@y]).to_sym
      @y -= 1
    end
    result
  end

  def self.east coords, length
    split coords
    result = []
    length.times do
      result << (YCOORDS[@x] + XCOORDS[@y]).to_sym
      @y += 1
    end
    result
  end

  def self.north coords, length
    split coords
    result = []
    length.times do
      result << (YCOORDS[@x] + XCOORDS[@y]).to_sym
      @x -= 1
    end
    result
  end

  def self.south coords, length
    split coords
    result = []
    length.times do
      result << (YCOORDS[@x] + XCOORDS[@y]).to_sym
      @x += 1
    end
    result
  end


  def self.split coords
    @x = YCOORDS.find_index(coords[0])
    @y = XCOORDS.find_index(coords[1])
  end

  # def blah
  #   if direction == 'north'
  #     [YCOORDS[x] + XCOORDS[y], YCOORDS[x + 1] + XCOORDS[y]]
  #   elsif direction == 'south'
  #     [YCOORDS[x] + XCOORDS[y], YCOORDS[x - 1] + XCOORDS[y]]

  #   elsif direction == 'east'
  #     [YCOORDS[x] + XCOORDS[y], YCOORDS[x] + XCOORDS[y + 1]]

  #   elsif direction == 'west'
  #     [YCOORDS[x] + XCOORDS[y], YCOORDS[x] + XCOORDS[y - 1]]
  #   end
  # end
end
