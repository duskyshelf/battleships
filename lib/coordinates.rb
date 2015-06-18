class Coords

YCOORDS = ('A'..'J').to_a
XCOORDS = ('1'..'10').to_a

  def self.create coords, length, direction
    self.send(direction, coords, length)
  end

  def self.split coords
    @y = YCOORDS.find_index(coords[0])
    @x = XCOORDS.find_index(coords[1])
  end

  def self.W coords, length
    split coords
    result = []
    length.times do
      fail "Invalid location" if @x < 0
      result << (YCOORDS[@y] + XCOORDS[@x]).to_sym
      @x -= 1
    end
    result
  end

  def self.E coords, length
    split coords
    result = []
    length.times do
      fail "Invalid location" if @x > 10
      result << (YCOORDS[@y] + XCOORDS[@x]).to_sym
      @x += 1
    end
    result
  end

  def self.N coords, length
    split coords
    result = []
    length.times do
      fail "Invalid location" if @y < 0
      result << (YCOORDS[@y] + XCOORDS[@x]).to_sym
      @y -= 1
    end
    result
  end

  def self.S coords, length
    split coords
    result = []
    length.times do
      fail "Invalid location" if @y > 10
      result << (YCOORDS[@y] + XCOORDS[@x]).to_sym
      @y += 1
    end
    result
  end

end