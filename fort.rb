class Fort < Structure
  def post_init(args)
    @sprite = args.fetch(:sprite)
  end

  def default_location
    'spawn location'
  end
end
