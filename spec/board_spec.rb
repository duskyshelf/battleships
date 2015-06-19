require 'board'

describe Board do
  let(:ship) {double :ship, size: 1}
  let(:ship1) {double :ship, size: 1}
  let(:ship2) {double :ship, size: 1}

  it { is_expected.to respond_to(:accept).with(3).argument }

  it "is an empty board on initialization" do
    emptycheck = subject.board.all?{ |x| x[:ship].nil? }
    expect(emptycheck).to eq true
  end

describe "accept ship" do

  it "places ship in location" do
    subject.accept ship, :A1, :N
    expect(subject.board).to eq [{coords: :A1, ship: ship}]
  end

  it "has a ship once one is placed" do
    subject.accept ship, :A1, :N
    emptycheck = subject.board.all?{ |x| x[:ship].nil? }
    expect(emptycheck).to eq false
  end

  it "can accept 2 ships" do
    subject.accept ship1, :A1, :N
    subject.accept ship2, :A2, :N
    expect(subject.board).to eq [{coords: :A1, ship: ship1}, {coords: :A2, ship: ship2}]
  end

  it "raises error when location occupied" do
    subject.accept ship1, :A1, :N
    expect{ subject.accept ship2, :A1, :N }.to raise_error 'location occupied'
  end

  it 'raises error when location is not on board' do
    expect{ subject.accept ship1, :X3, :N }.to raise_error 'Invalid location'
  end
end

describe "report" do

  it "can report a miss" do
    response = subject.receive_hit :A1
    expect(response).to eq "Miss"
  end

  it "can report a hit" do
    ship = double :ship, hit: true, size: 1, sunk?: false
    subject.accept ship, :A1, :N
    response = subject.receive_hit :A1
    expect(response).to eq "Hit"
  end

  it "can report that all ships are sunk" do
    expect(subject.all_sunk?).to be true
  end
end

end