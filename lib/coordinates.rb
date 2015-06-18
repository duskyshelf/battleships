class Coords

YCOORDS = ('A'..'J').to_a
XCOORDS = ('1'..'10').to_a

COORDS = [:A1, :A2, :A3, :A4, :A5, :A6, :A7, :A8, :A9, :A10,
          :B1, :B2, :B3, :B4, :B5, :B6, :B7, :B8, :B9, :B10,
          :C1, :C2, :C3, :C4, :C5, :C6, :C7, :C8, :C9, :C10,
          :D1, :D2, :D3, :D4, :D5, :D6, :D7, :D8, :D9, :D10,
          :E1, :E2, :E3, :E4, :E5, :E6, :E7, :E8, :E9, :E10,
          :F1, :F2, :F3, :F4, :F5, :F6, :F7, :F8, :F9, :F10,
          :G1, :G2, :G3, :G4, :G5, :G6, :G7, :G8, :G9, :G10,
          :H1, :H2, :H3, :H4, :H5, :H6, :H7, :H8, :H9, :H10,
          :I1, :I2, :I3, :I4, :I5, :I6, :I7, :I8, :I9, :I10,
          :J1, :J2, :J3, :J4, :J5, :J6, :J7, :J8, :J9, :J10]

  def self.create coords, length, direction
    fail 'Invalid location' if invalid?(coords)
    self.send(direction, coords, length)
  end

  def self.split coords
    @y = YCOORDS.find_index(coords[0])
    @x = XCOORDS.find_index(coords[1..-1])
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

  def self.invalid? coords
    !COORDS.include?(coords)
  end

end