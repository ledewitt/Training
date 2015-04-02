class HashCube
  def initialize(dimensions)
    @height = dimensions[:height]
    @width  = dimensions[:width]
    @depth  = dimensions[:depth]
  end

  def volume
    @height * @width * @depth
  end
end
