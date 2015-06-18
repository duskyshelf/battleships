class Coords

YCOORDS = ('A'..'J').to_a
XCOORDS = ('1'..'10').to_a

  def self.split coords
    @y = YCOORDS.find_index(coords[0])
    @x = XCOORDS.find_index(coords[1])
  end

  def self.west coords, length
    split coords
    result = []
    length.times do
      result << (YCOORDS[@y] + XCOORDS[@x]).to_sym
      @x -= 1
    end
    result
  end

  def self.east coords, length
    split coords
    result = []
    length.times do
      result << (YCOORDS[@y] + XCOORDS[@x]).to_sym
      @x += 1
    end
    result
  end

  def self.north coords, length
    split coords
    result = []
    length.times do
      result << (YCOORDS[@y] + XCOORDS[@x]).to_sym
      @y -= 1
    end
    result
  end

  def self.south coords, length
    split coords
    result = []
    length.times do
      result << (YCOORDS[@y] + XCOORDS[@x]).to_sym
      @y += 1
    end
    result
  end

end