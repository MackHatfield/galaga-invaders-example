require_relative 'structure'

class Ship < Structure

  def post_init(args)
    @sprite = args.fetch(:sprite)
  end

  def default_location
    'ship starting position'
  end
end
