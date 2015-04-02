Testing the Readme at a level lower then the top of repo.

I have these two simple Ruby Classes in this repo.

'
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
'
