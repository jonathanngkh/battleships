require_relative 'ship'

class Board

  attr_accessor :ships

  def initialize
    @ships = []
  end

  def place(ship)
    @ships << ship
  end

  def hit(position) #all sorts of logic can go here to ban positions outside of boundaries of board
    ships.each do |ship|
      if ship.positions == position
        ship.hit
        return "HIT!"
      end
    end

    "MISS!"
      #should the ship be deleted? no, because ships might have more hp in the future
  end

end

# require 'terminal-table'
# table = Terminal::Table.new do |rows|
# rows << ['', 'a', 'b', 'c']
# rows << :separator
# rows << [1, '', '', '']
# rows << :separator
# rows << [2, '', '', '']
# rows << :separator
# rows << [3, '', '', '']
# end

# puts table