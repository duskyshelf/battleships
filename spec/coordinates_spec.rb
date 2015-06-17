require 'coordinates'

describe Coords do

  it { is_expected.to respond_to(:split).with(1).argument }

	it 'returns [A1, A2] give an input of A1, east, 2' do
		output = Coords.east :A1, 2
		expect(output).to eq [:A1, :A2]
	end

  it 'returns [A1, A2, A3] give an input of A1, east, 3' do
    output = Coords.east :A1, 3
    expect(output).to eq [:A1, :A2, :A3]
  end

end