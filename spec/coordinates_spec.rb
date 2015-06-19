require 'coordinates'

describe Coords do

  context 'Generate' do
    it 'calls E method given an input of :E' do
    expect(Coords.generate :A1, 2, :E).to eq [:A1, :A2]
    end
  end

  context 'East' do
  	it 'returns [A1, A2] given an input of A1, east, 2' do
  		output = Coords.E :A1, 2
  		expect(output).to eq [:A1, :A2]
  	end

    it 'returns [A1, A2, A3] given an input of A1, east, 3' do
      output = Coords.E :A1, 3
      expect(output).to eq [:A1, :A2, :A3]
    end

    it 'returns [E10] given an input of E10, 1' do
      output = Coords.E :E10, 1
      expect(output).to eq [:E10]
    end
  end

  context 'South' do
    it 'returns [A1, B1] given an input of A1, south, 2' do
      output = Coords.S :A1, 2
      expect(output).to eq [:A1, :B1]
    end

    it 'returns [A1, B1, C1] given an input of A1, south, 3' do
      output = Coords.S :A1, 3
      expect(output).to eq [:A1, :B1, :C1]
    end

    it 'returns [A1..E1] given an input of A1, south, 5' do
      output = Coords.S :A1, 5
      expect(output).to eq [:A1, :B1, :C1, :D1, :E1]
    end
  end

  context 'North' do
    it 'returns [A1, A2] given an input of A1, north, 2' do
      output = Coords.N :D1, 2
      expect(output).to eq [:D1, :C1]
    end

    it 'returns [A1, A2, A3] given an input of A1, north, 3' do
      output = Coords.N :D1, 3
      expect(output).to eq [:D1, :C1, :B1]
    end
  end

  context 'West' do
    it 'returns [A1, A2] given an input of A1, west, 2' do
      output = Coords.W :D5, 2
      expect(output).to eq [:D5, :D4]
    end

    it 'returns [A1, A2, A3] given an input of A1, west, 3' do
      output = Coords.W :E3, 3
      expect(output).to eq [:E3, :E2, :E1]
    end
  end

  context 'error checking' do
    it 'returns error "Invalid location"' do
      expect{Coords.W :E1, 2}.to raise_error 'Invalid location'
    end
  end

end