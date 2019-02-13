class Missile
  attr_accessor :x
  attr_accessor :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def move_up
    y -= 10
  end

  def move_down
    y += 10;
  end
end