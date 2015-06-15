require_relative 'ship1'
require_relative 'ship2'
require_relative 'ship3'
require_relative 'ship4'

class Ship
  LIVING_STATE = 'place'
  FIRE_STATE = 'fire'
  DEFAULT_CAPACITY = 10

  attr_reader :state

  def placed
    @state = LIVING_STATE
  end
end