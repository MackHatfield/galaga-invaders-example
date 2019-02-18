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
      missiles.launch_for(ship)
    end
    if key == 'p'
      missile.launch_for(alien)
    end
  end

end

GalagaInvaders.new.show

=begin
Reflecting on Principle
-----------------------
1. True or False: Good OO design eliminates dependencies.
  It doesn't eliminate it. What it does is reduce the amount that the class that depends
  on another class would need to change if the class it is depending on changes.
2. Briefly list four ways in which a class that collaborates with another class
  is dependent on it. (For example, one dependency is knowing the other class name.)
  A class collaborates with another class, when it knows the name of another class, it knows the
  name of a message it intends to send to the other class, it knows the arguments that that message requires,
  and it knows the order of the arguments of that message
3. What are two primary factors to consider when assessing the risk of a dependency?
  How many things are dependent on the class, and the likelihood that it will end up changing
4. What is Metz's rule of thumb for choosing a dependency direction?
  Depend on things that change less often than you do! So depend on something that will have the least
    amount of change.
=end
