require 'ship'

describe Ship do

  it 'is created when placed on the board' do
    is_expected.to respond_to :placed
  end

end