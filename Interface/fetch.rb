class FetchCube
  def initialize(dimensions)
    @height = dimensions.fetch(:height)
    @width  = dimensions.fetch(:width)
    @depth  = dimensions.fetch(:depth)
  end

  def volume
    @height * @width * @depth
  end
end
