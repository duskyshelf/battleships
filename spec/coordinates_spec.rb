require 'coordinates'

describe Coords do

	it 'returns [A1, A2] give an input of A1, east' do
		output = Coords.east :A1, 2
		expect(output).to eq [:A1, :A2]
	end
end