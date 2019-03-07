class Alien < Structure
  def post_init(args)
    @sprite = args.fetch(:sprite)
  end

  def default_location
    'starting location'
  end
end
