filename = ARGV.first

puts "We are going to read the file #{filename}"

file = open(filename)

print file.read