require_relative 'ship'

class Board

  def initialize
    @ships = []
  end

  def place_ship(ship)
    ship.placed
    @ships << ship
  end
end