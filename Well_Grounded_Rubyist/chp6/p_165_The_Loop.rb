n = 1
loop do
  n = n + 1
  break if n > 9
end
puts "#{n}"

n = 1
loop do
  n = n + 1
  next unless n == 10
  break
end
puts "#{n}"
