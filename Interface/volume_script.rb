require_relative './hash.rb'
require_relative './list.rb'

# Make on hash and 3 variables.

dim = { height: 3, depth: 4, width: 10 }

height = 1
depth = 2
width = 3

h_cube = HashCube.new(dim)
l_cube = SimpleCube.new(height, depth, width)

puts "Hash cube's dimensions are height #{dim[:height]}, depth #{dim[:depth]}, and width of #{dim[:width]}.  Hash cube as a total volume of #{h_cube.volume}"
puts ""
puts "Simple cube's dimensions are height #{height}, depth #{depth}, and width of #{width}.  Simple cube has a total volume of #{l_cube.volume}"
