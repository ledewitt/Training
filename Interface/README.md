I have these two simple Ruby Classes in this repo.

``` ruby
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
```

I believe the Ruby conventions would have me implement the second case up above the class HashCube.  However, this got me to thinking about where does the responsibility lie to make sure that the right key value pairs are present in the hash that is passed in?

With the first case the object sending the message to SimpleCube immediate knows if it has or has not send the right information.

``` ruby
2.1.2 :001 > require './list.rb'
 => true
2.1.2 :002 > s_cube = SimpleCube.new(2,3)
ArgumentError: wrong number of arguments (2 for 3)
  from /Users/luke/Work/DeWitt_Software/Training/Interface/list.rb:2:in `initialize'
  from (irb):2:in `new'
  from (irb):2
  from /Users/luke/.rvm/rubies/ruby-2.1.2/bin/irb:11:in `<main>'
```

With the second case when the object h_cube is in instantiated from the HashCube class below it has no idea that something is wrong until it blows up on the volume method call.

``` ruby
2.1.2 :003 > require './hash.rb'
 => true
2.1.2 :004 > h_cube = HashCube.new({height: 2, width: 3})
 => #<HashCube:0x007fbda901abd0 @height=2, @width=3, @depth=nil>
2.1.2 :005 > h_cube.volume
TypeError: nil can't be coerced into Fixnum
  from /Users/luke/Work/DeWitt_Software/Training/Interface/hash.rb:9:in `*'
  from /Users/luke/Work/DeWitt_Software/Training/Interface/hash.rb:9:in `volume'
  from (irb):5
  from /Users/luke/.rvm/rubies/ruby-2.1.2/bin/irb:11:in `<main>'
```

So if passing a Hash of variables is Ruby's convention what is the best way for an object to protect itself from junk or absent data.  Is it the responsibility of the class to check the input or is it the responsibility of the calling class to make sure it is sending the correct data?

I know context of the problem being solved should always be considered.  However, in a general problem space what would be the natural tendency of a Rubyist in handling data validation in a hash that is being passed?
