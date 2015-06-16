require 'board'

describe Board do

  it 'initializes with a ships array' do
    expect(subject.ships).to eq []
  end

  describe 'ship placement' do

    it 'can have ships on it, and stores them in ship array' do
      ship = double :ship, :positions => "A1"
      expect { subject.place(ship) }.to change { subject.ships.length }.from(0).to(1)
    end
  end

  describe 'hitting and missing' do

    it 'can receive a hit on a ship' do
      ship = double :ship, :positions => "A1"
      subject.place(ship)
      allow(ship).to receive(:hit)
      subject.hit("A1")
      expect(ship).to have_received(:hit)
    end

    it 'can print miss if hit(position) misses' do
      # ship = Ship.new("A1")
      # subject.place(ship)
      # this means that
      # expect(subject.hit("A1")).to eq "MISS!"
    end
  end
end