class Missile < Structure

  def post_init(args)
    @sprite = args.fetch[:sprite]
  end

end
