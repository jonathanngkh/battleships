class Ship
  attr_accessor :positions, :status

  def initialize(positions)
    @positions = positions
    #could set: fail if positions != "all possible positions", else "please key in valid positions"
    #probably use 'case' method
    #basically all the logic could go here, so no bad ships can be created
    @status = 'swim'
  end

  def hit
    self.status = 'sink'
    return "HIT!"
  end
end