require 'ship'

describe Ship do
  it 'initializes with a position that is a string' do
    ship = Ship.new("A1")
    expect(ship.positions).to be_a String
  end

  it 'initializes with a position that is what is keyed in' do
    ship = Ship.new("A1")
    expect(ship.positions).to eq 'A1'
  end

  it 'initializes with a swim status' do
    ship = Ship.new("A1")
    expect(ship.status).to eq "swim"
  end

  describe 'hit effects' do

    it 'sinks when hit by changing status' do
      subject = Ship.new("A1")
      expect { subject.hit }.to change { subject.status }.from('swim').to('sink')
    end

    it 'returns "HIT!" when called' do
      subject = Ship.new("A1")
      expect(subject.hit).to eq "HIT!"
    end
  end
end