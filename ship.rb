# Ship
# x and y represent the coordinate of the center of the ship.
# For example, when y is 900, then the nose of the ship is at
# coordinate (x, y - height / 2).

require_relative 'missile'

class Ship

  WIDTH = 100
  HEIGHT = 200


  attr_accessor :x
  attr_accessor :y
  attr_accessor :missile_coordinates


  def initialize(x, y)
    @x = x
    @y = y
    @missile_coordinates = []
  end

  def move_left
    x -= 5
  end

  def move_right
    x += 5
  end

  def fire_missile
    missile_coordinates << Missile.new(ship_nose_position[0], ship_nose_position[1])
  end

  def ship_nose_position
    [x, y - HEIGHT / 2]
  end

  def move_missiles
    missile_coordinates.each do |missile|
      missile.move_up
    end
  end

  def draw
    # Ignore this
  end

  def draw_missiles
    missile_coordinates.each do |missile|

    end
  end

end


=begin
Reflecting on Principle
-----------------------
1. What does the OOD promise to give us, as programmers?
# That programming can be more of a joy rather than a pain if we follow OOD and we don't have
# to fear change.
2. What does Martin's SOLID acronym stand for? (Just expand the acronym.)
# Single Responsibility, open to change, Liskov substitution, interface segragation, dependency inversion
3. True or False: It is our professional responsibility to always spend time designing before writing our code (designing now rather than later).
# No there are certain times when design up front is not possible. OOD allows a method to follow practices that allow the programmer
# to infer design as they go.
4. In Metz' TRUE acronym, what does the E stand for and what does it mean?
# It stands for Exemplary. It means that code should be of good quality which will faciliate
# more good code as the project is expanded setting a precedent.
5. How does applying SRP naturally lead to good design?
# By following this, it makes it more clean where things should be split up into their own classes
=end
