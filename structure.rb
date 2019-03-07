module Drawable
  def draw
    puts "drawing at #{location}"
  end
end

module Destroyable
  def damage
    self.hit_points -= damage_amount
    puts "#{self.class} took #{damage_amount} points of damage!"
  end

  def destroyed?
    hit_points <= 0
  end

  def hit?(attacker)
    attacker.location == location
  end

  def damage_amount # maybe each object that includes can override for specific damage amount
    1
  end
end

class Structure
  include Drawable
  include Destroyable

  attr_reader :location
  attr_accessor :hit_points

  def initialize(args)
    @location = args.fetch(:location, default_location) 
    @hit_points = args.fetch(:hit_points, default_hit_points) 
    post_init(args)
  end

  def post_init(args)
  end

  def default_hit_points
    100
  end

  def default_location
    raise NotImplementedError
  end

end
