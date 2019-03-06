class Alien < Structure
  def post_init(args)
    @sprite = args.fetch[:sprite]
  end

end
