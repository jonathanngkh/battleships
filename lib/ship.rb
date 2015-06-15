class Ship
  LIVING_STATE = 'place'
  FIRE_STATE = 'fire'
  DEFAULT_CAPACITY = 10


  attr_reader :state

  def placed
    @state = LIVING_STATE
  end
end