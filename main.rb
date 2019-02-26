#!/usr/bin/env ruby

require_relative 'alien'
require_relative 'ship'
require_relative 'missile_collection'

class GalagaInvaders

  WIDTH = 1920
  HEIGHT = 1080

  attr_accessor :ship, :alien, :missiles

  def initialize
    @caption = "Galaga Invaders"
    @ship = Ship.new(WIDTH, HEIGHT)
    @alien = Alien.new
    @missiles = MissileCollection.new
  end

  def update
    missiles.update
  end

  def draw
    ship.draw
    alien.draw
    missiles.draw
  end

  def show
    while (true) do
      update
      draw
      key_pressed(gets.chomp) # Simulating a key interrupt.
    end
  end

  def key_pressed(key)
    if key == 'a'
      ship.move_left
    elsif key == 'd'
      ship.move_right
    elsif key == ' '
      missiles.add_from(ship)
    end
    if key == 'p'
      missiles.add_from(alien)
    end
  end

end

GalagaInvaders.new.show

=begin
Reflecting on Principle
-----------------------
1. What is "duck typing" and what does it have to do with polymorphism?
   "Duck Typing" is creating a public interface that is not tied to any specific class. It's creating
   an interface where the same message can be passed to different objects and all those objects understand
   how to repond to the message. This is how it relates to polymorphism in that many objects can respond to the same
   message and this message can be thought of as having many "forms".
2. What are some common code smells that indicate the need for relying on a
   "duck type" rather than a concrete class?
   Having a switch statment in a method that switches on different class types. Another is checking
   the type of an object with the kind_of? or is_a? methods in "if else if.." blocks. Third is using the
   reponds_to? method to check if a class can use the method that it was passed. 
3. True or False: Abstractions like duck typing make code explicitly easier to
   understand, vs. using concrete types.
   This is false. Using concrete types actually makes code easier to understand but makes it more
   difficult to extend the code. On the other hand, duck typing may make the code harder to understand
   but makes extending the code easier. With duck typing more faith is being placed in the design being correct
   rather than being shown what is happening explicitly with concrete types.
=end
