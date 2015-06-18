require 'coordinates'

describe Coords do

	it 'returns [A1, A2] give an input of A1, east, 2' do
		output = Coords.east :A1, 2
		expect(output).to eq [:A1, :A2]
	end

  it 'returns [A1, A2, A3] give an input of A1, east, 3' do
    output = Coords.east :A1, 3
    expect(output).to eq [:A1, :A2, :A3]
  end

  it 'returns [A1, B1] give an input of A1, south, 2' do
    output = Coords.south :A1, 2
    expect(output).to eq [:A1, :B1]
  end

  it 'returns [A1, B1, C1] give an input of A1, south, 3' do
    output = Coords.south :A1, 3
    expect(output).to eq [:A1, :B1, :C1]
  end

  it 'returns [A1..E1] give an input of A1, south, 5' do
    output = Coords.south :A1, 5
    expect(output).to eq [:A1, :B1, :C1, :D1, :E1]
  end

end