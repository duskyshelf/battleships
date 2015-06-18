require 'player'

describe Player do

  describe 'Place' do

    it { is_expected.to respond_to(:place).with(3).argument }

    it 'can put a ship on the board' do
      ship = double :ship
      expect(subject.board).to receive :accept
      subject.place ship, :A1, :N
    end

  end

  describe 'Fire' do

    it 'will fire upon a place on the board' do
      expect(subject.board).to receive :receive_hit
      subject.fire :A1
    end

    it 'will tell you if a ship is hit when fired upon' do
      ship = double :ship, hit: true, size: 2
      subject.place ship, :A1, :S
      expect(subject.fire :A1).to eq 'Hit'
    end

    it 'will tell you if a ship is hit when fired upon' do
      ship = double :ship, size: 1
      subject.place ship, :A1, :N
      expect(subject.fire :A2).to eq 'Miss'
    end

    # it 'will return sunk when ship is fired upon and sunk' do
    #   ship = Ship.new
    #   subject.place ship, :A1
    #   expect(subject.fire :A1).to eq 'Sunk'
    # end



  end

end