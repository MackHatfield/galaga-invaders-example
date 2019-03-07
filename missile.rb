class Missile < Structure

  def post_init(args)
    @sprite = args.fetch(:sprite)
  end

  def default_location
    'fired position'
  end
end
