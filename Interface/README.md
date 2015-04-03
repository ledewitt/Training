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

-----

A day later and asking around to some different Rubyists has led me to a couple of other ways to address objects with hashes at initialization.  Many thanks to James Gray for showing me these specific examples.

First is using the fetch method in a hash.  The below code will error out if the hash sent in doesn't have the key values present.

```ruby
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
```

Here is the irb session to show the behavior.

```ruby
2.1.2 :019 > incomplete_cube
 => {:width=>3, :depth=>6}
2.1.2 :020 > defective_cube = FetchCube.new(incomplete_cube)
KeyError: key not found: :height
  from /Users/luke/Work/DeWitt_Software/Training/Interface/fetch.rb:3:in `fetch'
  from /Users/luke/Work/DeWitt_Software/Training/Interface/fetch.rb:3:in `initialize'
  from (irb):20:in `new'
  from (irb):20
  from /Users/luke/.rvm/rubies/ruby-2.1.2/bin/irb:11:in `<main>'
2.1.2 :021 > cube
 => {:height=>4, :width=>2, :depth=>3}
2.1.2 :022 > f_cube = FetchCube.new(cube)
 => #<FetchCube:0x007fbda8a81188 @height=4, @width=2, @depth=3>
2.1.2 :023 > f_cube.volume
 => 24
```

I was also shown the following example which became legal with Ruby 2.1.  You can just specify the Key Value Symbol that is contained within the Hash in the initialization of an object.  Which looks neat, clean, and tidy.

```ruby
class KeyCube
  def initialize(height:,width:,depth:)
    @height = height
    @width  = width
    @depth  = depth
  end

  def volume
    @height * @width * @depth
  end
end
```

Here is this implementation in an irb session.

```ruby
2.1.2 :024 > k_cube = KeyCube.new(incomplete_cube)
ArgumentError: missing keyword: height
  from (irb):24:in `new'
  from (irb):24
  from /Users/luke/.rvm/rubies/ruby-2.1.2/bin/irb:11:in `<main>'
2.1.2 :025 > k_cube = KeyCube.new(cube)
 => #<KeyCube:0x007fbda8aa3fa8 @height=4, @width=2, @depth=3>
2.1.2 :026 > k_cube.volume
 => 24
```
