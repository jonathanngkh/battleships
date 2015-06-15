require 'board'

describe Board do

  it { is_expected.to respond_to(:place_ship).with(1).argument }

  describe 'place_ship' do
    it 'places a ship on the board' do
      ship = Ship.new
      expect(subject.place_ship(ship)).to eq [ship]

    end
  end

end