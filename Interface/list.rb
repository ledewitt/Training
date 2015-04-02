class SimpleCube
  def initialize(height, width, depth)
    @height = height
    @width  = width
    @depth  = depth
  end

  def volume
    @height * @width * @depth
  end
end
