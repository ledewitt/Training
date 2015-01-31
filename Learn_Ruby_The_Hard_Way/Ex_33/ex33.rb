def below_a_number(num, increment)
  i = 0
  numbers = []

  for num in (0..num)
    puts "At the top i is #{i}"
    numbers.push(i)

    # i += increment
    puts "Numbers now: ", numbers
  end

#  while i < num
#    puts "At the top i is #{i}"
#    numbers.push(i)
#
#    i += increment
#    puts "Numbers now: ", numbers
#    puts "At the bottom i is #{i}"
#  end

  puts "The numbers: "

  # remember you can write this 2 other ways?
  numbers.each {|n| puts n }
end
